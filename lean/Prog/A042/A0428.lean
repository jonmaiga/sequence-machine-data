import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C017
import Seq.B000.C021
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C005
import Seq.B002.C000
import Seq.B003.C000
import Seq.B003.C001
import Seq.B004.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B010.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C007
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
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024

/-!
# A042805: Denominators of continued fraction convergents to sqrt(933).

The programs for A042805, there is no canonical definition to state claims against.
-/

/-! ## A042805.P2165753162775938543

`A057436(A041291(n))`
-/

namespace A042805.P2165753162775938543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057436 (A041291 n).toNat

end

end A042805.P2165753162775938543

/-! ## A042805.P10644525750666942872

`A007092(A041291(n)^A340035(2*n+1))`
-/

namespace A042805.P10644525750666942872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 (SequenceMachineLib.roundAway ((A041291 n : ℚ) ^ (A340035 (2 * n + 1) : ℤ))).toNat

end

end A042805.P10644525750666942872

/-!
# A042808: Numerators of continued fraction convergents to sqrt(935).

The programs for A042808, there is no canonical definition to state claims against.
-/

/-! ## A042808.P4540124204419121911

`A002266(6*A042256(n))`
-/

namespace A042808.P4540124204419121911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (6 * A042256 n).toNat

end

end A042808.P4540124204419121911

/-!
# A042811: Denominators of continued fraction convergents to sqrt(936).

The programs for A042811, there is no canonical definition to state claims against.
-/

/-! ## A042811.P14419658842501725474

`A321126(lcm(A036661(n), A212066(n)))`
-/

namespace A042811.P14419658842501725474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321126 (Int.lcm (A036661 n) (A212066 n))

end

end A042811.P14419658842501725474

/-!
# A042812: Numerators of continued fraction convergents to sqrt(937).

The programs for A042812, there is no canonical definition to state claims against.
-/

/-! ## A042812.P8130110152901328347

`A022400((n+1)^6^val(n+1, 6))`
-/

namespace A042812.P8130110152901328347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022400 ((n + 1) ^ 6 ^ SequenceMachineLib.valuation (n + 1) 6)

end

end A042812.P8130110152901328347

/-!
# A042813: Denominators of continued fraction convergents to sqrt(937).

The programs for A042813, there is no canonical definition to state claims against.
-/

/-! ## A042813.P11848471168516146932

`a(n-2)+a(n-1)*A165073(A000583(n))` with `a(0)=1, a(1)=1`
-/

namespace A042813.P11848471168516146932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + a (n - 1) * A165073 (A000583 n).toNat

end

end A042813.P11848471168516146932

/-!
# A042814: Numerators of continued fraction convergents to sqrt(938).

The programs for A042814, there is no canonical definition to state claims against.
-/

/-! ## A042814.P2940104477119429343

`A022400(A361396(n+1))`
-/

namespace A042814.P2940104477119429343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022400 (A361396 (n + 1)).toNat

end

end A042814.P2940104477119429343

/-!
# A042815: Denominators of continued fraction convergents to sqrt(938).

The programs for A042815, there is no canonical definition to state claims against.
-/

/-! ## A042815.P9746306698028056994

`A261104(floor(A119392(n)/A060693(n)))`
-/

namespace A042815.P9746306698028056994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261104 ⌊(A119392 n : ℚ) / (A060693 n : ℚ)⌋.toNat

end

end A042815.P9746306698028056994

/-! ## A042815.P17989346439831304389

`A088445(A037201(n+1)+A005668(n))`
-/

namespace A042815.P17989346439831304389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088445 (A037201 (n + 1) + A005668 n).toNat

end

end A042815.P17989346439831304389

/-! ## A042815.P10550434880224565391

`A240519(A154107(n))%A240522(n+1)`
-/

namespace A042815.P10550434880224565391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A240519 (A154107 n).toNat) (A240522 (n + 1))

end

end A042815.P10550434880224565391

/-!
# A042816: Numerators of continued fraction convergents to sqrt(939).

The programs for A042816, there is no canonical definition to state claims against.
-/

/-! ## A042816.P16543473832105470286

`A042818(n)%A246680(A042834(n))`
-/

namespace A042816.P16543473832105470286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A042818 n) (A246680 (A042834 n).toNat)

end

end A042816.P16543473832105470286

/-!
# A042817: Denominators of continued fraction convergents to sqrt(939).

The programs for A042817, there is no canonical definition to state claims against.
-/

/-! ## A042817.P17989731202482151165

`A124495(A041731(n))`
-/

namespace A042817.P17989731202482151165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124495 (A041731 n).toNat

end

end A042817.P17989731202482151165

/-! ## A042817.P824231290263910303

`A020651(A307249(n)+1)`
-/

namespace A042817.P824231290263910303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020651 (A307249 n + 1).toNat

end

end A042817.P824231290263910303

/-!
# A042819: Denominators of continued fraction convergents to sqrt(940).

The programs for A042819, there is no canonical definition to state claims against.
-/

/-! ## A042819.P1357675204910931117

`a(n-2)+a(n-1)*A040909(n)` with `a(0)=1, a(1)=1`
-/

namespace A042819.P1357675204910931117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + a (n - 1) * A040909 n

end

end A042819.P1357675204910931117

/-!
# A042823: Denominators of continued fraction convergents to sqrt(942).

The programs for A042823, there is no canonical definition to state claims against.
-/

/-! ## A042823.P6362821117559271608

`A156552(lcm(2, A159666(n)))`
-/

namespace A042823.P6362821117559271608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (Int.lcm 2 (A159666 n))

end

end A042823.P6362821117559271608

/-!
# A042825: Denominators of continued fraction convergents to sqrt(943).

The programs for A042825, there is no canonical definition to state claims against.
-/

/-! ## A042825.P542040091066050901

`A041663(n)+A173711(A042832(n)*A173711(n))`
-/

namespace A042825.P542040091066050901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041663 n + A173711 (A042832 n * A173711 n).toNat

end

end A042825.P542040091066050901

/-!
# A042826: Numerators of continued fraction convergents to sqrt(944).

The programs for A042826, there is no canonical definition to state claims against.
-/

/-! ## A042826.P16094519072616389623

`A167389(A041900(n))-A000041(n)`
-/

namespace A042826.P16094519072616389623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167389 (A041900 n).toNat - A000041 n

end

end A042826.P16094519072616389623

/-!
# A042829: Denominators of continued fraction convergents to sqrt(945).

The programs for A042829, there is no canonical definition to state claims against.
-/

/-! ## A042829.P3147760520395759564

`A276949(n)+A008617(A000683(n+1))`
-/

namespace A042829.P3147760520395759564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276949 n + A008617 (A000683 (n + 1)).toNat

end

end A042829.P3147760520395759564

/-! ## A042829.P1104918264815154463

`A003963(A029931(n)+A003505(n+3))`
-/

namespace A042829.P1104918264815154463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A029931 n + A003505 (n + 3)).toNat

end

end A042829.P1104918264815154463

/-!
# A042834: Numerators of continued fraction convergents to sqrt(948).

The programs for A042834, there is no canonical definition to state claims against.
-/

/-! ## A042834.P1851052332090690780

`A065033(A042838(n)+A042828(n))`
-/

namespace A042834.P1851052332090690780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A042838 n + A042828 n).toNat

end

end A042834.P1851052332090690780

/-!
# A042835: Denominators of continued fraction convergents to sqrt(948).

The programs for A042835, there is no canonical definition to state claims against.
-/

/-! ## A042835.P11019748232867101659

`A352186(A121392(n)%A058077(n+1))`
-/

namespace A042835.P11019748232867101659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352186 (Int.tmod (A121392 n) (A058077 (n + 1))).toNat

end

end A042835.P11019748232867101659

/-! ## A042835.P2799108017192105151

`A352186(A051295(n))`
-/

namespace A042835.P2799108017192105151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352186 (A051295 n).toNat

end

end A042835.P2799108017192105151

/-!
# A042841: Denominators of continued fraction convergents to sqrt(951).

The programs for A042841, there is no canonical definition to state claims against.
-/

/-! ## A042841.P4019616366874728813

`A156549(A078469(n))+A000975(n)`
-/

namespace A042841.P4019616366874728813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156549 (A078469 n).toNat + A000975 n

end

end A042841.P4019616366874728813

/-! ## A042841.P15723020465619568781

`A047554(A000273(n))%A124302(n+2)`
-/

namespace A042841.P15723020465619568781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047554 (A000273 n).toNat) (A124302 (n + 2))

end

end A042841.P15723020465619568781

/-!
# A042845: Denominators of continued fraction convergents to sqrt(953).

The programs for A042845, there is no canonical definition to state claims against.
-/

/-! ## A042845.P9043947821971863951

`A127441(A000041(n))^floor(atan(n))`
-/

namespace A042845.P9043947821971863951
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127441 (A000041 n).toNat : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ)

end

end A042845.P9043947821971863951

/-! ## A042845.P10957770665289934028

`gcd(A127441(A000041(n)), A280456(n))`
-/

namespace A042845.P10957770665289934028
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A127441 (A000041 n).toNat) (A280456 n)

end

end A042845.P10957770665289934028

/-!
# A042847: Denominators of continued fraction convergents to sqrt(954).

The programs for A042847, there is no canonical definition to state claims against.
-/

/-! ## A042847.P3656829243481258929

`A333222(A000108(n))+A281896(n)`
-/

namespace A042847.P3656829243481258929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333222 (A000108 n).toNat + A281896 n

end

end A042847.P3656829243481258929

/-! ## A042847.P3503282755331751481

`A205713(lcm(A001862(n), A071724(n)))`
-/

namespace A042847.P3503282755331751481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205713 (Int.lcm (A001862 n) (A071724 n))

end

end A042847.P3503282755331751481

/-!
# A042849: Denominators of continued fraction convergents to sqrt(955).

The programs for A042849, there is no canonical definition to state claims against.
-/

/-! ## A042849.P15390956268269527286

`a(n-2)+a(n-1)*A335458(a(n-1))` with `a(0)=1, a(1)=1, a(2)=10`
-/

namespace A042849.P15390956268269527286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 10] fun n a =>
  a (n - 2) + a (n - 1) * A335458 (a (n - 1)).toNat

end

end A042849.P15390956268269527286

/-!
# A042853: Denominators of continued fraction convergents to sqrt(957).

The programs for A042853, there is no canonical definition to state claims against.
-/

/-! ## A042853.P4949021507883099704

`A329876(A150864(n))`
-/

namespace A042853.P4949021507883099704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329876 (A150864 n).toNat

end

end A042853.P4949021507883099704

/-!
# A042857: Denominators of continued fraction convergents to sqrt(959).

The programs for A042857, there is no canonical definition to state claims against.
-/

/-! ## A042857.P834480549138281436

`A140106(A042859(n))+1`
-/

namespace A042857.P834480549138281436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (A042859 n).toNat + 1

end

end A042857.P834480549138281436

/-! ## A042857.P16697351645209706575

`A065033(A042859(n)-1)`
-/

namespace A042857.P16697351645209706575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A042859 n - 1).toNat

end

end A042857.P16697351645209706575

/-!
# A042858: Numerators of continued fraction convergents to sqrt(960).

The programs for A042858, there is no canonical definition to state claims against.
-/

/-! ## A042858.P15374581543771199310

`Δ[A007494(n)]*A041448(n)`
-/

namespace A042858.P15374581543771199310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A041448 n

end

end A042858.P15374581543771199310

/-! ## A042858.P7355791965473154999

`A000034(n+1)*A041448(n)`
-/

namespace A042858.P7355791965473154999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (n + 1) * A041448 n

end

end A042858.P7355791965473154999

/-! ## A042858.P8634022609784307033

`A040001(n+2)*A041448(n)`
-/

namespace A042858.P8634022609784307033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (n + 2) * A041448 n

end

end A042858.P8634022609784307033

/-! ## A042858.P3692851654476845410

`2/A000034(n)*A041448(n)`
-/

namespace A042858.P3692851654476845410
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A000034 n : ℚ) * (A041448 n : ℚ)

end

end A042858.P3692851654476845410

/-! ## A042858.P16033386171208483807

`A010124(n²+1)*A041448(n)`
-/

namespace A042858.P16033386171208483807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010124 (n ^ 2 + 1) * A041448 n

end

end A042858.P16033386171208483807

/-! ## A042858.P4476032083414073843

`Δ[A032766(n+1)]*A041448(n)`
-/

namespace A042858.P4476032083414073843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A041448 n

end

end A042858.P4476032083414073843

/-! ## A042858.P2440256704330921792

`2/Δ[A032766(n)]*A041448(n)`
-/

namespace A042858.P2440256704330921792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (f1 (n + 1) - f1 n : ℚ) * (A041448 n : ℚ)

end

end A042858.P2440256704330921792

/-! ## A042858.P11211902505736436913

`A006519(A006519(n+1)+1)*A041448(n)`
-/

namespace A042858.P11211902505736436913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A006519 (n + 1) + 1).toNat * A041448 n

end

end A042858.P11211902505736436913

/-! ## A042858.P8927490507888173602

`A006519(n²+2)*A041448(n)`
-/

namespace A042858.P8927490507888173602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n ^ 2 + 2) * A041448 n

end

end A042858.P8927490507888173602

/-!
# A042859: Denominators of continued fraction convergents to sqrt(960).

The programs for A042859, the canonical program `A042859.P17928880354735713203` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042859 has offset 0).

The definition of A042859 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A042859.P17928880354735713203

`62*a(n-2)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=61, a(3)=62`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A042859

/-- `62*a(n-2)-a(n-4)` -/
def P17928880354735713203.Spec : Prop :=
  ∀ n, P17928880354735713203.a n = A042859 n

theorem P17928880354735713203.correct : P17928880354735713203.Spec := by
  intro n
  simp only [A042859]

end A042859

/-! ## A042859.P9716776467008137552

`A041449(n)/A000034(n)`
-/

namespace A042859.P9716776467008137552
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041449 n : ℚ) / (A000034 n : ℚ)

end

end A042859.P9716776467008137552

namespace A042859

/-- `A041449(n)/A000034(n)` -/
def P9716776467008137552.Spec : Prop :=
  ∀ n, P9716776467008137552.a n = (A042859 n : ℚ)

end A042859

/-! ## A042859.P6190610028524309793

`A041449(n)/A010673(n)!`
-/

namespace A042859.P6190610028524309793
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041449 n : ℚ) / (Nat.factorial (A010673 n).toNat : ℚ)

end

end A042859.P6190610028524309793

namespace A042859

/-- `A041449(n)/A010673(n)!` -/
def P6190610028524309793.Spec : Prop :=
  ∀ n, P6190610028524309793.a n = (A042859 n : ℚ)

end A042859

/-! ## A042859.P7413340112524802085

`A041449(n)/Δ[A032766(n)]`
-/

namespace A042859.P7413340112524802085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041449 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A042859.P7413340112524802085

namespace A042859

/-- `A041449(n)/Δ[A032766(n)]` -/
def P7413340112524802085.Spec : Prop :=
  ∀ n, P7413340112524802085.a n = (A042859 n : ℚ)

end A042859

/-! ## A042859.P6045764522119676732

`A041449(n)/A014709(2*n)`
-/

namespace A042859.P6045764522119676732
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041449 n : ℚ) / (A014709 (2 * n) : ℚ)

end

end A042859.P6045764522119676732

namespace A042859

/-- `A041449(n)/A014709(2*n)` -/
def P6045764522119676732.Spec : Prop :=
  ∀ n, P6045764522119676732.a n = (A042859 n : ℚ)

end A042859

/-! ## A042859.P6735778428502374901

`A041449(n)/A006519(A002522(n))`
-/

namespace A042859.P6735778428502374901
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041449 n : ℚ) / (A006519 (A002522 n).toNat : ℚ)

end

end A042859.P6735778428502374901

namespace A042859

/-- `A041449(n)/A006519(A002522(n))` -/
def P6735778428502374901.Spec : Prop :=
  ∀ n, P6735778428502374901.a n = (A042859 n : ℚ)

end A042859

/-!
# A042861: Denominators of continued fraction convergents to sqrt(962).

The programs for A042861, the canonical program `A042861.P1691232867620787353` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042861 has offset 0).

The definition of A042861 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A042861.P1691232867620787353

`62*a(n-1)+a(n-2)` with `a(0)=1, a(1)=62`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A042861

/-- `62*a(n-1)+a(n-2)` -/
def P1691232867620787353.Spec : Prop :=
  ∀ n, (P1691232867620787353.a n : ℤ) = A042861 n

theorem P1691232867620787353.correct : P1691232867620787353.Spec := by
  intro n
  simp only [A042861]

end A042861

/-! ## A042861.P15045967580102863547

`xor(1, a(n-1)²)/a(n-2)` with `a(0)=1, a(1)=62`
-/

namespace A042861.P15045967580102863547
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 62] fun n a =>
  (Int.xor 1 (SequenceMachineLib.roundAway (a (n - 1) ^ 2)) : ℚ) / a (n - 2)

end

end A042861.P15045967580102863547

namespace A042861

/-- `xor(1, a(n-1)²)/a(n-2)` -/
def P15045967580102863547.Spec : Prop :=
  ∀ n, P15045967580102863547.a n = (A042861 n : ℚ)

end A042861

/-! ## A042861.P8448547930170237956

`floor((a(n-1)²+1)/a(n-2))` with `a(0)=1, a(1)=62`
-/

namespace A042861.P8448547930170237956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 62] fun n a =>
  ⌊(a (n - 1) ^ 2 + 1 : ℚ) / (a (n - 2) : ℚ)⌋

end

end A042861.P8448547930170237956

namespace A042861

/-- `floor((a(n-1)²+1)/a(n-2))` -/
def P8448547930170237956.Spec : Prop :=
  ∀ n, P8448547930170237956.a n = A042861 n

end A042861

/-!
# A042862: Numerators of continued fraction convergents to sqrt(963).

The programs for A042862, there is no canonical definition to state claims against.
-/

/-! ## A042862.P1397897730614091500

`A041192(3*n+2)`
-/

namespace A042862.P1397897730614091500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041192 (3 * n + 2)

end

end A042862.P1397897730614091500

/-! ## A042862.P11515505676346411623

`(n%2)!*A041192(A016789(n))`
-/

namespace A042862.P11515505676346411623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n % 2) : ℤ) * A041192 (A016789 n).toNat

end

end A042862.P11515505676346411623

/-! ## A042862.P7622957795542582268

`lcm(A033999(n), A041192(A016789(n)))`
-/

namespace A042862.P7622957795542582268
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A041192 (A016789 n).toNat)

end

end A042862.P7622957795542582268

/-! ## A042862.P8728505674160977780

`or(A000007(n), A041192(A016789(n)))`
-/

namespace A042862.P8728505674160977780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A041192 (A016789 n).toNat)

end

end A042862.P8728505674160977780

/-! ## A042862.P8885600237230247067

`or(A000038(n), A041192(A016789(n)))`
-/

namespace A042862.P8885600237230247067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A041192 (A016789 n).toNat)

end

end A042862.P8885600237230247067

/-! ## A042862.P17264729092067799216

`A041192(A016789(n))^A000041(gcd(n, n+1))`
-/

namespace A042862.P17264729092067799216
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041192 (A016789 n).toNat : ℚ) ^ (A000041 (Nat.gcd n (n + 1)) : ℤ)

end

end A042862.P17264729092067799216

/-!
# A042863: Denominators of continued fraction convergents to sqrt(963).

The programs for A042863, there is no canonical definition to state claims against.
-/

/-! ## A042863.P7126541768036325367

`A041193(3*n+2)/3`
-/

namespace A042863.P7126541768036325367
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041193 (3 * n + 2) : ℚ) / 3

end

end A042863.P7126541768036325367

/-!
# A042869: Denominators of continued fraction convergents to sqrt(966).

The programs for A042869, there is no canonical definition to state claims against.
-/

/-! ## A042869.P4554788165708410330

`a(n-2)+a(n-1)*A005136(a(n-2))` with `a(0)=1, a(1)=12, a(2)=25`
-/

namespace A042869.P4554788165708410330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 12, 25] fun n a =>
  a (n - 2) + a (n - 1) * A005136 (a (n - 2)).toNat

end

end A042869.P4554788165708410330

/-!
# A042871: Denominators of continued fraction convergents to sqrt(967).

The programs for A042871, there is no canonical definition to state claims against.
-/

/-! ## A042871.P1521969741955686274

`A184402(A064857(n+1))+4*n`
-/

namespace A042871.P1521969741955686274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184402 (A064857 (n + 1)).toNat + (4 * n : ℤ)

end

end A042871.P1521969741955686274

/-!
# A042875: Denominators of continued fraction convergents to sqrt(969).

The programs for A042875, there is no canonical definition to state claims against.
-/

/-! ## A042875.P9486664287820110309

`record[A126260((∑[2^n]+2)²-2)+n]`
-/

namespace A042875.P9486664287820110309
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126260 ((∑ j ∈ Finset.range (n + 1), f2 j + 2) ^ 2 - 2) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A042875.P9486664287820110309

/-!
# A042881: Denominators of continued fraction convergents to sqrt(972).

The programs for A042881, there is no canonical definition to state claims against.
-/

/-! ## A042881.P8234026828308557727

`A221459(A112982(n+1))+A022095(n)`
-/

namespace A042881.P8234026828308557727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221459 (A112982 (n + 1)).toNat + A022095 n

end

end A042881.P8234026828308557727

/-! ## A042881.P9685885623375026435

`A129815(A266887(n+1))+A022095(n)`
-/

namespace A042881.P9685885623375026435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129815 (A266887 (n + 1)).toNat + A022095 n

end

end A042881.P9685885623375026435

/-!
# A042883: Denominators of continued fraction convergents to sqrt(973).

The programs for A042883, there is no canonical definition to state claims against.
-/

/-! ## A042883.P2592382277679908028

`A323286(A124838(3*n+1))-A002260(n+1)`
-/

namespace A042883.P2592382277679908028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323286 (A124838 (3 * n + 1)).toNat - A002260 (n + 1)

end

end A042883.P2592382277679908028

/-!
# A042887: Denominators of continued fraction convergents to sqrt(975).

The programs for A042887, there is no canonical definition to state claims against.
-/

/-! ## A042887.P10118131361083782745

`A065194(or(A000041(n), A106435(n)))`
-/

namespace A042887.P10118131361083782745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065194 (Int.lor (A000041 n) (A106435 n)).toNat

end

end A042887.P10118131361083782745

/-!
# A042889: Denominators of continued fraction convergents to sqrt(976).

The programs for A042889, there is no canonical definition to state claims against.
-/

/-! ## A042889.P2389857191267168287

`a(n-2)+a(n-1)*A005136(a(n-2))` with `a(0)=1, a(1)=4, a(2)=25`
-/

namespace A042889.P2389857191267168287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 25] fun n a =>
  a (n - 2) + a (n - 1) * A005136 (a (n - 2)).toNat

end

end A042889.P2389857191267168287

/-!
# A042891: Denominators of continued fraction convergents to sqrt(977).

The programs for A042891, there is no canonical definition to state claims against.
-/

/-! ## A042891.P17654072979003230552

`∑[A102802(a(n-1)+a(n-2))]` with `a(0)=1, a(1)=2, a(2)=1`
-/

namespace A042891.P17654072979003230552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 1] fun n f1 =>
  A102802 (f1 (n - 1) + f1 (n - 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A042891.P17654072979003230552

/-!
# A042893: Denominators of continued fraction convergents to sqrt(978).

The programs for A042893, there is no canonical definition to state claims against.
-/

/-! ## A042893.P2506580611753554497

`A292380(A029494(3*n+1))+A000204(n+1)`
-/

namespace A042893.P2506580611753554497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292380 (A029494 (3 * n + 1)).toNat + A000204 (n + 1)

end

end A042893.P2506580611753554497

/-! ## A042893.P4411664601117640565

`A347189(a(n-1))+n` with `a(0)=1, a(1)=3, a(2)=4`
-/

namespace A042893.P4411664601117640565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 4] fun n a =>
  A347189 (a (n - 1)).toNat + (n : ℤ)

end

end A042893.P4411664601117640565

/-!
# A042895: Denominators of continued fraction convergents to sqrt(979).

The programs for A042895, there is no canonical definition to state claims against.
-/

/-! ## A042895.P17411469964484190198

`∑[A302528(A302784(2*(n+2)))+n]+1`
-/

namespace A042895.P17411469964484190198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302528 (A302784 (2 * (n + 2))).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A042895.P17411469964484190198

/-! ## A042895.P2893249756509381534

`A185636(n+1)+A118851(A001652(n))`
-/

namespace A042895.P2893249756509381534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185636 (n + 1) + A118851 (A001652 n).toNat

end

end A042895.P2893249756509381534

