import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C046
import Seq.B000.C050
import Seq.B001.C000
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C008
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C001
import Seq.B009.C000
import Seq.Opaque.C001
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C011
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
# A196800: Number of nX6 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 3,2,0,4,1 for x=0,1,2,3,4.

The programs for A196800, there is no canonical definition to state claims against.
-/

/-! ## A196800.P457277390044533023

`A196802(A056115(n)+21)`
-/

namespace A196800.P457277390044533023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196802 (A056115 n + 21).toNat

end

end A196800.P457277390044533023

/-! ## A196800.P5591477112762031433

`A196802(A374007(n+1))`
-/

namespace A196800.P5591477112762031433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196802 (A374007 (n + 1)).toNat

end

end A196800.P5591477112762031433

/-!
# A196801: Number of nX7 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 3,2,0,4,1 for x=0,1,2,3,4.

The programs for A196801, there is no canonical definition to state claims against.
-/

/-! ## A196801.P7754755230100250909

`A196802(eq[8, A131818(n+1)])`
-/

namespace A196801.P7754755230100250909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196802 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196801.P7754755230100250909

/-! ## A196801.P16525773024522102672

`A196802(A374008(n+1))`
-/

namespace A196801.P16525773024522102672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196802 (A374008 (n + 1)).toNat

end

end A196801.P16525773024522102672

/-!
# A196803: Number of n X n 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 4,2,3,0,1 for x=0,1,2,3,4.

The programs for A196803, there is no canonical definition to state claims against.
-/

/-! ## A196803.P6712942618750524327

`A196809(∑[4*n]+1)`
-/

namespace A196803.P6712942618750524327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196809 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A196803.P6712942618750524327

/-!
# A196804: Number of n X 3 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,2,3,0,1 for x=0,1,2,3,4.

The programs for A196804, the canonical program `A196804.P16316696417518198532` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A196804 has offset 1).

The definition of A196804 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 191 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A196804.P16316696417518198532

`ogf((1+x+8x^2-4x^3-12x^4+4x^5)/(1-2x-2x^2-3x^3-17x^4-3x^5+4x^6))`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A196804

/-- `ogf((1+x+8x^2-4x^3-12x^4+4x^5)/(1-2x-2x^2-3x^3-17x^4-3x^5+4x^6))` -/
def P16316696417518198532.Spec : Prop :=
  ∀ n, P16316696417518198532.a n = A196804 (n + 1)

theorem P16316696417518198532.correct : P16316696417518198532.Spec := by
  intro n
  simp only [A196804, Nat.add_sub_cancel]

end A196804

/-! ## A196804.P15226426386761366505

`A196809(∑[n+2]+4)`
-/

namespace A196804.P15226426386761366505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196809 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A196804.P15226426386761366505

namespace A196804

/-- `A196809(∑[n+2]+4)` -/
def P15226426386761366505.Spec : Prop :=
  ∀ n, P15226426386761366505.a n = A196804 (n + 1)

end A196804

/-!
# A196805: Number of nX4 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,2,3,0,1 for x=0,1,2,3,4.

The programs for A196805, there is no canonical definition to state claims against.
-/

/-! ## A196805.P14256754818173669393

`A196809(A374004(n+1))`
-/

namespace A196805.P14256754818173669393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196809 (A374004 (n + 1)).toNat

end

end A196805.P14256754818173669393

/-! ## A196805.P1041882669216497372

`A196809(A141214(n+1))`
-/

namespace A196805.P1041882669216497372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196809 (A141214 (n + 1)).toNat

end

end A196805.P1041882669216497372

/-!
# A196806: Number of nX5 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,2,3,0,1 for x=0,1,2,3,4.

The programs for A196806, there is no canonical definition to state claims against.
-/

/-! ## A196806.P11579236217350037509

`A196809(A374005(n+1))`
-/

namespace A196806.P11579236217350037509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196809 (A374005 (n + 1)).toNat

end

end A196806.P11579236217350037509

/-!
# A196807: Number of nX6 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,2,3,0,1 for x=0,1,2,3,4.

The programs for A196807, there is no canonical definition to state claims against.
-/

/-! ## A196807.P8826812661684140393

`A196809(A374007(n+1))`
-/

namespace A196807.P8826812661684140393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196809 (A374007 (n + 1)).toNat

end

end A196807.P8826812661684140393

/-!
# A196808: Number of nX7 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,2,3,0,1 for x=0,1,2,3,4.

The programs for A196808, there is no canonical definition to state claims against.
-/

/-! ## A196808.P19351713277280362

`A196809(A374008(n+1))`
-/

namespace A196808.P19351713277280362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196809 (A374008 (n + 1)).toNat

end

end A196808.P19351713277280362

/-!
# A196809: T(n,k)=Number of nXk 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 4,2,3,0,1 for x=0,1,2,3,4.

The programs for A196809, there is no canonical definition to state claims against.
-/

/-! ## A196809.P16777046762660024416

`A196646(n+1)+A184955(A007318(n))`
-/

namespace A196809.P16777046762660024416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196646 (n + 1) + A184955 (A007318 n).toNat

end

end A196809.P16777046762660024416

/-!
# A196810: Number of ways to place 2 nonattacking nightriders on an n X n cylindrical board.

The programs for A196810, there is no canonical definition to state claims against.
-/

/-! ## A196810.P2414468173667062923

`∑[∑[12*n²]]/A337686(A202965(n+1))`
-/

namespace A196810.P2414468173667062923
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (A337686 (A202965 (n + 1)).toNat : ℚ)

end

end A196810.P2414468173667062923

/-! ## A196810.P11568889371798500342

`∑[∑[12*n²]]/A320034(A238936(n+1))`
-/

namespace A196810.P11568889371798500342
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (A320034 (A238936 (n + 1)).toNat : ℚ)

end

end A196810.P11568889371798500342

/-!
# A196811: Number of ways to place 3 nonattacking nightriders on an n X n cylindrical board.

The programs for A196811, there is no canonical definition to state claims against.
-/

/-! ## A196811.P17624869205439928618

`A035930(∑[floor(3^(n-1))]²)`
-/

namespace A196811.P17624869205439928618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035930 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A196811.P17624869205439928618

/-!
# A196812: Number of ways to place 2 nonattacking nightriders on an n X n toroidal board.

The programs for A196812, there is no canonical definition to state claims against.
-/

/-! ## A196812.P13295117167329047269

`A163102(n)-A132792(A190512(n))`
-/

namespace A196812.P13295117167329047269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163102 n - A132792 (A190512 n).toNat

end

end A196812.P13295117167329047269

/-! ## A196812.P9438433207433922718

`A243189(A099301(n+2)+A000330(n))`
-/

namespace A196812.P9438433207433922718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243189 (A099301 (n + 2) + A000330 n).toNat

end

end A196812.P9438433207433922718

/-!
# A196814: Number of ways to place n nonattacking nightriders on an n X n cylindrical board.

The programs for A196814, there is no canonical definition to state claims against.
-/

/-! ## A196814.P5619195450715494467

`lcm(A002024(A153317(n)), A011782(n))`
-/

namespace A196814.P5619195450715494467
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A002024 (A153317 n).toNat) (A011782 n)

end

end A196814.P5619195450715494467

/-!
# A196815: Smallest index k such that prime(k+n) - prime(k) is a perfect square.

The programs for A196815, there is no canonical definition to state claims against.
-/

/-! ## A196815.P1444947329186394434

`A000720(A196874(1+n))`
-/

namespace A196815.P1444947329186394434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A196874 (1 + n)).toNat

end

end A196815.P1444947329186394434

/-! ## A196815.P14790907921420505196

`A061395(2*A196874(n+1)-A196874(n+1))`
-/

namespace A196815.P14790907921420505196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A196874 (n + 1) - A196874 (n + 1)).toNat

end

end A196815.P14790907921420505196

/-! ## A196815.P15079310135694973793

`A061395(2*A196874(n+1))`
-/

namespace A196815.P15079310135694973793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A196874 (n + 1)).toNat

end

end A196815.P15079310135694973793

/-! ## A196815.P18073975917484221812

`A026238(A196874(n+1))`
-/

namespace A196815.P18073975917484221812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (A196874 (n + 1)).toNat

end

end A196815.P18073975917484221812

/-! ## A196815.P13515198232453676944

`∑{d}[A196874(n+1), A055396(#)]`
-/

namespace A196815.P13515198232453676944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196874 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A055396 d

end

end A196815.P13515198232453676944

/-! ## A196815.P12752098182089731836

`∑{d}[A196874(n+1), A230980(#)]`
-/

namespace A196815.P12752098182089731836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196874 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A230980 d

end

end A196815.P12752098182089731836

/-! ## A196815.P7259359324332987911

`∏{p}[A196874(n+1), A056239(#)]`
-/

namespace A196815.P7259359324332987911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196874 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A056239 p

end

end A196815.P7259359324332987911

/-! ## A196815.P5210273428705617829

`A230980(A196874(n+1)-1)+1`
-/

namespace A196815.P5210273428705617829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A196874 (n + 1) - 1).toNat + 1

end

end A196815.P5210273428705617829

/-! ## A196815.P10157607343613278689

`A056239(A196874(n+1)%A016791(n))`
-/

namespace A196815.P10157607343613278689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (Int.tmod (A196874 (n + 1)) (A016791 n)).toNat

end

end A196815.P10157607343613278689

/-! ## A196815.P5467488538804275531

`A056239(2*A196874(n+1))-1`
-/

namespace A196815.P5467488538804275531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (2 * A196874 (n + 1)).toNat - 1

end

end A196815.P5467488538804275531

/-!
# A196834: Row sums of Sheffer triangle A193685 (5-restricted Stirling2 numbers).

The programs for A196834, the canonical program `A196834.P12016420689548097302` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A196834 has offset 0).

The definition of A196834 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A196834.P12016420689548097302

`∑{#}[n, A193685(C(n+1, 2)+#)]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A196834

/-- `∑{#}[n, A193685(C(n+1, 2)+#)]` -/
def P12016420689548097302.Spec : Prop :=
  ∀ n, P12016420689548097302.a n = A196834 n

theorem P12016420689548097302.correct : P12016420689548097302.Spec := by
  intro n
  simp only [A196834]

end A196834

/-! ## A196834.P17891390430077053026

`A108087(A167499(4+n))`
-/

namespace A196834.P17891390430077053026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108087 (A167499 (4 + n)).toNat

end

end A196834.P17891390430077053026

namespace A196834

/-- `A108087(A167499(4+n))` -/
def P17891390430077053026.Spec : Prop :=
  ∀ n, P17891390430077053026.a n = A196834 n

end A196834

/-! ## A196834.P1064338067358854640

`A347204(A175164(n))`
-/

namespace A196834.P1064338067358854640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347204 (A175164 n).toNat

end

end A196834.P1064338067358854640

namespace A196834

/-- `A347204(A175164(n))` -/
def P1064338067358854640.Spec : Prop :=
  ∀ n, P1064338067358854640.a n = A196834 n

end A196834

/-!
# A196835: Alternating row sums of Sheffer triangle A193685 (5-restricted Stirling2 numbers).

The programs for A196835, the canonical program `A196835.P13541406594747439175` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A196835 has offset 0).

The definition of A196835 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A196835.P13541406594747439175

`∑{#}[n, (-1)^#*A193685(C(n+1, 2)+#)]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A196835

/-- `∑{#}[n, (-1)^#*A193685(C(n+1, 2)+#)]` -/
def P13541406594747439175.Spec : Prop :=
  ∀ n, P13541406594747439175.a n = A196835 n

theorem P13541406594747439175.correct : P13541406594747439175.Spec := by
  intro n
  simp only [A196835]

end A196835

/-! ## A196835.P15115143624906171876

`∑{#}[n, C(n, #)*A193684(#)]`
-/

namespace A196835.P15115143624906171876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A193684 k

end

end A196835.P15115143624906171876

namespace A196835

/-- `∑{#}[n, C(n, #)*A193684(#)]` -/
def P15115143624906171876.Spec : Prop :=
  ∀ n, P15115143624906171876.a n = A196835 n

end A196835

/-!
# A196836: a(n) = (1^n + 2^n +3^n + 4^n)/2.

The programs for A196836, the canonical program `A196836.P3333352529070358036` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A196836 has offset 0).

The definition of A196836 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A196836.anchor (n : ℕ) : (A196836 n : ℚ) = (1 ^ n + 2 ^ n + 3 ^ n + 4 ^ n : ℚ) / 2` in `Proof.A196.A196836`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A196836.P3333352529070358036

`(1^n+2^n+3^n+4^n)/2`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A196836

/-- `(1^n+2^n+3^n+4^n)/2` -/
def P3333352529070358036.Spec : Prop :=
  ∀ n, P3333352529070358036.a n = (A196836 n : ℚ)

end A196836

/-! ## A196836.P6599811126400884436

`floor(∑{#}[4, #^n]/2)`
-/

namespace A196836.P6599811126400884436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ k ∈ Finset.range (f1 n + 1), k ^ n : ℕ) : ℚ) / 2⌋

end

end A196836.P6599811126400884436

namespace A196836

/-- `floor(∑{#}[4, #^n]/2)` -/
def P6599811126400884436.Spec : Prop :=
  ∀ n, P6599811126400884436.a n = A196836 n

end A196836

/-! ## A196836.P15801502315324834200

`∑{#}[3, (#+1)^n]/2`
-/

namespace A196836.P15801502315324834200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ k ∈ Finset.range (f1 n + 1), (k + 1) ^ n : ℕ) : ℚ) / 2

end

end A196836.P15801502315324834200

namespace A196836

/-- `∑{#}[3, (#+1)^n]/2` -/
def P15801502315324834200.Spec : Prop :=
  ∀ n, P15801502315324834200.a n = (A196836 n : ℚ)

end A196836

/-! ## A196836.P3063962848569477288

`∑[3^((n-1)%(n+1))]+lcm(or(1, 2^n), ceil(2^(n-1)))`
-/

namespace A196836.P3063962848569477288
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (Int.lcm (Nat.lor 1 (2 ^ n) : ℤ) ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ : ℚ)

end

end A196836.P3063962848569477288

namespace A196836

/-- `∑[3^((n-1)%(n+1))]+lcm(or(1, 2^n), ceil(2^(n-1)))` -/
def P3063962848569477288.Spec : Prop :=
  ∀ n, P3063962848569477288.a n = (A196836 n : ℚ)

end A196836

/-! ## A196836.P16171095460455693863

`ceil(A074526(n)/2)`
-/

namespace A196836.P16171095460455693863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A074526 n : ℚ) / 2⌉

end

end A196836.P16171095460455693863

namespace A196836

/-- `ceil(A074526(n)/2)` -/
def P16171095460455693863.Spec : Prop :=
  ∀ n, P16171095460455693863.a n = A196836 n

end A196836

/-! ## A196836.P7186134735528596305

`A134064(n)+3^n`
-/

namespace A196836.P7186134735528596305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134064 n + (3 ^ n : ℤ)

end

end A196836.P7186134735528596305

namespace A196836

/-- `A134064(n)+3^n` -/
def P7186134735528596305.Spec : Prop :=
  ∀ n, P7186134735528596305.a n = A196836 n

end A196836

/-! ## A196836.P17930983589224295760

`floor((4^n+3^n+A000225(n)+3)/2)`
-/

namespace A196836.P17930983589224295760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((4 ^ n : ℤ) + ((3 ^ n : ℤ) + (A000225 n + 3)) : ℚ) / 2⌋

end

end A196836.P17930983589224295760

namespace A196836

/-- `floor((4^n+3^n+A000225(n)+3)/2)` -/
def P17930983589224295760.Spec : Prop :=
  ∀ n, P17930983589224295760.a n = A196836 n

end A196836

/-! ## A196836.P4779078389639631078

`A007582(n)+A007051(n)`
-/

namespace A196836.P4779078389639631078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007582 n + A007051 n

end

end A196836.P4779078389639631078

namespace A196836

/-- `A007582(n)+A007051(n)` -/
def P4779078389639631078.Spec : Prop :=
  ∀ n, P4779078389639631078.a n = A196836 n

end A196836

/-! ## A196836.P8262367600213183908

`A053154(n)+A034472(n)`
-/

namespace A196836.P8262367600213183908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053154 n + A034472 n

end

end A196836.P8262367600213183908

namespace A196836

/-- `A053154(n)+A034472(n)` -/
def P8262367600213183908.Spec : Prop :=
  ∀ n, P8262367600213183908.a n = A196836 n

end A196836

/-! ## A196836.P6504621448553307952

`A085282(n)+A007581(n)`
-/

namespace A196836.P6504621448553307952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085282 n + A007581 n

end

end A196836.P6504621448553307952

namespace A196836

/-- `A085282(n)+A007581(n)` -/
def P6504621448553307952.Spec : Prop :=
  ∀ n, P6504621448553307952.a n = A196836 n

end A196836

/-! ## A196836.P14653163295259685630

`A099754(n)+A006516(n)`
-/

namespace A196836.P14653163295259685630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099754 n + A006516 n

end

end A196836.P14653163295259685630

namespace A196836

/-- `A099754(n)+A006516(n)` -/
def P14653163295259685630.Spec : Prop :=
  ∀ n, P14653163295259685630.a n = A196836 n

end A196836

/-! ## A196836.P9862716183519346286

`A134019(n)+A002783(n)`
-/

namespace A196836.P9862716183519346286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134019 n + A002783 n

end

end A196836.P9862716183519346286

namespace A196836

/-- `A134019(n)+A002783(n)` -/
def P9862716183519346286.Spec : Prop :=
  ∀ n, P9862716183519346286.a n = A196836 n

end A196836

/-! ## A196836.P17322710574445675322

`A134168(n)+A083323(n)`
-/

namespace A196836.P17322710574445675322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134168 n + A083323 n

end

end A196836.P17322710574445675322

namespace A196836

/-- `A134168(n)+A083323(n)` -/
def P17322710574445675322.Spec : Prop :=
  ∀ n, P17322710574445675322.a n = A196836 n

end A196836

/-! ## A196836.P7933605325611324210

`A134169(n)+A094374(n)`
-/

namespace A196836.P7933605325611324210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134169 n + A094374 n

end

end A196836.P7933605325611324210

namespace A196836

/-- `A134169(n)+A094374(n)` -/
def P7933605325611324210.Spec : Prop :=
  ∀ n, P7933605325611324210.a n = A196836 n

end A196836

/-! ## A196836.P856466548731077602

`A281481(n)+A003462(n)`
-/

namespace A196836.P856466548731077602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281481 n + A003462 n

end

end A196836.P856466548731077602

namespace A196836

/-- `A281481(n)+A003462(n)` -/
def P856466548731077602.Spec : Prop :=
  ∀ n, P856466548731077602.a n = A196836 n

end A196836

/-! ## A196836.P4037918849472888606

`A001576(n)-A134064(n)`
-/

namespace A196836.P4037918849472888606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001576 n - A134064 n

end

end A196836.P4037918849472888606

namespace A196836

/-- `A001576(n)-A134064(n)` -/
def P4037918849472888606.Spec : Prop :=
  ∀ n, P4037918849472888606.a n = A196836 n

end A196836

/-! ## A196836.P1348110116562870347

`A161168(n)-A053154(n)`
-/

namespace A196836.P1348110116562870347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161168 n - A053154 n

end

end A196836.P1348110116562870347

namespace A196836

/-- `A161168(n)-A053154(n)` -/
def P1348110116562870347.Spec : Prop :=
  ∀ n, P1348110116562870347.a n = A196836 n

end A196836

/-! ## A196836.P13445776270550320323

`A242985(n)-A134168(n)`
-/

namespace A196836.P13445776270550320323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242985 n - A134168 n

end

end A196836.P13445776270550320323

namespace A196836

/-- `A242985(n)-A134168(n)` -/
def P13445776270550320323.Spec : Prop :=
  ∀ n, P13445776270550320323.a n = A196836 n

end A196836

/-! ## A196836.P1299365534533407724

`A084869(n)+A053156(n+1)`
-/

namespace A196836.P1299365534533407724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084869 n + A053156 (n + 1)

end

end A196836.P1299365534533407724

namespace A196836

/-- `A084869(n)+A053156(n+1)` -/
def P1299365534533407724.Spec : Prop :=
  ∀ n, P1299365534533407724.a n = A196836 n

end A196836

/-! ## A196836.P2657153043009167378

`A134165(n)+A134063(n+1)`
-/

namespace A196836.P2657153043009167378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134165 n + A134063 (n + 1)

end

end A196836.P2657153043009167378

namespace A196836

/-- `A134165(n)+A134063(n+1)` -/
def P2657153043009167378.Spec : Prop :=
  ∀ n, P2657153043009167378.a n = A196836 n

end A196836

/-!
# A196837: Coefficient table of numerator polynomials of o.g.f.s for partial sums of powers of positive integers.

The programs for A196837, the canonical program `A196837.P3729033289980606820` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A196837 has offset 1).

The definition of A196837 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2411 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A196837.P14719737824410489296

`(C(comp[∑[n]]-n, 2)-n)*A008276(comp[∑[n]])`
-/

namespace A196837.P14719737824410489296
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)) * A008276 (SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n)

end

end A196837.P14719737824410489296

namespace A196837

/-- `(C(comp[∑[n]]-n, 2)-n)*A008276(comp[∑[n]])` -/
def P14719737824410489296.Spec : Prop :=
  ∀ n, P14719737824410489296.a n = A196837 (n + 1)

end A196837

/-! ## A196837.P17938723717443503012

`A004736(1+n)*A008276(comp[∑[n]])`
-/

namespace A196837.P17938723717443503012
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (1 + n) * A008276 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A196837.P17938723717443503012

namespace A196837

/-- `A004736(1+n)*A008276(comp[∑[n]])` -/
def P17938723717443503012.Spec : Prop :=
  ∀ n, P17938723717443503012.a n = A196837 (n + 1)

end A196837

/-! ## A196837.P13260913191662818834

`(A025581(n)+1)*A008276(comp[∑[n]])`
-/

namespace A196837.P13260913191662818834
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A025581 n + 1) * A008276 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A196837.P13260913191662818834

namespace A196837

/-- `(A025581(n)+1)*A008276(comp[∑[n]])` -/
def P13260913191662818834.Spec : Prop :=
  ∀ n, P13260913191662818834.a n = A196837 (n + 1)

end A196837

/-! ## A196837.P1818059226269538047

`(A099375(n)+1)/2*A008276(comp[∑[n]])`
-/

namespace A196837.P1818059226269538047
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099375 n + 1 : ℚ) / 2 * (A008276 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℚ)

end

end A196837.P1818059226269538047

namespace A196837

/-- `(A099375(n)+1)/2*A008276(comp[∑[n]])` -/
def P1818059226269538047.Spec : Prop :=
  ∀ n, P1818059226269538047.a n = (A196837 (n + 1) : ℚ)

end A196837

/-! ## A196837.P374294405542010057

`(A004202(n+1)-(2*n+1))*A008276(comp[∑[n]])`
-/

namespace A196837.P374294405542010057
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004202 (n + 1) - (2 * n + 1 : ℤ)) * A008276 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A196837.P374294405542010057

namespace A196837

/-- `(A004202(n+1)-(2*n+1))*A008276(comp[∑[n]])` -/
def P374294405542010057.Spec : Prop :=
  ∀ n, P374294405542010057.a n = A196837 (n + 1)

end A196837

/-! ## A196837.P3729033289980606820

`A008276(A014132(n+1))*(A025581(n)+1)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A196837

/-- `A008276(A014132(n+1))*(A025581(n)+1)` -/
def P3729033289980606820.Spec : Prop :=
  ∀ n, P3729033289980606820.a n = A196837 (n + 1)

theorem P3729033289980606820.correct : P3729033289980606820.Spec := by
  intro n
  simp only [A196837, Nat.add_sub_cancel]

end A196837

/-! ## A196837.P11771165646444103590

`A002260(A038722(n+1))*A008276(A014132(n+1))`
-/

namespace A196837.P11771165646444103590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A038722 (n + 1)).toNat * A008276 (A014132 (n + 1)).toNat

end

end A196837.P11771165646444103590

namespace A196837

/-- `A002260(A038722(n+1))*A008276(A014132(n+1))` -/
def P11771165646444103590.Spec : Prop :=
  ∀ n, P11771165646444103590.a n = A196837 (n + 1)

end A196837

/-! ## A196837.P15025054879147241232

`A033999(A002262(n))*A074246(A038722(n+1))`
-/

namespace A196837.P15025054879147241232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A002262 n).toNat * A074246 (A038722 (n + 1)).toNat

end

end A196837.P15025054879147241232

namespace A196837

/-- `A033999(A002262(n))*A074246(A038722(n+1))` -/
def P15025054879147241232.Spec : Prop :=
  ∀ n, P15025054879147241232.a n = A196837 (n + 1)

end A196837

/-! ## A196837.P15142289891355276034

`A009531(A158405(n+1))*A074246(A038722(n+1))`
-/

namespace A196837.P15142289891355276034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 (A158405 (n + 1)).toNat * A074246 (A038722 (n + 1)).toNat

end

end A196837.P15142289891355276034

namespace A196837

/-- `A009531(A158405(n+1))*A074246(A038722(n+1))` -/
def P15142289891355276034.Spec : Prop :=
  ∀ n, P15142289891355276034.a n = A196837 (n + 1)

end A196837

/-! ## A196837.P14676508496082996428

`A000005(A130321(n))*A008276(A014132(n+1))`
-/

namespace A196837.P14676508496082996428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A130321 n).toNat * A008276 (A014132 (n + 1)).toNat

end

end A196837.P14676508496082996428

namespace A196837

/-- `A000005(A130321(n))*A008276(A014132(n+1))` -/
def P14676508496082996428.Spec : Prop :=
  ∀ n, P14676508496082996428.a n = A196837 (n + 1)

end A196837

/-!
# A196838: Numerators of coefficients of Bernoulli polynomials with rising powers of the variable.

The programs for A196838, there is no canonical definition to state claims against.
-/

/-! ## A196838.P8575136860309967646

`A053382((2*∑[n])%comp[∑[n]])`
-/

namespace A196838.P8575136860309967646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053382 (2 * (∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A196838.P8575136860309967646

/-!
# A196839: Triangle of denominators of the coefficient of x^m in the n-th Bernoulli polynomial, 0 <= m <= n.

The programs for A196839, there is no canonical definition to state claims against.
-/

/-! ## A196839.P15241420061835258358

`A053383(∑[2*n]%comp[∑[n]])`
-/

namespace A196839.P15241420061835258358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053383 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A196839.P15241420061835258358

/-!
# A196841: Table of the elementary symmetric functions a_k(1,3,4,...,n+1).

The programs for A196841, there is no canonical definition to state claims against.
-/

/-! ## A196841.P9963039796340604299

`∑[char[∑[n]]]*T(n-1,k-1)+T(n-1,k)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A196841.P9963039796340604299
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * SequenceMachineLib.triUpLeft a n + SequenceMachineLib.triUp a n

end

end A196841.P9963039796340604299

/-! ## A196841.P17403735322433573929

`T(n-1,k)+(row(n)+1)*T(n-1,k-1)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A196841.P17403735322433573929
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  SequenceMachineLib.triUp a n + (SequenceMachineLib.triRow n + 1) * SequenceMachineLib.triUpLeft a n

end

end A196841.P17403735322433573929

/-! ## A196841.P15429839284321193540

`T(n-1,k-1)+T(row(n)-1, col(n))+row(n)*T(n-1,k-1)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A196841.P15429839284321193540
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  SequenceMachineLib.triUpLeft a n + SequenceMachineLib.triAt a ((SequenceMachineLib.triRow n : ℤ) - 1) (SequenceMachineLib.triCol n : ℤ) + SequenceMachineLib.triRow n * SequenceMachineLib.triUpLeft a n

end

end A196841.P15429839284321193540

/-! ## A196841.P86422560865355707

`abs(A123319(∑[2*n]%comp[∑[n]]))`
-/

namespace A196841.P86422560865355707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A123319 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)|

end

end A196841.P86422560865355707

/-! ## A196841.P2874051175156431624

`abs(A123319(A061579(n)))`
-/

namespace A196841.P2874051175156431624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A123319 (A061579 n).toNat|

end

end A196841.P2874051175156431624

/-!
# A196843: Table of the elementary symmetric functions a_k(1,2,3,5,6...n+1) (missing 4).

The programs for A196843, there is no canonical definition to state claims against.
-/

/-! ## A196843.P16384731991777195596

`A342191(A156367(n))`
-/

namespace A196843.P16384731991777195596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342191 (A156367 n).toNat

end

end A196843.P16384731991777195596

/-! ## A196843.P1261292321305723197

`A347578(A347630(n+3)+A347580(n+1))`
-/

namespace A196843.P1261292321305723197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347578 (A347630 (n + 3) + A347580 (n + 1)).toNat

end

end A196843.P1261292321305723197

/-! ## A196843.P10110438091578291563

`A369054(A034691(n+1))+A130534(A061579(n))`
-/

namespace A196843.P10110438091578291563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369054 (A034691 (n + 1)).toNat + A130534 (A061579 n).toNat

end

end A196843.P10110438091578291563

/-! ## A196843.P8455240399279898787

`A369054(A034691(n+1))+A132393(A380649(n+1)+1)`
-/

namespace A196843.P8455240399279898787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369054 (A034691 (n + 1)).toNat + A132393 (A380649 (n + 1) + 1).toNat

end

end A196843.P8455240399279898787

/-!
# A196845: Table of elementary symmetric function a_k(3,4,...,n+2) (no 1 and 2).

The programs for A196845, the canonical program `A196845.P2439385347570806448` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A196845 has offset 0).

The definition of A196845 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2346 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A196845.P15914522661891815713

`(2+row(n))*T(n-1,k-1)+T(n-1,k)` with `a(0)=1`
-/

namespace A196845.P15914522661891815713
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (2 + SequenceMachineLib.triRow n) * SequenceMachineLib.triUpLeft a n + SequenceMachineLib.triUp a n

end

end A196845.P15914522661891815713

namespace A196845

/-- `(2+row(n))*T(n-1,k-1)+T(n-1,k)` -/
def P15914522661891815713.Spec : Prop :=
  ∀ n, (P15914522661891815713.a n : ℤ) = A196845 n

end A196845

/-! ## A196845.P5334496224243721057

`T(n-1,k-1)+∑[abs(T(n-1,k))]*T(n-1,k-1)+T(n-1,k)` with `a(0)=1`
-/

namespace A196845.P5334496224243721057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  SequenceMachineLib.triUp f1 n

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUpLeft a n + ((∑ j ∈ Finset.range (n + 1), f1 j) * SequenceMachineLib.triUpLeft a n + SequenceMachineLib.triUp a n)

end

end A196845.P5334496224243721057

namespace A196845

/-- `T(n-1,k-1)+∑[abs(T(n-1,k))]*T(n-1,k-1)+T(n-1,k)` -/
def P5334496224243721057.Spec : Prop :=
  ∀ n, (P5334496224243721057.a n : ℤ) = A196845 n

end A196845

/-! ## A196845.P12922908419105778188

`(∑[char[∑[n]]]+1)*T(n-1,k-1)+T(n-1,k)` with `a(0)=1`
-/

namespace A196845.P12922908419105778188
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (∑ j ∈ Finset.range (n + 1), f1 j + 1) * SequenceMachineLib.triUpLeft a n + SequenceMachineLib.triUp a n

end

end A196845.P12922908419105778188

namespace A196845

/-- `(∑[char[∑[n]]]+1)*T(n-1,k-1)+T(n-1,k)` -/
def P12922908419105778188.Spec : Prop :=
  ∀ n, (P12922908419105778188.a n : ℤ) = A196845 n

end A196845

/-! ## A196845.P10059342127482756601

`(comp[∑[n]]-n+1)*T(n-1,k-1)-(T(n-1,k-1)-T(n-1,k))` with `a(0)=1`
-/

namespace A196845.P10059342127482756601
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ) + 1) * SequenceMachineLib.triUpLeft a n - (SequenceMachineLib.triUpLeft a n - SequenceMachineLib.triUp a n)

end

end A196845.P10059342127482756601

namespace A196845

/-- `(comp[∑[n]]-n+1)*T(n-1,k-1)-(T(n-1,k-1)-T(n-1,k))` -/
def P10059342127482756601.Spec : Prop :=
  ∀ n, P10059342127482756601.a n = A196845 n

end A196845

/-! ## A196845.P13113214575130381097

`A123578(n)*T(n-1,k-1)+T(n-1,k)+T(n-1,k-1)` with `a(0)=1`
-/

namespace A196845.P13113214575130381097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A123578 n * SequenceMachineLib.triUpLeft a n + SequenceMachineLib.triUp a n + SequenceMachineLib.triUpLeft a n

end

end A196845.P13113214575130381097

namespace A196845

/-- `A123578(n)*T(n-1,k-1)+T(n-1,k)+T(n-1,k-1)` -/
def P13113214575130381097.Spec : Prop :=
  ∀ n, P13113214575130381097.a n = A196845 n

end A196845

/-! ## A196845.P13409206340011798230

`A143492(∑[char[∑[n]]]²-n+2)`
-/

namespace A196845.P13409206340011798230
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143492 ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ) + 2).toNat

end

end A196845.P13409206340011798230

namespace A196845

/-- `A143492(∑[char[∑[n]]]²-n+2)` -/
def P13409206340011798230.Spec : Prop :=
  ∀ n, P13409206340011798230.a n = A196845 n

end A196845

/-! ## A196845.P17510755649529654166

`abs(A049458(∑[2*n]%comp[∑[n]]))`
-/

namespace A196845.P17510755649529654166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A049458 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)|

end

end A196845.P17510755649529654166

namespace A196845

/-- `abs(A049458(∑[2*n]%comp[∑[n]]))` -/
def P17510755649529654166.Spec : Prop :=
  ∀ n, P17510755649529654166.a n = A196845 n

end A196845

/-! ## A196845.P2439385347570806448

`abs(A049458(A061579(n)))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A196845

/-- `abs(A049458(A061579(n)))` -/
def P2439385347570806448.Spec : Prop :=
  ∀ n, P2439385347570806448.a n = A196845 n

theorem P2439385347570806448.correct : P2439385347570806448.Spec := by
  intro n
  simp only [A196845]

end A196845

/-! ## A196845.P16231692603411737044

`abs(A049458(A038722(n+1)-1))`
-/

namespace A196845.P16231692603411737044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A049458 (A038722 (n + 1) - 1).toNat|

end

end A196845.P16231692603411737044

namespace A196845

/-- `abs(A049458(A038722(n+1)-1))` -/
def P16231692603411737044.Spec : Prop :=
  ∀ n, P16231692603411737044.a n = A196845 n

end A196845

/-! ## A196845.P2087200777515104681

`gcd(A000038(n), A049458(A061579(n)))`
-/

namespace A196845.P2087200777515104681
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A049458 (A061579 n).toNat)

end

end A196845.P2087200777515104681

namespace A196845

/-- `gcd(A000038(n), A049458(A061579(n)))` -/
def P2087200777515104681.Spec : Prop :=
  ∀ n, (P2087200777515104681.a n : ℤ) = A196845 n

end A196845

/-! ## A196845.P5744536348003843171

`lcm(A020985(n), A049458(A061579(n)))`
-/

namespace A196845.P5744536348003843171
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A049458 (A061579 n).toNat)

end

end A196845.P5744536348003843171

namespace A196845

/-- `lcm(A020985(n), A049458(A061579(n)))` -/
def P5744536348003843171.Spec : Prop :=
  ∀ n, (P5744536348003843171.a n : ℤ) = A196845 n

end A196845

/-! ## A196845.P16352749753206420458

`A008836(A059268(n))*A049458(A061579(n))`
-/

namespace A196845.P16352749753206420458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A059268 n).toNat * A049458 (A061579 n).toNat

end

end A196845.P16352749753206420458

namespace A196845

/-- `A008836(A059268(n))*A049458(A061579(n))` -/
def P16352749753206420458.Spec : Prop :=
  ∀ n, P16352749753206420458.a n = A196845 n

end A196845

/-!
# A196849: Number of n X n 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 3,1,0,2,4 for x=0,1,2,3,4.

The programs for A196849, there is no canonical definition to state claims against.
-/

/-! ## A196849.P9435611618759972122

`A196856(∑[4*n]+1)`
-/

namespace A196849.P9435611618759972122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196856 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A196849.P9435611618759972122

/-! ## A196849.P15393140378806499937

`record[(1-abs(round(sqrt(2*(n+1)))²-(2*n+1)))*A196856(n+1)]`
-/

namespace A196849.P15393140378806499937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - |SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ)) ^ 2 - (2 * n + 1 : ℤ)|) * A196856 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196849.P15393140378806499937

/-! ## A196849.P5736889820404031167

`∑{digits}[n, A196856(A001844(#))]`
-/

namespace A196849.P5736889820404031167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A196856 (A001844 x).toNat).sum

end

end A196849.P5736889820404031167

/-! ## A196849.P17992447626466143683

`record[A196856(Δ[A235355(n)])]`
-/

namespace A196849.P17992447626466143683
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196856 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196849.P17992447626466143683

/-!
# A196850: Number of n X 2 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 3,1,0,2,4 for x=0,1,2,3,4.

The programs for A196850, the canonical program `A196850.P14559330856000898890` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A196850 has offset 1).

The definition of A196850 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 179 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A196850.P14559330856000898890

`ogf((2+9x+19x^2+20x^3+x^4+2x^5+x^6-6x^7)/(1-x-4x^2-17x^3-10x^4+3x^5-2x^6-2x^7))`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A196850

/-- `ogf((2+9x+19x^2+20x^3+x^4+2x^5+x^6-6x^7)/(1-x-4x^2-17x^3-10x^4+3x^5-2x^6-2x^7))` -/
def P14559330856000898890.Spec : Prop :=
  ∀ n, P14559330856000898890.a n = A196850 (n + 1)

theorem P14559330856000898890.correct : P14559330856000898890.Spec := by
  intro n
  simp only [A196850, Nat.add_sub_cancel]

end A196850

/-! ## A196850.P3661889494936931648

`A196856(∑[n+1]+2)`
-/

namespace A196850.P3661889494936931648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196856 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A196850.P3661889494936931648

namespace A196850

/-- `A196856(∑[n+1]+2)` -/
def P3661889494936931648.Spec : Prop :=
  ∀ n, P3661889494936931648.a n = A196850 (n + 1)

end A196850

/-! ## A196850.P3950366443286750830

`A196950(∑[n+1]+2)`
-/

namespace A196850.P3950366443286750830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196950 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A196850.P3950366443286750830

namespace A196850

/-- `A196950(∑[n+1]+2)` -/
def P3950366443286750830.Spec : Prop :=
  ∀ n, P3950366443286750830.a n = A196850 (n + 1)

end A196850

/-! ## A196850.P7127011645336752454

`record[A196950(abs(A201163(n)))]`
-/

namespace A196850.P7127011645336752454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196950 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196850.P7127011645336752454

namespace A196850

/-- `record[A196950(abs(A201163(n)))]` -/
def P7127011645336752454.Spec : Prop :=
  ∀ n, P7127011645336752454.a n = A196850 (n + 1)

end A196850

/-! ## A196850.P5192471597832699058

`record[A196856(Δ[A003453(n+5)])]`
-/

namespace A196850.P5192471597832699058
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196856 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196850.P5192471597832699058

namespace A196850

/-- `record[A196856(Δ[A003453(n+5)])]` -/
def P5192471597832699058.Spec : Prop :=
  ∀ n, P5192471597832699058.a n = A196850 (n + 1)

end A196850

/-!
# A196851: Number of n X 3 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 3,1,0,2,4 for x=0,1,2,3,4.

The programs for A196851, there is no canonical definition to state claims against.
-/

/-! ## A196851.P4661902476418786707

`A196856(∑[n+2]+4)`
-/

namespace A196851.P4661902476418786707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196856 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A196851.P4661902476418786707

/-!
# A196852: Number of nX4 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 3,1,0,2,4 for x=0,1,2,3,4.

The programs for A196852, there is no canonical definition to state claims against.
-/

/-! ## A196852.P4796824926255253699

`A196856(A374004(n+1))`
-/

namespace A196852.P4796824926255253699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196856 (A374004 (n + 1)).toNat

end

end A196852.P4796824926255253699

/-! ## A196852.P3885265465361094340

`A196856(A141214(n+1))`
-/

namespace A196852.P3885265465361094340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196856 (A141214 (n + 1)).toNat

end

end A196852.P3885265465361094340

/-!
# A196853: Number of nX5 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 3,1,0,2,4 for x=0,1,2,3,4.

The programs for A196853, there is no canonical definition to state claims against.
-/

/-! ## A196853.P18201075137039009072

`A196856(A374005(n+1))`
-/

namespace A196853.P18201075137039009072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196856 (A374005 (n + 1)).toNat

end

end A196853.P18201075137039009072

/-!
# A196854: Number of nX6 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 3,1,0,2,4 for x=0,1,2,3,4.

The programs for A196854, there is no canonical definition to state claims against.
-/

/-! ## A196854.P14077462225565088137

`A196856(A374007(n+1))`
-/

namespace A196854.P14077462225565088137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196856 (A374007 (n + 1)).toNat

end

end A196854.P14077462225565088137

/-!
# A196855: Number of nX7 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 3,1,0,2,4 for x=0,1,2,3,4.

The programs for A196855, there is no canonical definition to state claims against.
-/

/-! ## A196855.P6285297839236445673

`A196856(eq[2*col(n), 12]+1)`
-/

namespace A196855.P6285297839236445673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.triCol n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196856 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A196855.P6285297839236445673

/-!
# A196856: T(n,k)=Number of nXk 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 3,1,0,2,4 for x=0,1,2,3,4.

The programs for A196856, there is no canonical definition to state claims against.
-/

/-! ## A196856.P13653850302596703226

`xor(A196950(n+1), A334045(A022166(n)))`
-/

namespace A196856.P13653850302596703226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A196950 (n + 1)) (A334045 (A022166 n).toNat)

end

end A196856.P13653850302596703226

/-! ## A196856.P13613361472029156086

`A196707(n+1)-A102683(A001405(n))`
-/

namespace A196856.P13613361472029156086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196707 (n + 1) - A102683 (A001405 n).toNat

end

end A196856.P13613361472029156086

/-! ## A196856.P15157956023440098897

`A196707(n+1)-A102683(A081668(n))`
-/

namespace A196856.P15157956023440098897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196707 (n + 1) - A102683 (A081668 n).toNat

end

end A196856.P15157956023440098897

/-! ## A196856.P412598842634202896

`A196707(n+1)-A156659(A174616(n))`
-/

namespace A196856.P412598842634202896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196707 (n + 1) - A156659 (A174616 n).toNat

end

end A196856.P412598842634202896

/-! ## A196856.P6941768415229489541

`A196707(n+1)-A262693(A101127(n))`
-/

namespace A196856.P6941768415229489541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196707 (n + 1) - A262693 (A101127 n).toNat

end

end A196856.P6941768415229489541

/-!
# A196857: Number of n X n 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 3,4,2,0,1 for x=0,1,2,3,4.

The programs for A196857, there is no canonical definition to state claims against.
-/

/-! ## A196857.P12781967879500889526

`A196863(∑[4*n]+1)`
-/

namespace A196857.P12781967879500889526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196863 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A196857.P12781967879500889526

/-! ## A196857.P668154942072727453

`record[(1-abs(round(sqrt(2*(n+1)))²-(2*n+1)))*A196863(n+1)]`
-/

namespace A196857.P668154942072727453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - |SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ)) ^ 2 - (2 * n + 1 : ℤ)|) * A196863 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196857.P668154942072727453

/-! ## A196857.P11557889503613713992

`record[A196863(Δ[A235355(n)])]`
-/

namespace A196857.P11557889503613713992
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196863 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196857.P11557889503613713992

/-! ## A196857.P6904165660209858243

`record[A196863(A265225(n)+1)]`
-/

namespace A196857.P6904165660209858243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196863 (A265225 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196857.P6904165660209858243

/-! ## A196857.P16886767744419104896

`record[A196863(A272267(n+1))]`
-/

namespace A196857.P16886767744419104896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196863 (A272267 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196857.P16886767744419104896

/-!
# A196858: Number of n X 3 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 3,4,2,0,1 for x=0,1,2,3,4.

The programs for A196858, the canonical program `A196858.P2941285283799938265` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A196858 has offset 1).

The definition of A196858 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 316 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A196858.P2941285283799938265

`ogf((1+x+2x^2-2x^3+2x^4-x^5)/(1-2x+x^2-3x^3+2x^4-2x^5+x^6))`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A196858

/-- `ogf((1+x+2x^2-2x^3+2x^4-x^5)/(1-2x+x^2-3x^3+2x^4-2x^5+x^6))` -/
def P2941285283799938265.Spec : Prop :=
  ∀ n, P2941285283799938265.a n = A196858 (n + 1)

theorem P2941285283799938265.correct : P2941285283799938265.Spec := by
  intro n
  simp only [A196858, Nat.add_sub_cancel]

end A196858

/-! ## A196858.P5247789224327682389

`A196863(∑[n+2]+4)`
-/

namespace A196858.P5247789224327682389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196863 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A196858.P5247789224327682389

namespace A196858

/-- `A196863(∑[n+2]+4)` -/
def P5247789224327682389.Spec : Prop :=
  ∀ n, P5247789224327682389.a n = A196858 (n + 1)

end A196858

/-! ## A196858.P16975873783749554838

`record[A010054(n)*A196863(n+3)]`
-/

namespace A196858.P16975873783749554838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A196863 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196858.P16975873783749554838

namespace A196858

/-- `record[A010054(n)*A196863(n+3)]` -/
def P16975873783749554838.Spec : Prop :=
  ∀ n, P16975873783749554838.a n = A196858 (n + 1)

end A196858

/-!
# A196859: Number of n X 4 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 3,4,2,0,1 for x=0,1,2,3,4.

The programs for A196859, the canonical program `A196859.P5811944019075632378` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A196859 has offset 1).

The definition of A196859 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 221 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A196859.P5811944019075632378

`ogf((1+x+x^2+x^3+2x^4-11x^5-13x^6-6x^7-5x^8-3x^9)/(1-3x+x^2-2x^3+x^4-x^5+3x^6+6x^7+8x^8+8x^9+3x^10))`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A196859

/-- `ogf((1+x+x^2+x^3+2x^4-11x^5-13x^6-6x^7-5x^8-3x^9)/(1-3x+x^2-2x^3+x^4-x^5+3x^6+6x^7+8x^8+8x^9+3x^10))` -/
def P5811944019075632378.Spec : Prop :=
  ∀ n, P5811944019075632378.a n = A196859 (n + 1)

theorem P5811944019075632378.correct : P5811944019075632378.Spec := by
  intro n
  simp only [A196859, Nat.add_sub_cancel]

end A196859

/-! ## A196859.P3835934382679029068

`A196863(A374004(n+1))`
-/

namespace A196859.P3835934382679029068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196863 (A374004 (n + 1)).toNat

end

end A196859.P3835934382679029068

namespace A196859

/-- `A196863(A374004(n+1))` -/
def P3835934382679029068.Spec : Prop :=
  ∀ n, P3835934382679029068.a n = A196859 (n + 1)

end A196859

/-! ## A196859.P9512268966938954370

`A196863(A141214(n+1))`
-/

namespace A196859.P9512268966938954370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196863 (A141214 (n + 1)).toNat

end

end A196859.P9512268966938954370

namespace A196859

/-- `A196863(A141214(n+1))` -/
def P9512268966938954370.Spec : Prop :=
  ∀ n, P9512268966938954370.a n = A196859 (n + 1)

end A196859

/-!
# A196860: Number of nX5 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 3,4,2,0,1 for x=0,1,2,3,4.

The programs for A196860, there is no canonical definition to state claims against.
-/

/-! ## A196860.P16827432723573121385

`A196863(A374005(n+1))`
-/

namespace A196860.P16827432723573121385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196863 (A374005 (n + 1)).toNat

end

end A196860.P16827432723573121385

/-!
# A196861: Number of nX6 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 3,4,2,0,1 for x=0,1,2,3,4.

The programs for A196861, there is no canonical definition to state claims against.
-/

/-! ## A196861.P12159096536929855849

`A196863(A374007(n+1))`
-/

namespace A196861.P12159096536929855849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196863 (A374007 (n + 1)).toNat

end

end A196861.P12159096536929855849

/-!
# A196862: Number of nX7 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 3,4,2,0,1 for x=0,1,2,3,4.

The programs for A196862, there is no canonical definition to state claims against.
-/

/-! ## A196862.P10844138814232375579

`A196863(A374008(n+1))`
-/

namespace A196862.P10844138814232375579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196863 (A374008 (n + 1)).toNat

end

end A196862.P10844138814232375579

/-!
# A196863: T(n,k)=Number of nXk 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 3,4,2,0,1 for x=0,1,2,3,4.

The programs for A196863, there is no canonical definition to state claims against.
-/

/-! ## A196863.P10830043404516582538

`A196922(n+1)-A185238(A028326(n))`
-/

namespace A196863.P10830043404516582538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196922 (n + 1) - A185238 (A028326 n).toNat

end

end A196863.P10830043404516582538

/-! ## A196863.P11586014376869799717

`A179390(A202979(n+1))`
-/

namespace A196863.P11586014376869799717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179390 (A202979 (n + 1)).toNat

end

end A196863.P11586014376869799717

/-! ## A196863.P7448175018716661778

`A321479(A129453(n))`
-/

namespace A196863.P7448175018716661778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321479 (A129453 n).toNat

end

end A196863.P7448175018716661778

/-!
# A196868: G.f. A(x) satisfies: A(x)^2 + A(-x)^2 = 2 and A(x)^3 - A(-x)^3 = 36*x.

The programs for A196868, there is no canonical definition to state claims against.
-/

/-! ## A196868.P14879570686730204802

`A118271(A326093(n)+n)`
-/

namespace A196868.P14879570686730204802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118271 (A326093 n + (n : ℤ)).toNat

end

end A196868.P14879570686730204802

/-!
# A196869: G.f. A(x) satisfies: A(x)^3 + A(-x)^3 = 2 and A(x)^2 - A(-x)^2 = 24*x.

The programs for A196869, there is no canonical definition to state claims against.
-/

/-! ## A196869.P5577582517196303162

`6^n*A111786(A282453(n))`
-/

namespace A196869.P5577582517196303162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 ^ n : ℤ) * A111786 (A282453 n).toNat

end

end A196869.P5577582517196303162

/-! ## A196869.P6540616057590750789

`A364204(A288400(n)²)*6^n`
-/

namespace A196869.P6540616057590750789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364204 (A288400 n ^ 2).toNat * (6 ^ n : ℤ)

end

end A196869.P6540616057590750789

/-!
# A196870: a(n+1) = A001610(n)*a(n).

The programs for A196870, there is no canonical definition to state claims against.
-/

/-! ## A196870.P8507138534840803112

`∏[round(∑[ϕ^(n-1)])]`
-/

namespace A196870.P8507138534840803112
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.goldenRatio ^ ((n : ℤ) - 1 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A196870.P8507138534840803112

/-! ## A196870.P15298461131793793039

`abs(∏[-A324015(n+1)])`
-/

namespace A196870.P15298461131793793039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A324015 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A196870.P15298461131793793039

/-! ## A196870.P17239745765343808730

`a(n-1)*A001610(n)` with `a(0)=1`
-/

namespace A196870.P17239745765343808730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A001610 n

end

end A196870.P17239745765343808730

/-! ## A196870.P1085541070805420903

`A259625(2*n)*a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A196870.P1085541070805420903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A259625 (2 * n) * a (n - 1)

end

end A196870.P1085541070805420903

/-! ## A196870.P14737229754837478903

`(A000032(1+n)-1)*a(n-1)` with `a(0)=1`
-/

namespace A196870.P14737229754837478903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (A000032 (1 + n) - 1) * a (n - 1)

end

end A196870.P14737229754837478903

/-!
# A196871: Numbers having no odd primes in their Collatz (3x+1) trajectory.

The programs for A196871, there is no canonical definition to state claims against.
-/

/-! ## A196871.P12211785082139349426

`∪[A000079(n), A078440(n+1)]`
-/

namespace A196871.P12211785082139349426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078440 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A196871.P12211785082139349426

/-! ## A196871.P17208473067267003088

`lt[A055510(n+1), 1]+1`
-/

namespace A196871.P17208473067267003088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055510 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A196871.P17208473067267003088

/-! ## A196871.P8922861284035090685

`record[gcd(n+1, A055509(n+1))]`
-/

namespace A196871.P8922861284035090685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A055509 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196871.P8922861284035090685

/-! ## A196871.P6892945162936945397

`record[A103517(n)/(A078350(n+1)+1)]`
-/

namespace A196871.P6892945162936945397
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103517 n : ℚ) / (A078350 (n + 1) + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196871.P6892945162936945397

/-! ## A196871.P10390544260998960764

`record[A317440(n+1)/(A055509(n+1)+2)]`
-/

namespace A196871.P10390544260998960764
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A317440 (n + 1) : ℚ) / (A055509 (n + 1) + 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196871.P10390544260998960764

/-! ## A196871.P10244218020042090625

`record[A103517(n)/A000124(A078350(n+1))]`
-/

namespace A196871.P10244218020042090625
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103517 n : ℚ) / (A000124 (A078350 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196871.P10244218020042090625

/-! ## A196871.P950259766563294143

`record[A317440(n+1)/A016789(A055509(n+1))]`
-/

namespace A196871.P950259766563294143
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A317440 (n + 1) : ℚ) / (A016789 (A055509 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196871.P950259766563294143

/-!
# A196872: A007018(n) repeated A007018(n) times.

The programs for A196872, the canonical program `A196872.P11700309351671591619` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A196872 has offset 0).

The definition of A196872 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1353 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A196872.P11700309351671591619

`A000037(a(A103128(n)-1)²)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A196872

/-- `A000037(a(A103128(n)-1)²)` -/
def P11700309351671591619.Spec : Prop :=
  ∀ n, P11700309351671591619.a n = A196872 n

theorem P11700309351671591619.correct : P11700309351671591619.Spec := by
  intro n
  simp only [A196872]

end A196872

/-!
# A196873: E.g.f. A(x) satisfies: A(x*cos(x)) = 1/cos(x).

The programs for A196873, there is no canonical definition to state claims against.
-/

/-! ## A196873.P13412337433680305745

`A185142(n)/(2*n+1)`
-/

namespace A196873.P13412337433680305745
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185142 n : ℚ) / (2 * n + 1 : ℚ)

end

end A196873.P13412337433680305745

/-! ## A196873.P2776836535737729021

`or(A127802(n), A185142(n))/A005408(n)`
-/

namespace A196873.P2776836535737729021
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lor (A127802 n) (A185142 n) : ℚ) / (A005408 n : ℚ)

end

end A196873.P2776836535737729021

/-!
# A196874: Smallest prime(k) such that prime(k+n) - prime(k) is a perfect square.

The programs for A196874, there is no canonical definition to state claims against.
-/

/-! ## A196874.P14809205849382978783

`A000040(A196815(1+n))`
-/

namespace A196874.P14809205849382978783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A196815 (1 + n)).toNat

end

end A196874.P14809205849382978783

/-! ## A196874.P7635304321363570781

`A008578(A196815(1+n)+1)`
-/

namespace A196874.P7635304321363570781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A196815 (1 + n) + 1).toNat

end

end A196874.P7635304321363570781

/-! ## A196874.P6944937532399282634

`A182986(A196815(1+n)+1)`
-/

namespace A196874.P6944937532399282634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A196815 (1 + n) + 1).toNat

end

end A196874.P6944937532399282634

/-! ## A196874.P16000327805946775994

`A008864(A196815(n+1))-1`
-/

namespace A196874.P16000327805946775994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (A196815 (n + 1)).toNat - 1

end

end A196874.P16000327805946775994

/-! ## A196874.P3864039778126783215

`∑{d}[A196815(n+1), A007444(#)]`
-/

namespace A196874.P3864039778126783215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196815 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007444 d

end

end A196874.P3864039778126783215

/-! ## A196874.P7417330181545996810

`A109763(2*A196815(n+1))`
-/

namespace A196874.P7417330181545996810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109763 (2 * A196815 (n + 1)).toNat

end

end A196874.P7417330181545996810

/-! ## A196874.P3491448710531021880

`A207790(2*A196815(n+1))`
-/

namespace A196874.P3491448710531021880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207790 (2 * A196815 (n + 1)).toNat

end

end A196874.P3491448710531021880

/-!
# A196875: a(n) = a(n-4) + a(n-3) + a(n-2) + a(n-1) + (n-5).

The programs for A196875, the canonical program `A196875.P6494403398003307148` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A196875 has offset 1).

The definition of A196875 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-4)+a(n-3)+a(n-2)+a(n-1)+n-4` (program `A196875.P6494403398003307148`, by `A196875.P6494403398003307148.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A196875.P1604249991137703284

`ogf((1-2x+3x^4-x^5)/(1-3x+2x^2+x^5-x^6))`
-/

namespace A196875.P1604249991137703284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 0, 0, 3, -1] [1, -3, 2, 0, 0, 1, -1] n

end

end A196875.P1604249991137703284

namespace A196875

/-- `ogf((1-2x+3x^4-x^5)/(1-3x+2x^2+x^5-x^6))` -/
def P1604249991137703284.Spec : Prop :=
  ∀ n, P1604249991137703284.a n = A196875 (n + 1)

end A196875

/-! ## A196875.P10013503080091842302

`a(n-1)+a(n-2)+a(n-3)+a(n-4)+n-4` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`
-/

namespace A196875.P10013503080091842302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1] fun n a =>
  a (n - 1) + a (n - 2) + a (n - 3) + a (n - 4) + ((n : ℤ) - 4)

end

end A196875.P10013503080091842302

namespace A196875

/-- `a(n-1)+a(n-2)+a(n-3)+a(n-4)+n-4` -/
def P10013503080091842302.Spec : Prop :=
  ∀ n, P10013503080091842302.a n = A196875 (n + 1)

end A196875

/-! ## A196875.P6494403398003307148

`a(n-4)+a(n-3)+a(n-2)+a(n-1)+n-4` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A196875

/-- `a(n-4)+a(n-3)+a(n-2)+a(n-1)+n-4` -/
def P6494403398003307148.Spec : Prop :=
  ∀ n, P6494403398003307148.a n = A196875 (n + 1)

theorem P6494403398003307148.correct : P6494403398003307148.Spec := by
  intro n
  simp only [A196875, Nat.add_sub_cancel]

end A196875

/-! ## A196875.P5507526310813323918

`2*a(n-1)-a(n-5)+1` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=4`
-/

namespace A196875.P5507526310813323918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1, 4] fun n a =>
  2 * a (n - 1) - a (n - 5) + 1

end

end A196875.P5507526310813323918

namespace A196875

/-- `2*a(n-1)-a(n-5)+1` -/
def P5507526310813323918.Spec : Prop :=
  ∀ n, P5507526310813323918.a n = A196875 (n + 1)

end A196875

/-! ## A196875.P14615786684380605257

`a(n-1)+a(n-1)-a(n-5)+1` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=4`
-/

namespace A196875.P14615786684380605257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1, 4] fun n a =>
  a (n - 1) + (a (n - 1) - a (n - 5)) + 1

end

end A196875.P14615786684380605257

namespace A196875

/-- `a(n-1)+a(n-1)-a(n-5)+1` -/
def P14615786684380605257.Spec : Prop :=
  ∀ n, P14615786684380605257.a n = A196875 (n + 1)

end A196875

/-! ## A196875.P8693286047802735850

`A000288(n)+A145112(n)-A107066(n)`
-/

namespace A196875.P8693286047802735850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000288 n + (A145112 n - A107066 n)

end

end A196875.P8693286047802735850

namespace A196875

/-- `A000288(n)+A145112(n)-A107066(n)` -/
def P8693286047802735850.Spec : Prop :=
  ∀ n, P8693286047802735850.a n = A196875 (n + 1)

end A196875

/-!
# A196876: a(n) = a(n-no-1)+....+a(n-1)+(n-no-2) where no is the 'no+1'th order of the series and 'n' is the element number, here no=6.

The programs for A196876, the canonical program `A196876.P339415312300896491` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A196876 has offset 1).

The definition of A196876 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A196876.P339415312300896491

`ogf((1-2x+6x^7-4x^8)/(1-3x+2x^2+x^8-x^9))`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A196876

/-- `ogf((1-2x+6x^7-4x^8)/(1-3x+2x^2+x^8-x^9))` -/
def P339415312300896491.Spec : Prop :=
  ∀ n, P339415312300896491.a n = A196876 (n + 1)

theorem P339415312300896491.correct : P339415312300896491.Spec := by
  intro n
  simp only [A196876, Nat.add_sub_cancel]

end A196876

/-! ## A196876.P7366789241743897233

`A381508(A023423(n))`
-/

namespace A196876.P7366789241743897233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381508 (A023423 n).toNat

end

end A196876.P7366789241743897233

namespace A196876

/-- `A381508(A023423(n))` -/
def P7366789241743897233.Spec : Prop :=
  ∀ n, P7366789241743897233.a n = A196876 (n + 1)

end A196876

/-! ## A196876.P5695014810017111493

`A284786(A023423(n))`
-/

namespace A196876.P5695014810017111493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284786 (A023423 n).toNat

end

end A196876.P5695014810017111493

namespace A196876

/-- `A284786(A023423(n))` -/
def P5695014810017111493.Spec : Prop :=
  ∀ n, P5695014810017111493.a n = A196876 (n + 1)

end A196876

/-! ## A196876.P18153400318589305232

`A179743(A115015(n+1))`
-/

namespace A196876.P18153400318589305232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179743 (A115015 (n + 1)).toNat

end

end A196876.P18153400318589305232

namespace A196876

/-- `A179743(A115015(n+1))` -/
def P18153400318589305232.Spec : Prop :=
  ∀ n, P18153400318589305232.a n = A196876 (n + 1)

end A196876

/-! ## A196876.P8770466876243654173

`A396071(A123526(n+2))`
-/

namespace A196876.P8770466876243654173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396071 (A123526 (n + 2)).toNat

end

end A196876.P8770466876243654173

namespace A196876

/-- `A396071(A123526(n+2))` -/
def P8770466876243654173.Spec : Prop :=
  ∀ n, P8770466876243654173.a n = A196876 (n + 1)

end A196876

/-!
# A196880: Number of partitions of n^2 into powers of 2.

The programs for A196880, the canonical program `A196880.P17409898485460963205` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A196880 has offset 0).

The definition of A196880 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 363 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A196880.P17409898485460963205

`A000123(floor(n²/2))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A196880

/-- `A000123(floor(n²/2))` -/
def P17409898485460963205.Spec : Prop :=
  ∀ n, P17409898485460963205.a n = A196880 n

theorem P17409898485460963205.correct : P17409898485460963205.Spec := by
  intro n
  simp only [A196880]

end A196880

/-! ## A196880.P12266902075614934297

`A018819(n²)`
-/

namespace A196880.P12266902075614934297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018819 (n ^ 2)

end

end A196880.P12266902075614934297

namespace A196880

/-- `A018819(n²)` -/
def P12266902075614934297.Spec : Prop :=
  ∀ n, P12266902075614934297.a n = A196880 n

end A196880

/-! ## A196880.P15508800063326978745

`A357476(n²)+A255738(n+1)`
-/

namespace A196880.P15508800063326978745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357476 (n ^ 2) + A255738 (n + 1)

end

end A196880.P15508800063326978745

namespace A196880

/-- `A357476(n²)+A255738(n+1)` -/
def P15508800063326978745.Spec : Prop :=
  ∀ n, P15508800063326978745.a n = A196880 n

end A196880

/-! ## A196880.P15223915469453914063

`A307148(A058331(n))`
-/

namespace A196880.P15223915469453914063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307148 (A058331 n).toNat

end

end A196880.P15223915469453914063

namespace A196880

/-- `A307148(A058331(n))` -/
def P15223915469453914063.Spec : Prop :=
  ∀ n, P15223915469453914063.a n = A196880 n

end A196880

/-! ## A196880.P16987603145464663157

`A196879(∑[n+3])`
-/

namespace A196880.P16987603145464663157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196879 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A196880.P16987603145464663157

namespace A196880

/-- `A196879(∑[n+3])` -/
def P16987603145464663157.Spec : Prop :=
  ∀ n, P16987603145464663157.a n = A196880 n

end A196880

/-!
# A196881: Number of partitions of n^3 into powers of 3.

The programs for A196881, there is no canonical definition to state claims against.
-/

/-! ## A196881.P2822679404753299125

`A005704(A131476(n))`
-/

namespace A196881.P2822679404753299125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005704 (A131476 n).toNat

end

end A196881.P2822679404753299125

/-! ## A196881.P12999179427583036996

`A196879(∑[n+3]+n+3)`
-/

namespace A196881.P12999179427583036996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196879 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A196881.P12999179427583036996

/-! ## A196881.P7053944514084880875

`A062051(n^3)`
-/

namespace A196881.P7053944514084880875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062051 (n ^ 3)

end

end A196881.P7053944514084880875

/-!
# A196882: Number of partitions of n^4 into powers of 4.

The programs for A196882, there is no canonical definition to state claims against.
-/

/-! ## A196882.P16966773959497014863

`A196879(A056115(n)+10)`
-/

namespace A196882.P16966773959497014863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196879 (A056115 n + 10).toNat

end

end A196882.P16966773959497014863

/-! ## A196882.P4728593338751935150

`A005705(A131479(n))`
-/

namespace A196882.P4728593338751935150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005705 (A131479 n).toNat

end

end A196882.P4728593338751935150

/-!
# A196883: Number of partitions of n^5 into powers of 5.

The programs for A196883, there is no canonical definition to state claims against.
-/

/-! ## A196883.P14816297989574074708

`A196879(A055999(n+3))`
-/

namespace A196883.P14816297989574074708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196879 (A055999 (n + 3)).toNat

end

end A196883.P14816297989574074708

/-!
# A196884: Number of partitions of n^6 into powers of 6.

The programs for A196884, there is no canonical definition to state claims against.
-/

/-! ## A196884.P6426271664174401491

`A196879(eq[6, A025581(n)])`
-/

namespace A196884.P6426271664174401491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196879 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196884.P6426271664174401491

/-!
# A196885: Number of partitions of n^7 into powers of 7.

The programs for A196885, there is no canonical definition to state claims against.
-/

/-! ## A196885.P11657909608897005827

`A196879(C(n+8, 2)+n)`
-/

namespace A196885.P11657909608897005827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196879 (Nat.choose (n + 8) 2 + n)

end

end A196885.P11657909608897005827

/-!
# A196886: Number of partitions of n^8 into powers of 8.

The programs for A196886, there is no canonical definition to state claims against.
-/

/-! ## A196886.P3758049889688886476

`A196879(eq[8, A025581(n)])`
-/

namespace A196886.P3758049889688886476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196879 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196886.P3758049889688886476

/-!
# A196887: Number of partitions of n^9 into powers of 9.

The programs for A196887, there is no canonical definition to state claims against.
-/

/-! ## A196887.P10536643849219086051

`A196879(eq[9, A025581(n)])`
-/

namespace A196887.P10536643849219086051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196879 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196887.P10536643849219086051

/-!
# A196888: Number of partitions of n^10 into powers of 10.

The programs for A196888, there is no canonical definition to state claims against.
-/

/-! ## A196888.P15110933698233671541

`A196879(eq[10, A025581(n)])`
-/

namespace A196888.P15110933698233671541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196879 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196888.P15110933698233671541

/-!
# A196889: Number of partitions of 2^n into powers of n.

The programs for A196889, there is no canonical definition to state claims against.
-/

/-! ## A196889.P4650133422112009159

`A196879(∑[n+2]+3)`
-/

namespace A196889.P4650133422112009159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196879 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A196889.P4650133422112009159

/-!
# A196890: Number of partitions of 3^n into powers of n.

The programs for A196890, there is no canonical definition to state claims against.
-/

/-! ## A196890.P8799980243715573272

`A196879(A167614(n+2))`
-/

namespace A196890.P8799980243715573272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196879 (A167614 (n + 2)).toNat

end

end A196890.P8799980243715573272

/-!
# A196891: Number of partitions of 4^n into powers of n.

The programs for A196891, there is no canonical definition to state claims against.
-/

/-! ## A196891.P10768216761402699770

`A196879(eq[3, A141169(n)])`
-/

namespace A196891.P10768216761402699770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196879 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196891.P10768216761402699770

/-!
# A196892: Number of partitions of 5^n into powers of n.

The programs for A196892, there is no canonical definition to state claims against.
-/

/-! ## A196892.P683205636410911957

`A196879(A167499(n+4))`
-/

namespace A196892.P683205636410911957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196879 (A167499 (n + 4)).toNat

end

end A196892.P683205636410911957

/-!
# A196893: Number of partitions of 6^n into powers of n.

The programs for A196893, there is no canonical definition to state claims against.
-/

/-! ## A196893.P14581800157283448487

`A196879(eq[6, A002262(n)])`
-/

namespace A196893.P14581800157283448487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196879 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196893.P14581800157283448487

/-!
# A196894: Number of partitions of 7^n into powers of n.

The programs for A196894, there is no canonical definition to state claims against.
-/

/-! ## A196894.P1901439310133829372

`A196879(eq[7, A002262(n)])`
-/

namespace A196894.P1901439310133829372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196879 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196894.P1901439310133829372

/-!
# A196895: Number of partitions of 8^n into powers of n.

The programs for A196895, there is no canonical definition to state claims against.
-/

/-! ## A196895.P10859858136013125298

`A196879(eq[8, A002262(n)])`
-/

namespace A196895.P10859858136013125298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196879 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196895.P10859858136013125298

/-!
# A196896: Number of partitions of 9^n into powers of n.

The programs for A196896, there is no canonical definition to state claims against.
-/

/-! ## A196896.P16861161193687268996

`A196879(eq[9, A002262(n)])`
-/

namespace A196896.P16861161193687268996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196879 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196896.P16861161193687268996

/-!
# A196897: Number of partitions of 10^n into powers of n.

The programs for A196897, there is no canonical definition to state claims against.
-/

/-! ## A196897.P1693873189016319871

`A196879(eq[10, A002262(n)])`
-/

namespace A196897.P1693873189016319871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196879 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196897.P1693873189016319871

/-!
# A196898: Number of n X n 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 4,3,1,0,2 for x=0,1,2,3,4.

The programs for A196898, there is no canonical definition to state claims against.
-/

/-! ## A196898.P8226853422320345752

`A196904(∑[4*n]+1)`
-/

namespace A196898.P8226853422320345752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196904 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A196898.P8226853422320345752

/-!
# A196899: Number of n X 3 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,3,1,0,2 for x=0,1,2,3,4.

The programs for A196899, the canonical program `A196899.P11814511485256896131` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A196899 has offset 1).

The definition of A196899 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A196899.P11814511485256896131

`ogf((1+x+7x^2+2x^3-18x^4-14x^5-17x^6+11x^7+7x^8-2x^9)/(1-2x-7x^2-8x^3+2x^4+33x^5-2x^6+6x^7+14x^8-x^9-2x^10))`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A196899

/-- `ogf((1+x+7x^2+2x^3-18x^4-14x^5-17x^6+11x^7+7x^8-2x^9)/(1-2x-7x^2-8x^3+2x^4+33x^5-2x^6+6x^7+14x^8-x^9-2x^10))` -/
def P11814511485256896131.Spec : Prop :=
  ∀ n, P11814511485256896131.a n = A196899 (n + 1)

theorem P11814511485256896131.correct : P11814511485256896131.Spec := by
  intro n
  simp only [A196899, Nat.add_sub_cancel]

end A196899

/-! ## A196899.P5785841105287572512

`A196904(∑[n+2]+4)`
-/

namespace A196899.P5785841105287572512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196904 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A196899.P5785841105287572512

namespace A196899

/-- `A196904(∑[n+2]+4)` -/
def P5785841105287572512.Spec : Prop :=
  ∀ n, P5785841105287572512.a n = A196899 (n + 1)

end A196899

/-! ## A196899.P15540294205607272274

`record[A196904(A167614(gcd(xor(1, n²), ∑[n])))]`
-/

namespace A196899.P15540294205607272274
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196904 (A167614 (Nat.gcd (Nat.xor 1 (n ^ 2)) (∑ j ∈ Finset.range (n + 1), f2 j))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196899.P15540294205607272274

namespace A196899

/-- `record[A196904(A167614(gcd(xor(1, n²), ∑[n])))]` -/
def P15540294205607272274.Spec : Prop :=
  ∀ n, P15540294205607272274.a n = A196899 (n + 1)

end A196899

/-! ## A196899.P3421956287336268861

`record[A196904(A167614(round(lcm(2, n+3)/6)))]`
-/

namespace A196899.P3421956287336268861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196904 (A167614 (SequenceMachineLib.roundAway ((Nat.lcm 2 (n + 3) : ℚ) / 6)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196899.P3421956287336268861

namespace A196899

/-- `record[A196904(A167614(round(lcm(2, n+3)/6)))]` -/
def P3421956287336268861.Spec : Prop :=
  ∀ n, P3421956287336268861.a n = A196899 (n + 1)

end A196899

