import SequenceMachineLib.Basic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C012
import Seq.B000.C017
import Seq.B000.C031
import Seq.B000.C040
import Seq.B000.C045
import Seq.B000.C048
import Seq.B001.C000
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B003.C006
import Seq.B004.C004
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
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
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024

/-!
# A399801: a(1) = 1; a(n+1) is the smallest integer greater than a(n) such that: a(k) + a(k+2) is not a term for any k.

The programs for A399801, there is no canonical definition to state claims against.
-/

/-! ## A399801.P10758079089850410605

`A362918(A303438(n))`
-/

namespace A399801.P10758079089850410605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362918 (A303438 n).toNat

end

end A399801.P10758079089850410605

/-! ## A399801.P17234807764314308365

`A105098(A080902(n+2))`
-/

namespace A399801.P17234807764314308365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105098 (A080902 (n + 2)).toNat

end

end A399801.P17234807764314308365

/-! ## A399801.P8927183671801227851

`A105098(A285210(n+2))`
-/

namespace A399801.P8927183671801227851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105098 (A285210 (n + 2)).toNat

end

end A399801.P8927183671801227851

/-!
# A399807: Start with the positive integers; at the k-th sieving step, remove every (2k+1)-th term of the sequence remaining after the (k-1)-st sieving step; iterate.

The programs for A399807, there is no canonical definition to state claims against.
-/

/-! ## A399807.P4112543095140150747

`A060378(n+2)/2`
-/

namespace A399807.P4112543095140150747
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060378 (n + 2) : ℚ) / 2

end

end A399807.P4112543095140150747

/-! ## A399807.P11131523926529690700

`A001281(A060378(n+2))`
-/

namespace A399807.P11131523926529690700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A060378 (n + 2)).toNat

end

end A399807.P11131523926529690700

/-!
# A399808: Number of unlabeled Hausdorff set systems on an n-set with neither the empty set nor the full set.

The programs for A399808, there is no canonical definition to state claims against.
-/

/-! ## A399808.P4187897945561630466

`∏[A135899(n!)]`
-/

namespace A399808.P4187897945561630466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135899 (Nat.factorial n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A399808.P4187897945561630466

/-!
# A399809: Number of Hausdorff antichains of nonempty proper subsets of an n-set.

The programs for A399809, there is no canonical definition to state claims against.
-/

/-! ## A399809.P7467610492738869499

`A124469(A026709(n))`
-/

namespace A399809.P7467610492738869499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124469 (A026709 n).toNat

end

end A399809.P7467610492738869499

/-! ## A399809.P8326736593376531328

`A086194(A126886(A005418(n+1)+n+1))`
-/

namespace A399809.P8326736593376531328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086194 (A126886 (A005418 (n + 1) + (n + 1 : ℤ)).toNat).toNat

end

end A399809.P8326736593376531328

/-!
# A399817: Number of labeled simple graphs G on n vertices whose open-neighborhood hypergraph is Hausdorff.

The programs for A399817, there is no canonical definition to state claims against.
-/

/-! ## A399817.P16669958156587130541

`A256211(A305785(n+1))`
-/

namespace A399817.P16669958156587130541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256211 (A305785 (n + 1)).toNat

end

end A399817.P16669958156587130541

/-! ## A399817.P11696143543643056877

`A256211(A348530(n+1))`
-/

namespace A399817.P11696143543643056877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256211 (A348530 (n + 1)).toNat

end

end A399817.P11696143543643056877

/-!
# A399820: Partial sums of A052434.

The programs for A399820, there is no canonical definition to state claims against.
-/

/-! ## A399820.P3277288703906741085

`∑[A052434(n+2)]`
-/

namespace A399820.P3277288703906741085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052434 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A399820.P3277288703906741085

/-!
# A399824: Number of labeled neighborhood anti-Sperner graphs on n vertices.

The programs for A399824, there is no canonical definition to state claims against.
-/

/-! ## A399824.P9936643644161050952

`A116679(A196593(n+1))`
-/

namespace A399824.P9936643644161050952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116679 (A196593 (n + 1)).toNat

end

end A399824.P9936643644161050952

/-!
# A399826: Number of labeled graphs whose family of open neighborhoods is connected.

The programs for A399826, there is no canonical definition to state claims against.
-/

/-! ## A399826.P11602908990225267668

`A241822(A344782(n+1))`
-/

namespace A399826.P11602908990225267668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241822 (A344782 (n + 1)).toNat

end

end A399826.P11602908990225267668

/-!
# A399827: Number of labeled mating graphs whose family of open neighborhoods is connected.

The programs for A399827, there is no canonical definition to state claims against.
-/

/-! ## A399827.P12748594184530204513

`A331980(A006130(n))`
-/

namespace A399827.P12748594184530204513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331980 (A006130 n).toNat

end

end A399827.P12748594184530204513

/-! ## A399827.P3367138267474146991

`A387118(A387118(A388715(A387118(n+2))))`
-/

namespace A399827.P3367138267474146991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387118 (A387118 (A388715 (A387118 (n + 2)).toNat).toNat).toNat

end

end A399827.P3367138267474146991

/-!
# A399828: The number of divisors d of n such that gcud(d, n/d) is squarefree, where gcud is the greatest common unitary divisor.

The programs for A399828, the canonical program `A399828.P9872746706796566562` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399828 has offset 1).

The definition of A399828 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A399828.P9872746706796566562

`A366147(n+1)*A368172(n+1)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A399828

/-- `A366147(n+1)*A368172(n+1)` -/
def P9872746706796566562.Spec : Prop :=
  ∀ n, P9872746706796566562.a n = A399828 (n + 1)

theorem P9872746706796566562.correct : P9872746706796566562.Spec := by
  intro n
  simp only [A399828, Nat.add_sub_cancel]

end A399828

/-! ## A399828.P16611385790865926388

`A399831(A234744(n+1))`
-/

namespace A399828.P16611385790865926388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399831 (A234744 (n + 1)).toNat

end

end A399828.P16611385790865926388

namespace A399828

/-- `A399831(A234744(n+1))` -/
def P16611385790865926388.Spec : Prop :=
  ∀ n, P16611385790865926388.a n = A399828 (n + 1)

end A399828

/-! ## A399828.P4505990485720604543

`A199474(A280583(n+1))`
-/

namespace A399828.P4505990485720604543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199474 (A280583 (n + 1)).toNat

end

end A399828.P4505990485720604543

namespace A399828

/-- `A199474(A280583(n+1))` -/
def P4505990485720604543.Spec : Prop :=
  ∀ n, P4505990485720604543.a n = A399828 (n + 1)

end A399828

/-! ## A399828.P15401536978729337054

`lcm(A123271(n+2), A399831(n+1))`
-/

namespace A399828.P15401536978729337054
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A123271 (n + 2)) (A399831 (n + 1))

end

end A399828.P15401536978729337054

namespace A399828

/-- `lcm(A123271(n+2), A399831(n+1))` -/
def P15401536978729337054.Spec : Prop :=
  ∀ n, (P15401536978729337054.a n : ℤ) = A399828 (n + 1)

end A399828

/-! ## A399828.P13121252219226896582

`gcd(A090785(n+1), A399831(n+1))`
-/

namespace A399828.P13121252219226896582
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A090785 (n + 1)) (A399831 (n + 1))

end

end A399828.P13121252219226896582

namespace A399828

/-- `gcd(A090785(n+1), A399831(n+1))` -/
def P13121252219226896582.Spec : Prop :=
  ∀ n, (P13121252219226896582.a n : ℤ) = A399828 (n + 1)

end A399828

/-!
# A399829: The number of divisors d of n such that gcud(d, n/d) is a powerful number (A001694), where gcud is the greatest common unitary divisor.

The programs for A399829, the canonical program `A399829.P142880181418372781` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399829 has offset 1).

The definition of A399829 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A399829.P4377324232854508434

`A000005(A366765(n+1))`
-/

namespace A399829.P4377324232854508434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A366765 (n + 1)).toNat

end

end A399829.P4377324232854508434

namespace A399829

/-- `A000005(A366765(n+1))` -/
def P4377324232854508434.Spec : Prop :=
  ∀ n, P4377324232854508434.a n = A399829 (n + 1)

end A399829

/-! ## A399829.P5061544334156032792

`A365498(n+1)*A366145(n+1)`
-/

namespace A399829.P5061544334156032792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365498 (n + 1) * A366145 (n + 1)

end

end A399829.P5061544334156032792

namespace A399829

/-- `A365498(n+1)*A366145(n+1)` -/
def P5061544334156032792.Spec : Prop :=
  ∀ n, P5061544334156032792.a n = A399829 (n + 1)

end A399829

/-! ## A399829.P6133871123151715533

`A369719(n+1)/A365498(n+1)`
-/

namespace A399829.P6133871123151715533
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A369719 (n + 1) : ℚ) / (A365498 (n + 1) : ℚ)

end

end A399829.P6133871123151715533

namespace A399829

/-- `A369719(n+1)/A365498(n+1)` -/
def P6133871123151715533.Spec : Prop :=
  ∀ n, P6133871123151715533.a n = (A399829 (n + 1) : ℚ)

end A399829

/-! ## A399829.P142880181418372781

`∑{d}[n+1, A056671(#)*A112526((n+1)/#)]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A399829

/-- `∑{d}[n+1, A056671(#)*A112526((n+1)/#)]` -/
def P142880181418372781.Spec : Prop :=
  ∀ n, P142880181418372781.a n = A399829 (n + 1)

theorem P142880181418372781.correct : P142880181418372781.Spec := by
  intro n
  simp only [A399829, Nat.add_sub_cancel]

end A399829

/-! ## A399829.P9134414127699879463

`∑{d}[n+1, A005361(#)*A189021((n+1)/#)]`
-/

namespace A399829.P9134414127699879463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A005361 d * A189021 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A399829.P9134414127699879463

namespace A399829

/-- `∑{d}[n+1, A005361(#)*A189021((n+1)/#)]` -/
def P9134414127699879463.Spec : Prop :=
  ∀ n, P9134414127699879463.a n = A399829 (n + 1)

end A399829

/-! ## A399829.P9295079012453824735

`∑{d}[n+1, A295316(#)*A368248((n+1)/#)]`
-/

namespace A399829.P9295079012453824735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A295316 d * A368248 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A399829.P9295079012453824735

namespace A399829

/-- `∑{d}[n+1, A295316(#)*A368248((n+1)/#)]` -/
def P9295079012453824735.Spec : Prop :=
  ∀ n, P9295079012453824735.a n = A399829 (n + 1)

end A399829

/-! ## A399829.P9260045342390005014

`∑{d}[n+1, A343443(#)*A363551((n+1)/#)]`
-/

namespace A399829.P9260045342390005014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A343443 d * A363551 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A399829.P9260045342390005014

namespace A399829

/-- `∑{d}[n+1, A343443(#)*A363551((n+1)/#)]` -/
def P9260045342390005014.Spec : Prop :=
  ∀ n, P9260045342390005014.a n = A399829 (n + 1)

end A399829

/-!
# A399831: The number of divisors d of n such that gcud(d, n/d) is an exponentially odd number (A268335), where gcud is the greatest common unitary divisor.

The programs for A399831, the canonical program `A399831.P9352319243903294152` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399831 has offset 1).

The definition of A399831 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A399831.P7841513176707703543

`A366901((n+1)*A367513(n+1))`
-/

namespace A399831.P7841513176707703543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366901 ((n + 1 : ℤ) * A367513 (n + 1)).toNat

end

end A399831.P7841513176707703543

namespace A399831

/-- `A366901((n+1)*A367513(n+1))` -/
def P7841513176707703543.Spec : Prop :=
  ∀ n, P7841513176707703543.a n = A399831 (n + 1)

end A399831

/-! ## A399831.P14895617180885682804

`A374902(A005179(A000005((n+1)*(n+1))))`
-/

namespace A399831.P14895617180885682804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374902 (A005179 (A000005 ((n + 1) * (n + 1))).toNat).toNat

end

end A399831.P14895617180885682804

namespace A399831

/-- `A374902(A005179(A000005((n+1)*(n+1))))` -/
def P14895617180885682804.Spec : Prop :=
  ∀ n, P14895617180885682804.a n = A399831 (n + 1)

end A399831

/-! ## A399831.P9352319243903294152

`A365171(A365683(n+1)²)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A399831

/-- `A365171(A365683(n+1)²)` -/
def P9352319243903294152.Spec : Prop :=
  ∀ n, P9352319243903294152.a n = A399831 (n + 1)

theorem P9352319243903294152.correct : P9352319243903294152.Spec := by
  intro n
  simp only [A399831, Nat.add_sub_cancel]

end A399831

/-! ## A399831.P5834652707652440627

`A365171((n+1)*A365683(n+1))`
-/

namespace A399831.P5834652707652440627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365171 ((n + 1 : ℤ) * A365683 (n + 1)).toNat

end

end A399831.P5834652707652440627

namespace A399831

/-- `A365171((n+1)*A365683(n+1))` -/
def P5834652707652440627.Spec : Prop :=
  ∀ n, P5834652707652440627.a n = A399831 (n + 1)

end A399831

/-! ## A399831.P4969062501218669954

`A046951(A187941(A000005((n+1)²)))`
-/

namespace A399831.P4969062501218669954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (A187941 (A000005 ((n + 1) ^ 2)).toNat).toNat

end

end A399831.P4969062501218669954

namespace A399831

/-- `A046951(A187941(A000005((n+1)²)))` -/
def P4969062501218669954.Spec : Prop :=
  ∀ n, P4969062501218669954.a n = A399831 (n + 1)

end A399831

/-!
# A399832: The number of divisors d of n such that gcud(d, n/d) is odd, where gcud is the greatest common unitary divisor.

The programs for A399832, the canonical program `A399832.P16012869787314435450` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399832 has offset 1).

The definition of A399832 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A399832.P16012869787314435450

`A365171(A129194(n+1))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A399832

/-- `A365171(A129194(n+1))` -/
def P16012869787314435450.Spec : Prop :=
  ∀ n, P16012869787314435450.a n = A399832 (n + 1)

theorem P16012869787314435450.correct : P16012869787314435450.Spec := by
  intro n
  simp only [A399832, Nat.add_sub_cancel]

end A399832

/-! ## A399832.P16304639549590874407

`A368978(A064761(n+1))`
-/

namespace A399832.P16304639549590874407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368978 (A064761 (n + 1)).toNat

end

end A399832.P16304639549590874407

namespace A399832

/-- `A368978(A064761(n+1))` -/
def P16304639549590874407.Spec : Prop :=
  ∀ n, P16304639549590874407.a n = A399832 (n + 1)

end A399832

/-! ## A399832.P6232675973227943974

`A336318((n+1)^3)/(n+1)`
-/

namespace A399832.P6232675973227943974
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336318 ((n + 1) ^ 3) : ℚ) / (n + 1 : ℚ)

end

end A399832.P6232675973227943974

namespace A399832

/-- `A336318((n+1)^3)/(n+1)` -/
def P6232675973227943974.Spec : Prop :=
  ∀ n, P6232675973227943974.a n = (A399832 (n + 1) : ℚ)

end A399832

/-! ## A399832.P6675908768828413406

`A368978(A064762(n+1))`
-/

namespace A399832.P6675908768828413406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368978 (A064762 (n + 1)).toNat

end

end A399832.P6675908768828413406

namespace A399832

/-- `A368978(A064762(n+1))` -/
def P6675908768828413406.Spec : Prop :=
  ∀ n, P6675908768828413406.a n = A399832 (n + 1)

end A399832

/-! ## A399832.P17584487343150486379

`A287271(A293216(n+1))`
-/

namespace A399832.P17584487343150486379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287271 (A293216 (n + 1)).toNat

end

end A399832.P17584487343150486379

namespace A399832

/-- `A287271(A293216(n+1))` -/
def P17584487343150486379.Spec : Prop :=
  ∀ n, P17584487343150486379.a n = A399832 (n + 1)

end A399832

/-!
# A399833: The number of divisors d of n such that gcud(d, n/d) is a power of 2, where gcud is the greatest common unitary divisor.

The programs for A399833, there is no canonical definition to state claims against.
-/

/-! ## A399833.P295822268811207056

`A400143(n+1)%A002189(n)`
-/

namespace A399833.P295822268811207056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A400143 (n + 1)) (A002189 n)

end

end A399833.P295822268811207056

/-! ## A399833.P1433091718306155487

`A368978(A181900(n+1))`
-/

namespace A399833.P1433091718306155487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368978 (A181900 (n + 1)).toNat

end

end A399833.P1433091718306155487

/-! ## A399833.P1341536653014124917

`A368978(2*(n+1)²)`
-/

namespace A399833.P1341536653014124917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368978 (2 * (n + 1) ^ 2)

end

end A399833.P1341536653014124917

/-! ## A399833.P2309092642118151224

`lcm(A103754(n+1), A400143(n+1))`
-/

namespace A399833.P2309092642118151224
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A103754 (n + 1)) (A400143 (n + 1))

end

end A399833.P2309092642118151224

/-! ## A399833.P3996249464412419074

`and(A190274(n+1), A400143(n+1))`
-/

namespace A399833.P3996249464412419074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A190274 (n + 1)) (A400143 (n + 1))

end

end A399833.P3996249464412419074

/-!
# A399834: The sum of divisors d of n such that gcud(d, n/d) is squarefree, where gcud is the greatest common unitary divisor.

The programs for A399834, there is no canonical definition to state claims against.
-/

/-! ## A399834.P8308864661346781973

`A216455(A399837(n+1))`
-/

namespace A399834.P8308864661346781973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216455 (A399837 (n + 1)).toNat

end

end A399834.P8308864661346781973

/-! ## A399834.P6412619588204085536

`lcm(A123271(n+2), A399837(n+1))`
-/

namespace A399834.P6412619588204085536
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A123271 (n + 2)) (A399837 (n + 1))

end

end A399834.P6412619588204085536

/-! ## A399834.P8032277981176809700

`and(A387419(n+1), A399837(n+1))`
-/

namespace A399834.P8032277981176809700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A387419 (n + 1)) (A399837 (n + 1))

end

end A399834.P8032277981176809700

/-! ## A399834.P12140348704165142764

`and(A387410(n+1), A399837(n+1))`
-/

namespace A399834.P12140348704165142764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A387410 (n + 1)) (A399837 (n + 1))

end

end A399834.P12140348704165142764

/-! ## A399834.P12161174448429862735

`and(A387415(n+1), A399837(n+1))`
-/

namespace A399834.P12161174448429862735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A387415 (n + 1)) (A399837 (n + 1))

end

end A399834.P12161174448429862735

/-!
# A399835: The sum of divisors d of n such that gcud(d, n/d) is a powerful number (A001694), where gcud is the greatest common unitary divisor.

The programs for A399835, the canonical program `A399835.P13050234149728139137` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399835 has offset 1).

The definition of A399835 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A399835.P13050234149728139137

`A366146(n+1)*A371242(n+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A399835

/-- `A366146(n+1)*A371242(n+1)` -/
def P13050234149728139137.Spec : Prop :=
  ∀ n, P13050234149728139137.a n = A399835 (n + 1)

theorem P13050234149728139137.correct : P13050234149728139137.Spec := by
  intro n
  simp only [A399835, Nat.add_sub_cancel]

end A399835

/-! ## A399835.P9892477452123573056

`A399838(n+1)*A399839(n+1)/A399834(n+1)`
-/

namespace A399835.P9892477452123573056
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A399838 (n + 1) * A399839 (n + 1) : ℚ) / (A399834 (n + 1) : ℚ)

end

end A399835.P9892477452123573056

namespace A399835

/-- `A399838(n+1)*A399839(n+1)/A399834(n+1)` -/
def P9892477452123573056.Spec : Prop :=
  ∀ n, P9892477452123573056.a n = (A399835 (n + 1) : ℚ)

end A399835

/-!
# A399836: The sum of divisors d of n such that gcud(d, n/d) is a square, where gcud is the greatest common unitary divisor.

The programs for A399836, there is no canonical definition to state claims against.
-/

/-! ## A399836.P9212054554388590973

`lcm(A103754(n+1), A399835(n+1))`
-/

namespace A399836.P9212054554388590973
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A103754 (n + 1)) (A399835 (n + 1))

end

end A399836.P9212054554388590973

/-! ## A399836.P8729172358616430633

`A216455(A399835(n+1))`
-/

namespace A399836.P8729172358616430633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216455 (A399835 (n + 1)).toNat

end

end A399836.P8729172358616430633

/-! ## A399836.P6937702555708560089

`and(A387419(n+1), A399835(n+1))`
-/

namespace A399836.P6937702555708560089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A387419 (n + 1)) (A399835 (n + 1))

end

end A399836.P6937702555708560089

/-! ## A399836.P1117224248276129454

`and(A387410(n+1), A399835(n+1))`
-/

namespace A399836.P1117224248276129454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A387410 (n + 1)) (A399835 (n + 1))

end

end A399836.P1117224248276129454

/-! ## A399836.P9994784631862106739

`and(A387415(n+1), A399835(n+1))`
-/

namespace A399836.P9994784631862106739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A387415 (n + 1)) (A399835 (n + 1))

end

end A399836.P9994784631862106739

/-!
# A399838: The sum of divisors d of n such that gcud(d, n/d) is odd, where gcud is the greatest common unitary divisor.

The programs for A399838, there is no canonical definition to state claims against.
-/

/-! ## A399838.P6104694090861384610

`A400145(A187829(n+1))`
-/

namespace A399838.P6104694090861384610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400145 (A187829 (n + 1)).toNat

end

end A399838.P6104694090861384610

/-! ## A399838.P12882274560784865363

`A400145(A077168(n))`
-/

namespace A399838.P12882274560784865363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400145 (A077168 n).toNat

end

end A399838.P12882274560784865363

/-! ## A399838.P7780803337665940259

`A400145(n+1)+A048967(A000225(n))`
-/

namespace A399838.P7780803337665940259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400145 (n + 1) + A048967 (A000225 n).toNat

end

end A399838.P7780803337665940259

/-! ## A399838.P8020933575544577223

`A400145(A000120(A000225(n+1)))`
-/

namespace A399838.P8020933575544577223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400145 (A000120 (A000225 (n + 1)).toNat).toNat

end

end A399838.P8020933575544577223

/-!
# A399839: The sum of divisors d of n such that gcud(d, n/d) is a power of 2, where gcud is the greatest common unitary divisor.

The programs for A399839, there is no canonical definition to state claims against.
-/

/-! ## A399839.P16542263853773844868

`A400146(n+1)%A002189(n)`
-/

namespace A399839.P16542263853773844868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A400146 (n + 1)) (A002189 n)

end

end A399839.P16542263853773844868

/-! ## A399839.P11856373364189444158

`lcm(A103754(n+1), A400146(n+1))`
-/

namespace A399839.P11856373364189444158
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A103754 (n + 1)) (A400146 (n + 1))

end

end A399839.P11856373364189444158

/-! ## A399839.P14940126069992584684

`A216455(A400146(n+1))`
-/

namespace A399839.P14940126069992584684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216455 (A400146 (n + 1)).toNat

end

end A399839.P14940126069992584684

/-! ## A399839.P2895183723119750705

`and(A387419(n+1), A400146(n+1))`
-/

namespace A399839.P2895183723119750705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A387419 (n + 1)) (A400146 (n + 1))

end

end A399839.P2895183723119750705

/-! ## A399839.P17277227728703908829

`and(A387410(n+1), A400146(n+1))`
-/

namespace A399839.P17277227728703908829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A387410 (n + 1)) (A400146 (n + 1))

end

end A399839.P17277227728703908829

/-!
# A399840: a(n) = A050443(n) mod n.

The programs for A399840, the canonical program `A399840.P17099530196109704425` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399840 has offset 1).

The definition of A399840 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A050443(n+1)%(n+1)` (program `A399840.P17099530196109704425`, by `A399840.P17099530196109704425.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A399840.P17099530196109704425

`A050443(n+1)%(n+1)`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A399840

/-- `A050443(n+1)%(n+1)` -/
def P17099530196109704425.Spec : Prop :=
  ∀ n, P17099530196109704425.a n = A399840 (n + 1)

theorem P17099530196109704425.correct : P17099530196109704425.Spec := by
  intro n
  simp only [A399840, Nat.add_sub_cancel]

end A399840

/-!
# A399841: a(n) = A087935(n) mod n.

The programs for A399841, the canonical program `A399841.P8409433032057062939` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399841 has offset 1).

The definition of A399841 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A399841.P8409433032057062939

`A087935(n+1)%(n+1)`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A399841

/-- `A087935(n+1)%(n+1)` -/
def P8409433032057062939.Spec : Prop :=
  ∀ n, P8409433032057062939.a n = A399841 (n + 1)

theorem P8409433032057062939.correct : P8409433032057062939.Spec := by
  intro n
  simp only [A399841, Nat.add_sub_cancel]

end A399841

/-!
# A399842: Omit zero digits from the product of first n primes (cf. A002110).

The programs for A399842, there is no canonical definition to state claims against.
-/

/-! ## A399842.P4271296681045376417

`A004719(A002110(n))`
-/

namespace A399842.P4271296681045376417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004719 (A002110 n).toNat

end

end A399842.P4271296681045376417

/-! ## A399842.P8466465460173058228

`A004151(A335069(n+1))`
-/

namespace A399842.P8466465460173058228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (A335069 (n + 1)).toNat

end

end A399842.P8466465460173058228

/-!
# A399843: a(n) is the number of nonzero digits in the product of first n primes (cf. A002110).

The programs for A399843, there is no canonical definition to state claims against.
-/

/-! ## A399843.P8239858061499596581

`A067175(n)-A079099(n)`
-/

namespace A399843.P8239858061499596581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067175 n - A079099 n

end

end A399843.P8239858061499596581

/-! ## A399843.P15168265535563269342

`A048856(n+1)-(A387173(n)+A079099(n))`
-/

namespace A399843.P15168265535563269342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048856 (n + 1) - (A387173 n + A079099 n)

end

end A399843.P15168265535563269342

/-!
# A399846: Binary nested sequence: a(0)=0, a(1)=1, a(2n)=a(n), a(2n+1)=1-a(n-a(n-1)) for n>=1.

The programs for A399846, there is no canonical definition to state claims against.
-/

/-! ## A399846.P15323333631639990848

`and(A101664(n), A157972(n+2))`
-/

namespace A399846.P15323333631639990848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A101664 n) (A157972 (n + 2))

end

end A399846.P15323333631639990848

/-! ## A399846.P2162693225775588006

`and(A098475(n), A101664(n))`
-/

namespace A399846.P2162693225775588006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A098475 n) (A101664 n)

end

end A399846.P2162693225775588006

/-! ## A399846.P3446036777853620834

`and(A101664(n), A158875(n))`
-/

namespace A399846.P3446036777853620834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A101664 n) (A158875 n)

end

end A399846.P3446036777853620834

/-! ## A399846.P14286804802121409883

`and(A101664(n), A105071(n))`
-/

namespace A399846.P14286804802121409883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A101664 n) (A105071 n)

end

end A399846.P14286804802121409883

/-! ## A399846.P1428554956402767085

`and(A101664(n), A112044(n))`
-/

namespace A399846.P1428554956402767085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A101664 n) (A112044 n)

end

end A399846.P1428554956402767085

/-!
# A399851: Number of tripartite (or 3-dimensional vector) partitions of (n, n, n) into distinct parts containing at least one mixed part.

The programs for A399851, there is no canonical definition to state claims against.
-/

/-! ## A399851.P17537521036767330952

`A219560(n)-A000009(n)^3`
-/

namespace A399851.P17537521036767330952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219560 n - A000009 n ^ 3

end

end A399851.P17537521036767330952

/-!
# A399854: Smallest prime that is the sum of n distinct elements from the union of squares and cubes.

The programs for A399854, there is no canonical definition to state claims against.
-/

/-! ## A399854.P3489927237763056946

`A375345(A171503(n+1))`
-/

namespace A399854.P3489927237763056946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375345 (A171503 (n + 1)).toNat

end

end A399854.P3489927237763056946

/-!
# A399856: a(n) is the least proper multiple of n whose factorial base expansion contains that of n as a substring.

The programs for A399856, there is no canonical definition to state claims against.
-/

/-! ## A399856.P3726228520972412618

`A399855(n+1)*(n+1)`
-/

namespace A399856.P3726228520972412618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399855 (n + 1) * (n + 1 : ℤ)

end

end A399856.P3726228520972412618

/-! ## A399856.P15372918778295558120

`(n+1)*A399855(n+1)`
-/

namespace A399856.P15372918778295558120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A399855 (n + 1)

end

end A399856.P15372918778295558120

/-!
# A399858: a(n) is the book Ramsey number R(B_n,B_n).

The programs for A399858, there is no canonical definition to state claims against.
-/

/-! ## A399858.P2023390401750666584

`A156247(2*n+3)+n+1`
-/

namespace A399858.P2023390401750666584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156247 (2 * n + 3) + (n + 1 : ℤ)

end

end A399858.P2023390401750666584

/-! ## A399858.P5013251276666512718

`A156271(2*n+3)+n+1`
-/

namespace A399858.P5013251276666512718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156271 (2 * n + 3) + (n + 1 : ℤ)

end

end A399858.P5013251276666512718

/-! ## A399858.P4250576987057934194

`A072747(A017581(n+1))`
-/

namespace A399858.P4250576987057934194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072747 (A017581 (n + 1)).toNat

end

end A399858.P4250576987057934194

/-! ## A399858.P6951032885404128764

`A280877(A184741(n+1))`
-/

namespace A399858.P6951032885404128764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280877 (A184741 (n + 1)).toNat

end

end A399858.P6951032885404128764

/-! ## A399858.P2157539005033773751

`A378372(A198395(n+1))`
-/

namespace A399858.P2157539005033773751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378372 (A198395 (n + 1)).toNat

end

end A399858.P2157539005033773751

/-!
# A399862: Triangle read by rows: T(n,k) = binomial(n-k+1, 2) - [n-k+1 > k] * binomial(n-2*k+1, 2), k = 1..n, where brackets are Iverson.

The programs for A399862, the canonical program `A399862.P2868466355493484604` is in `Seq.B003.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399862 has offset 1).

The definition of A399862 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A399862.P2868466355493484604

`∑[A064789(n+1)-(n+1)]`

The canonical program, it is in `Seq.B003.C006`.
-/

namespace A399862

/-- `∑[A064789(n+1)-(n+1)]` -/
def P2868466355493484604.Spec : Prop :=
  ∀ n, P2868466355493484604.a n = A399862 (n + 1)

theorem P2868466355493484604.correct : P2868466355493484604.Spec := by
  intro n
  simp only [A399862, Nat.add_sub_cancel]

end A399862

/-! ## A399862.P2946238630177010654

`A399863(n+1)-A351153(n+1)`
-/

namespace A399862.P2946238630177010654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399863 (n + 1) - A351153 (n + 1)

end

end A399862.P2946238630177010654

namespace A399862

/-- `A399863(n+1)-A351153(n+1)` -/
def P2946238630177010654.Spec : Prop :=
  ∀ n, P2946238630177010654.a n = A399862 (n + 1)

end A399862

/-! ## A399862.P10216408765295786036

`A210983(n+1)-A014370(n+1)`
-/

namespace A399862.P10216408765295786036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210983 (n + 1) - A014370 (n + 1)

end

end A399862.P10216408765295786036

namespace A399862

/-- `A210983(n+1)-A014370(n+1)` -/
def P10216408765295786036.Spec : Prop :=
  ∀ n, P10216408765295786036.a n = A399862 (n + 1)

end A399862

/-! ## A399862.P9216697718709235711

`A374995(A296129(n))`
-/

namespace A399862.P9216697718709235711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374995 (A296129 n).toNat

end

end A399862.P9216697718709235711

namespace A399862

/-- `A374995(A296129(n))` -/
def P9216697718709235711.Spec : Prop :=
  ∀ n, P9216697718709235711.a n = A399862 (n + 1)

end A399862

/-! ## A399862.P14873127511484013331

`A167439(A143395(n+1))`
-/

namespace A399862.P14873127511484013331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167439 (A143395 (n + 1)).toNat

end

end A399862.P14873127511484013331

namespace A399862

/-- `A167439(A143395(n+1))` -/
def P14873127511484013331.Spec : Prop :=
  ∀ n, P14873127511484013331.a n = A399862 (n + 1)

end A399862

/-!
# A399863: Triangle read by rows: T(n,k) = binomial(n+1,2) - binomial(n-k+1,2) + binomial(n-k,2) - [n-k+1 > k]*binomial(n-2*k+1,2), k = 1..n, with Iverson brackets.

The programs for A399863, the canonical program `A399863.P5848190532128983579` is in `Seq.B004.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399863 has offset 1).

The definition of A399863 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7260 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A399863.P5848190532128983579

`A220053(n+1)+A004247(n)`

The canonical program, it is in `Seq.B004.C004`.
-/

namespace A399863

/-- `A220053(n+1)+A004247(n)` -/
def P5848190532128983579.Spec : Prop :=
  ∀ n, P5848190532128983579.a n = A399863 (n + 1)

theorem P5848190532128983579.correct : P5848190532128983579.Spec := by
  intro n
  simp only [A399863, Nat.add_sub_cancel]

end A399863

/-! ## A399863.P13250405893281883498

`A399862(n+1)+A351153(n+1)`
-/

namespace A399863.P13250405893281883498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399862 (n + 1) + A351153 (n + 1)

end

end A399863.P13250405893281883498

namespace A399863

/-- `A399862(n+1)+A351153(n+1)` -/
def P13250405893281883498.Spec : Prop :=
  ∀ n, P13250405893281883498.a n = A399863 (n + 1)

end A399863

/-!
# A399864: Numbers k in A024619 such that A376846(k) = 0.

The programs for A399864, there is no canonical definition to state claims against.
-/

/-! ## A399864.P9528820106601032329

`∪[A377590(n+1), A377713(n+1)]`
-/

namespace A399864.P9528820106601032329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377590 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377713 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A399864.P9528820106601032329

/-!
# A399865: Number of preclosures on an n-element labeled set; equivalently, number of extensive order-preserving self-maps of the Boolean lattice of rank n.

The programs for A399865, there is no canonical definition to state claims against.
-/

/-! ## A399865.P7339073998760792996

`A117707(3^n)^n`
-/

namespace A399865.P7339073998760792996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117707 (3 ^ n) ^ n

end

end A399865.P7339073998760792996

/-!
# A399867: Number of equivalence classes of 0-1 matrices with n distinct rows and distinct nonzero columns, under row and column permutations.

The programs for A399867, there is no canonical definition to state claims against.
-/

/-! ## A399867.P920727933497499637

`A070900(A259374(n+1))`
-/

namespace A399867.P920727933497499637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070900 (A259374 (n + 1)).toNat

end

end A399867.P920727933497499637

/-!
# A399869: Number of steps required for n to reach 1 under repeated application of A048675, which encodes the exponents in the prime factorization of n as a binary integer; or -1 if 1 is never reached.

The programs for A399869, there is no canonical definition to state claims against.
-/

/-! ## A399869.P11847763685159619104

`A330808(A048767(n+1))`
-/

namespace A399869.P11847763685159619104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330808 (A048767 (n + 1)).toNat

end

end A399869.P11847763685159619104

/-! ## A399869.P11213374401281116593

`A382732(A290209(n))`
-/

namespace A399869.P11213374401281116593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382732 (A290209 n).toNat

end

end A399869.P11213374401281116593

/-! ## A399869.P8006639873317490791

`A052298(A349842(n+1))`
-/

namespace A399869.P8006639873317490791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052298 (A349842 (n + 1)).toNat

end

end A399869.P8006639873317490791

/-! ## A399869.P8576457082843022964

`A375272(A166721(n+1))`
-/

namespace A399869.P8576457082843022964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375272 (A166721 (n + 1)).toNat

end

end A399869.P8576457082843022964

/-! ## A399869.P11005949454268210990

`A384480(A396300(n+1))`
-/

namespace A399869.P11005949454268210990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384480 (A396300 (n + 1)).toNat

end

end A399869.P11005949454268210990

/-!
# A399872: Cyclically smooth Lyndon words with 6 colors.

The programs for A399872, there is no canonical definition to state claims against.
-/

/-! ## A399872.P15818502093124915241

`∑{d}[n+1, A008683((n+1)/#)*A208775(#)]`
-/

namespace A399872.P15818502093124915241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A208775 d

end

end A399872.P15818502093124915241

/-! ## A399872.P8352161458360250965

`∑{d}[n+1, A208775(#)*A253206((n+1)/#)]`
-/

namespace A399872.P8352161458360250965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A208775 d * A253206 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A399872.P8352161458360250965

/-! ## A399872.P1228767781829047092

`A399871(n+1)+A208775(n+1)-A399870(n+1)`
-/

namespace A399872.P1228767781829047092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399871 (n + 1) + A208775 (n + 1) - A399870 (n + 1)

end

end A399872.P1228767781829047092

/-!
# A399873: Row index of n in the Tchoukaillon array of order infinity (A344009).

The programs for A399873, there is no canonical definition to state claims against.
-/

/-! ## A399873.P11947819410240560874

`A399874(A399877(n+1))`
-/

namespace A399873.P11947819410240560874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399874 (A399877 (n + 1)).toNat

end

end A399873.P11947819410240560874

/-! ## A399873.P1964282281639856143

`A285200(A041893(n))`
-/

namespace A399873.P1964282281639856143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285200 (A041893 n).toNat

end

end A399873.P1964282281639856143

/-! ## A399873.P5077964742491787284

`A277447(A369904(n+2))`
-/

namespace A399873.P5077964742491787284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277447 (A369904 (n + 2)).toNat

end

end A399873.P5077964742491787284

/-! ## A399873.P1805083087449829245

`A078703(A290234(n))`
-/

namespace A399873.P1805083087449829245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078703 (A290234 n).toNat

end

end A399873.P1805083087449829245

/-! ## A399873.P12142005506310461993

`A143786(A038935(n+1))`
-/

namespace A399873.P12142005506310461993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143786 (A038935 (n + 1)).toNat

end

end A399873.P12142005506310461993

/-!
# A399874: Column index of n in the Tchoukaillon array of order infinity (A344009).

The programs for A399874, there is no canonical definition to state claims against.
-/

/-! ## A399874.P3180618783958632022

`A399873(A399877(n+1))`
-/

namespace A399874.P3180618783958632022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399873 (A399877 (n + 1)).toNat

end

end A399874.P3180618783958632022

/-!
# A399878: a(n) = Sum_{k = 1..n, k does not divide n} (gcd(n, floor(n/k) + 1) - gcd(n, floor(n/k))).

The programs for A399878, there is no canonical definition to state claims against.
-/

/-! ## A399878.P3397398542071856292

`A338664(A331654(n+1))`
-/

namespace A399878.P3397398542071856292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338664 (A331654 (n + 1)).toNat

end

end A399878.P3397398542071856292

/-! ## A399878.P4297683668928996986

`A383330(A386946(n+1))`
-/

namespace A399878.P4297683668928996986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383330 (A386946 (n + 1)).toNat

end

end A399878.P4297683668928996986

/-!
# A399899: Word representation of the grasshopper infinite barrycade (recursively defined family of permutations of the positive integers having pairwise disjoint sets of partial sums).

The programs for A399899, there is no canonical definition to state claims against.
-/

/-! ## A399899.P9528491737676025508

`A117229(A358783(n+2))`
-/

namespace A399899.P9528491737676025508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117229 (A358783 (n + 2)).toNat

end

end A399899.P9528491737676025508

