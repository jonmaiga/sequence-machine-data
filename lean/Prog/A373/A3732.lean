import SequenceMachineLib.Basic
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
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C047
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C007
import Seq.B002.C008
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C005
import Seq.B003.C006
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A373200: Numbers k such that the k-th maximal antirun of squarefree numbers has length different from all prior maximal antiruns. Sorted positions of first appearances in A373127.

The programs for A373200, there is no canonical definition to state claims against.
-/

/-! ## A373200.P4319321050747095981

`A363130(A363130(n+4)+A018097(n))`
-/

namespace A373200.P4319321050747095981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363130 (A363130 (n + 4) + A018097 n).toNat

end

end A373200.P4319321050747095981

/-! ## A373200.P13512014398154400911

`A347625(or(A000088(n), A191708(n+1)))`
-/

namespace A373200.P13512014398154400911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347625 (Int.lor (A000088 n) (A191708 (n + 1))).toNat

end

end A373200.P13512014398154400911

/-!
# A373201: a(n) = smallest number m > 0 such that n followed by m 9's yields a prime, or -1 if no such m exists.

The programs for A373201, there is no canonical definition to state claims against.
-/

/-! ## A373201.P9577016760859505087

`or(A010206(A244164(n+1)), A054354(n+1))`
-/

namespace A373201.P9577016760859505087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010206 (A244164 (n + 1)).toNat) (A054354 (n + 1))

end

end A373201.P9577016760859505087

/-! ## A373201.P8068224720392153288

`or(A054354(n+1), A275832(A280398(3*n+4)))`
-/

namespace A373201.P8068224720392153288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A054354 (n + 1)) (A275832 (A280398 (3 * n + 4)).toNat)

end

end A373201.P8068224720392153288

/-!
# A373205: Numbers m such that m^m == m (mod 10^(len(m) + 1)), where len(m) is the number of digits of m (A055642).

The programs for A373205, there is no canonical definition to state claims against.
-/

/-! ## A373205.P7814349067881665326

`∩[A087684(n+1), A376506(n+1)]`
-/

namespace A373205.P7814349067881665326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087684 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376506 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A373205.P7814349067881665326

/-!
# A373209: Numbers k such that k^2 - 1 and k^2 + 1 have 8 divisors each.

The programs for A373209, there is no canonical definition to state claims against.
-/

/-! ## A373209.P15214424804126786676

`∩[A069062(n+1), A176686(n+1)]`
-/

namespace A373209.P15214424804126786676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069062 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176686 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A373209.P15214424804126786676

/-! ## A373209.P15929324330710782217

`∩[A069062(n+1), A143718(n+1)]`
-/

namespace A373209.P15929324330710782217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069062 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143718 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A373209.P15929324330710782217

/-!
# A373211: Signature sequence of Pi^2.

The programs for A373211, there is no canonical definition to state claims against.
-/

/-! ## A373211.P15632035058148198530

`A381963(n+1)%A063048(A373706(n))`
-/

namespace A373211.P15632035058148198530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A381963 (n + 1)) (A063048 (A373706 n).toNat)

end

end A373211.P15632035058148198530

/-! ## A373211.P1094848740319576039

`A381963(n+1)+A377131(A161700(n+1))`
-/

namespace A373211.P1094848740319576039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381963 (n + 1) + A377131 (A161700 (n + 1)).toNat

end

end A373211.P1094848740319576039

/-! ## A373211.P7677534033116908375

`A130544(A116945(3*n+4))*A381963(n+1)`
-/

namespace A373211.P7677534033116908375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130544 (A116945 (3 * n + 4)).toNat * A381963 (n + 1)

end

end A373211.P7677534033116908375

/-! ## A373211.P10496278354282180812

`A381963(n+1)+A377131(A354102(n+1))`
-/

namespace A373211.P10496278354282180812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381963 (n + 1) + A377131 (A354102 (n + 1)).toNat

end

end A373211.P10496278354282180812

/-! ## A373211.P17581890207132157894

`A381963(n+1)/A386575(A000040(n+1))`
-/

namespace A373211.P17581890207132157894
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A381963 (n + 1) : ℚ) / (A386575 (A000040 (n + 1)).toNat : ℚ)

end

end A373211.P17581890207132157894

/-!
# A373212: Signature sequence of log(2).

The programs for A373212, there is no canonical definition to state claims against.
-/

/-! ## A373212.P193720826408195258

`A025687(n+1)+1`
-/

namespace A373212.P193720826408195258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025687 (n + 1) + 1

end

end A373212.P193720826408195258

/-! ## A373212.P5407188265892159147

`val(A025625(n+1), 2)+1`
-/

namespace A373212.P5407188265892159147
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A025625 (n + 1)).toNat 2 + 1

end

end A373212.P5407188265892159147

/-! ## A373212.P15608157866533939835

`val(A107710(n+1), 13)+1`
-/

namespace A373212.P15608157866533939835
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A107710 (n + 1)).toNat 13 + 1

end

end A373212.P15608157866533939835

/-! ## A373212.P16821267094446289023

`A005496(A025687(n+1))`
-/

namespace A373212.P16821267094446289023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005496 (A025687 (n + 1)).toNat

end

end A373212.P16821267094446289023

/-! ## A373212.P6411843861212505033

`A000005(and(-A025625(n+1), A025625(n+1)))`
-/

namespace A373212.P6411843861212505033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.land (-A025625 (n + 1)) (A025625 (n + 1))).toNat

end

end A373212.P6411843861212505033

/-! ## A373212.P17429759493709070744

`A022337(n+1)+A010051(A087363(n+1))`
-/

namespace A373212.P17429759493709070744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022337 (n + 1) + A010051 (A087363 (n + 1)).toNat

end

end A373212.P17429759493709070744

/-! ## A373212.P10005865756479228938

`A057427(A374005(2*n+1))+A022337(n+1)`
-/

namespace A373212.P10005865756479228938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A374005 (2 * n + 1)).toNat + A022337 (n + 1)

end

end A373212.P10005865756479228938

/-! ## A373212.P3704645456544793197

`A022337(n+1)+A001222(A046020(n+1))`
-/

namespace A373212.P3704645456544793197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022337 (n + 1) + A001222 (A046020 (n + 1)).toNat

end

end A373212.P3704645456544793197

/-! ## A373212.P11688455833578547946

`A022337(n+1)-A008683(A215417(3*n+4))`
-/

namespace A373212.P11688455833578547946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022337 (n + 1) - A008683 (A215417 (3 * n + 4)).toNat

end

end A373212.P11688455833578547946

/-! ## A373212.P13048483999703087323

`A001222(A046020(n+1))+A112754(n+1)-A022336(n+1)`
-/

namespace A373212.P13048483999703087323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A046020 (n + 1)).toNat + (A112754 (n + 1) - A022336 (n + 1))

end

end A373212.P13048483999703087323

/-!
# A373216: Expansion of Sum_{k>=0} x^(6^k) / (1 - x^(6^k)).

The programs for A373216, the canonical program `A373216.P7487443510787612831` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373216 has offset 1).

The definition of A373216 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A373216.P8440893419661051970

`val(n+1, 6)+1`
-/

namespace A373216.P8440893419661051970
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 6 + 1

end

end A373216.P8440893419661051970

namespace A373216

/-- `val(n+1, 6)+1` -/
def P8440893419661051970.Spec : Prop :=
  ∀ n, (P8440893419661051970.a n : ℤ) = A373216 (n + 1)

theorem P8440893419661051970.correct : P8440893419661051970.Spec := by
  intro n
  simp only [A373216, Nat.add_sub_cancel, A373216.P8440893419661051970.a, A373216.P7487443510787612831.a, A122841, A122841.P30360687531022372.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A373216

/-! ## A373216.P7487443510787612831

`A122841(n+1)+1`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A373216

/-- `A122841(n+1)+1` -/
def P7487443510787612831.Spec : Prop :=
  ∀ n, P7487443510787612831.a n = A373216 (n + 1)

theorem P7487443510787612831.correct : P7487443510787612831.Spec := by
  intro n
  simp only [A373216, Nat.add_sub_cancel]

end A373216

/-! ## A373216.P10861541382290200239

`val(6*(2*n-(n-1)), 6)`
-/

namespace A373216.P10861541382290200239
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (6 * ((2 * n : ℤ) - ((n : ℤ) - 1))).toNat 6

end

end A373216.P10861541382290200239

namespace A373216

/-- `val(6*(2*n-(n-1)), 6)` -/
def P10861541382290200239.Spec : Prop :=
  ∀ n, (P10861541382290200239.a n : ℤ) = A373216 (n + 1)

end A373216

/-! ## A373216.P4965957134030253460

`ceil(ratio[A303824(n)])`
-/

namespace A373216.P4965957134030253460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303824 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉

end

end A373216.P4965957134030253460

namespace A373216

/-- `ceil(ratio[A303824(n)])` -/
def P4965957134030253460.Spec : Prop :=
  ∀ n, P4965957134030253460.a n = A373216 (n + 1)

end A373216

/-! ## A373216.P13004158778334460471

`Δ[A054895(n)]+1`
-/

namespace A373216.P13004158778334460471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054895 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A373216.P13004158778334460471

namespace A373216

/-- `Δ[A054895(n)]+1` -/
def P13004158778334460471.Spec : Prop :=
  ∀ n, P13004158778334460471.a n = A373216 (n + 1)

end A373216

/-! ## A373216.P8306512402080786259

`A050320(A065331(n+1))`
-/

namespace A373216.P8306512402080786259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050320 (A065331 (n + 1)).toNat

end

end A373216.P8306512402080786259

namespace A373216

/-- `A050320(A065331(n+1))` -/
def P8306512402080786259.Spec : Prop :=
  ∀ n, P8306512402080786259.a n = A373216 (n + 1)

end A373216

/-! ## A373216.P7297444186997559575

`A001511(A214681(n+1))`
-/

namespace A373216.P7297444186997559575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A214681 (n + 1)).toNat

end

end A373216.P7297444186997559575

namespace A373216

/-- `A001511(A214681(n+1))` -/
def P7297444186997559575.Spec : Prop :=
  ∀ n, P7297444186997559575.a n = A373216 (n + 1)

end A373216

/-! ## A373216.P1058485302369117249

`A007814(A234959(n+1))+1`
-/

namespace A373216.P1058485302369117249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A234959 (n + 1)).toNat + 1

end

end A373216.P1058485302369117249

namespace A373216

/-- `A007814(A234959(n+1))+1` -/
def P1058485302369117249.Spec : Prop :=
  ∀ n, P1058485302369117249.a n = A373216 (n + 1)

end A373216

/-! ## A373216.P13561339223562854146

`A007949(A322361(n+1))+1`
-/

namespace A373216.P13561339223562854146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (A322361 (n + 1)).toNat + 1

end

end A373216.P13561339223562854146

namespace A373216

/-- `A007949(A322361(n+1))+1` -/
def P13561339223562854146.Spec : Prop :=
  ∀ n, P13561339223562854146.a n = A373216 (n + 1)

end A373216

/-! ## A373216.P16362999223832764380

`A007814(A330749(n+1))+1`
-/

namespace A373216.P16362999223832764380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A330749 (n + 1)).toNat + 1

end

end A373216.P16362999223832764380

namespace A373216

/-- `A007814(A330749(n+1))+1` -/
def P16362999223832764380.Spec : Prop :=
  ∀ n, P16362999223832764380.a n = A373216 (n + 1)

end A373216

/-! ## A373216.P9584012809410405401

`A025656(A322316(n+1))+1`
-/

namespace A373216.P9584012809410405401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025656 (A322316 (n + 1)).toNat + 1

end

end A373216.P9584012809410405401

namespace A373216

/-- `A025656(A322316(n+1))+1` -/
def P9584012809410405401.Spec : Prop :=
  ∀ n, P9584012809410405401.a n = A373216 (n + 1)

end A373216

/-! ## A373216.P18065988995851804354

`A244417(2*A234959(n+1))`
-/

namespace A373216.P18065988995851804354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244417 (2 * A234959 (n + 1)).toNat

end

end A373216.P18065988995851804354

namespace A373216

/-- `A244417(2*A234959(n+1))` -/
def P18065988995851804354.Spec : Prop :=
  ∀ n, P18065988995851804354.a n = A373216 (n + 1)

end A373216

/-! ## A373216.P14515283598929097588

`A169611(n+1)+1-A244417(n+1)`
-/

namespace A373216.P14515283598929097588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169611 (n + 1) + (1 - A244417 (n + 1))

end

end A373216.P14515283598929097588

namespace A373216

/-- `A169611(n+1)+1-A244417(n+1)` -/
def P14515283598929097588.Spec : Prop :=
  ∀ n, P14515283598929097588.a n = A373216 (n + 1)

end A373216

/-! ## A373216.P9978289605899970701

`∑{d}[n+1, A023900(#)*A373397((n+1)/#)]`
-/

namespace A373216.P9978289605899970701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023900 d * A373397 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A373216.P9978289605899970701

namespace A373216

/-- `∑{d}[n+1, A023900(#)*A373397((n+1)/#)]` -/
def P9978289605899970701.Spec : Prop :=
  ∀ n, P9978289605899970701.a n = A373216 (n + 1)

end A373216

/-! ## A373216.P12164258283389500455

`∑{d}[n+1, A065333(#)*A373156((n+1)/#)]`
-/

namespace A373216.P12164258283389500455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A065333 d * A373156 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A373216.P12164258283389500455

namespace A373216

/-- `∑{d}[n+1, A065333(#)*A373156((n+1)/#)]` -/
def P12164258283389500455.Spec : Prop :=
  ∀ n, P12164258283389500455.a n = A373216 (n + 1)

end A373216

/-! ## A373216.P4018406485243602717

`A122841(A008458(n+1))`
-/

namespace A373216.P4018406485243602717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122841 (A008458 (n + 1)).toNat

end

end A373216.P4018406485243602717

namespace A373216

/-- `A122841(A008458(n+1))` -/
def P4018406485243602717.Spec : Prop :=
  ∀ n, P4018406485243602717.a n = A373216 (n + 1)

end A373216

/-! ## A373216.P970745158937349327

`A122841(A008588(n+1))`
-/

namespace A373216.P970745158937349327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122841 (A008588 (n + 1)).toNat

end

end A373216.P970745158937349327

namespace A373216

/-- `A122841(A008588(n+1))` -/
def P970745158937349327.Spec : Prop :=
  ∀ n, P970745158937349327.a n = A373216 (n + 1)

end A373216

/-! ## A373216.P7340449348166467179

`A122841(A016969(n)+1)`
-/

namespace A373216.P7340449348166467179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122841 (A016969 n + 1).toNat

end

end A373216.P7340449348166467179

namespace A373216

/-- `A122841(A016969(n)+1)` -/
def P7340449348166467179.Spec : Prop :=
  ∀ n, P7340449348166467179.a n = A373216 (n + 1)

end A373216

/-! ## A373216.P11096104143213479816

`A160094(A007092(n+1))`
-/

namespace A373216.P11096104143213479816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160094 (A007092 (n + 1)).toNat

end

end A373216.P11096104143213479816

namespace A373216

/-- `A160094(A007092(n+1))` -/
def P11096104143213479816.Spec : Prop :=
  ∀ n, P11096104143213479816.a n = A373216 (n + 1)

end A373216

/-! ## A373216.P9514165683591794966

`A160094(A072029(n+1))`
-/

namespace A373216.P9514165683591794966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160094 (A072029 (n + 1)).toNat

end

end A373216.P9514165683591794966

namespace A373216

/-- `A160094(A072029(n+1))` -/
def P9514165683591794966.Spec : Prop :=
  ∀ n, P9514165683591794966.a n = A373216 (n + 1)

end A373216

/-!
# A373217: Expansion of Sum_{k>=0} x^(7^k) / (1 - x^(7^k)).

The programs for A373217, the canonical program `A373217.P505810784867854165` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373217 has offset 1).

The definition of A373217 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A373217.P505810784867854165

`val(n+1, 7)+1`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A373217

/-- `val(n+1, 7)+1` -/
def P505810784867854165.Spec : Prop :=
  ∀ n, (P505810784867854165.a n : ℤ) = A373217 (n + 1)

theorem P505810784867854165.correct : P505810784867854165.Spec := by
  intro n
  simp only [A373217, Nat.add_sub_cancel]

end A373217

/-!
# A373219: Expansion of Product_{i>=1, j>=0} (1 + x^(i * 5^j)).

The programs for A373219, there is no canonical definition to state claims against.
-/

/-! ## A373219.P11645510070276973201

`A128762(2*n)+A010054(A128301(2*n+3))`
-/

namespace A373219.P11645510070276973201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128762 (2 * n) + A010054 (A128301 (2 * n + 3)).toNat

end

end A373219.P11645510070276973201

/-! ## A373219.P3032995070691845957

`A128762(2*n)+A000122(A098492(2*n+3))`
-/

namespace A373219.P3032995070691845957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128762 (2 * n) + A000122 (A098492 (2 * n + 3)).toNat

end

end A373219.P3032995070691845957

/-! ## A373219.P8453610396282740186

`A128762(2*n)^A355241(A152950(n+1))`
-/

namespace A373219.P8453610396282740186
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128762 (2 * n) : ℚ) ^ (A355241 (A152950 (n + 1)).toNat : ℤ)

end

end A373219.P8453610396282740186

/-! ## A373219.P10383786458547392923

`A128762(2*n)*A375706(A038664(3*n+2))`
-/

namespace A373219.P10383786458547392923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128762 (2 * n) * A375706 (A038664 (3 * n + 2)).toNat

end

end A373219.P10383786458547392923

/-!
# A373220: Expansion of Product_{i>=1, j>=0} (1 + x^(i * 6^j)).

The programs for A373220, there is no canonical definition to state claims against.
-/

/-! ## A373220.P10745212687341364825

`A053280(4*n)%A050284(n+1)`
-/

namespace A373220.P10745212687341364825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053280 (4 * n)) (A050284 (n + 1))

end

end A373220.P10745212687341364825

/-! ## A373220.P10795154035462629821

`A048766(A379152(n+1))`
-/

namespace A373220.P10795154035462629821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A379152 (n + 1)).toNat

end

end A373220.P10795154035462629821

/-! ## A373220.P11678645689920736972

`A048766(A220172(n+1)-1)`
-/

namespace A373220.P11678645689920736972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A220172 (n + 1) - 1).toNat

end

end A373220.P11678645689920736972

/-! ## A373220.P11395615683300067123

`A048766(2^(n+1)-A316953(n+1))`
-/

namespace A373220.P11395615683300067123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 ((2 ^ (n + 1) : ℤ) - A316953 (n + 1)).toNat

end

end A373220.P11395615683300067123

/-! ## A373220.P8929474747234340342

`A034296(n)-A051903(A003418(n))`
-/

namespace A373220.P8929474747234340342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034296 n - A051903 (A003418 n).toNat

end

end A373220.P8929474747234340342

/-!
# A373221: Expansion of Product_{i>=1, j>=0} (1 + x^(i * 7^j)).

The programs for A373221, there is no canonical definition to state claims against.
-/

/-! ## A373221.P14298612793361258911

`lcm(A093950(n), A103754(n+1))`
-/

namespace A373221.P14298612793361258911
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A093950 n) (A103754 (n + 1))

end

end A373221.P14298612793361258911

/-! ## A373221.P14302952689367288594

`A093950(n)%A029707(A046682(n))`
-/

namespace A373221.P14302952689367288594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A093950 n) (A029707 (A046682 n).toNat)

end

end A373221.P14302952689367288594

/-! ## A373221.P7660826449577812894

`A243833(A107452(n+2))+A093950(n)`
-/

namespace A373221.P7660826449577812894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243833 (A107452 (n + 2)).toNat + A093950 n

end

end A373221.P7660826449577812894

/-! ## A373221.P9399155307527224777

`A001222(A338396(n+1))*A093950(n)`
-/

namespace A373221.P9399155307527224777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A338396 (n + 1)).toNat * A093950 n

end

end A373221.P9399155307527224777

/-! ## A373221.P12208643952389010683

`A093950(n)+A000007(A093927(n+4))`
-/

namespace A373221.P12208643952389010683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093950 n + A000007 (A093927 (n + 4)).toNat

end

end A373221.P12208643952389010683

/-!
# A373223: Gauss's triangle read by rows: T(n, k) = KP(n, k) * KP(k, n) where KP(n, k) = KroneckerSymbol(prime(n), prime(k)). (Law of Quadratic Reciprocity.)

The programs for A373223, there is no canonical definition to state claims against.
-/

/-! ## A373223.P9407007091354440644

`A056594(or(n, A122542(n))*A122542(n))`
-/

namespace A373223.P9407007091354440644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (Int.lor (n : ℤ) (A122542 n) * A122542 n).toNat

end

end A373223.P9407007091354440644

/-! ## A373223.P11764012592714954077

`A011586(A256068(n+2))`
-/

namespace A373223.P11764012592714954077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011586 (A256068 (n + 2)).toNat

end

end A373223.P11764012592714954077

/-! ## A373223.P12395570163954387955

`A011583(A291684(n+1)^A317952(3*n+1))`
-/

namespace A373223.P12395570163954387955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011583 (SequenceMachineLib.roundAway ((A291684 (n + 1) : ℚ) ^ (A317952 (3 * n + 1) : ℤ))).toNat

end

end A373223.P12395570163954387955

/-! ## A373223.P18432546556790197924

`A131795(A002260(n+2))^A114948(n)`
-/

namespace A373223.P18432546556790197924
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131795 (A002260 (n + 2)).toNat : ℚ) ^ (A114948 n : ℤ)

end

end A373223.P18432546556790197924

/-! ## A373223.P12425969276119164713

`A011616(A224118(n+2))`
-/

namespace A373223.P12425969276119164713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011616 (A224118 (n + 2)).toNat

end

end A373223.P12425969276119164713

/-!
# A373224: Row sums of A373223.

The programs for A373224, there is no canonical definition to state claims against.
-/

/-! ## A373224.P11680362403648409140

`n%A096367(A096393(n+3))`
-/

namespace A373224.P11680362403648409140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A096367 (A096393 (n + 3)).toNat)

end

end A373224.P11680362403648409140

/-! ## A373224.P2838915818727685661

`and(n, A033999(A082749(n+1)))`
-/

namespace A373224.P2838915818727685661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A033999 (A082749 (n + 1)).toNat)

end

end A373224.P2838915818727685661

/-! ## A373224.P6205143347445883238

`and(n, A125262(A282986(n)))`
-/

namespace A373224.P6205143347445883238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A125262 (A282986 n).toNat)

end

end A373224.P6205143347445883238

/-! ## A373224.P9336710924430891002

`and(n, A062157(A174422(n+1)))`
-/

namespace A373224.P9336710924430891002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A062157 (A174422 (n + 1)).toNat)

end

end A373224.P9336710924430891002

/-! ## A373224.P7598194686570064032

`and(n, A008836(A244164(n+1)))`
-/

namespace A373224.P7598194686570064032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A008836 (A244164 (n + 1)).toNat)

end

end A373224.P7598194686570064032

/-!
# A373225: Primes p = prime(k) such that 0 = Sum_{j=1..k} T(k, j) where T(n, k) = K(prime(n), prime(k)) * K(prime(k), prime(n)) and K is the Kronecker symbol.

The programs for A373225, there is no canonical definition to state claims against.
-/

/-! ## A373225.P10487245140490419995

`A000040(A373181(n+1))`
-/

namespace A373225.P10487245140490419995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A373181 (n + 1)).toNat

end

end A373225.P10487245140490419995

/-! ## A373225.P3697292133978521827

`A008578(A373181(n+1)+1)`
-/

namespace A373225.P3697292133978521827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A373181 (n + 1) + 1).toNat

end

end A373225.P3697292133978521827

/-! ## A373225.P4652134654110956961

`A373157(2*n+1)+A006093(A373181(n+1))`
-/

namespace A373225.P4652134654110956961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373157 (2 * n + 1) + A006093 (A373181 (n + 1)).toNat

end

end A373225.P4652134654110956961

/-!
# A373226: Number of points in a diagonal Vicsek fractal subset of an n X n square.

The programs for A373226, there is no canonical definition to state claims against.
-/

/-! ## A373226.P828937506490927703

`∑[A185091(n+2)%A228413(n)]`
-/

namespace A373226.P828937506490927703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A185091 (n + 2)) (A228413 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A373226.P828937506490927703

/-! ## A373226.P604516149350284097

`eq[A156257(3*n+5), A165326(A000330(n))]`
-/

namespace A373226.P604516149350284097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156257 (3 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165326 (A000330 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A373226.P604516149350284097

/-!
# A373227: Relative of Hofstadter Q-sequence: a(n) = n for 1 <= n <= 7; a(n) = a(n-a(n-1)) + a(n-a(n-2)) + a(n-a(n-3)) for n > 7.

The programs for A373227, the canonical program `A373227.P13229327708994041275` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373227 has offset 1).

The definition of A373227 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-a(n-1))+a(n-a(n-2))+a(n-a(n-3))` (program `A373227.P13229327708994041275`, by `A373227.P13229327708994041275.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A373227.P13229327708994041275

`a(n-a(n-1))+a(n-a(n-2))+a(n-a(n-3))` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4, a(4)=5, a(5)=6, a(6)=7`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A373227

/-- `a(n-a(n-1))+a(n-a(n-2))+a(n-a(n-3))` -/
def P13229327708994041275.Spec : Prop :=
  ∀ n, (P13229327708994041275.a n : ℤ) = A373227 (n + 1)

theorem P13229327708994041275.correct : P13229327708994041275.Spec := by
  intro n
  simp only [A373227, Nat.add_sub_cancel]

end A373227

/-!
# A373228: Relative of Hofstadter Q-sequence: a(n) = n for 1 <= n <= 8; a(n) = a(n-a(n-1)) + a(n-a(n-2)) + a(n-a(n-3)) for n > 8.

The programs for A373228, the canonical program `A373228.P9022209766695877458` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373228 has offset 1).

The definition of A373228 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-a(n-1))+a(n-a(n-2))+a(n-a(n-3))` (program `A373228.P9022209766695877458`, by `A373228.P9022209766695877458.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A373228.P9022209766695877458

`a(n-a(n-1))+a(n-a(n-2))+a(n-a(n-3))` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4, a(4)=5, a(5)=6, a(6)=7, a(7)=8`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A373228

/-- `a(n-a(n-1))+a(n-a(n-2))+a(n-a(n-3))` -/
def P9022209766695877458.Spec : Prop :=
  ∀ n, (P9022209766695877458.a n : ℤ) = A373228 (n + 1)

theorem P9022209766695877458.correct : P9022209766695877458.Spec := by
  intro n
  simp only [A373228, Nat.add_sub_cancel]

end A373228

/-!
# A373229: Relative of Hofstadter Q-sequence: a(n) = n for 1 <= n <= 9; a(n) = a(n-a(n-1)) + a(n-a(n-2)) + a(n-a(n-3)) for n > 9.

The programs for A373229, the canonical program `A373229.P10034199371690190762` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373229 has offset 1).

The definition of A373229 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-a(n-1))+a(n-a(n-2))+a(n-a(n-3))` (program `A373229.P10034199371690190762`, by `A373229.P10034199371690190762.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A373229.P10034199371690190762

`a(n-a(n-1))+a(n-a(n-2))+a(n-a(n-3))` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4, a(4)=5, a(5)=6, a(6)=7, a(7)=8, a(8)=9`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A373229

/-- `a(n-a(n-1))+a(n-a(n-2))+a(n-a(n-3))` -/
def P10034199371690190762.Spec : Prop :=
  ∀ n, (P10034199371690190762.a n : ℤ) = A373229 (n + 1)

theorem P10034199371690190762.correct : P10034199371690190762.Spec := by
  intro n
  simp only [A373229, Nat.add_sub_cancel]

end A373229

/-!
# A373235: Relative of Hofstadter Q-sequence: a(n) = max(0, n+2087) for n <= 0; a(n) = a(n-a(n-1)) + a(n-a(n-2)) + a(n-a(n-3)) for n > 0.

The programs for A373235, there is no canonical definition to state claims against.
-/

/-! ## A373235.P4322934973414636539

`A005843(A373236(n+1))-A373237(n+1)`
-/

namespace A373235.P4322934973414636539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A373236 (n + 1)).toNat - A373237 (n + 1)

end

end A373235.P4322934973414636539

/-!
# A373236: Relative of Hofstadter Q-sequence: a(n) = max(0, n+3201) for n <= 0; a(n) = a(n-a(n-1)) + a(n-a(n-2)) + a(n-a(n-3)) for n > 0.

The programs for A373236, there is no canonical definition to state claims against.
-/

/-! ## A373236.P3404198039749559284

`A004526(A373237(n+1)+A373235(n+1))`
-/

namespace A373236.P3404198039749559284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A373237 (n + 1) + A373235 (n + 1)).toNat

end

end A373236.P3404198039749559284

/-! ## A373236.P12070699183961976496

`A110654(A373237(n+1)+A373235(n+1))`
-/

namespace A373236.P12070699183961976496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A373237 (n + 1) + A373235 (n + 1)).toNat

end

end A373236.P12070699183961976496

/-! ## A373236.P11538411962901158282

`A289439(A373237(n+1)+A373235(n+1))`
-/

namespace A373236.P11538411962901158282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289439 (A373237 (n + 1) + A373235 (n + 1)).toNat

end

end A373236.P11538411962901158282

/-!
# A373237: Relative of Hofstadter Q-sequence: a(n) = max(0, n+4315) for n <= 0; a(n) = a(n-a(n-1)) + a(n-a(n-2)) + a(n-a(n-3)) for n > 0.

The programs for A373237, there is no canonical definition to state claims against.
-/

/-! ## A373237.P4478229572147675100

`A005843(A373236(n+1))-A373235(n+1)`
-/

namespace A373237.P4478229572147675100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A373236 (n + 1)).toNat - A373235 (n + 1)

end

end A373237.P4478229572147675100

/-!
# A373241: T(n,k) is the difference between the number of different parts and the number of different multiplicities in the k-th partition of n in graded reverse lexicographic ordering (A080577).

The programs for A373241, there is no canonical definition to state claims against.
-/

/-! ## A373241.P10240715553966362031

`A115623(n+1)-A373269(n+1)`
-/

namespace A373241.P10240715553966362031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115623 (n + 1) - A373269 (n + 1)

end

end A373241.P10240715553966362031

/-! ## A373241.P18278498477996013483

`A086011(A002144(n+1)*A208510(n+1))`
-/

namespace A373241.P18278498477996013483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086011 (A002144 (n + 1) * A208510 (n + 1)).toNat

end

end A373241.P18278498477996013483

/-! ## A373241.P11516525821241001897

`A262900(A322762(n+1))`
-/

namespace A373241.P11516525821241001897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262900 (A322762 (n + 1)).toNat

end

end A373241.P11516525821241001897

/-!
# A373242: T(n,k) is the sum for all integer partitions of n of length k of the difference between the number of different parts and the number of different multiplicities.

The programs for A373242, there is no canonical definition to state claims against.
-/

/-! ## A373242.P1224541540179035413

`A092905(n)-A373270(n+1)`
-/

namespace A373242.P1224541540179035413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092905 n - A373270 (n + 1)

end

end A373242.P1224541540179035413

/-! ## A373242.P8360347619061266594

`A296167(n+1)%A168242(n)`
-/

namespace A373242.P8360347619061266594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A296167 (n + 1)) (A168242 n)

end

end A373242.P8360347619061266594

/-! ## A373242.P4740329760702727061

`A296167(n+1)%A155971(n)`
-/

namespace A373242.P4740329760702727061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A296167 (n + 1)) (A155971 n)

end

end A373242.P4740329760702727061

/-! ## A373242.P1950264633846828451

`and(A001221(A022170(n)), A072264(n))`
-/

namespace A373242.P1950264633846828451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001221 (A022170 n).toNat) (A072264 n)

end

end A373242.P1950264633846828451

/-! ## A373242.P13844150213999436890

`A124766(A207403(n+1)%A267553(n+1))`
-/

namespace A373242.P13844150213999436890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124766 (Int.tmod (A207403 (n + 1)) (A267553 (n + 1))).toNat

end

end A373242.P13844150213999436890

/-!
# A373243: a(n) = sum for all integer partitions of n of the difference between number of different parts and number of different multiplicities.

The programs for A373243, there is no canonical definition to state claims against.
-/

/-! ## A373243.P14402363422597303520

`A000070(n)-A373271(n+1)`
-/

namespace A373243.P14402363422597303520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n - A373271 (n + 1)

end

end A373243.P14402363422597303520

/-! ## A373243.P18220843354580445998

`∑[A000041(n)]-A373271(n+1)`
-/

namespace A373243.P18220843354580445998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A373271 (n + 1)

end

end A373243.P18220843354580445998

/-! ## A373243.P8978202007227556882

`∑[∑[A002865(n)]]-A373271(n+1)`
-/

namespace A373243.P8978202007227556882
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A373271 (n + 1)

end

end A373243.P8978202007227556882

/-! ## A373243.P14296029781430301256

`A373242(A062708(n+1))`
-/

namespace A373243.P14296029781430301256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373242 (A062708 (n + 1)).toNat

end

end A373243.P14296029781430301256

/-! ## A373243.P18004701057159779950

`A373242(A081267(n+1))`
-/

namespace A373243.P18004701057159779950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373242 (A081267 (n + 1)).toNat

end

end A373243.P18004701057159779950

/-!
# A373244: T(n,k) = number of integer partitions of n into k parts for which the number of distinct parts is equal to the number of distinct multiplicities.

The programs for A373244, there is no canonical definition to state claims against.
-/

/-! ## A373244.P17805886929622086414

`and(A002654(A001248(n+1)), A022818(n+1))`
-/

namespace A373244.P17805886929622086414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002654 (A001248 (n + 1)).toNat) (A022818 (n + 1))

end

end A373244.P17805886929622086414

/-! ## A373244.P17320157717914762561

`gcd(A003285(A288972(n)), A333467(n))`
-/

namespace A373244.P17320157717914762561
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003285 (A288972 n).toNat) (A333467 n)

end

end A373244.P17320157717914762561

/-!
# A373245: Binomial transform of A135318.

The programs for A373245, the canonical program `A373245.P9496879938608800847` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373245 has offset 0).

The definition of A373245 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A373245.P12999637739843625158

`ogf((1-2x+x^2+x^3)/(1-4x+5x^2-2x^3-2x^4))`
-/

namespace A373245.P12999637739843625158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 1, 1] [1, -4, 5, -2, -2] n

end

end A373245.P12999637739843625158

namespace A373245

/-- `ogf((1-2x+x^2+x^3)/(1-4x+5x^2-2x^3-2x^4))` -/
def P12999637739843625158.Spec : Prop :=
  ∀ n, P12999637739843625158.a n = A373245 n

end A373245

/-! ## A373245.P9496879938608800847

`A114203(n+1)/2`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A373245

/-- `A114203(n+1)/2` -/
def P9496879938608800847.Spec : Prop :=
  ∀ n, P9496879938608800847.a n = (A373245 n : ℚ)

end A373245

/-! ## A373245.P9942881527042378515

`∑[A001333(n)]-A101892(n)`
-/

namespace A373245.P9942881527042378515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A101892 n

end

end A373245.P9942881527042378515

namespace A373245

/-- `∑[A001333(n)]-A101892(n)` -/
def P9942881527042378515.Spec : Prop :=
  ∀ n, P9942881527042378515.a n = A373245 n

end A373245

/-! ## A373245.P17616155790176933520

`A373358(n+1)+A146559(n)`
-/

namespace A373245.P17616155790176933520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373358 (n + 1) + A146559 n

end

end A373245.P17616155790176933520

namespace A373245

/-- `A373358(n+1)+A146559(n)` -/
def P17616155790176933520.Spec : Prop :=
  ∀ n, P17616155790176933520.a n = A373245 n

end A373245

/-! ## A373245.P436694020298934686

`A373358(n+1)+A217988(n)-A218009(n)`
-/

namespace A373245.P436694020298934686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373358 (n + 1) + (A217988 n - A218009 n)

end

end A373245.P436694020298934686

namespace A373245

/-- `A373358(n+1)+A217988(n)-A218009(n)` -/
def P436694020298934686.Spec : Prop :=
  ∀ n, P436694020298934686.a n = A373245 n

end A373245

/-! ## A373245.P11064955766714621769

`A009545(n+1)+A373358(n+1)-A009545(n)`
-/

namespace A373245.P11064955766714621769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009545 (n + 1) + (A373358 (n + 1) - A009545 n)

end

end A373245.P11064955766714621769

namespace A373245

/-- `A009545(n+1)+A373358(n+1)-A009545(n)` -/
def P11064955766714621769.Spec : Prop :=
  ∀ n, P11064955766714621769.a n = A373245 n

end A373245

/-!
# A373246: Greatest common divisor of n and its prime shadow: a(n) = gcd(n, A181819(n)).

The programs for A373246, the canonical program `A373246.P16217908372987962355` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373246 has offset 1).

The definition of A373246 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A181819, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A373246.P16217908372987962355

`gcd(n+1, A181819(n+1))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A373246

/-- `gcd(n+1, A181819(n+1))` -/
def P16217908372987962355.Spec : Prop :=
  ∀ n, (P16217908372987962355.a n : ℤ) = A373246 (n + 1)

theorem P16217908372987962355.correct : P16217908372987962355.Spec := by
  intro n
  simp only [A373246, Nat.add_sub_cancel]

end A373246

/-! ## A373246.P9489655022344269957

`A181819(n+1)/A373249(n+1)`
-/

namespace A373246.P9489655022344269957
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181819 (n + 1) : ℚ) / (A373249 (n + 1) : ℚ)

end

end A373246.P9489655022344269957

namespace A373246

/-- `A181819(n+1)/A373249(n+1)` -/
def P9489655022344269957.Spec : Prop :=
  ∀ n, P9489655022344269957.a n = (A373246 (n + 1) : ℚ)

end A373246

/-! ## A373246.P12444404486828133281

`∏{e}[n+1, A054403(#)]/A373249(n+1)`
-/

namespace A373246.P12444404486828133281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), A054403 (Nat.factorization (f1 n) p) : ℤ) : ℚ) / (A373249 (n + 1) : ℚ)

end

end A373246.P12444404486828133281

namespace A373246

/-- `∏{e}[n+1, A054403(#)]/A373249(n+1)` -/
def P12444404486828133281.Spec : Prop :=
  ∀ n, P12444404486828133281.a n = (A373246 (n + 1) : ℚ)

end A373246

/-! ## A373246.P2772170419289839874

`∏{e}[n+1, A006530(A040976(#)+2)]/A373249(n+1)`
-/

namespace A373246.P2772170419289839874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), A006530 (A040976 (Nat.factorization (f1 n) p) + 2).toNat : ℤ) : ℚ) / (A373249 (n + 1) : ℚ)

end

end A373246.P2772170419289839874

namespace A373246

/-- `∏{e}[n+1, A006530(A040976(#)+2)]/A373249(n+1)` -/
def P2772170419289839874.Spec : Prop :=
  ∀ n, P2772170419289839874.a n = (A373246 (n + 1) : ℚ)

end A373246

/-!
# A373247: a(n) = n mod A181819(n), where A181819(n) is the prime shadow of n.

The programs for A373247, the canonical program `A373247.P347523656248866741` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373247 has offset 1).

The definition of A373247 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A181819, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A373247.P347523656248866741

`(n+1)%A181819(n+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A373247

/-- `(n+1)%A181819(n+1)` -/
def P347523656248866741.Spec : Prop :=
  ∀ n, P347523656248866741.a n = A373247 (n + 1)

theorem P347523656248866741.correct : P347523656248866741.Spec := by
  intro n
  simp only [A373247, Nat.add_sub_cancel]

end A373247

/-! ## A373247.P455484846487142547

`A000027(n+1)%∏{e}[n+1, A095320(#)]`
-/

namespace A373247.P455484846487142547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000027 (n + 1)) (∏ p ∈ Nat.primeFactors (f1 n), A095320 (Nat.factorization (f1 n) p))

end

end A373247.P455484846487142547

namespace A373247

/-- `A000027(n+1)%∏{e}[n+1, A095320(#)]` -/
def P455484846487142547.Spec : Prop :=
  ∀ n, P455484846487142547.a n = A373247 (n + 1)

end A373247

/-! ## A373247.P5400179974361207205

`A056011(A056011(n+1))%∏{e}[n+1, A000040(#)]`
-/

namespace A373247.P5400179974361207205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056011 (A056011 (n + 1)).toNat) (∏ p ∈ Nat.primeFactors (f1 n), A000040 (Nat.factorization (f1 n) p))

end

end A373247.P5400179974361207205

namespace A373247

/-- `A056011(A056011(n+1))%∏{e}[n+1, A000040(#)]` -/
def P5400179974361207205.Spec : Prop :=
  ∀ n, P5400179974361207205.a n = A373247 (n + 1)

end A373247

/-! ## A373247.P5346938941295593165

`A004526(2*n+3)%∏{e}[n+1, A030291(#)]`
-/

namespace A373247.P5346938941295593165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004526 (2 * n + 3)) (∏ p ∈ Nat.primeFactors (f1 n), A030291 (Nat.factorization (f1 n) p))

end

end A373247.P5346938941295593165

namespace A373247

/-- `A004526(2*n+3)%∏{e}[n+1, A030291(#)]` -/
def P5346938941295593165.Spec : Prop :=
  ∀ n, P5346938941295593165.a n = A373247 (n + 1)

end A373247

/-! ## A373247.P16390420811703898508

`A049084(A000040(n+1))%∏{e}[n+1, A000040(#)]`
-/

namespace A373247.P16390420811703898508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049084 (A000040 (n + 1)).toNat) (∏ p ∈ Nat.primeFactors (f1 n), A000040 (Nat.factorization (f1 n) p))

end

end A373247.P16390420811703898508

namespace A373247

/-- `A049084(A000040(n+1))%∏{e}[n+1, A000040(#)]` -/
def P16390420811703898508.Spec : Prop :=
  ∀ n, P16390420811703898508.a n = A373247 (n + 1)

end A373247

/-!
# A373248: Lexicographically earliest infinite sequence such that a(i) = a(j) => gcd(i,A181819(i)) = gcd(j,A181819(j)) and gcd(i,A276086(i)) = gcd(j,A276086(j)), for all i, j >= 1, where A181819 is the prime shadow of n, and A276086 is the primorial base exp-function.

The programs for A373248, there is no canonical definition to state claims against.
-/

/-! ## A373248.P5996240369976614008

`A135010(A222673(n+4)+A003945(n))`
-/

namespace A373248.P5996240369976614008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135010 (A222673 (n + 4) + A003945 n).toNat

end

end A373248.P5996240369976614008

/-! ## A373248.P12583403472517400633

`gcd(A065855(n+1), A113881(A240893(3*n+1)))`
-/

namespace A373248.P12583403472517400633
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A065855 (n + 1)) (A113881 (A240893 (3 * n + 1)).toNat)

end

end A373248.P12583403472517400633

/-! ## A373248.P16570538489444987580

`A135010(or(A074878(n+1), A353864(n)))`
-/

namespace A373248.P16570538489444987580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135010 (Int.lor (A074878 (n + 1)) (A353864 n)).toNat

end

end A373248.P16570538489444987580

/-!
# A373249: a(n) = A181819(n) / gcd(n, A181819(n)), where A181819(n) is the prime shadow of n.

The programs for A373249, the canonical program `A373249.P6478375395125739437` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373249 has offset 1).

The definition of A373249 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A181819, A373246, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A373249.P6478375395125739437

`A181819(n+1)/A373246(n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A373249

/-- `A181819(n+1)/A373246(n+1)` -/
def P6478375395125739437.Spec : Prop :=
  ∀ n, P6478375395125739437.a n = (A373249 (n + 1) : ℚ)

end A373249

/-! ## A373249.P220874624752340458

`A181819(n+1)/gcd(n+1, A181819(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A373249.P220874624752340458
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181819 (n + 1) : ℚ) / (Int.gcd (n + 1 : ℤ) (A181819 (n + 1)) : ℚ)

end

end A373249.P220874624752340458

namespace A373249

/-- `A181819(n+1)/gcd(n+1, A181819(n+1))` -/
def P220874624752340458.Spec : Prop :=
  ∀ n, P220874624752340458.a n = (A373249 (n + 1) : ℚ)

end A373249

/-! ## A373249.P6825112893393084919

`∏{e}[n+1, A054403(#)]/A373246(n+1)`
-/

namespace A373249.P6825112893393084919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), A054403 (Nat.factorization (f1 n) p) : ℤ) : ℚ) / (A373246 (n + 1) : ℚ)

end

end A373249.P6825112893393084919

namespace A373249

/-- `∏{e}[n+1, A054403(#)]/A373246(n+1)` -/
def P6825112893393084919.Spec : Prop :=
  ∀ n, P6825112893393084919.a n = (A373249 (n + 1) : ℚ)

end A373249

/-! ## A373249.P579952479399880397

`∏{e}[n+1, A061022(#)]/A373246(n+1)`
-/

namespace A373249.P579952479399880397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), A061022 (Nat.factorization (f1 n) p) : ℤ) : ℚ) / (A373246 (n + 1) : ℚ)

end

end A373249.P579952479399880397

namespace A373249

/-- `∏{e}[n+1, A061022(#)]/A373246(n+1)` -/
def P579952479399880397.Spec : Prop :=
  ∀ n, P579952479399880397.a n = (A373249 (n + 1) : ℚ)

end A373249

/-! ## A373249.P12829123839404852575

`∏{e}[n+1, A219697(#)]/A373246(n+1)`
-/

namespace A373249.P12829123839404852575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), A219697 (Nat.factorization (f1 n) p) : ℤ) : ℚ) / (A373246 (n + 1) : ℚ)

end

end A373249.P12829123839404852575

namespace A373249

/-- `∏{e}[n+1, A219697(#)]/A373246(n+1)` -/
def P12829123839404852575.Spec : Prop :=
  ∀ n, P12829123839404852575.a n = (A373249 (n + 1) : ℚ)

end A373249

/-! ## A373249.P15914678322928658959

`A181820(A101296(n+1))/A373246(n+1)`
-/

namespace A373249.P15914678322928658959
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181820 (A101296 (n + 1)).toNat : ℚ) / (A373246 (n + 1) : ℚ)

end

end A373249.P15914678322928658959

namespace A373249

/-- `A181820(A101296(n+1))/A373246(n+1)` -/
def P15914678322928658959.Spec : Prop :=
  ∀ n, P15914678322928658959.a n = (A373249 (n + 1) : ℚ)

end A373249

/-! ## A373249.P902917441992760453

`∏{e}[n+1, A006530(A040976(#)+2)]/A373246(n+1)`
-/

namespace A373249.P902917441992760453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), A006530 (A040976 (Nat.factorization (f1 n) p) + 2).toNat : ℤ) : ℚ) / (A373246 (n + 1) : ℚ)

end

end A373249.P902917441992760453

namespace A373249

/-- `∏{e}[n+1, A006530(A040976(#)+2)]/A373246(n+1)` -/
def P902917441992760453.Spec : Prop :=
  ∀ n, P902917441992760453.a n = (A373249 (n + 1) : ℚ)

end A373249

/-!
# A373250: Lexicographically earliest infinite sequence such that a(i) = a(j) => A181819(i) = A181819(j) and i mod A181819(i) = j mod A181819(j), for all i, j >= 1, where A181819 is the prime shadow of n.

The programs for A373250, there is no canonical definition to state claims against.
-/

/-! ## A373250.P17328034784884815808

`A319337(n+1)%A212074(n+1)`
-/

namespace A373250.P17328034784884815808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319337 (n + 1)) (A212074 (n + 1))

end

end A373250.P17328034784884815808

/-! ## A373250.P17657515457150869587

`A319337(n+1)+A000038(A000032(n))`
-/

namespace A373250.P17657515457150869587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319337 (n + 1) + A000038 (A000032 n).toNat

end

end A373250.P17657515457150869587

/-! ## A373250.P14246592781933263882

`A319337(n+1)%A000203(A022390(n))`
-/

namespace A373250.P14246592781933263882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319337 (n + 1)) (A000203 (A022390 n).toNat)

end

end A373250.P14246592781933263882

/-! ## A373250.P3251872910024241142

`A319337(n+1)+A000038(A086380(n+1))`
-/

namespace A373250.P3251872910024241142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319337 (n + 1) + A000038 (A086380 (n + 1)).toNat

end

end A373250.P3251872910024241142

/-! ## A373250.P2505355024346038266

`A343156(A007522(n+1))+A319337(n+1)`
-/

namespace A373250.P2505355024346038266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343156 (A007522 (n + 1)).toNat + A319337 (n + 1)

end

end A373250.P2505355024346038266

/-!
# A373252: a(n) = 1 if the exponent of 2 in their canonical prime factorization is equal to the maximal exponent, otherwise 0.

The programs for A373252, the canonical program `A373252.P13142443004278825268` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373252 has offset 1).

The definition of A373252 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A373252.P13142443004278825268

`n%(a((n+1)/∏{p}[n+1, #]-1)+1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A373252

/-- `n%(a((n+1)/∏{p}[n+1, #]-1)+1)` -/
def P13142443004278825268.Spec : Prop :=
  ∀ n, (P13142443004278825268.a n : ℤ) = A373252 (n + 1)

theorem P13142443004278825268.correct : P13142443004278825268.Spec := by
  intro n
  simp only [A373252, Nat.add_sub_cancel]

end A373252

/-! ## A373252.P5544420038402784181

`A135528(A261969(n+1))`
-/

namespace A373252.P5544420038402784181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135528 (A261969 (n + 1)).toNat

end

end A373252.P5544420038402784181

namespace A373252

/-- `A135528(A261969(n+1))` -/
def P5544420038402784181.Spec : Prop :=
  ∀ n, P5544420038402784181.a n = A373252 (n + 1)

end A373252

/-! ## A373252.P8645734104575097028

`A322585(A097272(n+1))`
-/

namespace A373252.P8645734104575097028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322585 (A097272 (n + 1)).toNat

end

end A373252.P8645734104575097028

namespace A373252

/-- `A322585(A097272(n+1))` -/
def P8645734104575097028.Spec : Prop :=
  ∀ n, P8645734104575097028.a n = A373252 (n + 1)

end A373252

/-! ## A373252.P8711660968892751733

`A135528(A375931(n+1))`
-/

namespace A373252.P8711660968892751733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135528 (A375931 (n + 1)).toNat

end

end A373252.P8711660968892751733

namespace A373252

/-- `A135528(A375931(n+1))` -/
def P8711660968892751733.Spec : Prop :=
  ∀ n, P8711660968892751733.a n = A373252 (n + 1)

end A373252

/-! ## A373252.P1951384477124607391

`A375040(n+1)-A051903(n+1)`
-/

namespace A373252.P1951384477124607391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375040 (n + 1) - A051903 (n + 1)

end

end A373252.P1951384477124607391

namespace A373252

/-- `A375040(n+1)-A051903(n+1)` -/
def P1951384477124607391.Spec : Prop :=
  ∀ n, P1951384477124607391.a n = A373252 (n + 1)

end A373252

/-! ## A373252.P11202382071685181868

`A051903(2*(n+1))-A051903(n+1)`
-/

namespace A373252.P11202382071685181868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (2 * (n + 1)) - A051903 (n + 1)

end

end A373252.P11202382071685181868

namespace A373252

/-- `A051903(2*(n+1))-A051903(n+1)` -/
def P11202382071685181868.Spec : Prop :=
  ∀ n, P11202382071685181868.a n = A373252 (n + 1)

end A373252

/-! ## A373252.P11412543928907354954

`A000007(A261969(2*(n+1))-2)`
-/

namespace A373252.P11412543928907354954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A261969 (2 * (n + 1)) - 2).toNat

end

end A373252.P11412543928907354954

namespace A373252

/-- `A000007(A261969(2*(n+1))-2)` -/
def P11412543928907354954.Spec : Prop :=
  ∀ n, P11412543928907354954.a n = A373252 (n + 1)

end A373252

/-! ## A373252.P15685468569042540092

`A067132(2*(n+1))-A067132(n+1)`
-/

namespace A373252.P15685468569042540092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067132 (2 * (n + 1)) - A067132 (n + 1)

end

end A373252.P15685468569042540092

namespace A373252

/-- `A067132(2*(n+1))-A067132(n+1)` -/
def P15685468569042540092.Spec : Prop :=
  ∀ n, P15685468569042540092.a n = A373252 (n + 1)

end A373252

/-! ## A373252.P17518721804190285612

`A347283(A286161(n+1))`
-/

namespace A373252.P17518721804190285612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347283 (A286161 (n + 1)).toNat

end

end A373252.P17518721804190285612

namespace A373252

/-- `A347283(A286161(n+1))` -/
def P17518721804190285612.Spec : Prop :=
  ∀ n, P17518721804190285612.a n = A373252 (n + 1)

end A373252

/-! ## A373252.P5002052896992684096

`and(A172196(n), A383769(n+1))`
-/

namespace A373252.P5002052896992684096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A172196 n) (A383769 (n + 1))

end

end A373252.P5002052896992684096

namespace A373252

/-- `and(A172196(n), A383769(n+1))` -/
def P5002052896992684096.Spec : Prop :=
  ∀ n, P5002052896992684096.a n = A373252 (n + 1)

end A373252

/-! ## A373252.P17947389743983406722

`A008683(A383792((n+1)²))²`
-/

namespace A373252.P17947389743983406722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A383792 ((n + 1) ^ 2)).toNat ^ 2

end

end A373252.P17947389743983406722

namespace A373252

/-- `A008683(A383792((n+1)²))²` -/
def P17947389743983406722.Spec : Prop :=
  ∀ n, P17947389743983406722.a n = A373252 (n + 1)

end A373252

/-!
# A373253: a(n) is -1, 0, or 1 such that a(n) == A003415(n) (mod 3), where A003415 is the arithmetic derivative.

The programs for A373253, there is no canonical definition to state claims against.
-/

/-! ## A373253.P11613508639887696445

`A373254(n)-A373256(n)`
-/

namespace A373253.P11613508639887696445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373254 n - A373256 n

end

end A373253.P11613508639887696445

/-! ## A373253.P13897748530088216605

`A102283(A003415(n))`
-/

namespace A373253.P13897748530088216605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102283 (A003415 n).toNat

end

end A373253.P13897748530088216605

/-! ## A373253.P7146908274799073991

`A049347(A003415(n)+2)`
-/

namespace A373253.P7146908274799073991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 (A003415 n + 2).toNat

end

end A373253.P7146908274799073991

/-! ## A373253.P4011156333473311439

`A106510(A003415(n)+3)`
-/

namespace A373253.P4011156333473311439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106510 (A003415 n + 3).toNat

end

end A373253.P4011156333473311439

/-! ## A373253.P17006726277331660632

`A102283(A129283(n)-n)`
-/

namespace A373253.P17006726277331660632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102283 (A129283 n - (n : ℤ)).toNat

end

end A373253.P17006726277331660632

/-! ## A373253.P15619188253888649822

`A128834(2*A003415(n))`
-/

namespace A373253.P15619188253888649822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128834 (2 * A003415 n).toNat

end

end A373253.P15619188253888649822

/-! ## A373253.P9608627960102216262

`A102283(2*A129283(2*n))`
-/

namespace A373253.P9608627960102216262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102283 (2 * A129283 (2 * n)).toNat

end

end A373253.P9608627960102216262

/-!
# A373254: a(n) = 1 if A003415(n) == +1 (mod 3), otherwise 0, where A003415 is the arithmetic derivative.

The programs for A373254, there is no canonical definition to state claims against.
-/

/-! ## A373254.P4740565067819610441

`A373256(8*n)`
-/

namespace A373254.P4740565067819610441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373256 (8 * n)

end

end A373254.P4740565067819610441

/-! ## A373254.P1049937468675646407

`char[A373255(n+1)]`
-/

namespace A373254.P1049937468675646407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373255 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A373254.P1049937468675646407

/-! ## A373254.P16795231998300402814

`char[eq[1, A373253(n)]]`
-/

namespace A373254.P16795231998300402814
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373253 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A373254.P16795231998300402814

/-! ## A373254.P8617944079067206029

`A373256(n)+A373253(n)`
-/

namespace A373254.P8617944079067206029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373256 n + A373253 n

end

end A373254.P8617944079067206029

/-! ## A373254.P2690002737479125942

`1-(A373256(n)+A359430(n))`
-/

namespace A373254.P2690002737479125942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A373256 n + A359430 n)

end

end A373254.P2690002737479125942

/-! ## A373254.P13426905036132109776

`A079978(A003415(n)+2)`
-/

namespace A373254.P13426905036132109776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 (A003415 n + 2).toNat

end

end A373254.P13426905036132109776

/-!
# A373255: Numbers k for which A003415(k) == +1 (mod 3), where A003415 is the arithmetic derivative.

The programs for A373255, there is no canonical definition to state claims against.
-/

/-! ## A373255.P16434717924263259340

`eq[1, A373253(n)]`
-/

namespace A373255.P16434717924263259340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373253 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A373255.P16434717924263259340

/-! ## A373255.P11065979120615532277

`eq[1, A373254(n)]`
-/

namespace A373255.P11065979120615532277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373254 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A373255.P11065979120615532277

/-! ## A373255.P5984740189259401190

`eq[A359430(n), A373256(n)]`
-/

namespace A373255.P5984740189259401190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359430 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373256 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A373255.P5984740189259401190

/-! ## A373255.P10289502908480355603

`eq[1, A373256(8*n)]`
-/

namespace A373255.P10289502908480355603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373256 (8 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A373255.P10289502908480355603

/-! ## A373255.P14972712767488603689

`filter[A168183(n+1), A373254(#)]`
-/

namespace A373255.P14972712767488603689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168183 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373254 (f1 j).toNat = 1) n)

end

end A373255.P14972712767488603689

/-! ## A373255.P2332007824341143294

`filter[A007412(n+1), A373254(#)]`
-/

namespace A373255.P2332007824341143294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007412 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373254 (f1 j).toNat = 1) n)

end

end A373255.P2332007824341143294

/-! ## A373255.P3589748998222922964

`filter[A367615(n+1), A373254(#)]`
-/

namespace A373255.P3589748998222922964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367615 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373254 (f1 j).toNat = 1) n)

end

end A373255.P3589748998222922964

/-! ## A373255.P9143799205982382655

`filter[A173517(n), A373254(#)]`
-/

namespace A373255.P9143799205982382655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173517 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373254 (f1 j).toNat = 1) n)

end

end A373255.P9143799205982382655

/-! ## A373255.P5436986749362313210

`filter[A081600(n), A373254(#)]`
-/

namespace A373255.P5436986749362313210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081600 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373254 (f1 j).toNat = 1) n)

end

end A373255.P5436986749362313210

/-! ## A373255.P2110744562597545145

`filter[A117909(n), A373254(#)]`
-/

namespace A373255.P2110744562597545145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117909 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373254 (f1 j).toNat = 1) n)

end

end A373255.P2110744562597545145

/-! ## A373255.P17077095599037209455

`filter[A092942(n), A373254(#)]`
-/

namespace A373255.P17077095599037209455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092942 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373254 (f1 j).toNat = 1) n)

end

end A373255.P17077095599037209455

/-! ## A373255.P18312916605696220544

`filter[A083926(n), A373254(#)]`
-/

namespace A373255.P18312916605696220544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083926 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373254 (f1 j).toNat = 1) n)

end

end A373255.P18312916605696220544

/-! ## A373255.P5489683275581610509

`filter[A230414(n), A373254(#)]`
-/

namespace A373255.P5489683275581610509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230414 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373254 (f1 j).toNat = 1) n)

end

end A373255.P5489683275581610509

/-! ## A373255.P282072097901607962

`filter[A027656(n), A373254(#)]`
-/

namespace A373255.P282072097901607962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373254 (f1 j).toNat = 1) n)

end

end A373255.P282072097901607962

/-! ## A373255.P15706687749938436640

`filter[A102389(n), A373254(#)]`
-/

namespace A373255.P15706687749938436640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102389 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373254 (f1 j).toNat = 1) n)

end

end A373255.P15706687749938436640

/-! ## A373255.P533121209158898485

`filter[A102390(n), A373254(#)]`
-/

namespace A373255.P533121209158898485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102390 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373254 (f1 j).toNat = 1) n)

end

end A373255.P533121209158898485

/-! ## A373255.P7635218322677011907

`filter[A152271(n), A373254(#)]`
-/

namespace A373255.P7635218322677011907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373254 (f1 j).toNat = 1) n)

end

end A373255.P7635218322677011907

/-! ## A373255.P17506019970797539687

`filter[A158416(n), A373254(#)]`
-/

namespace A373255.P17506019970797539687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158416 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373254 (f1 j).toNat = 1) n)

end

end A373255.P17506019970797539687

/-! ## A373255.P16750824686554185195

`filter[A057979(n), A373254(#)]`
-/

namespace A373255.P16750824686554185195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373254 (f1 j).toNat = 1) n)

end

end A373255.P16750824686554185195

/-! ## A373255.P11429068283201075734

`filter[A131360(n), A373254(#)]`
-/

namespace A373255.P11429068283201075734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131360 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373254 (f1 j).toNat = 1) n)

end

end A373255.P11429068283201075734

/-!
# A373256: a(n) = 1 if A003415(n) == -1 (mod 3), otherwise 0, where A003415 is the arithmetic derivative.

The programs for A373256, there is no canonical definition to state claims against.
-/

/-! ## A373256.P2342284569645799798

`1-(A359430(n)+A373254(n))`
-/

namespace A373256.P2342284569645799798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A359430 n + A373254 n)

end

end A373256.P2342284569645799798

/-! ## A373256.P132316512833197085

`A373254(8*n)`
-/

namespace A373256.P132316512833197085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373254 (8 * n)

end

end A373256.P132316512833197085

/-! ## A373256.P10493844383935908359

`char[A373257(n+1)]`
-/

namespace A373256.P10493844383935908359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373257 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A373256.P10493844383935908359

/-! ## A373256.P8187885737091984529

`A373254(n)-A373253(n)`
-/

namespace A373256.P8187885737091984529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373254 n - A373253 n

end

end A373256.P8187885737091984529

/-! ## A373256.P4633501023314891084

`A079978(A003415(n)+1)`
-/

namespace A373256.P4633501023314891084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 (A003415 n + 1).toNat

end

end A373256.P4633501023314891084

/-!
# A373257: Numbers k for which A003415(k) == -1 (mod 3), where A003415 is the arithmetic derivative.

The programs for A373257, there is no canonical definition to state claims against.
-/

/-! ## A373257.P5838672289170567541

`eq[1, A373256(n)]`
-/

namespace A373257.P5838672289170567541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373256 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A373257.P5838672289170567541

/-! ## A373257.P2191190868427069670

`eq[1, A373253(n)+2]`
-/

namespace A373257.P2191190868427069670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373253 n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A373257.P2191190868427069670

/-! ## A373257.P201860262768908260

`eq[A359430(n), A373254(n)]`
-/

namespace A373257.P201860262768908260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359430 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373254 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A373257.P201860262768908260

/-! ## A373257.P12776694102690792906

`filter[A002808(n+1), A373256(#)]`
-/

namespace A373257.P12776694102690792906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373256 (f1 j).toNat = 1) n)

end

end A373257.P12776694102690792906

/-! ## A373257.P1882619419824392929

`filter[A018252(n+2), A373256(#)]`
-/

namespace A373257.P1882619419824392929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373256 (f1 j).toNat = 1) n)

end

end A373257.P1882619419824392929

/-! ## A373257.P14128234705229540870

`filter[A141468(n+3), A373256(#)]`
-/

namespace A373257.P14128234705229540870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373256 (f1 j).toNat = 1) n)

end

end A373257.P14128234705229540870

/-! ## A373257.P331254992709405082

`filter[A222307(2*n+1), A373256(#)]`
-/

namespace A373257.P331254992709405082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222307 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373256 (f1 j).toNat = 1) n)

end

end A373257.P331254992709405082

/-! ## A373257.P150361481928364161

`eq[1, A373254(8*n)]`
-/

namespace A373257.P150361481928364161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373254 (8 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A373257.P150361481928364161

/-! ## A373257.P14674411959861345186

`filter[A343311(n+1), A373256(#)]`
-/

namespace A373257.P14674411959861345186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343311 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373256 (f1 j).toNat = 1) n)

end

end A373257.P14674411959861345186

/-! ## A373257.P16304783744398100060

`filter[A387319(n+1), A373256(#)]`
-/

namespace A373257.P16304783744398100060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387319 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373256 (f1 j).toNat = 1) n)

end

end A373257.P16304783744398100060

/-! ## A373257.P6344061072075110281

`filter[A056653(n+1), A373256(#)]`
-/

namespace A373257.P6344061072075110281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373256 (f1 j).toNat = 1) n)

end

end A373257.P6344061072075110281

/-! ## A373257.P10451170421406575593

`filter[A176423(n+1), A373256(#)]`
-/

namespace A373257.P10451170421406575593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176423 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373256 (f1 j).toNat = 1) n)

end

end A373257.P10451170421406575593

/-! ## A373257.P9561382520640268692

`filter[A065090(n+1), A373256(#)]`
-/

namespace A373257.P9561382520640268692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373256 (f1 j).toNat = 1) n)

end

end A373257.P9561382520640268692

/-! ## A373257.P16010140491709093457

`filter[A171581(n+3), A373256(#)]`
-/

namespace A373257.P16010140491709093457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171581 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373256 (f1 j).toNat = 1) n)

end

end A373257.P16010140491709093457

/-! ## A373257.P2275441281009577532

`filter[A073900(n+1), A373256(#)]`
-/

namespace A373257.P2275441281009577532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073900 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373256 (f1 j).toNat = 1) n)

end

end A373257.P2275441281009577532

/-! ## A373257.P1904930993192740455

`filter[A073899(n+1), A373256(#)]`
-/

namespace A373257.P1904930993192740455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073899 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373256 (f1 j).toNat = 1) n)

end

end A373257.P1904930993192740455

/-! ## A373257.P848918353079330530

`filter[A073884(n+1), A373256(#)]`
-/

namespace A373257.P848918353079330530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073884 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373256 (f1 j).toNat = 1) n)

end

end A373257.P848918353079330530

/-! ## A373257.P16424121288943256499

`filter[A089088(n), A373256(#)]`
-/

namespace A373257.P16424121288943256499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373256 (f1 j).toNat = 1) n)

end

end A373257.P16424121288943256499

/-! ## A373257.P11352224697075325523

`filter[A007412(n+1), A373256(#)]`
-/

namespace A373257.P11352224697075325523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007412 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373256 (f1 j).toNat = 1) n)

end

end A373257.P11352224697075325523

/-! ## A373257.P12538476777304068022

`filter[A376919(n), A373256(#)]`
-/

namespace A373257.P12538476777304068022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376919 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373256 (f1 j).toNat = 1) n)

end

end A373257.P12538476777304068022

/-!
# A373258: a(n) = 1 if n' / gcd(n,n') is a multiple of 4 and A276085(n) is a multiple of 8, otherwise 0, where n' stands for the arithmetic derivative of n, A003415, and A276085 is the primorial base log-function.

The programs for A373258, the canonical program `A373258.P7426803091222607913` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373258 has offset 1).

The definition of A373258 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A373137, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A373258.P7426803091222607913

`A369004(n+1)*A373137(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A373258

/-- `A369004(n+1)*A373137(n+1)` -/
def P7426803091222607913.Spec : Prop :=
  ∀ n, P7426803091222607913.a n = A373258 (n + 1)

theorem P7426803091222607913.correct : P7426803091222607913.Spec := by
  intro n
  simp only [A373258, Nat.add_sub_cancel]

end A373258

/-! ## A373258.P11257092293901546920

`char[A373259(n+1)-1]`
-/

namespace A373258.P11257092293901546920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373259 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A373258.P11257092293901546920

namespace A373258

/-- `char[A373259(n+1)-1]` -/
def P11257092293901546920.Spec : Prop :=
  ∀ n, (P11257092293901546920.a n : ℤ) = A373258 (n + 1)

end A373258

/-! ## A373258.P1349726939959107233

`char[∩[A369005(n+1), A373138(n+1)]-1]`
-/

namespace A373258.P1349726939959107233
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369005 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373138 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A373258.P1349726939959107233

namespace A373258

/-- `char[∩[A369005(n+1), A373138(n+1)]-1]` -/
def P1349726939959107233.Spec : Prop :=
  ∀ n, (P1349726939959107233.a n : ℤ) = A373258 (n + 1)

end A373258

/-! ## A373258.P5807148927532886021

`A121262(A083345(n+1))*A373137(n+1)`
-/

namespace A373258.P5807148927532886021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121262 (A083345 (n + 1)).toNat * A373137 (n + 1)

end

end A373258.P5807148927532886021

namespace A373258

/-- `A121262(A083345(n+1))*A373137(n+1)` -/
def P5807148927532886021.Spec : Prop :=
  ∀ n, P5807148927532886021.a n = A373258 (n + 1)

end A373258

/-! ## A373258.P7191820381568510714

`A121262(A373266(n+1)+A189036(n+1)/A083346(n+1))`
-/

namespace A373258.P7191820381568510714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121262 (SequenceMachineLib.roundAway ((A373266 (n + 1) : ℚ) + (A189036 (n + 1) : ℚ) / (A083346 (n + 1) : ℚ))).toNat

end

end A373258.P7191820381568510714

namespace A373258

/-- `A121262(A373266(n+1)+A189036(n+1)/A083346(n+1))` -/
def P7191820381568510714.Spec : Prop :=
  ∀ n, P7191820381568510714.a n = A373258 (n + 1)

end A373258

/-! ## A373258.P4379713395475576696

`and(A262519(A363952(n+1)), A369004(n+1))`
-/

namespace A373258.P4379713395475576696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A262519 (A363952 (n + 1)).toNat) (A369004 (n + 1))

end

end A373258.P4379713395475576696

namespace A373258

/-- `and(A262519(A363952(n+1)), A369004(n+1))` -/
def P4379713395475576696.Spec : Prop :=
  ∀ n, P4379713395475576696.a n = A373258 (n + 1)

end A373258

/-! ## A373258.P17491206549489173332

`and(A245553(A245558(n+1)), A369004(n+1))`
-/

namespace A373258.P17491206549489173332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A245553 (A245558 (n + 1)).toNat) (A369004 (n + 1))

end

end A373258.P17491206549489173332

namespace A373258

/-- `and(A245553(A245558(n+1)), A369004(n+1))` -/
def P17491206549489173332.Spec : Prop :=
  ∀ n, P17491206549489173332.a n = A373258 (n + 1)

end A373258

/-! ## A373258.P13651437068146109054

`and(A011535(A003238(n+1)), A369004(n+1))`
-/

namespace A373258.P13651437068146109054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A011535 (A003238 (n + 1)).toNat) (A369004 (n + 1))

end

end A373258.P13651437068146109054

namespace A373258

/-- `and(A011535(A003238(n+1)), A369004(n+1))` -/
def P13651437068146109054.Spec : Prop :=
  ∀ n, P13651437068146109054.a n = A373258 (n + 1)

end A373258

/-! ## A373258.P7125110883897641543

`A369004(n+1)*A369004(A283983(n))`
-/

namespace A373258.P7125110883897641543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369004 (n + 1) * A369004 (A283983 n).toNat

end

end A373258.P7125110883897641543

namespace A373258

/-- `A369004(n+1)*A369004(A283983(n))` -/
def P7125110883897641543.Spec : Prop :=
  ∀ n, P7125110883897641543.a n = A373258 (n + 1)

end A373258

/-! ## A373258.P15360650601415193166

`A065043(A337472(n))*A368994(n+1)`
-/

namespace A373258.P15360650601415193166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065043 (A337472 n).toNat * A368994 (n + 1)

end

end A373258.P15360650601415193166

namespace A373258

/-- `A065043(A337472(n))*A368994(n+1)` -/
def P15360650601415193166.Spec : Prop :=
  ∀ n, P15360650601415193166.a n = A373258 (n + 1)

end A373258

/-!
# A373259: Numbers k such that k' / gcd(k,k') is a multiple of 4 and A276085(k) is a multiple of 8, where k' stands for the arithmetic derivative of k, A003415, and A276085 is the primorial base log-function.

The programs for A373259, the canonical program `A373259.P15978814945549394217` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373259 has offset 1).

The definition of A373259 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8325 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A373259.P15978814945549394217

`filter[A373138(n+1), A373258(#)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A373259

/-- `filter[A373138(n+1), A373258(#)]` -/
def P15978814945549394217.Spec : Prop :=
  ∀ n, P15978814945549394217.a n = A373259 (n + 1)

theorem P15978814945549394217.correct : P15978814945549394217.Spec := by
  intro n
  simp only [A373259, Nat.add_sub_cancel]

end A373259

/-! ## A373259.P9164738726108478152

`filter[A376198(n+1), A373258(#)]`
-/

namespace A373259.P9164738726108478152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376198 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373258 (f1 j).toNat = 1) n)

end

end A373259.P9164738726108478152

namespace A373259

/-- `filter[A376198(n+1), A373258(#)]` -/
def P9164738726108478152.Spec : Prop :=
  ∀ n, P9164738726108478152.a n = A373259 (n + 1)

end A373259

/-! ## A373259.P12758821715810308947

`filter[A305904(n+1), A373258(#)]`
-/

namespace A373259.P12758821715810308947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305904 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373258 (f1 j).toNat = 1) n)

end

end A373259.P12758821715810308947

namespace A373259

/-- `filter[A305904(n+1), A373258(#)]` -/
def P12758821715810308947.Spec : Prop :=
  ∀ n, P12758821715810308947.a n = A373259 (n + 1)

end A373259

/-! ## A373259.P8854029120825691677

`filter[A305903(n+1), A373258(#)]`
-/

namespace A373259.P8854029120825691677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305903 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373258 (f1 j).toNat = 1) n)

end

end A373259.P8854029120825691677

namespace A373259

/-- `filter[A305903(n+1), A373258(#)]` -/
def P8854029120825691677.Spec : Prop :=
  ∀ n, P8854029120825691677.a n = A373259 (n + 1)

end A373259

/-! ## A373259.P12263847523084755186

`filter[A305800(n+1), A373258(#)]`
-/

namespace A373259.P12263847523084755186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305800 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373258 (f1 j).toNat = 1) n)

end

end A373259.P12263847523084755186

namespace A373259

/-- `filter[A305800(n+1), A373258(#)]` -/
def P12263847523084755186.Spec : Prop :=
  ∀ n, P12263847523084755186.a n = A373259 (n + 1)

end A373259

/-! ## A373259.P14726920444354682284

`filter[A305801(n+1), A373258(#)]`
-/

namespace A373259.P14726920444354682284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305801 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373258 (f1 j).toNat = 1) n)

end

end A373259.P14726920444354682284

namespace A373259

/-- `filter[A305801(n+1), A373258(#)]` -/
def P14726920444354682284.Spec : Prop :=
  ∀ n, P14726920444354682284.a n = A373259 (n + 1)

end A373259

/-! ## A373259.P1268153322565897471

`filter[A305900(n+1), A373258(#)]`
-/

namespace A373259.P1268153322565897471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305900 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373258 (f1 j).toNat = 1) n)

end

end A373259.P1268153322565897471

namespace A373259

/-- `filter[A305900(n+1), A373258(#)]` -/
def P1268153322565897471.Spec : Prop :=
  ∀ n, P1268153322565897471.a n = A373259 (n + 1)

end A373259

/-! ## A373259.P4023641590030077816

`filter[A319704(n+1), A373258(#)]`
-/

namespace A373259.P4023641590030077816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319704 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373258 (f1 j).toNat = 1) n)

end

end A373259.P4023641590030077816

namespace A373259

/-- `filter[A319704(n+1), A373258(#)]` -/
def P4023641590030077816.Spec : Prop :=
  ∀ n, P4023641590030077816.a n = A373259 (n + 1)

end A373259

/-! ## A373259.P8648483565806836900

`filter[A319707(n+1), A373258(#)]`
-/

namespace A373259.P8648483565806836900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319707 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373258 (f1 j).toNat = 1) n)

end

end A373259.P8648483565806836900

namespace A373259

/-- `filter[A319707(n+1), A373258(#)]` -/
def P8648483565806836900.Spec : Prop :=
  ∀ n, P8648483565806836900.a n = A373259 (n + 1)

end A373259

/-! ## A373259.P12316289487816591771

`filter[A331304(n+1), A373258(#)]`
-/

namespace A373259.P12316289487816591771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331304 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373258 (f1 j).toNat = 1) n)

end

end A373259.P12316289487816591771

namespace A373259

/-- `filter[A331304(n+1), A373258(#)]` -/
def P12316289487816591771.Spec : Prop :=
  ∀ n, P12316289487816591771.a n = A373259 (n + 1)

end A373259

/-! ## A373259.P16599338922469978563

`filter[A379000(n+1), A373258(#)]`
-/

namespace A373259.P16599338922469978563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379000 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373258 (f1 j).toNat = 1) n)

end

end A373259.P16599338922469978563

namespace A373259

/-- `filter[A379000(n+1), A373258(#)]` -/
def P16599338922469978563.Spec : Prop :=
  ∀ n, P16599338922469978563.a n = A373259 (n + 1)

end A373259

/-! ## A373259.P11004518348348011076

`filter[A305979(n+1), A373258(#)]`
-/

namespace A373259.P11004518348348011076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305979 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373258 (f1 j).toNat = 1) n)

end

end A373259.P11004518348348011076

namespace A373259

/-- `filter[A305979(n+1), A373258(#)]` -/
def P11004518348348011076.Spec : Prop :=
  ∀ n, P11004518348348011076.a n = A373259 (n + 1)

end A373259

/-! ## A373259.P16881503030512942724

`filter[A305975(n+1), A373258(#)]`
-/

namespace A373259.P16881503030512942724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305975 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373258 (f1 j).toNat = 1) n)

end

end A373259.P16881503030512942724

namespace A373259

/-- `filter[A305975(n+1), A373258(#)]` -/
def P16881503030512942724.Spec : Prop :=
  ∀ n, P16881503030512942724.a n = A373259 (n + 1)

end A373259

/-! ## A373259.P10756136501574489322

`filter[A305976(n+1), A373258(#)]`
-/

namespace A373259.P10756136501574489322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305976 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373258 (f1 j).toNat = 1) n)

end

end A373259.P10756136501574489322

namespace A373259

/-- `filter[A305976(n+1), A373258(#)]` -/
def P10756136501574489322.Spec : Prop :=
  ∀ n, P10756136501574489322.a n = A373259 (n + 1)

end A373259

/-! ## A373259.P16006216183583874461

`filter[A305901(n+1), A373258(#)]`
-/

namespace A373259.P16006216183583874461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305901 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373258 (f1 j).toNat = 1) n)

end

end A373259.P16006216183583874461

namespace A373259

/-- `filter[A305901(n+1), A373258(#)]` -/
def P16006216183583874461.Spec : Prop :=
  ∀ n, P16006216183583874461.a n = A373259 (n + 1)

end A373259

/-! ## A373259.P1986953690870689578

`filter[A379053(n+1), A373258(#)]`
-/

namespace A373259.P1986953690870689578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379053 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373258 (f1 j).toNat = 1) n)

end

end A373259.P1986953690870689578

namespace A373259

/-- `filter[A379053(n+1), A373258(#)]` -/
def P1986953690870689578.Spec : Prop :=
  ∀ n, P1986953690870689578.a n = A373259 (n + 1)

end A373259

/-! ## A373259.P8882724747378185861

`filter[A373138(n+1), A369004(#)]`
-/

namespace A373259.P8882724747378185861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373138 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369004 (f1 j).toNat = 1) n)

end

end A373259.P8882724747378185861

namespace A373259

/-- `filter[A373138(n+1), A369004(#)]` -/
def P8882724747378185861.Spec : Prop :=
  ∀ n, P8882724747378185861.a n = A373259 (n + 1)

end A373259

/-! ## A373259.P2600930014520233909

`filter[A332900(n+1), A373258(#)]`
-/

namespace A373259.P2600930014520233909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332900 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373258 (f1 j).toNat = 1) n)

end

end A373259.P2600930014520233909

namespace A373259

/-- `filter[A332900(n+1), A373258(#)]` -/
def P2600930014520233909.Spec : Prop :=
  ∀ n, P2600930014520233909.a n = A373259 (n + 1)

end A373259

/-! ## A373259.P5822096213267975429

`filter[A369005(n+1), A373137(#)]`
-/

namespace A373259.P5822096213267975429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373137 (f1 j).toNat = 1) n)

end

end A373259.P5822096213267975429

namespace A373259

/-- `filter[A369005(n+1), A373137(#)]` -/
def P5822096213267975429.Spec : Prop :=
  ∀ n, P5822096213267975429.a n = A373259 (n + 1)

end A373259

/-!
# A373260: a(n) = 1 if A276085(n) == +1 (mod 3), otherwise 0, where A276085 is the primorial base log-function.

The programs for A373260, the canonical program `A373260.P13345870415244065994` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373260 has offset 1).

The definition of A373260 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A373260.P17558671373453610050

`A373263(2*(n+1))`
-/

namespace A373260.P17558671373453610050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373263 (2 * (n + 1))

end

end A373260.P17558671373453610050

namespace A373260

/-- `A373263(2*(n+1))` -/
def P17558671373453610050.Spec : Prop :=
  ∀ n, P17558671373453610050.a n = A373260 (n + 1)

end A373260

/-! ## A373260.P13345870415244065994

`A372573(3*(n+1))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A373260

/-- `A372573(3*(n+1))` -/
def P13345870415244065994.Spec : Prop :=
  ∀ n, P13345870415244065994.a n = A373260 (n + 1)

theorem P13345870415244065994.correct : P13345870415244065994.Spec := by
  intro n
  simp only [A373260, Nat.add_sub_cancel]

end A373260

/-! ## A373260.P2369929462572254205

`ceil(A373153(n+1)/2)`
-/

namespace A373260.P2369929462572254205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A373153 (n + 1) : ℚ) / 2⌉

end

end A373260.P2369929462572254205

namespace A373260

/-- `ceil(A373153(n+1)/2)` -/
def P2369929462572254205.Spec : Prop :=
  ∀ n, P2369929462572254205.a n = A373260 (n + 1)

end A373260

/-! ## A373260.P10352314999305981096

`A079978(A372576(n+1)+2)`
-/

namespace A373260.P10352314999305981096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 (A372576 (n + 1) + 2).toNat

end

end A373260.P10352314999305981096

namespace A373260

/-- `A079978(A372576(n+1)+2)` -/
def P10352314999305981096.Spec : Prop :=
  ∀ n, P10352314999305981096.a n = A373260 (n + 1)

end A373260

/-! ## A373260.P4936662678274098202

`A373263(n+1)+A373153(n+1)`
-/

namespace A373260.P4936662678274098202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373263 (n + 1) + A373153 (n + 1)

end

end A373260.P4936662678274098202

namespace A373260

/-- `A373263(n+1)+A373153(n+1)` -/
def P4936662678274098202.Spec : Prop :=
  ∀ n, P4936662678274098202.a n = A373260 (n + 1)

end A373260

/-! ## A373260.P5418364411207091012

`A353350(3*(n+1)/A065330(n+1))`
-/

namespace A373260.P5418364411207091012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353350 (SequenceMachineLib.roundAway (3 * ((n + 1 : ℚ) / (A065330 (n + 1) : ℚ)))).toNat

end

end A373260.P5418364411207091012

namespace A373260

/-- `A353350(3*(n+1)/A065330(n+1))` -/
def P5418364411207091012.Spec : Prop :=
  ∀ n, P5418364411207091012.a n = A373260 (n + 1)

end A373260

/-! ## A373260.P14893527214167588211

`-(A373153(2*(n+1))*A373153(n+1))`
-/

namespace A373260.P14893527214167588211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A373153 (2 * (n + 1)) * A373153 (n + 1))

end

end A373260.P14893527214167588211

namespace A373260

/-- `-(A373153(2*(n+1))*A373153(n+1))` -/
def P14893527214167588211.Spec : Prop :=
  ∀ n, P14893527214167588211.a n = A373260 (n + 1)

end A373260

/-! ## A373260.P1673136807414147675

`A373143(2*A065331(n+1)²)`
-/

namespace A373260.P1673136807414147675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373143 (2 * A065331 (n + 1) ^ 2).toNat

end

end A373260.P1673136807414147675

namespace A373260

/-- `A373143(2*A065331(n+1)²)` -/
def P1673136807414147675.Spec : Prop :=
  ∀ n, P1673136807414147675.a n = A373260 (n + 1)

end A373260

/-! ## A373260.P1170766145629102034

`A374041(2*(n+1)²)`
-/

namespace A373260.P1170766145629102034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374041 (2 * (n + 1) ^ 2)

end

end A373260.P1170766145629102034

namespace A373260

/-- `A374041(2*(n+1)²)` -/
def P1170766145629102034.Spec : Prop :=
  ∀ n, P1170766145629102034.a n = A373260 (n + 1)

end A373260

/-! ## A373260.P8700011296016768291

`A373143((3*(n+1))²)`
-/

namespace A373260.P8700011296016768291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373143 ((3 * (n + 1)) ^ 2)

end

end A373260.P8700011296016768291

namespace A373260

/-- `A373143((3*(n+1))²)` -/
def P8700011296016768291.Spec : Prop :=
  ∀ n, P8700011296016768291.a n = A373260 (n + 1)

end A373260

/-!
# A373261: Numbers k for which A276085(k) == +1 (mod 3), where A276085 is the primorial base log-function.

The programs for A373261, the canonical program `A373261.P11625810487040253736` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373261 has offset 1).

The definition of A373261 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A373261.P11625810487040253736

`eq[1, A373153(n+1)]+1`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A373261

/-- `eq[1, A373153(n+1)]+1` -/
def P11625810487040253736.Spec : Prop :=
  ∀ n, (P11625810487040253736.a n : ℤ) = A373261 (n + 1)

theorem P11625810487040253736.correct : P11625810487040253736.Spec := by
  intro n
  simp only [A373261, Nat.add_sub_cancel]

end A373261

/-! ## A373261.P7809128526469473357

`eq[1, A373260(n+1)]+1`
-/

namespace A373261.P7809128526469473357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373260 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A373261.P7809128526469473357

namespace A373261

/-- `eq[1, A373260(n+1)]+1` -/
def P7809128526469473357.Spec : Prop :=
  ∀ n, (P7809128526469473357.a n : ℤ) = A373261 (n + 1)

end A373261

/-! ## A373261.P9884622108831157957

`filter[A344180(n), A373260(#)]`
-/

namespace A373261.P9884622108831157957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344180 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373260 (f1 j).toNat = 1) n)

end

end A373261.P9884622108831157957

namespace A373261

/-- `filter[A344180(n), A373260(#)]` -/
def P9884622108831157957.Spec : Prop :=
  ∀ n, P9884622108831157957.a n = A373261 (n + 1)

end A373261

/-! ## A373261.P15040040624349391660

`eq[A372573(2*(n+1)), A372573(n+1)]+1`
-/

namespace A373261.P15040040624349391660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372573 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372573 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A373261.P15040040624349391660

namespace A373261

/-- `eq[A372573(2*(n+1)), A372573(n+1)]+1` -/
def P15040040624349391660.Spec : Prop :=
  ∀ n, (P15040040624349391660.a n : ℤ) = A373261 (n + 1)

end A373261

/-! ## A373261.P15962804500718247147

`filter[A118672(n+1), A373260(#)]`
-/

namespace A373261.P15962804500718247147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118672 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373260 (f1 j).toNat = 1) n)

end

end A373261.P15962804500718247147

namespace A373261

/-- `filter[A118672(n+1), A373260(#)]` -/
def P15962804500718247147.Spec : Prop :=
  ∀ n, P15962804500718247147.a n = A373261 (n + 1)

end A373261

/-! ## A373261.P15363161271468671850

`filter[A047229(n+2), A373260(#)]`
-/

namespace A373261.P15363161271468671850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047229 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373260 (f1 j).toNat = 1) n)

end

end A373261.P15363161271468671850

namespace A373261

/-- `filter[A047229(n+2), A373260(#)]` -/
def P15363161271468671850.Spec : Prop :=
  ∀ n, P15363161271468671850.a n = A373261 (n + 1)

end A373261

/-! ## A373261.P16661627711041159105

`filter[A389634(n+1), A373260(#)]`
-/

namespace A373261.P16661627711041159105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389634 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373260 (f1 j).toNat = 1) n)

end

end A373261.P16661627711041159105

namespace A373261

/-- `filter[A389634(n+1), A373260(#)]` -/
def P16661627711041159105.Spec : Prop :=
  ∀ n, P16661627711041159105.a n = A373261 (n + 1)

end A373261

/-! ## A373261.P2082507896784015459

`filter[A324560(n+1), A373260(#)]`
-/

namespace A373261.P2082507896784015459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324560 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373260 (f1 j).toNat = 1) n)

end

end A373261.P2082507896784015459

namespace A373261

/-- `filter[A324560(n+1), A373260(#)]` -/
def P2082507896784015459.Spec : Prop :=
  ∀ n, P2082507896784015459.a n = A373261 (n + 1)

end A373261

/-! ## A373261.P12505296620592303304

`filter[A391342(n+1), A373260(#)]`
-/

namespace A373261.P12505296620592303304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391342 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373260 (f1 j).toNat = 1) n)

end

end A373261.P12505296620592303304

namespace A373261

/-- `filter[A391342(n+1), A373260(#)]` -/
def P12505296620592303304.Spec : Prop :=
  ∀ n, P12505296620592303304.a n = A373261 (n + 1)

end A373261

/-! ## A373261.P17089698725577915765

`filter[A080671(n+1), A373260(#)]`
-/

namespace A373261.P17089698725577915765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080671 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373260 (f1 j).toNat = 1) n)

end

end A373261.P17089698725577915765

namespace A373261

/-- `filter[A080671(n+1), A373260(#)]` -/
def P17089698725577915765.Spec : Prop :=
  ∀ n, P17089698725577915765.a n = A373261 (n + 1)

end A373261

/-! ## A373261.P10253168199034049117

`filter[A080672(n+1), A373260(#)]`
-/

namespace A373261.P10253168199034049117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080672 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373260 (f1 j).toNat = 1) n)

end

end A373261.P10253168199034049117

namespace A373261

/-- `filter[A080672(n+1), A373260(#)]` -/
def P10253168199034049117.Spec : Prop :=
  ∀ n, P10253168199034049117.a n = A373261 (n + 1)

end A373261

/-! ## A373261.P5101260837106901351

`filter[A070331(n+1), A373260(#)]`
-/

namespace A373261.P5101260837106901351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070331 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373260 (f1 j).toNat = 1) n)

end

end A373261.P5101260837106901351

namespace A373261

/-- `filter[A070331(n+1), A373260(#)]` -/
def P5101260837106901351.Spec : Prop :=
  ∀ n, P5101260837106901351.a n = A373261 (n + 1)

end A373261

/-! ## A373261.P7273152554121371425

`filter[A151988(n+1), A373260(#)]`
-/

namespace A373261.P7273152554121371425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151988 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373260 (f1 j).toNat = 1) n)

end

end A373261.P7273152554121371425

namespace A373261

/-- `filter[A151988(n+1), A373260(#)]` -/
def P7273152554121371425.Spec : Prop :=
  ∀ n, P7273152554121371425.a n = A373261 (n + 1)

end A373261

/-! ## A373261.P9983689085208883565

`filter[A047226(n+2), A373260(#)]`
-/

namespace A373261.P9983689085208883565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047226 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373260 (f1 j).toNat = 1) n)

end

end A373261.P9983689085208883565

namespace A373261

/-- `filter[A047226(n+2), A373260(#)]` -/
def P9983689085208883565.Spec : Prop :=
  ∀ n, P9983689085208883565.a n = A373261 (n + 1)

end A373261

/-! ## A373261.P10432230687029468215

`filter[A047248(n+2), A373260(#)]`
-/

namespace A373261.P10432230687029468215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047248 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373260 (f1 j).toNat = 1) n)

end

end A373261.P10432230687029468215

namespace A373261

/-- `filter[A047248(n+2), A373260(#)]` -/
def P10432230687029468215.Spec : Prop :=
  ∀ n, P10432230687029468215.a n = A373261 (n + 1)

end A373261

/-! ## A373261.P8572636250731562579

`filter[A226946(n+1), A373260(#)]`
-/

namespace A373261.P8572636250731562579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226946 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373260 (f1 j).toNat = 1) n)

end

end A373261.P8572636250731562579

namespace A373261

/-- `filter[A226946(n+1), A373260(#)]` -/
def P8572636250731562579.Spec : Prop :=
  ∀ n, P8572636250731562579.a n = A373261 (n + 1)

end A373261

/-! ## A373261.P10123043835072261027

`filter[A153276(n+2), A373260(#)]`
-/

namespace A373261.P10123043835072261027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153276 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373260 (f1 j).toNat = 1) n)

end

end A373261.P10123043835072261027

namespace A373261

/-- `filter[A153276(n+2), A373260(#)]` -/
def P10123043835072261027.Spec : Prop :=
  ∀ n, P10123043835072261027.a n = A373261 (n + 1)

end A373261

/-! ## A373261.P15486739393045360940

`filter[A065090(n+1), A373260(#)]`
-/

namespace A373261.P15486739393045360940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373260 (f1 j).toNat = 1) n)

end

end A373261.P15486739393045360940

namespace A373261

/-- `filter[A065090(n+1), A373260(#)]` -/
def P15486739393045360940.Spec : Prop :=
  ∀ n, P15486739393045360940.a n = A373261 (n + 1)

end A373261

/-! ## A373261.P17370105530436774082

`filter[A171581(n+1), A373260(#)]`
-/

namespace A373261.P17370105530436774082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171581 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373260 (f1 j).toNat = 1) n)

end

end A373261.P17370105530436774082

namespace A373261

/-- `filter[A171581(n+1), A373260(#)]` -/
def P17370105530436774082.Spec : Prop :=
  ∀ n, P17370105530436774082.a n = A373261 (n + 1)

end A373261

/-! ## A373261.P1724505677997813978

`filter[A338924(n+1), A373260(#)]`
-/

namespace A373261.P1724505677997813978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338924 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373260 (f1 j).toNat = 1) n)

end

end A373261.P1724505677997813978

namespace A373261

/-- `filter[A338924(n+1), A373260(#)]` -/
def P1724505677997813978.Spec : Prop :=
  ∀ n, P1724505677997813978.a n = A373261 (n + 1)

end A373261

/-!
# A373262: Numbers k for which A276085(k) == -1 (mod 3), where A276085 is the primorial base log-function.

The programs for A373262, the canonical program `A373262.P3920179608283670955` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373262 has offset 1).

The definition of A373262 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A373262.P3920179608283670955

`lt[A373153(n+1), 0]+1`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A373262

/-- `lt[A373153(n+1), 0]+1` -/
def P3920179608283670955.Spec : Prop :=
  ∀ n, (P3920179608283670955.a n : ℤ) = A373262 (n + 1)

theorem P3920179608283670955.correct : P3920179608283670955.Spec := by
  intro n
  simp only [A373262, Nat.add_sub_cancel]

end A373262

/-! ## A373262.P6327143649623757199

`eq[1, A372573(2*(n+1))]+1`
-/

namespace A373262.P6327143649623757199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372573 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A373262.P6327143649623757199

namespace A373262

/-- `eq[1, A372573(2*(n+1))]+1` -/
def P6327143649623757199.Spec : Prop :=
  ∀ n, (P6327143649623757199.a n : ℤ) = A373262 (n + 1)

end A373262

/-! ## A373262.P4880916552493626856

`filter[A344180(n), A373263(#)]`
-/

namespace A373262.P4880916552493626856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344180 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373263 (f1 j).toNat = 1) n)

end

end A373262.P4880916552493626856

namespace A373262

/-- `filter[A344180(n), A373263(#)]` -/
def P4880916552493626856.Spec : Prop :=
  ∀ n, P4880916552493626856.a n = A373262 (n + 1)

end A373262

/-! ## A373262.P3339472299340627723

`lt[A372573(n+1), A372573(2*(n+1))]+1`
-/

namespace A373262.P3339472299340627723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372573 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372573 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A373262.P3339472299340627723

namespace A373262

/-- `lt[A372573(n+1), A372573(2*(n+1))]+1` -/
def P3339472299340627723.Spec : Prop :=
  ∀ n, (P3339472299340627723.a n : ℤ) = A373262 (n + 1)

end A373262

/-! ## A373262.P1801562226773297487

`eq[A374133(3*(n+2)), A374133(n+2)]+2`
-/

namespace A373262.P1801562226773297487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374133 (3 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374133 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A373262.P1801562226773297487

namespace A373262

/-- `eq[A374133(3*(n+2)), A374133(n+2)]+2` -/
def P1801562226773297487.Spec : Prop :=
  ∀ n, (P1801562226773297487.a n : ℤ) = A373262 (n + 1)

end A373262

/-! ## A373262.P3200077886703869600

`eq[1, A373153(3*(n+1))]+1`
-/

namespace A373262.P3200077886703869600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373153 (3 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A373262.P3200077886703869600

namespace A373262

/-- `eq[1, A373153(3*(n+1))]+1` -/
def P3200077886703869600.Spec : Prop :=
  ∀ n, (P3200077886703869600.a n : ℤ) = A373262 (n + 1)

end A373262

/-! ## A373262.P15697854142462223960

`filter[A092486(n), A373263(#)]`
-/

namespace A373262.P15697854142462223960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092486 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373263 (f1 j).toNat = 1) n)

end

end A373262.P15697854142462223960

namespace A373262

/-- `filter[A092486(n), A373263(#)]` -/
def P15697854142462223960.Spec : Prop :=
  ∀ n, P15697854142462223960.a n = A373262 (n + 1)

end A373262

/-! ## A373262.P18103986795631859769

`filter[A355200(n+1), A373263(#)]`
-/

namespace A373262.P18103986795631859769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355200 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373263 (f1 j).toNat = 1) n)

end

end A373262.P18103986795631859769

namespace A373262

/-- `filter[A355200(n+1), A373263(#)]` -/
def P18103986795631859769.Spec : Prop :=
  ∀ n, P18103986795631859769.a n = A373262 (n + 1)

end A373262

/-! ## A373262.P9185633544503803884

`filter[A059267(n+1), A373263(#)]`
-/

namespace A373262.P9185633544503803884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059267 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373263 (f1 j).toNat = 1) n)

end

end A373262.P9185633544503803884

namespace A373262

/-- `filter[A059267(n+1), A373263(#)]` -/
def P9185633544503803884.Spec : Prop :=
  ∀ n, P9185633544503803884.a n = A373262 (n + 1)

end A373262

/-! ## A373262.P17353363344235199765

`filter[A366288(n+1), A373263(#)]`
-/

namespace A373262.P17353363344235199765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366288 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373263 (f1 j).toNat = 1) n)

end

end A373262.P17353363344235199765

namespace A373262

/-- `filter[A366288(n+1), A373263(#)]` -/
def P17353363344235199765.Spec : Prop :=
  ∀ n, P17353363344235199765.a n = A373262 (n + 1)

end A373262

/-! ## A373262.P3982006180273357280

`filter[A047229(n+2), A373263(#)]`
-/

namespace A373262.P3982006180273357280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047229 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373263 (f1 j).toNat = 1) n)

end

end A373262.P3982006180273357280

namespace A373262

/-- `filter[A047229(n+2), A373263(#)]` -/
def P3982006180273357280.Spec : Prop :=
  ∀ n, P3982006180273357280.a n = A373262 (n + 1)

end A373262

/-! ## A373262.P10313977201720143701

`filter[A389634(n+1), A373263(#)]`
-/

namespace A373262.P10313977201720143701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389634 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373263 (f1 j).toNat = 1) n)

end

end A373262.P10313977201720143701

namespace A373262

/-- `filter[A389634(n+1), A373263(#)]` -/
def P10313977201720143701.Spec : Prop :=
  ∀ n, P10313977201720143701.a n = A373262 (n + 1)

end A373262

/-! ## A373262.P11125123376459310600

`filter[A391342(n+1), A373263(#)]`
-/

namespace A373262.P11125123376459310600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391342 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373263 (f1 j).toNat = 1) n)

end

end A373262.P11125123376459310600

namespace A373262

/-- `filter[A391342(n+1), A373263(#)]` -/
def P11125123376459310600.Spec : Prop :=
  ∀ n, P11125123376459310600.a n = A373262 (n + 1)

end A373262

/-! ## A373262.P3028832728481337163

`filter[A080671(n+1), A373263(#)]`
-/

namespace A373262.P3028832728481337163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080671 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373263 (f1 j).toNat = 1) n)

end

end A373262.P3028832728481337163

namespace A373262

/-- `filter[A080671(n+1), A373263(#)]` -/
def P3028832728481337163.Spec : Prop :=
  ∀ n, P3028832728481337163.a n = A373262 (n + 1)

end A373262

/-! ## A373262.P716924951771573245

`filter[A080672(n+1), A373263(#)]`
-/

namespace A373262.P716924951771573245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080672 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373263 (f1 j).toNat = 1) n)

end

end A373262.P716924951771573245

namespace A373262

/-- `filter[A080672(n+1), A373263(#)]` -/
def P716924951771573245.Spec : Prop :=
  ∀ n, P716924951771573245.a n = A373262 (n + 1)

end A373262

/-! ## A373262.P3481346961909652118

`filter[A070331(n+1), A373263(#)]`
-/

namespace A373262.P3481346961909652118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070331 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373263 (f1 j).toNat = 1) n)

end

end A373262.P3481346961909652118

namespace A373262

/-- `filter[A070331(n+1), A373263(#)]` -/
def P3481346961909652118.Spec : Prop :=
  ∀ n, P3481346961909652118.a n = A373262 (n + 1)

end A373262

/-! ## A373262.P11953284638729467340

`filter[A151988(n+1), A373263(#)]`
-/

namespace A373262.P11953284638729467340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151988 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373263 (f1 j).toNat = 1) n)

end

end A373262.P11953284638729467340

namespace A373262

/-- `filter[A151988(n+1), A373263(#)]` -/
def P11953284638729467340.Spec : Prop :=
  ∀ n, P11953284638729467340.a n = A373262 (n + 1)

end A373262

/-! ## A373262.P8613508112291071585

`filter[A025020(n+1), A373263(#)]`
-/

namespace A373262.P8613508112291071585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025020 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373263 (f1 j).toNat = 1) n)

end

end A373262.P8613508112291071585

namespace A373262

/-- `filter[A025020(n+1), A373263(#)]` -/
def P8613508112291071585.Spec : Prop :=
  ∀ n, P8613508112291071585.a n = A373262 (n + 1)

end A373262

/-! ## A373262.P12615008560842235851

`filter[A153276(n+3), A373263(#)]`
-/

namespace A373262.P12615008560842235851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153276 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373263 (f1 j).toNat = 1) n)

end

end A373262.P12615008560842235851

namespace A373262

/-- `filter[A153276(n+3), A373263(#)]` -/
def P12615008560842235851.Spec : Prop :=
  ∀ n, P12615008560842235851.a n = A373262 (n + 1)

end A373262

/-! ## A373262.P4451708278216373625

`filter[A171581(n+2), A373263(#)]`
-/

namespace A373262.P4451708278216373625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171581 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373263 (f1 j).toNat = 1) n)

end

end A373262.P4451708278216373625

namespace A373262

/-- `filter[A171581(n+2), A373263(#)]` -/
def P4451708278216373625.Spec : Prop :=
  ∀ n, P4451708278216373625.a n = A373262 (n + 1)

end A373262

/-!
# A373263: a(n) = 1 if A276085(n) == -1 (mod 3), otherwise 0, where A276085 is the primorial base log-function.

The programs for A373263, the canonical program `A373263.P11936545737331509118` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373263 has offset 1).

The definition of A373263 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A372573, A373260, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A373263.P11936545737331509118

`1-(A372573(n+1)+A373260(n+1))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A373263

/-- `1-(A372573(n+1)+A373260(n+1))` -/
def P11936545737331509118.Spec : Prop :=
  ∀ n, P11936545737331509118.a n = A373263 (n + 1)

theorem P11936545737331509118.correct : P11936545737331509118.Spec := by
  intro n
  simp only [A373263, Nat.add_sub_cancel]

end A373263

/-! ## A373263.P15411855132687897169

`A372573(2*(n+1))`
-/

namespace A373263.P15411855132687897169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372573 (2 * (n + 1))

end

end A373263.P15411855132687897169

namespace A373263

/-- `A372573(2*(n+1))` -/
def P15411855132687897169.Spec : Prop :=
  ∀ n, P15411855132687897169.a n = A373263 (n + 1)

end A373263

/-! ## A373263.P1083514197370218317

`A373260(3*(n+1))`
-/

namespace A373263.P1083514197370218317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373260 (3 * (n + 1))

end

end A373263.P1083514197370218317

namespace A373263

/-- `A373260(3*(n+1))` -/
def P1083514197370218317.Spec : Prop :=
  ∀ n, P1083514197370218317.a n = A373263 (n + 1)

end A373263

/-! ## A373263.P823404012048546936

`A373143(9*(n+1))`
-/

namespace A373263.P823404012048546936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373143 (9 * (n + 1))

end

end A373263.P823404012048546936

namespace A373263

/-- `A373143(9*(n+1))` -/
def P823404012048546936.Spec : Prop :=
  ∀ n, P823404012048546936.a n = A373263 (n + 1)

end A373263

/-! ## A373263.P12071519867236324147

`A374041(9*(n+1))`
-/

namespace A373263.P12071519867236324147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374041 (9 * (n + 1))

end

end A373263.P12071519867236324147

namespace A373263

/-- `A374041(9*(n+1))` -/
def P12071519867236324147.Spec : Prop :=
  ∀ n, P12071519867236324147.a n = A373263 (n + 1)

end A373263

/-! ## A373263.P6227307494931897759

`1-A373153(2*(n+1))²`
-/

namespace A373263.P6227307494931897759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A373153 (2 * (n + 1)) ^ 2

end

end A373263.P6227307494931897759

namespace A373263

/-- `1-A373153(2*(n+1))²` -/
def P6227307494931897759.Spec : Prop :=
  ∀ n, P6227307494931897759.a n = A373263 (n + 1)

end A373263

/-! ## A373263.P5410299407968383072

`A079978(A372576(n+1)+1)`
-/

namespace A373263.P5410299407968383072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 (A372576 (n + 1) + 1).toNat

end

end A373263.P5410299407968383072

namespace A373263

/-- `A079978(A372576(n+1)+1)` -/
def P5410299407968383072.Spec : Prop :=
  ∀ n, P5410299407968383072.a n = A373263 (n + 1)

end A373263

/-! ## A373263.P3001940936409648413

`A373260(n+1)-A373153(n+1)`
-/

namespace A373263.P3001940936409648413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373260 (n + 1) - A373153 (n + 1)

end

end A373263.P3001940936409648413

namespace A373263

/-- `A373260(n+1)-A373153(n+1)` -/
def P3001940936409648413.Spec : Prop :=
  ∀ n, P3001940936409648413.a n = A373263 (n + 1)

end A373263

/-!
# A373264: a(n) = 1 if n' / gcd(n,n') is of the form 4m+2, otherwise 0, where n' stands for the arithmetic derivative of n, A003415.

The programs for A373264, the canonical program `A373264.P15257868796649964191` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373264 has offset 1).

The definition of A373264 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A373264.P15257868796649964191

`A369001(n+1)-A369004(n+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A373264

/-- `A369001(n+1)-A369004(n+1)` -/
def P15257868796649964191.Spec : Prop :=
  ∀ n, P15257868796649964191.a n = A373264 (n + 1)

theorem P15257868796649964191.correct : P15257868796649964191.Spec := by
  intro n
  simp only [A373264, Nat.add_sub_cancel]

end A373264

/-! ## A373264.P14640457483709809464

`char[A373265(n+1)-1]`
-/

namespace A373264.P14640457483709809464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373265 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A373264.P14640457483709809464

namespace A373264

/-- `char[A373265(n+1)-1]` -/
def P14640457483709809464.Spec : Prop :=
  ∀ n, (P14640457483709809464.a n : ℤ) = A373264 (n + 1)

end A373264

/-! ## A373264.P14364072388766964147

`A121262(A083345(n+1)+2)`
-/

namespace A373264.P14364072388766964147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121262 (A083345 (n + 1) + 2).toNat

end

end A373264.P14364072388766964147

namespace A373264

/-- `A121262(A083345(n+1)+2)` -/
def P14364072388766964147.Spec : Prop :=
  ∀ n, P14364072388766964147.a n = A373264 (n + 1)

end A373264

/-! ## A373264.P10246592022334578176

`A369004(9*(n+1))`
-/

namespace A373264.P10246592022334578176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369004 (9 * (n + 1))

end

end A373264.P10246592022334578176

namespace A373264

/-- `A369004(9*(n+1))` -/
def P10246592022334578176.Spec : Prop :=
  ∀ n, P10246592022334578176.a n = A373264 (n + 1)

end A373264

/-! ## A373264.P9797817100217293162

`A369004((n+1)²)-A369004(n+1)`
-/

namespace A373264.P9797817100217293162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369004 ((n + 1) ^ 2) - A369004 (n + 1)

end

end A373264.P9797817100217293162

namespace A373264

/-- `A369004((n+1)²)-A369004(n+1)` -/
def P9797817100217293162.Spec : Prop :=
  ∀ n, P9797817100217293162.a n = A373264 (n + 1)

end A373264

/-! ## A373264.P10350077565649231619

`A253513((2-A083345(n+1))²)`
-/

namespace A373264.P10350077565649231619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253513 ((2 - A083345 (n + 1)) ^ 2).toNat

end

end A373264.P10350077565649231619

namespace A373264

/-- `A253513((2-A083345(n+1))²)` -/
def P10350077565649231619.Spec : Prop :=
  ∀ n, P10350077565649231619.a n = A373264 (n + 1)

end A373264

/-! ## A373264.P913343817922506954

`A253513((A083345(n+1)+2)²)`
-/

namespace A373264.P913343817922506954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253513 ((A083345 (n + 1) + 2) ^ 2).toNat

end

end A373264.P913343817922506954

namespace A373264

/-- `A253513((A083345(n+1)+2)²)` -/
def P913343817922506954.Spec : Prop :=
  ∀ n, P913343817922506954.a n = A373264 (n + 1)

end A373264

/-! ## A373264.P12813019880521539267

`A373266(A276086(A083345((n+1)²)))`
-/

namespace A373264.P12813019880521539267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373266 (A276086 (A083345 ((n + 1) ^ 2)).toNat).toNat

end

end A373264.P12813019880521539267

namespace A373264

/-- `A373266(A276086(A083345((n+1)²)))` -/
def P12813019880521539267.Spec : Prop :=
  ∀ n, P12813019880521539267.a n = A373264 (n + 1)

end A373264

/-! ## A373264.P3305266266166772065

`and(A231920(n), A368997(n+1))`
-/

namespace A373264.P3305266266166772065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A231920 n) (A368997 (n + 1))

end

end A373264.P3305266266166772065

namespace A373264

/-- `and(A231920(n), A368997(n+1))` -/
def P3305266266166772065.Spec : Prop :=
  ∀ n, P3305266266166772065.a n = A373264 (n + 1)

end A373264

/-! ## A373264.P8908573219696929971

`and(A231920(n), A369001(n+1))`
-/

namespace A373264.P8908573219696929971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A231920 n) (A369001 (n + 1))

end

end A373264.P8908573219696929971

namespace A373264

/-- `and(A231920(n), A369001(n+1))` -/
def P8908573219696929971.Spec : Prop :=
  ∀ n, P8908573219696929971.a n = A373264 (n + 1)

end A373264

/-!
# A373265: Numbers k such that k' / gcd(k,k') is of the form 4m+2, where k' stands for the arithmetic derivative of k, A003415.

The programs for A373265, the canonical program `A373265.P7136862293357716820` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373265 has offset 1).

The definition of A373265 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8304 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A373265.P12030386135945547659

`filter[A344180(n), A373264(#)]`
-/

namespace A373265.P12030386135945547659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344180 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373264 (f1 j).toNat = 1) n)

end

end A373265.P12030386135945547659

namespace A373265

/-- `filter[A344180(n), A373264(#)]` -/
def P12030386135945547659.Spec : Prop :=
  ∀ n, P12030386135945547659.a n = A373265 (n + 1)

end A373265

/-! ## A373265.P7136862293357716820

`eq[1, A373264(n+1)]+1`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A373265

/-- `eq[1, A373264(n+1)]+1` -/
def P7136862293357716820.Spec : Prop :=
  ∀ n, (P7136862293357716820.a n : ℤ) = A373265 (n + 1)

theorem P7136862293357716820.correct : P7136862293357716820.Spec := by
  intro n
  simp only [A373265, Nat.add_sub_cancel]

end A373265

/-! ## A373265.P17329620511960000448

`eq[2, A083345(n+1)%4]+1`
-/

namespace A373265.P17329620511960000448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083345 (n + 1)) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A373265.P17329620511960000448

namespace A373265

/-- `eq[2, A083345(n+1)%4]+1` -/
def P17329620511960000448.Spec : Prop :=
  ∀ n, (P17329620511960000448.a n : ℤ) = A373265 (n + 1)

end A373265

/-! ## A373265.P1376859089055219210

`filter[A319701(n+1), A373264(#)]`
-/

namespace A373265.P1376859089055219210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319701 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373264 (f1 j).toNat = 1) n)

end

end A373265.P1376859089055219210

namespace A373265

/-- `filter[A319701(n+1), A373264(#)]` -/
def P1376859089055219210.Spec : Prop :=
  ∀ n, P1376859089055219210.a n = A373265 (n + 1)

end A373265

/-! ## A373265.P11133401581140069548

`filter[A319702(n+1), A373264(#)]`
-/

namespace A373265.P11133401581140069548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319702 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373264 (f1 j).toNat = 1) n)

end

end A373265.P11133401581140069548

namespace A373265

/-- `filter[A319702(n+1), A373264(#)]` -/
def P11133401581140069548.Spec : Prop :=
  ∀ n, P11133401581140069548.a n = A373265 (n + 1)

end A373265

/-! ## A373265.P4370676781178363452

`lt[A369004(n+1), A373264(n+1)]+1`
-/

namespace A373265.P4370676781178363452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369004 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373264 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A373265.P4370676781178363452

namespace A373265

/-- `lt[A369004(n+1), A373264(n+1)]+1` -/
def P4370676781178363452.Spec : Prop :=
  ∀ n, (P4370676781178363452.a n : ℤ) = A373265 (n + 1)

end A373265

/-! ## A373265.P8411234352010157347

`filter[A368998(n+1), A373264(#)]`
-/

namespace A373265.P8411234352010157347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368998 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373264 (f1 j).toNat = 1) n)

end

end A373265.P8411234352010157347

namespace A373265

/-- `filter[A368998(n+1), A373264(#)]` -/
def P8411234352010157347.Spec : Prop :=
  ∀ n, P8411234352010157347.a n = A373265 (n + 1)

end A373265

/-! ## A373265.P7231335405482847047

`filter[A326202(n+1), A373264(#)]`
-/

namespace A373265.P7231335405482847047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326202 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373264 (f1 j).toNat = 1) n)

end

end A373265.P7231335405482847047

namespace A373265

/-- `filter[A326202(n+1), A373264(#)]` -/
def P7231335405482847047.Spec : Prop :=
  ∀ n, P7231335405482847047.a n = A373265 (n + 1)

end A373265

/-! ## A373265.P14396987624630802266

`filter[A305980(n+1), A373264(#)]`
-/

namespace A373265.P14396987624630802266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305980 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373264 (f1 j).toNat = 1) n)

end

end A373265.P14396987624630802266

namespace A373265

/-- `filter[A305980(n+1), A373264(#)]` -/
def P14396987624630802266.Spec : Prop :=
  ∀ n, P14396987624630802266.a n = A373265 (n + 1)

end A373265

/-! ## A373265.P13063311719140547767

`filter[A322810(n+1), A373264(#)]`
-/

namespace A373265.P13063311719140547767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322810 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373264 (f1 j).toNat = 1) n)

end

end A373265.P13063311719140547767

namespace A373265

/-- `filter[A322810(n+1), A373264(#)]` -/
def P13063311719140547767.Spec : Prop :=
  ∀ n, P13063311719140547767.a n = A373265 (n + 1)

end A373265

/-! ## A373265.P17775825583415876201

`filter[A326201(n+1), A373264(#)]`
-/

namespace A373265.P17775825583415876201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326201 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373264 (f1 j).toNat = 1) n)

end

end A373265.P17775825583415876201

namespace A373265

/-- `filter[A326201(n+1), A373264(#)]` -/
def P17775825583415876201.Spec : Prop :=
  ∀ n, P17775825583415876201.a n = A373265 (n + 1)

end A373265

/-! ## A373265.P18313496153151892169

`filter[A369002(n+1), A373264(#)]`
-/

namespace A373265.P18313496153151892169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369002 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373264 (f1 j).toNat = 1) n)

end

end A373265.P18313496153151892169

namespace A373265

/-- `filter[A369002(n+1), A373264(#)]` -/
def P18313496153151892169.Spec : Prop :=
  ∀ n, P18313496153151892169.a n = A373265 (n + 1)

end A373265

/-! ## A373265.P14547294728635294947

`filter[A377873(n+1), A373264(#)]`
-/

namespace A373265.P14547294728635294947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377873 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373264 (f1 j).toNat = 1) n)

end

end A373265.P14547294728635294947

namespace A373265

/-- `filter[A377873(n+1), A373264(#)]` -/
def P14547294728635294947.Spec : Prop :=
  ∀ n, P14547294728635294947.a n = A373265 (n + 1)

end A373265

/-! ## A373265.P16115246830723736298

`filter[A264828(n+1), A373264(#)]`
-/

namespace A373265.P16115246830723736298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264828 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373264 (f1 j).toNat = 1) n)

end

end A373265.P16115246830723736298

namespace A373265

/-- `filter[A264828(n+1), A373264(#)]` -/
def P16115246830723736298.Spec : Prop :=
  ∀ n, P16115246830723736298.a n = A373265 (n + 1)

end A373265

/-! ## A373265.P15868788523071370292

`filter[A235992(n+2), A373264(#)]`
-/

namespace A373265.P15868788523071370292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235992 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373264 (f1 j).toNat = 1) n)

end

end A373265.P15868788523071370292

namespace A373265

/-- `filter[A235992(n+2), A373264(#)]` -/
def P15868788523071370292.Spec : Prop :=
  ∀ n, P15868788523071370292.a n = A373265 (n + 1)

end A373265

/-! ## A373265.P3774982386700434943

`filter[A002808(n+1), A373264(#)]`
-/

namespace A373265.P3774982386700434943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373264 (f1 j).toNat = 1) n)

end

end A373265.P3774982386700434943

namespace A373265

/-- `filter[A002808(n+1), A373264(#)]` -/
def P3774982386700434943.Spec : Prop :=
  ∀ n, P3774982386700434943.a n = A373265 (n + 1)

end A373265

/-! ## A373265.P289831393581721771

`filter[A018252(n+1), A373264(#)]`
-/

namespace A373265.P289831393581721771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373264 (f1 j).toNat = 1) n)

end

end A373265.P289831393581721771

namespace A373265

/-- `filter[A018252(n+1), A373264(#)]` -/
def P289831393581721771.Spec : Prop :=
  ∀ n, P289831393581721771.a n = A373265 (n + 1)

end A373265

/-! ## A373265.P14526878893510734134

`filter[A003159(n+1), A373264(#)]`
-/

namespace A373265.P14526878893510734134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003159 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373264 (f1 j).toNat = 1) n)

end

end A373265.P14526878893510734134

namespace A373265

/-- `filter[A003159(n+1), A373264(#)]` -/
def P14526878893510734134.Spec : Prop :=
  ∀ n, P14526878893510734134.a n = A373265 (n + 1)

end A373265

/-! ## A373265.P5544370219907273462

`filter[A174891(n+1), A373264(#)]`
-/

namespace A373265.P5544370219907273462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174891 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373264 (f1 j).toNat = 1) n)

end

end A373265.P5544370219907273462

namespace A373265

/-- `filter[A174891(n+1), A373264(#)]` -/
def P5544370219907273462.Spec : Prop :=
  ∀ n, P5544370219907273462.a n = A373265 (n + 1)

end A373265

/-!
# A373266: a(n) = 1 if A276085(n) is of the form 8m+4, otherwise 0, where A276085 is the primorial base log-function.

The programs for A373266, the canonical program `A373266.P11769714245437534244` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373266 has offset 1).

The definition of A373266 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A373137, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A373266.P11769714245437534244

`A369001(n+1)-A373137(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A373266

/-- `A369001(n+1)-A373137(n+1)` -/
def P11769714245437534244.Spec : Prop :=
  ∀ n, P11769714245437534244.a n = A373266 (n + 1)

theorem P11769714245437534244.correct : P11769714245437534244.Spec := by
  intro n
  simp only [A373266, Nat.add_sub_cancel]

end A373266

/-! ## A373266.P14610730961451899094

`A373137(9*(n+1))`
-/

namespace A373266.P14610730961451899094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373137 (9 * (n + 1))

end

end A373266.P14610730961451899094

namespace A373266

/-- `A373137(9*(n+1))` -/
def P14610730961451899094.Spec : Prop :=
  ∀ n, P14610730961451899094.a n = A373266 (n + 1)

end A373266

/-! ## A373266.P14370297304844309314

`char[A373267(n+1)-1]`
-/

namespace A373266.P14370297304844309314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373267 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A373266.P14370297304844309314

namespace A373266

/-- `char[A373267(n+1)-1]` -/
def P14370297304844309314.Spec : Prop :=
  ∀ n, (P14370297304844309314.a n : ℤ) = A373266 (n + 1)

end A373266

/-! ## A373266.P5874672763899530666

`A035263(n+1)-(A373141(n+1)+A373137(n+1))`
-/

namespace A373266.P5874672763899530666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035263 (n + 1) - (A373141 (n + 1) + A373137 (n + 1))

end

end A373266.P5874672763899530666

namespace A373266

/-- `A035263(n+1)-(A373141(n+1)+A373137(n+1))` -/
def P5874672763899530666.Spec : Prop :=
  ∀ n, P5874672763899530666.a n = A373266 (n + 1)

theorem P5874672763899530666.correct : P5874672763899530666.Spec := by
  intro n
  simp only [A373266, Nat.add_sub_cancel, A373266.P5874672763899530666.a, A373266.P11769714245437534244.a, A035263, A035263.P6825362395192920526.a, A369001, A369001.P2904300838152435751.a, A373137, A373137.P15909934193213727265.a, A373141, A373141.P12083770546413304913.a, A000035, A000035.P2023072528413494694.a, A001511, A001511.P17146462531039486101.a, A059841, A059841.P7264174615531153985.a, A083345, A083345.P17056663291398447745.a, A253513, A253513.P7768194327896133816.a, A372576, A372576.P10992458721375840572.a, A006519, A006519.P10435570611646570274.a, A276085, A276085.P15454204715786806768.a, A342001, A342001.P4805983025243635594.a, A369008, A369008.P206606723966136315.a, A002110, A002110.P13704446489392701398.a, A003415, A003415.P13310047267010681054.f1, A003415.P13310047267010681054.a, A003557, A003557.P6364735403900941810.a, A028234, A028234.P14857795114050463851.f1, A028234.P14857795114050463851.a, A055396, A055396.P18305262754425103137.a, A067029, A067029.P17255758945913048832.a, A085731, A085731.P17818604226734037125.a, A171977, A171977.P14092944863121073856.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A373266

/-! ## A373266.P7275436047528462420

`A373137((n+1)²)-A373137(n+1)`
-/

namespace A373266.P7275436047528462420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373137 ((n + 1) ^ 2) - A373137 (n + 1)

end

end A373266.P7275436047528462420

namespace A373266

/-- `A373137((n+1)²)-A373137(n+1)` -/
def P7275436047528462420.Spec : Prop :=
  ∀ n, P7275436047528462420.a n = A373266 (n + 1)

end A373266

/-! ## A373266.P11741454604088752873

`A064911(gcd(A000079(n), A276085(n+1)))`
-/

namespace A373266.P11741454604088752873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 (Int.gcd (A000079 n) (A276085 (n + 1)))

end

end A373266.P11741454604088752873

namespace A373266

/-- `A064911(gcd(A000079(n), A276085(n+1)))` -/
def P11741454604088752873.Spec : Prop :=
  ∀ n, P11741454604088752873.a n = A373266 (n + 1)

end A373266

/-!
# A373267: Numbers k for which A276085(k) is of the form 8m+4, where A276085 is the primorial base log-function.

The programs for A373267, the canonical program `A373267.P2578606794001800641` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373267 has offset 1).

The definition of A373267 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8323 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A373267.P16507228741117135992

`filter[A344180(n), A373266(#)]`
-/

namespace A373267.P16507228741117135992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344180 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373266 (f1 j).toNat = 1) n)

end

end A373267.P16507228741117135992

namespace A373267

/-- `filter[A344180(n), A373266(#)]` -/
def P16507228741117135992.Spec : Prop :=
  ∀ n, P16507228741117135992.a n = A373267 (n + 1)

end A373267

/-! ## A373267.P2578606794001800641

`eq[1, A373266(n+1)]+1`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A373267

/-- `eq[1, A373266(n+1)]+1` -/
def P2578606794001800641.Spec : Prop :=
  ∀ n, (P2578606794001800641.a n : ℤ) = A373267 (n + 1)

theorem P2578606794001800641.correct : P2578606794001800641.Spec := by
  intro n
  simp only [A373267, Nat.add_sub_cancel]

end A373267

/-! ## A373267.P8044683081082382840

`eq[2, A374132(n+2)]+2`
-/

namespace A373267.P8044683081082382840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374132 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A373267.P8044683081082382840

namespace A373267

/-- `eq[2, A374132(n+2)]+2` -/
def P8044683081082382840.Spec : Prop :=
  ∀ n, (P8044683081082382840.a n : ℤ) = A373267 (n + 1)

end A373267

/-! ## A373267.P13001932432287651331

`filter[A319701(n+1), A373266(#)]`
-/

namespace A373267.P13001932432287651331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319701 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373266 (f1 j).toNat = 1) n)

end

end A373267.P13001932432287651331

namespace A373267

/-- `filter[A319701(n+1), A373266(#)]` -/
def P13001932432287651331.Spec : Prop :=
  ∀ n, P13001932432287651331.a n = A373267 (n + 1)

end A373267

/-! ## A373267.P491701581791459366

`filter[A319702(n+1), A373266(#)]`
-/

namespace A373267.P491701581791459366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319702 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373266 (f1 j).toNat = 1) n)

end

end A373267.P491701581791459366

namespace A373267

/-- `filter[A319702(n+1), A373266(#)]` -/
def P491701581791459366.Spec : Prop :=
  ∀ n, P491701581791459366.a n = A373267 (n + 1)

end A373267

/-! ## A373267.P8562967430138609092

`lt[A063524(n), A373266(n+1)]+1`
-/

namespace A373267.P8562967430138609092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373266 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A373267.P8562967430138609092

namespace A373267

/-- `lt[A063524(n), A373266(n+1)]+1` -/
def P8562967430138609092.Spec : Prop :=
  ∀ n, (P8562967430138609092.a n : ℤ) = A373267 (n + 1)

end A373267

/-! ## A373267.P14763841438185843718

`filter[A368998(n+1), A373266(#)]`
-/

namespace A373267.P14763841438185843718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368998 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373266 (f1 j).toNat = 1) n)

end

end A373267.P14763841438185843718

namespace A373267

/-- `filter[A368998(n+1), A373266(#)]` -/
def P14763841438185843718.Spec : Prop :=
  ∀ n, P14763841438185843718.a n = A373267 (n + 1)

end A373267

/-! ## A373267.P10977053252602318621

`filter[A326202(n+1), A373266(#)]`
-/

namespace A373267.P10977053252602318621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326202 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373266 (f1 j).toNat = 1) n)

end

end A373267.P10977053252602318621

namespace A373267

/-- `filter[A326202(n+1), A373266(#)]` -/
def P10977053252602318621.Spec : Prop :=
  ∀ n, P10977053252602318621.a n = A373267 (n + 1)

end A373267

/-! ## A373267.P8232495793883307107

`filter[A305980(n+1), A373266(#)]`
-/

namespace A373267.P8232495793883307107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305980 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373266 (f1 j).toNat = 1) n)

end

end A373267.P8232495793883307107

namespace A373267

/-- `filter[A305980(n+1), A373266(#)]` -/
def P8232495793883307107.Spec : Prop :=
  ∀ n, P8232495793883307107.a n = A373267 (n + 1)

end A373267

/-! ## A373267.P7125569867484908333

`filter[A322810(n+1), A373266(#)]`
-/

namespace A373267.P7125569867484908333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322810 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373266 (f1 j).toNat = 1) n)

end

end A373267.P7125569867484908333

namespace A373267

/-- `filter[A322810(n+1), A373266(#)]` -/
def P7125569867484908333.Spec : Prop :=
  ∀ n, P7125569867484908333.a n = A373267 (n + 1)

end A373267

/-! ## A373267.P5579766938548154841

`filter[A326201(n+1), A373266(#)]`
-/

namespace A373267.P5579766938548154841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326201 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373266 (f1 j).toNat = 1) n)

end

end A373267.P5579766938548154841

namespace A373267

/-- `filter[A326201(n+1), A373266(#)]` -/
def P5579766938548154841.Spec : Prop :=
  ∀ n, P5579766938548154841.a n = A373267 (n + 1)

end A373267

/-! ## A373267.P371723643244388039

`filter[A369002(n+1), A373266(#)]`
-/

namespace A373267.P371723643244388039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369002 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373266 (f1 j).toNat = 1) n)

end

end A373267.P371723643244388039

namespace A373267

/-- `filter[A369002(n+1), A373266(#)]` -/
def P371723643244388039.Spec : Prop :=
  ∀ n, P371723643244388039.a n = A373267 (n + 1)

end A373267

/-! ## A373267.P12285221041469871256

`filter[A377873(n+1), A373266(#)]`
-/

namespace A373267.P12285221041469871256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377873 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373266 (f1 j).toNat = 1) n)

end

end A373267.P12285221041469871256

namespace A373267

/-- `filter[A377873(n+1), A373266(#)]` -/
def P12285221041469871256.Spec : Prop :=
  ∀ n, P12285221041469871256.a n = A373267 (n + 1)

end A373267

/-! ## A373267.P17938307192512134979

`filter[A264828(n+1), A373266(#)]`
-/

namespace A373267.P17938307192512134979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264828 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373266 (f1 j).toNat = 1) n)

end

end A373267.P17938307192512134979

namespace A373267

/-- `filter[A264828(n+1), A373266(#)]` -/
def P17938307192512134979.Spec : Prop :=
  ∀ n, P17938307192512134979.a n = A373267 (n + 1)

end A373267

/-! ## A373267.P8831372049786031509

`filter[A235992(n+2), A373266(#)]`
-/

namespace A373267.P8831372049786031509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235992 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373266 (f1 j).toNat = 1) n)

end

end A373267.P8831372049786031509

namespace A373267

/-- `filter[A235992(n+2), A373266(#)]` -/
def P8831372049786031509.Spec : Prop :=
  ∀ n, P8831372049786031509.a n = A373267 (n + 1)

end A373267

/-! ## A373267.P9061997428498046377

`filter[A002808(n+1), A373266(#)]`
-/

namespace A373267.P9061997428498046377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373266 (f1 j).toNat = 1) n)

end

end A373267.P9061997428498046377

namespace A373267

/-- `filter[A002808(n+1), A373266(#)]` -/
def P9061997428498046377.Spec : Prop :=
  ∀ n, P9061997428498046377.a n = A373267 (n + 1)

end A373267

/-! ## A373267.P79566203009320467

`filter[A018252(n+1), A373266(#)]`
-/

namespace A373267.P79566203009320467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373266 (f1 j).toNat = 1) n)

end

end A373267.P79566203009320467

namespace A373267

/-- `filter[A018252(n+1), A373266(#)]` -/
def P79566203009320467.Spec : Prop :=
  ∀ n, P79566203009320467.a n = A373267 (n + 1)

end A373267

/-! ## A373267.P5506416746471068946

`filter[A003159(n+1), A373266(#)]`
-/

namespace A373267.P5506416746471068946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003159 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373266 (f1 j).toNat = 1) n)

end

end A373267.P5506416746471068946

namespace A373267

/-- `filter[A003159(n+1), A373266(#)]` -/
def P5506416746471068946.Spec : Prop :=
  ∀ n, P5506416746471068946.a n = A373267 (n + 1)

end A373267

/-! ## A373267.P5634392685351437874

`filter[A024352(n+1), A373266(#)]`
-/

namespace A373267.P5634392685351437874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024352 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373266 (f1 j).toNat = 1) n)

end

end A373267.P5634392685351437874

namespace A373267

/-- `filter[A024352(n+1), A373266(#)]` -/
def P5634392685351437874.Spec : Prop :=
  ∀ n, P5634392685351437874.a n = A373267 (n + 1)

end A373267

/-! ## A373267.P15107846620714439630

`filter[A107750(n+1), A373266(#)]`
-/

namespace A373267.P15107846620714439630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107750 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373266 (f1 j).toNat = 1) n)

end

end A373267.P15107846620714439630

namespace A373267

/-- `filter[A107750(n+1), A373266(#)]` -/
def P15107846620714439630.Spec : Prop :=
  ∀ n, P15107846620714439630.a n = A373267 (n + 1)

end A373267

/-!
# A373269: T(n,k) is the number of different multiplicities in the k-th partition of n in graded reverse lexicographic ordering (A080577).

The programs for A373269, there is no canonical definition to state claims against.
-/

/-! ## A373269.P372487991203768380

`A115623(n+1)-A373241(n+1)`
-/

namespace A373269.P372487991203768380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115623 (n + 1) - A373241 (n + 1)

end

end A373269.P372487991203768380

/-! ## A373269.P3822239544413940921

`A071625(A129129(n+1))`
-/

namespace A373269.P3822239544413940921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071625 (A129129 (n + 1)).toNat

end

end A373269.P3822239544413940921

/-! ## A373269.P17043134983221766834

`A323022(A063008(n+1))`
-/

namespace A373269.P17043134983221766834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323022 (A063008 (n + 1)).toNat

end

end A373269.P17043134983221766834

/-! ## A373269.P18088471764592564491

`A354579(A114994(n+1))`
-/

namespace A373269.P18088471764592564491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354579 (A114994 (n + 1)).toNat

end

end A373269.P18088471764592564491

/-! ## A373269.P7471938351332479118

`A354579(eq[1, A124765(n)])`
-/

namespace A373269.P7471938351332479118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124765 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354579 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A373269.P7471938351332479118

/-!
# A373270: Triangle read by rows: T(n,k) is the sum for all integer partitions of n of length k of the number of different multiplicities.

The programs for A373270, there is no canonical definition to state claims against.
-/

/-! ## A373270.P17173492333391469957

`A092905(n)-A373242(n+1)`
-/

namespace A373270.P17173492333391469957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092905 n - A373242 (n + 1)

end

end A373270.P17173492333391469957

/-! ## A373270.P15619670922625003965

`A259324(n-A056944(n))-A373242(n+1)`
-/

namespace A373270.P15619670922625003965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259324 ((n : ℤ) - A056944 n).toNat - A373242 (n + 1)

end

end A373270.P15619670922625003965

/-! ## A373270.P14680486730272611778

`A259324(2*A057944(n)-n)-A373242(n+1)`
-/

namespace A373270.P14680486730272611778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259324 (2 * A057944 n - (n : ℤ)).toNat - A373242 (n + 1)

end

end A373270.P14680486730272611778

/-! ## A373270.P15012184211018310767

`A259324(1-A158405(n+1)+n)-A373242(n+1)`
-/

namespace A373270.P15012184211018310767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259324 (1 - A158405 (n + 1) + (n : ℤ)).toNat - A373242 (n + 1)

end

end A373270.P15012184211018310767

/-! ## A373270.P9740196714173275562

`A259324(A057944(n)-A002262(n))-A373242(n+1)`
-/

namespace A373270.P9740196714173275562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259324 (A057944 n - A002262 n).toNat - A373242 (n + 1)

end

end A373270.P9740196714173275562

/-!
# A373271: a(n) = sum for all integer partitions of n of the number of distinct multiplicities in each partition.

The programs for A373271, there is no canonical definition to state claims against.
-/

/-! ## A373271.P13441885944621971789

`A000070(n)-A373243(n+1)`
-/

namespace A373271.P13441885944621971789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n - A373243 (n + 1)

end

end A373271.P13441885944621971789

/-! ## A373271.P5225370926039924742

`∑[A000041(n)]-A373243(n+1)`
-/

namespace A373271.P5225370926039924742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A373243 (n + 1)

end

end A373271.P5225370926039924742

/-! ## A373271.P11200792117313911551

`A247431(A065462(n+1))`
-/

namespace A373271.P11200792117313911551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247431 (A065462 (n + 1)).toNat

end

end A373271.P11200792117313911551

/-! ## A373271.P6673452075050701037

`A195098(A227566(n))`
-/

namespace A373271.P6673452075050701037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195098 (A227566 (n + 61)).toNat

end

end A373271.P6673452075050701037

/-! ## A373271.P16971743359957761709

`A195098(A320597(n))`
-/

namespace A373271.P16971743359957761709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195098 (A320597 (n + 25)).toNat

end

end A373271.P16971743359957761709

/-!
# A373272: Triangle read by rows: T(n,k) = sum of all distinct multiplicities in the integer partitions of n with k parts.

The programs for A373272, there is no canonical definition to state claims against.
-/

/-! ## A373272.P3190282158248574797

`A007720(A059369(n+1))`
-/

namespace A373272.P3190282158248574797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007720 (A059369 (n + 1)).toNat

end

end A373272.P3190282158248574797

/-! ## A373272.P11438019659429528543

`A167287(A213800(n+1))`
-/

namespace A373272.P11438019659429528543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167287 (A213800 (n + 1)).toNat

end

end A373272.P11438019659429528543

/-! ## A373272.P13937991766577097948

`A182628(A187618(n)+A182665(n+1))`
-/

namespace A373272.P13937991766577097948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182628 (A187618 n + A182665 (n + 1)).toNat

end

end A373272.P13937991766577097948

/-!
# A373275: a(n) = Sum_{d|n} (-1)^(d-1) * 2^(n/d-1).

The programs for A373275, the canonical program `A373275.P6486594606769868910` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373275 has offset 1).

The definition of A373275 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A373275.P6486594606769868910

`∑{d}[n+1, (-1)^(#-1)*2^((n+1)/#-1)]`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A373275

/-- `∑{d}[n+1, (-1)^(#-1)*2^((n+1)/#-1)]` -/
def P6486594606769868910.Spec : Prop :=
  ∀ n, P6486594606769868910.a n = (A373275 (n + 1) : ℝ)

end A373275

/-! ## A373275.P6798155004229607742

`Δ[xor(a(n-1), A034729(n))]` with `a(0)=0`
-/

namespace A373275.P6798155004229607742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  Int.xor (f1 (n - 1)) (A034729 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A373275.P6798155004229607742

namespace A373275

/-- `Δ[xor(a(n-1), A034729(n))]` -/
def P6798155004229607742.Spec : Prop :=
  ∀ n, P6798155004229607742.a n = A373275 (n + 1)

end A373275

/-! ## A373275.P16423949237641383397

`Δ[A175879(n)]`
-/

namespace A373275.P16423949237641383397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175879 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A373275.P16423949237641383397

namespace A373275

/-- `Δ[A175879(n)]` -/
def P16423949237641383397.Spec : Prop :=
  ∀ n, P16423949237641383397.a n = A373275 (n + 1)

end A373275

/-! ## A373275.P15386854061928125838

`A175879(n+1)-A175879(n)`
-/

namespace A373275.P15386854061928125838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175879 (n + 1) - A175879 n

end

end A373275.P15386854061928125838

namespace A373275

/-- `A175879(n+1)-A175879(n)` -/
def P15386854061928125838.Spec : Prop :=
  ∀ n, P15386854061928125838.a n = A373275 (n + 1)

end A373275

/-! ## A373275.P6431545920311769842

`A065365(A373276(n+1))`
-/

namespace A373275.P6431545920311769842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065365 (A373276 (n + 1)).toNat

end

end A373275.P6431545920311769842

namespace A373275

/-- `A065365(A373276(n+1))` -/
def P6431545920311769842.Spec : Prop :=
  ∀ n, P6431545920311769842.a n = A373275 (n + 1)

end A373275

/-!
# A373276: a(n) = Sum_{d|n} (-1)^(d-1) * 3^(n/d-1).

The programs for A373276, the canonical program `A373276.P18445858224069224769` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373276 has offset 1).

The definition of A373276 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A373276.P18445858224069224769

`∑{d}[n+1, (-1)^(#-1)*3^((n+1)/#-1)]`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A373276

/-- `∑{d}[n+1, (-1)^(#-1)*3^((n+1)/#-1)]` -/
def P18445858224069224769.Spec : Prop :=
  ∀ n, P18445858224069224769.a n = (A373276 (n + 1) : ℝ)

end A373276

/-!
# A373277: Number of monic irreducible polynomials over GF(7) with fixed nonzero trace.

The programs for A373277, there is no canonical definition to state claims against.
-/

/-! ## A373277.P4326156821262582918

`A320072(n+1)/A000120(A081367(n))`
-/

namespace A373277.P4326156821262582918
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A320072 (n + 1) : ℚ) / (A000120 (A081367 n).toNat : ℚ)

end

end A373277.P4326156821262582918

/-! ## A373277.P14660067413074105844

`A320072(n+1)/A000120(A020522(n+1))`
-/

namespace A373277.P14660067413074105844
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A320072 (n + 1) : ℚ) / (A000120 (A020522 (n + 1)).toNat : ℚ)

end

end A373277.P14660067413074105844

/-!
# A373279: Expansion of Sum_{k>=0} x^(3^k) / (1 - 3*x^(3^k)).

The programs for A373279, the canonical program `A373279.P11473354882696235237` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373279 has offset 1).

The definition of A373279 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046211, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A373279.P11473354882696235237

`∑{d}[n+1, #*A046211(#)]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A373279

/-- `∑{d}[n+1, #*A046211(#)]` -/
def P11473354882696235237.Spec : Prop :=
  ∀ n, P11473354882696235237.a n = A373279 (n + 1)

theorem P11473354882696235237.correct : P11473354882696235237.Spec := by
  intro n
  simp only [A373279, Nat.add_sub_cancel]

end A373279

/-! ## A373279.P10574090034108966360

`∑{d}[n+1, A034741(#)*A051064((n+1)/#)]`
-/

namespace A373279.P10574090034108966360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034741 d * A051064 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A373279.P10574090034108966360

namespace A373279

/-- `∑{d}[n+1, A034741(#)*A051064((n+1)/#)]` -/
def P10574090034108966360.Spec : Prop :=
  ∀ n, P10574090034108966360.a n = A373279 (n + 1)

end A373279

/-! ## A373279.P14889796649480526603

`∑{d}[n+1, A034730(#)*A156277((n+1)/#)]`
-/

namespace A373279.P14889796649480526603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034730 d * A156277 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A373279.P14889796649480526603

namespace A373279

/-- `∑{d}[n+1, A034730(#)*A156277((n+1)/#)]` -/
def P14889796649480526603.Spec : Prop :=
  ∀ n, P14889796649480526603.a n = A373279 (n + 1)

end A373279

/-! ## A373279.P8571832139307041841

`A238939(n+1)+A051516(A033453(n))`
-/

namespace A373279.P8571832139307041841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238939 (n + 1) + A051516 (A033453 n).toNat

end

end A373279.P8571832139307041841

namespace A373279

/-- `A238939(n+1)+A051516(A033453(n))` -/
def P8571832139307041841.Spec : Prop :=
  ∀ n, P8571832139307041841.a n = A373279 (n + 1)

end A373279

/-!
# A373280: Expansion of Sum_{k>=0} x^(4^k) / (1 - 4*x^(4^k)).

The programs for A373280, the canonical program `A373280.P16964894581792831006` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373280 has offset 1).

The definition of A373280 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A373280.P13992849695739965545

`∑{d}[n+1, A339684(#)*A355689((n+1)/#)]`
-/

namespace A373280.P13992849695739965545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A339684 d * A355689 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A373280.P13992849695739965545

namespace A373280

/-- `∑{d}[n+1, A339684(#)*A355689((n+1)/#)]` -/
def P13992849695739965545.Spec : Prop :=
  ∀ n, P13992849695739965545.a n = A373280 (n + 1)

end A373280

/-! ## A373280.P16964894581792831006

`∑{d}[n+1, A115362(#-1)*A295505((n+1)/#)]`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A373280

/-- `∑{d}[n+1, A115362(#-1)*A295505((n+1)/#)]` -/
def P16964894581792831006.Spec : Prop :=
  ∀ n, P16964894581792831006.a n = A373280 (n + 1)

theorem P16964894581792831006.correct : P16964894581792831006.Spec := by
  intro n
  simp only [A373280, Nat.add_sub_cancel]

end A373280

/-! ## A373280.P11102726324102493947

`A239261(A357195(n+1))+A000302(n)`
-/

namespace A373280.P11102726324102493947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239261 (A357195 (n + 1)).toNat + A000302 n

end

end A373280.P11102726324102493947

namespace A373280

/-- `A239261(A357195(n+1))+A000302(n)` -/
def P11102726324102493947.Spec : Prop :=
  ∀ n, P11102726324102493947.a n = A373280 (n + 1)

end A373280

/-! ## A373280.P15656269737811362831

`A157782(2*n+1)+A048105(A161950(2*n+3))`
-/

namespace A373280.P15656269737811362831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157782 (2 * n + 1) + A048105 (A161950 (2 * n + 3)).toNat

end

end A373280.P15656269737811362831

namespace A373280

/-- `A157782(2*n+1)+A048105(A161950(2*n+3))` -/
def P15656269737811362831.Spec : Prop :=
  ∀ n, P15656269737811362831.a n = A373280 (n + 1)

end A373280

/-! ## A373280.P3432809999731838649

`A124762(A374680(n))+A000302(n)`
-/

namespace A373280.P3432809999731838649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124762 (A374680 n).toNat + A000302 n

end

end A373280.P3432809999731838649

namespace A373280

/-- `A124762(A374680(n))+A000302(n)` -/
def P3432809999731838649.Spec : Prop :=
  ∀ n, P3432809999731838649.a n = A373280 (n + 1)

end A373280

/-!
# A373281: Expansion of Sum_{k>=0} x^(5^k) / (1 - 5*x^(5^k)).

The programs for A373281, the canonical program `A373281.P14728433294096842931` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373281 has offset 1).

The definition of A373281 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054662, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A373281.P14728433294096842931

`∑{d}[n+1, #*A054662(#)]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A373281

/-- `∑{d}[n+1, #*A054662(#)]` -/
def P14728433294096842931.Spec : Prop :=
  ∀ n, P14728433294096842931.a n = A373281 (n + 1)

theorem P14728433294096842931.correct : P14728433294096842931.Spec := by
  intro n
  simp only [A373281, Nat.add_sub_cancel]

end A373281

/-! ## A373281.P13452111074385285743

`A025442(A000085(n+1))+A000351(n)`
-/

namespace A373281.P13452111074385285743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025442 (A000085 (n + 1)).toNat + A000351 n

end

end A373281.P13452111074385285743

namespace A373281

/-- `A025442(A000085(n+1))+A000351(n)` -/
def P13452111074385285743.Spec : Prop :=
  ∀ n, P13452111074385285743.a n = A373281 (n + 1)

end A373281

/-! ## A373281.P13876466685775003367

`A007920(A078224(n+1))+A000351(n)`
-/

namespace A373281.P13876466685775003367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (A078224 (n + 1)).toNat + A000351 n

end

end A373281.P13876466685775003367

namespace A373281

/-- `A007920(A078224(n+1))+A000351(n)` -/
def P13876466685775003367.Spec : Prop :=
  ∀ n, P13876466685775003367.a n = A373281 (n + 1)

end A373281

/-! ## A373281.P6433403508174211554

`A339165(n)^10^n+5^n`
-/

namespace A373281.P6433403508174211554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339165 n ^ 10 ^ n + (5 ^ n : ℤ)

end

end A373281.P6433403508174211554

namespace A373281

/-- `A339165(n)^10^n+5^n` -/
def P6433403508174211554.Spec : Prop :=
  ∀ n, P6433403508174211554.a n = A373281 (n + 1)

end A373281

/-! ## A373281.P2201881413860940304

`A010051(∑[6*3^n-5])+5^n`
-/

namespace A373281.P2201881413860940304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * 3 ^ n : ℤ) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + (5 ^ n : ℤ)

end

end A373281.P2201881413860940304

namespace A373281

/-- `A010051(∑[6*3^n-5])+5^n` -/
def P2201881413860940304.Spec : Prop :=
  ∀ n, P2201881413860940304.a n = A373281 (n + 1)

end A373281

/-!
# A373282: Expansion of Sum_{k>=0} x^(6^k) / (1 - 6*x^(6^k)).

The programs for A373282, there is no canonical definition to state claims against.
-/

/-! ## A373282.P12151478815632708214

`A033043(A065205(n+1)+A000079(n))`
-/

namespace A373282.P12151478815632708214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033043 (A065205 (n + 1) + A000079 n).toNat

end

end A373282.P12151478815632708214

/-! ## A373282.P1574637059031688760

`A359475(A007689(n))+6^n`
-/

namespace A373282.P1574637059031688760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359475 (A007689 n).toNat + (6 ^ n : ℤ)

end

end A373282.P1574637059031688760

/-! ## A373282.P10803403889429086076

`A083919(A216923(n+1))+6^n`
-/

namespace A373282.P10803403889429086076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083919 (A216923 (n + 1)).toNat + (6 ^ n : ℤ)

end

end A373282.P10803403889429086076

/-! ## A373282.P2837018856547479081

`A005873(A000982(n+2))+6^n`
-/

namespace A373282.P2837018856547479081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005873 (A000982 (n + 2)).toNat + (6 ^ n : ℤ)

end

end A373282.P2837018856547479081

/-! ## A373282.P15935106818738035422

`A121373(A162818(n+3))+6^n`
-/

namespace A373282.P15935106818738035422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 (A162818 (n + 3)).toNat + (6 ^ n : ℤ)

end

end A373282.P15935106818738035422

/-!
# A373283: Expansion of Sum_{k>=0} x^(7^k) / (1 - 7*x^(7^k)).

The programs for A373283, there is no canonical definition to state claims against.
-/

/-! ## A373283.P72778886776747465

`∑{d}[n+1, #*A373277(#)]`
-/

namespace A373283.P72778886776747465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A373277 d

end

end A373283.P72778886776747465

/-! ## A373283.P16953835130312809684

`A185709(A056363(n))+7^n`
-/

namespace A373283.P16953835130312809684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185709 (A056363 n).toNat + (7 ^ n : ℤ)

end

end A373283.P16953835130312809684

/-! ## A373283.P12793221588994833104

`A010894((6-n)²)+A000420(n)`
-/

namespace A373283.P12793221588994833104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010894 (((6 - (n : ℤ)) ^ 2).toNat + 21) + A000420 n

end

end A373283.P12793221588994833104

/-! ## A373283.P13087457556960555147

`A089484(A210216(3*(n+1)))%2+7^n`
-/

namespace A373283.P13087457556960555147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A089484 (A210216 (3 * (n + 1))).toNat) 2 + (7 ^ n : ℤ)

end

end A373283.P13087457556960555147

/-! ## A373283.P10523666713760626987

`A034491(n)-floor(sqrt(A172444(2*(n+2))+1))%2`
-/

namespace A373283.P10523666713760626987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034491 n - Int.tmod (Int.sqrt (A172444 (2 * (n + 2)) + 1)) 2

end

end A373283.P10523666713760626987

/-!
# A373287: Perfect powers such that the two numbers before and the two numbers after are squarefree.

The programs for A373287, there is no canonical definition to state claims against.
-/

/-! ## A373287.P10550633501368031500

`∩[A124143(n+1), A349521(n+1)]`
-/

namespace A373287.P10550633501368031500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124143 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349521 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A373287.P10550633501368031500

/-!
# A373289: Triangle read by rows: for 1 <= k <= n, T(n,k) is a number with n binary digits and binary weight k whose sum of decimal digits is least; in case of a tie, choose the least such number.

The programs for A373289, there is no canonical definition to state claims against.
-/

/-! ## A373289.P6758995326213195142

`A380806(n+1)+A339927(A095303(2*n+3))`
-/

namespace A373289.P6758995326213195142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380806 (n + 1) + A339927 (A095303 (2 * n + 3)).toNat

end

end A373289.P6758995326213195142

/-! ## A373289.P2622173095311447035

`∑[A000196(A004737(2^n))]`
-/

namespace A373289.P2622173095311447035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A004737 (2 ^ n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A373289.P2622173095311447035

/-!
# A373291: Least perfect power of n containing some decimal digit of n.

The programs for A373291, there is no canonical definition to state claims against.
-/

/-! ## A373291.P16300208240207889920

`(n+1)^A253600(n+1)`
-/

namespace A373291.P16300208240207889920
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A253600 (n + 1) : ℤ)

end

end A373291.P16300208240207889920

/-!
# A373292: Expansion of 1/(1 - x/(1 - 8*x^3)^(1/4)).

The programs for A373292, there is no canonical definition to state claims against.
-/

/-! ## A373292.P1966029520790247784

`or(A007318(n), A162343(A131090(n)))`
-/

namespace A373292.P1966029520790247784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A007318 n) (A162343 (A131090 n).toNat)

end

end A373292.P1966029520790247784

/-! ## A373292.P2657682661062303635

`A309247(A091565(n))`
-/

namespace A373292.P2657682661062303635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309247 (A091565 n).toNat

end

end A373292.P2657682661062303635

/-! ## A373292.P16133319240276420749

`A357409(A371458(n))`
-/

namespace A373292.P16133319240276420749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357409 (A371458 n).toNat

end

end A373292.P16133319240276420749

/-! ## A373292.P4362431398772929938

`A377482(A393181(n))`
-/

namespace A373292.P4362431398772929938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377482 (A393181 n).toNat

end

end A373292.P4362431398772929938

/-! ## A373292.P18093575858152993942

`A025451(A007466(n+1))`
-/

namespace A373292.P18093575858152993942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025451 (A007466 (n + 1)).toNat

end

end A373292.P18093575858152993942

/-!
# A373293: Number of edge covers of the fan graph F_{n,3}.

The programs for A373293, the canonical program `A373293.P11612267397813151893` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373293 has offset 1).

The definition of A373293 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A373293.P11852923166035265629

`ogf((16-22x+42x^2)/(1-11x+31x^2-21x^3))`
-/

namespace A373293.P11852923166035265629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [16, -22, 42] [1, -11, 31, -21] n

end

end A373293.P11852923166035265629

namespace A373293

/-- `ogf((16-22x+42x^2)/(1-11x+31x^2-21x^3))` -/
def P11852923166035265629.Spec : Prop :=
  ∀ n, P11852923166035265629.a n = A373293 (n + 1)

end A373293

/-! ## A373293.P11612267397813151893

`4*7^(n+1)-5*3^(n+1)+3`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A373293

/-- `4*7^(n+1)-5*3^(n+1)+3` -/
def P11612267397813151893.Spec : Prop :=
  ∀ n, P11612267397813151893.a n = A373293 (n + 1)

theorem P11612267397813151893.correct : P11612267397813151893.Spec := by
  intro n
  simp only [A373293, Nat.add_sub_cancel]

end A373293

/-!
# A373294: a(n) is the number of n-digit primes that have at least one zero among their digits (A056709).

The programs for A373294, there is no canonical definition to state claims against.
-/

/-! ## A373294.P14992394565760226256

`Δ[A091644(A028310(n))]`
-/

namespace A373294.P14992394565760226256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091644 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A373294.P14992394565760226256

/-! ## A373294.P4628826139220401769

`A091644(n+1)-A091644(A028310(n))`
-/

namespace A373294.P4628826139220401769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091644 (n + 1) - A091644 (A028310 n).toNat

end

end A373294.P4628826139220401769

/-! ## A373294.P7838095980183727744

`A091644(n+1)-A091644(A233583(n+1))`
-/

namespace A373294.P7838095980183727744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091644 (n + 1) - A091644 (A233583 (n + 1)).toNat

end

end A373294.P7838095980183727744

/-!
# A373295: Expansion of 1/Product_{k>=1} (1 - x^k)^(valuation(k,4) + 1).

The programs for A373295, there is no canonical definition to state claims against.
-/

/-! ## A373295.P13177781297776708937

`A318027(n)+A131576(A173779(n))`
-/

namespace A373295.P13177781297776708937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318027 n + A131576 (A173779 n).toNat

end

end A373295.P13177781297776708937

/-! ## A373295.P17982124869465857113

`or(A010054(A029804(n+1)), A318027(n))`
-/

namespace A373295.P17982124869465857113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010054 (A029804 (n + 1)).toNat) (A318027 n)

end

end A373295.P17982124869465857113

/-! ## A373295.P4811203732509894213

`A318027(n)%A243342(n+1)`
-/

namespace A373295.P4811203732509894213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A318027 n) (A243342 (n + 1))

end

end A373295.P4811203732509894213

/-! ## A373295.P17873959632956992922

`A318027(n)+A083928(A016957(n))`
-/

namespace A373295.P17873959632956992922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318027 n + A083928 (A016957 n).toNat

end

end A373295.P17873959632956992922

/-! ## A373295.P9646854978423766224

`A318027(n)+A163533(A000079(n))`
-/

namespace A373295.P9646854978423766224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318027 n + A163533 (A000079 n).toNat

end

end A373295.P9646854978423766224

/-!
# A373296: Euler transform of A055457.

The programs for A373296, there is no canonical definition to state claims against.
-/

/-! ## A373296.P13215158490633209749

`A318028(n)%A187670(n+1)`
-/

namespace A373296.P13215158490633209749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A318028 n) (A187670 (n + 1))

end

end A373296.P13215158490633209749

/-! ## A373296.P9442701647709220553

`A318028(n)%A001358(A077285(n))`
-/

namespace A373296.P9442701647709220553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A318028 n) (A001358 (A077285 n).toNat)

end

end A373296.P9442701647709220553

/-! ## A373296.P8432327522856744435

`A008480(A001248(n+1))*A318028(n)`
-/

namespace A373296.P8432327522856744435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (A001248 (n + 1)).toNat * A318028 n

end

end A373296.P8432327522856744435

/-! ## A373296.P2895907559147029859

`gcd(A318028(n), A337074(A329200(3*n+1)))`
-/

namespace A373296.P2895907559147029859
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A318028 n) (A337074 (A329200 (3 * n + 1)).toNat)

end

end A373296.P2895907559147029859

/-! ## A373296.P11131966003183599669

`gcd(A318028(n), A337074(A001952(n+1)))`
-/

namespace A373296.P11131966003183599669
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A318028 n) (A337074 (A001952 (n + 1)).toNat)

end

end A373296.P11131966003183599669

/-!
# A373297: Euler transform of A373216.

The programs for A373297, there is no canonical definition to state claims against.
-/

/-! ## A373297.P15938486873199188544

`or(A266775(n), A327051(A343379(2*(n+1))))`
-/

namespace A373297.P15938486873199188544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A266775 n) (A327051 (A343379 (2 * (n + 1))).toNat)

end

end A373297.P15938486873199188544

/-!
# A373298: Euler transform of A373217.

The programs for A373298, there is no canonical definition to state claims against.
-/

/-! ## A373298.P7962180882106199333

`A003056(A323656(n)+n+1)`
-/

namespace A373298.P7962180882106199333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A323656 n + (n + 1 : ℤ)).toNat

end

end A373298.P7962180882106199333

/-! ## A373298.P7123675129551102466

`A026813(n)+A000688(A000079(n))`
-/

namespace A373298.P7123675129551102466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026813 n + A000688 (A000079 n).toNat

end

end A373298.P7123675129551102466

/-! ## A373298.P3931691048824035884

`A308927(n)+A001055(A000079(n))`
-/

namespace A373298.P3931691048824035884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308927 n + A001055 (A000079 n).toNat

end

end A373298.P3931691048824035884

/-! ## A373298.P18263761488443792128

`A319472(n)+A000688(A000079(n))`
-/

namespace A373298.P18263761488443792128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319472 n + A000688 (A000079 n).toNat

end

end A373298.P18263761488443792128

/-! ## A373298.P18067809380672611146

`A003056(A333257(n)+A323656(n))`
-/

namespace A373298.P18067809380672611146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A333257 n + A323656 n).toNat

end

end A373298.P18067809380672611146

/-!
# A373299: Numbers prime(k) such that prime(k) - prime(k-1) = prime(k+2) - prime(k+1).

The programs for A373299, the canonical program `A373299.P1347449349989211872` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373299 has offset 1).

The definition of A373299 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A022885, A151800, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A373299.P1347449349989211872

`A151800(A022885(n+1))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A373299

/-- `A151800(A022885(n+1))` -/
def P1347449349989211872.Spec : Prop :=
  ∀ n, P1347449349989211872.a n = A373299 (n + 1)

theorem P1347449349989211872.correct : P1347449349989211872.Spec := by
  intro n
  simp only [A373299, Nat.add_sub_cancel]

end A373299

/-! ## A373299.P12446365788646629597

`A022885(n+1)+A001223(A022884(n+1))`
-/

namespace A373299.P12446365788646629597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022885 (n + 1) + A001223 (A022884 (n + 1)).toNat

end

end A373299.P12446365788646629597

namespace A373299

/-- `A022885(n+1)+A001223(A022884(n+1))` -/
def P12446365788646629597.Spec : Prop :=
  ∀ n, P12446365788646629597.a n = A373299 (n + 1)

end A373299

/-! ## A373299.P17109546724110498414

`A045319(A022884(n+1))`
-/

namespace A373299.P17109546724110498414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A022884 (n + 1)).toNat

end

end A373299.P17109546724110498414

namespace A373299

/-- `A045319(A022884(n+1))` -/
def P17109546724110498414.Spec : Prop :=
  ∀ n, P17109546724110498414.a n = A373299 (n + 1)

end A373299

/-! ## A373299.P7387229894038892684

`A000040(A022884(n+1)+1)`
-/

namespace A373299.P7387229894038892684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A022884 (n + 1) + 1).toNat

end

end A373299.P7387229894038892684

namespace A373299

/-- `A000040(A022884(n+1)+1)` -/
def P7387229894038892684.Spec : Prop :=
  ∀ n, P7387229894038892684.a n = A373299 (n + 1)

end A373299

/-! ## A373299.P12853760838145655826

`A006005(A022884(n+1)+1)`
-/

namespace A373299.P12853760838145655826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (A022884 (n + 1) + 1).toNat

end

end A373299.P12853760838145655826

namespace A373299

/-- `A006005(A022884(n+1)+1)` -/
def P12853760838145655826.Spec : Prop :=
  ∀ n, P12853760838145655826.a n = A373299 (n + 1)

end A373299

/-! ## A373299.P14205665674735576566

`A008578(A022884(n+1)+2)`
-/

namespace A373299.P14205665674735576566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A022884 (n + 1) + 2).toNat

end

end A373299.P14205665674735576566

namespace A373299

/-- `A008578(A022884(n+1)+2)` -/
def P14205665674735576566.Spec : Prop :=
  ∀ n, P14205665674735576566.a n = A373299 (n + 1)

end A373299

/-! ## A373299.P17518204010284084621

`A065091(A022884(n+1)+A000007(n+3))`
-/

namespace A373299.P17518204010284084621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A022884 (n + 1) + A000007 (n + 3)).toNat

end

end A373299.P17518204010284084621

namespace A373299

/-- `A065091(A022884(n+1)+A000007(n+3))` -/
def P17518204010284084621.Spec : Prop :=
  ∀ n, P17518204010284084621.a n = A373299 (n + 1)

end A373299

/-! ## A373299.P17551364845899116983

`2*A263674(n+1)-A151800(A263674(n+1))`
-/

namespace A373299.P17551364845899116983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A263674 (n + 1) - A151800 (A263674 (n + 1)).toNat

end

end A373299.P17551364845899116983

namespace A373299

/-- `2*A263674(n+1)-A151800(A263674(n+1))` -/
def P17551364845899116983.Spec : Prop :=
  ∀ n, P17551364845899116983.a n = A373299 (n + 1)

end A373299

/-! ## A373299.P1572338526427407555

`A003961(A022885(n+1))`
-/

namespace A373299.P1572338526427407555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A022885 (n + 1)).toNat

end

end A373299.P1572338526427407555

namespace A373299

/-- `A003961(A022885(n+1))` -/
def P1572338526427407555.Spec : Prop :=
  ∀ n, P1572338526427407555.a n = A373299 (n + 1)

end A373299

/-! ## A373299.P14162540024233802004

`A002374(A263674(n+1))`
-/

namespace A373299.P14162540024233802004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002374 (A263674 (n + 1)).toNat

end

end A373299.P14162540024233802004

namespace A373299

/-- `A002374(A263674(n+1))` -/
def P14162540024233802004.Spec : Prop :=
  ∀ n, P14162540024233802004.a n = A373299 (n + 1)

end A373299

/-! ## A373299.P16117698860292816516

`A007918(A022885(n+1)+1)`
-/

namespace A373299.P16117698860292816516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A022885 (n + 1) + 1).toNat

end

end A373299.P16117698860292816516

namespace A373299

/-- `A007918(A022885(n+1)+1)` -/
def P16117698860292816516.Spec : Prop :=
  ∀ n, P16117698860292816516.a n = A373299 (n + 1)

end A373299

/-! ## A373299.P14825682710897655006

`A055377(A105093(n+1))`
-/

namespace A373299.P14825682710897655006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055377 (A105093 (n + 1)).toNat

end

end A373299.P14825682710897655006

namespace A373299

/-- `A055377(A105093(n+1))` -/
def P14825682710897655006.Spec : Prop :=
  ∀ n, P14825682710897655006.a n = A373299 (n + 1)

end A373299

