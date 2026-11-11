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
import Seq.B000.C011
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C049
import Seq.B000.C050
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C001
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A384103: a(n) = y with minimum |x| >= |y| > 0, such that n = |6xy + x + y|, or 0 if no such x, y exist. If x and -x are solutions, choose x > 0 > y = -x.

The programs for A384103, there is no canonical definition to state claims against.
-/

/-! ## A384103.P8497730098189528568

`A010892(A086046(3*n+1)+A049310(n))`
-/

namespace A384103.P8497730098189528568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (A086046 (3 * n + 1) + A049310 n).toNat

end

end A384103.P8497730098189528568

/-! ## A384103.P6208250733937351318

`A360071(n+1)-A168509(A075676(n))`
-/

namespace A384103.P6208250733937351318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360071 (n + 1) - A168509 (A075676 n).toNat

end

end A384103.P6208250733937351318

/-! ## A384103.P5162170292125517167

`A102283(A325238(3*n+5)+A088574(n+1))`
-/

namespace A384103.P5162170292125517167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102283 (A325238 (3 * n + 5) + A088574 (n + 1)).toNat

end

end A384103.P5162170292125517167

/-! ## A384103.P12808428104191623817

`A008683(floor(A208114(n+1)+A278345(n)/2))`
-/

namespace A384103.P12808428104191623817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 ⌊(A208114 (n + 1) : ℚ) + (A278345 n : ℚ) / 2⌋.toNat

end

end A384103.P12808428104191623817

/-! ## A384103.P9742335704327337002

`A080237(n+1)-A085424(A000051(n))`
-/

namespace A384103.P9742335704327337002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080237 (n + 1) - A085424 (A000051 n).toNat

end

end A384103.P9742335704327337002

/-!
# A384105: Triangle read by rows: T(n,k) is the number of binary relations on a set of n objects, exactly k of which are self referencing, 0 <= k <= n.

The programs for A384105, there is no canonical definition to state claims against.
-/

/-! ## A384105.P7886468191516337208

`A319840(n+1)^A001221(A121452(n))`
-/

namespace A384105.P7886468191516337208
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319840 (n + 1) : ℚ) ^ (A001221 (A121452 n).toNat : ℤ)

end

end A384105.P7886468191516337208

/-! ## A384105.P17021629135901202549

`A391260(n+1)^A001221(A121452(n))`
-/

namespace A384105.P17021629135901202549
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A391260 (n + 1) : ℚ) ^ (A001221 (A121452 n).toNat : ℤ)

end

end A384105.P17021629135901202549

/-! ## A384105.P14636580364941715169

`A319840(n+1)^A007814(A291000(n))`
-/

namespace A384105.P14636580364941715169
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319840 (n + 1) : ℚ) ^ (A007814 (A291000 n).toNat : ℤ)

end

end A384105.P14636580364941715169

/-! ## A384105.P4612765106447747929

`A391260(n+1)^A007814(A291000(n))`
-/

namespace A384105.P4612765106447747929
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A391260 (n + 1) : ℚ) ^ (A007814 (A291000 n).toNat : ℤ)

end

end A384105.P4612765106447747929

/-! ## A384105.P10404136564171007685

`and(A057171(A000930(n)), A265480(n+1))`
-/

namespace A384105.P10404136564171007685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057171 (A000930 n).toNat) (A265480 (n + 1))

end

end A384105.P10404136564171007685

/-!
# A384109: Number of connected components of n faces of the truncated icosahedron up to the 120 rotations and reflections of the truncated icosahedron.

The programs for A384109, there is no canonical definition to state claims against.
-/

/-! ## A384109.P2983405090478960669

`A102825(A122748(n+1))`
-/

namespace A384109.P2983405090478960669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102825 (A122748 (n + 1)).toNat

end

end A384109.P2983405090478960669

/-! ## A384109.P11948202046140134082

`A025453(A265955(n+1))`
-/

namespace A384109.P11948202046140134082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025453 (A265955 (n + 1)).toNat

end

end A384109.P11948202046140134082

/-! ## A384109.P2396037526812666553

`row(A089352(∑[A206303(n)]))`
-/

namespace A384109.P2396037526812666553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206303 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow (A089352 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A384109.P2396037526812666553

/-!
# A384110: Number of connected components of n faces of the rhombicosidodecahedron up to the 120 rotations and reflections of the rhombicosidodecahedron.

The programs for A384110, there is no canonical definition to state claims against.
-/

/-! ## A384110.P16885960678366204215

`A334223(A294469(n)+A002865(3*n+1))`
-/

namespace A384110.P16885960678366204215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334223 (A294469 n + A002865 (3 * n + 1)).toNat

end

end A384110.P16885960678366204215

/-!
# A384111: Number of connected components of n faces of the truncated icosidodecahedron up to the 120 rotations and reflections of the truncated icosidodecahedron.

The programs for A384111, there is no canonical definition to state claims against.
-/

/-! ## A384111.P1486901513170670572

`A204979(A000040(n*lcm(n+1, a(n-1))/(n+1)))` with `a(0)=1`
-/

namespace A384111.P1486901513170670572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A204979 (A000040 (SequenceMachineLib.roundAway ((n : ℚ) * ((Int.lcm (n + 1 : ℤ) (a (n - 1)) : ℚ) / (n + 1 : ℚ)))).toNat).toNat

end

end A384111.P1486901513170670572

/-! ## A384111.P654181577404852801

`A237593(A104982(n))+A005968(n)`
-/

namespace A384111.P654181577404852801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237593 (A104982 n).toNat + A005968 n

end

end A384111.P654181577404852801

/-!
# A384112: Number of connected components of n faces of the snub dodecahedron up to the 60 rotations of the snub dodecahedron.

The programs for A384112, there is no canonical definition to state claims against.
-/

/-! ## A384112.P15386826987141444558

`A212010(A049892(n+2))`
-/

namespace A384112.P15386826987141444558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212010 (A049892 (n + 2)).toNat

end

end A384112.P15386826987141444558

/-! ## A384112.P16448121643798251494

`A081373(A129921(n)*A392547(n))`
-/

namespace A384112.P16448121643798251494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081373 (A129921 n * A392547 n).toNat

end

end A384112.P16448121643798251494

/-! ## A384112.P2816140415094947278

`or(A080595(A052882(n)), A127136(n+1))`
-/

namespace A384112.P2816140415094947278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A080595 (A052882 n).toNat) (A127136 (n + 1))

end

end A384112.P2816140415094947278

/-!
# A384113: Consecutive states of a linear congruential pseudo-random number generator for MacModula-2 when started at 1.

The programs for A384113, there is no canonical definition to state claims against.
-/

/-! ## A384113.P1802441285448158910

`∑[A000010(A001022(n))]%A038514(3*n+2)`
-/

namespace A384113.P1802441285448158910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A001022 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A038514 (3 * n + 2))

end

end A384113.P1802441285448158910

/-!
# A384115: The number of polyforms on the snub square tiling where the adjacent triangles are combined into rhombi.

The programs for A384115, there is no canonical definition to state claims against.
-/

/-! ## A384115.P476194990615898612

`A271518(or(2*(4^n-n*2^n)-1, A276086(n+3)))`
-/

namespace A384115.P476194990615898612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271518 (Int.lor (2 * ((4 ^ n : ℤ) - (n * 2 ^ n : ℤ)) - 1) (A276086 (n + 3))).toNat

end

end A384115.P476194990615898612

/-! ## A384115.P4709336362766675513

`A271518(or(2*(4^n-n*2^n)-1, A013929(2*n+1)))`
-/

namespace A384115.P4709336362766675513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271518 (Int.lor (2 * ((4 ^ n : ℤ) - (n * 2 ^ n : ℤ)) - 1) (A013929 (2 * n + 1))).toNat

end

end A384115.P4709336362766675513

/-! ## A384115.P14402387636178774403

`A007814(n+1)+A001462(A385698(n))`
-/

namespace A384115.P14402387636178774403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1) + A001462 (A385698 n).toNat

end

end A384115.P14402387636178774403

/-!
# A384119: Array read by antidiagonals: T(n,m) is the number of minimum dominating sets in the n X m rook graph K_n X K_m.

The programs for A384119, there is no canonical definition to state claims against.
-/

/-! ## A384119.P10613447549752981348

`A235492(A158687(n))`
-/

namespace A384119.P10613447549752981348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235492 (A158687 n).toNat

end

end A384119.P10613447549752981348

/-! ## A384119.P1952910247160457776

`A266394(A174116(n))`
-/

namespace A384119.P1952910247160457776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266394 (A174116 n).toNat

end

end A384119.P1952910247160457776

/-! ## A384119.P3438382589548360562

`A335607(A126770(n))`
-/

namespace A384119.P3438382589548360562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335607 (A126770 n).toNat

end

end A384119.P3438382589548360562

/-! ## A384119.P11267267716207924457

`A324381(A154228(n))`
-/

namespace A384119.P11267267716207924457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324381 (A154228 n).toNat

end

end A384119.P11267267716207924457

/-! ## A384119.P14069118937320726078

`A091238(A124976(n+1))`
-/

namespace A384119.P14069118937320726078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091238 (A124976 (n + 1)).toNat

end

end A384119.P14069118937320726078

/-!
# A384120: Array read by antidiagonals: T(n,m) is the number of cliques in the n X m rook graph K_n X K_m.

The programs for A384120, there is no canonical definition to state claims against.
-/

/-! ## A384120.P2227774997162860240

`A068509(A176305(n))`
-/

namespace A384120.P2227774997162860240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068509 (A176305 n).toNat

end

end A384120.P2227774997162860240

/-! ## A384120.P13922674761664439101

`A103298(A176482(n))`
-/

namespace A384120.P13922674761664439101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103298 (A176482 n).toNat

end

end A384120.P13922674761664439101

/-! ## A384120.P850133546169116457

`A242662(A183342(n+1)%A290689(3*n+5))`
-/

namespace A384120.P850133546169116457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242662 (Int.tmod (A183342 (n + 1)) (A290689 (3 * n + 5))).toNat

end

end A384120.P850133546169116457

/-! ## A384120.P8535602973488680273

`A242662(A183342(n+1))%A306215(3*(n+1))`
-/

namespace A384120.P8535602973488680273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A242662 (A183342 (n + 1)).toNat) (A306215 (3 * (n + 1)))

end

end A384120.P8535602973488680273

/-! ## A384120.P4025727909091790624

`A324525(A296313(n+1)%A357929(3*n+4))`
-/

namespace A384120.P4025727909091790624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324525 (Int.tmod (A296313 (n + 1)) (A357929 (3 * n + 4))).toNat

end

end A384120.P4025727909091790624

/-!
# A384121: Array read by antidiagonals: T(n,m) is the number of dominating sets in the n X m rook complement graph.

The programs for A384121, there is no canonical definition to state claims against.
-/

/-! ## A384121.P6047127116088887077

`A164380(A360440(n)²)`
-/

namespace A384121.P6047127116088887077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164380 (A360440 n ^ 2).toNat

end

end A384121.P6047127116088887077

/-! ## A384121.P12966398881645761871

`A353866(A208615(n)²)`
-/

namespace A384121.P12966398881645761871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353866 (A208615 n ^ 2).toNat

end

end A384121.P12966398881645761871

/-! ## A384121.P10563589848154292467

`A259027(A209115(n+2))`
-/

namespace A384121.P10563589848154292467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259027 (A209115 (n + 2)).toNat

end

end A384121.P10563589848154292467

/-! ## A384121.P4894615693631374034

`A164380(A360440(n)^2)`
-/

namespace A384121.P4894615693631374034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164380 (A360440 n ^ 2).toNat

end

end A384121.P4894615693631374034

/-! ## A384121.P12282114326584684559

`or(1, A325280(A316622(n)))`
-/

namespace A384121.P12282114326584684559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A325280 (A316622 n).toNat)

end

end A384121.P12282114326584684559

/-!
# A384124: Array read by antidiagonals: T(n,m) is the number of irredundant sets in the n X m rook complement graph.

The programs for A384124, there is no canonical definition to state claims against.
-/

/-! ## A384124.P9871152366341534542

`A325351(A328887(n)%A155875(3*n+2))`
-/

namespace A384124.P9871152366341534542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325351 (Int.tmod (A328887 n) (A155875 (3 * n + 2))).toNat

end

end A384124.P9871152366341534542

/-! ## A384124.P13153326269749050915

`A325351(A328887(n))%A077468(3*n+5)`
-/

namespace A384124.P13153326269749050915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A325351 (A328887 n).toNat) (A077468 (3 * n + 5))

end

end A384124.P13153326269749050915

/-!
# A384125: Array read by antidiagonals: T(n,m) is the number of edges in the n X m rook graph K_n X K_m.

The programs for A384125, the canonical program `A384125.P17251992076362477602` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A384125 has offset 1).

The definition of A384125 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A384125.P17251992076362477602

`(col(n)+1)*C(row(n)-col(n)+1, 2)+(row(n)-col(n)+1)*C(col(n)+1, 2)`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A384125

/-- `(col(n)+1)*C(row(n)-col(n)+1, 2)+(row(n)-col(n)+1)*C(col(n)+1, 2)` -/
def P17251992076362477602.Spec : Prop :=
  ∀ n, P17251992076362477602.a n = A384125 (n + 1)

theorem P17251992076362477602.correct : P17251992076362477602.Spec := by
  intro n
  simp only [A384125, Nat.add_sub_cancel]

end A384125

/-! ## A384125.P358252686204838656

`row(n)+T(n-1,k)+T(n-1,k-1)-T(n-2,k-1)` with `a(0)=0`
-/

namespace A384125.P358252686204838656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (SequenceMachineLib.triRow n : ℤ) + (SequenceMachineLib.triUp a n + SequenceMachineLib.triUpLeft a n) - SequenceMachineLib.triUp2Left a n

end

end A384125.P358252686204838656

namespace A384125

/-- `row(n)+T(n-1,k)+T(n-1,k-1)-T(n-2,k-1)` -/
def P358252686204838656.Spec : Prop :=
  ∀ n, P358252686204838656.a n = A384125 (n + 1)

end A384125

/-! ## A384125.P6000916219316873352

`∑[abs(T(n-1,k))]+T(n-1,k)+T(n-1,k-1)-T(n-2,k-1)` with `a(0)=0, a(1)=1`
-/

namespace A384125.P6000916219316873352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  SequenceMachineLib.triUp f1 n

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (SequenceMachineLib.triUp a n + SequenceMachineLib.triUpLeft a n - SequenceMachineLib.triUp2Left a n)

end

end A384125.P6000916219316873352

namespace A384125

/-- `∑[abs(T(n-1,k))]+T(n-1,k)+T(n-1,k-1)-T(n-2,k-1)` -/
def P6000916219316873352.Spec : Prop :=
  ∀ n, P6000916219316873352.a n = A384125 (n + 1)

end A384125

/-! ## A384125.P2100812370609092516

`abs(C(col(n)+1, 2)-n)+T(n-1,k-1)` with `a(0)=0, a(1)=1`
-/

namespace A384125.P2100812370609092516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  |(Nat.choose (SequenceMachineLib.triCol n + 1) 2 : ℤ) - (n : ℤ)| + SequenceMachineLib.triUpLeft a n

end

end A384125.P2100812370609092516

namespace A384125

/-- `abs(C(col(n)+1, 2)-n)+T(n-1,k-1)` -/
def P2100812370609092516.Spec : Prop :=
  ∀ n, P2100812370609092516.a n = A384125 (n + 1)

end A384125

/-! ## A384125.P15224085087656991423

`∑[char[∑[n]]]+T(n-1,k)+T(n-1,k-1)-T(n-2,k-1)-1` with `a(0)=0, a(1)=1`
-/

namespace A384125.P15224085087656991423
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (SequenceMachineLib.triUp a n + SequenceMachineLib.triUpLeft a n - SequenceMachineLib.triUp2Left a n) - 1

end

end A384125.P15224085087656991423

namespace A384125

/-- `∑[char[∑[n]]]+T(n-1,k)+T(n-1,k-1)-T(n-2,k-1)-1` -/
def P15224085087656991423.Spec : Prop :=
  ∀ n, P15224085087656991423.a n = A384125 (n + 1)

end A384125

/-! ## A384125.P7366519357649099414

`(col(n)+1)/2*(row(n)-col(n)+1)*row(n)`
-/

namespace A384125.P7366519357649099414
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triCol n + 1 : ℚ) / 2 * ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1 : ℚ) * (SequenceMachineLib.triRow n : ℚ)

end

end A384125.P7366519357649099414

namespace A384125

/-- `(col(n)+1)/2*(row(n)-col(n)+1)*row(n)` -/
def P7366519357649099414.Spec : Prop :=
  ∀ n, P7366519357649099414.a n = (A384125 (n + 1) : ℚ)

end A384125

/-! ## A384125.P14882738763532164259

`A141418(n+1)+T(n-1,k)` with `a(0)=0`
-/

namespace A384125.P14882738763532164259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A141418 (n + 1) + SequenceMachineLib.triUp a n

end

end A384125.P14882738763532164259

namespace A384125

/-- `A141418(n+1)+T(n-1,k)` -/
def P14882738763532164259.Spec : Prop :=
  ∀ n, P14882738763532164259.a n = A384125 (n + 1)

end A384125

/-! ## A384125.P205352754593009062

`A003991(1+n)/2*row(n)`
-/

namespace A384125.P205352754593009062
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003991 (1 + n) : ℚ) / 2 * (SequenceMachineLib.triRow n : ℚ)

end

end A384125.P205352754593009062

namespace A384125

/-- `A003991(1+n)/2*row(n)` -/
def P205352754593009062.Spec : Prop :=
  ∀ n, P205352754593009062.a n = (A384125 (n + 1) : ℚ)

end A384125

/-! ## A384125.P11328562374624657705

`A107985(n)-A003991(n+1)`
-/

namespace A384125.P11328562374624657705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107985 n - A003991 (n + 1)

end

end A384125.P11328562374624657705

namespace A384125

/-- `A107985(n)-A003991(n+1)` -/
def P11328562374624657705.Spec : Prop :=
  ∀ n, P11328562374624657705.a n = A384125 (n + 1)

end A384125

/-! ## A384125.P471706452281228263

`A094415(n)-A212013(n+1)`
-/

namespace A384125.P471706452281228263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094415 n - A212013 (n + 1)

end

end A384125.P471706452281228263

namespace A384125

/-- `A094415(n)-A212013(n+1)` -/
def P471706452281228263.Spec : Prop :=
  ∀ n, P471706452281228263.a n = A384125 (n + 1)

end A384125

/-! ## A384125.P14964655347719937837

`A093445(n+1)-A128141(n+1)`
-/

namespace A384125.P14964655347719937837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093445 (n + 1) - A128141 (n + 1)

end

end A384125.P14964655347719937837

namespace A384125

/-- `A093445(n+1)-A128141(n+1)` -/
def P14964655347719937837.Spec : Prop :=
  ∀ n, P14964655347719937837.a n = A384125 (n + 1)

end A384125

/-! ## A384125.P14124213171865809645

`A095729(n+1)-A127779(n+1)`
-/

namespace A384125.P14124213171865809645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095729 (n + 1) - A127779 (n + 1)

end

end A384125.P14124213171865809645

namespace A384125

/-- `A095729(n+1)-A127779(n+1)` -/
def P14124213171865809645.Spec : Prop :=
  ∀ n, P14124213171865809645.a n = A384125 (n + 1)

end A384125

/-! ## A384125.P7164972686877471237

`A003991(n+1)/2*A003056(n)`
-/

namespace A384125.P7164972686877471237
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003991 (n + 1) : ℚ) / 2 * (A003056 n : ℚ)

end

end A384125.P7164972686877471237

namespace A384125

/-- `A003991(n+1)/2*A003056(n)` -/
def P7164972686877471237.Spec : Prop :=
  ∀ n, P7164972686877471237.a n = (A384125 (n + 1) : ℚ)

end A384125

/-! ## A384125.P4558238499034479925

`A014682(A003056(n)*A003991(n+1))`
-/

namespace A384125.P4558238499034479925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A003056 n * A003991 (n + 1)).toNat

end

end A384125.P4558238499034479925

namespace A384125

/-- `A014682(A003056(n)*A003991(n+1))` -/
def P4558238499034479925.Spec : Prop :=
  ∀ n, P4558238499034479925.a n = A384125 (n + 1)

end A384125

/-! ## A384125.P14991129774311210754

`A004525(A003056(n)*A003991(n+1))`
-/

namespace A384125.P14991129774311210754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A003056 n * A003991 (n + 1)).toNat

end

end A384125.P14991129774311210754

namespace A384125

/-- `A004525(A003056(n)*A003991(n+1))` -/
def P14991129774311210754.Spec : Prop :=
  ∀ n, P14991129774311210754.a n = A384125 (n + 1)

end A384125

/-!
# A384127: a(n) is the number of integer quintuples (a,b,c,d,e) satisfying a system of linear inequalities and congruences specified in the comments.

The programs for A384127, the canonical program `A384127.P8335541206065490325` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A384127 has offset 0).

The definition of A384127 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A384127.P8335541206065490325

`ogf((1+20x+111x^2+110x^3+141x^4+110x^5+111x^6+20x^7+x^8)/(1-5x+10x^2-10x^3+5x^4-2x^5+5x^6-10x^7+10x^8-5x^9+x^10))`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A384127

/-- `ogf((1+20x+111x^2+110x^3+141x^4+110x^5+111x^6+20x^7+x^8)/(1-5x+10x^2-10x^3+5x^4-2x^5+5x^6-10x^7+10x^8-5x^9+x^10))` -/
def P8335541206065490325.Spec : Prop :=
  ∀ n, P8335541206065490325.a n = A384127 n

theorem P8335541206065490325.correct : P8335541206065490325.Spec := by
  intro n
  simp only [A384127]

end A384127

/-!
# A384128: Number of iterations for the circular absolute first-difference on decimal digits to reach a repdigit.

The programs for A384128, there is no canonical definition to state claims against.
-/

/-! ## A384128.P5344038398622360769

`A352513(A047726(n+1)^A352503(n+1))`
-/

namespace A384128.P5344038398622360769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352513 (SequenceMachineLib.roundAway ((A047726 (n + 1) : ℚ) ^ (A352503 (n + 1) : ℤ))).toNat

end

end A384128.P5344038398622360769

/-! ## A384128.P15043989191382496992

`floor(A120004(A000196((n+1)²))²/5)`
-/

namespace A384128.P15043989191382496992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A120004 (A000196 ((n + 1) ^ 2)).toNat ^ 2 : ℚ) / 5⌋

end

end A384128.P15043989191382496992

/-! ## A384128.P8057498226383793810

`C(A047726(n+1), 2)^A228572(2*(n+1))`
-/

namespace A384128.P8057498226383793810
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A047726 (n + 1)).toNat 2 : ℚ) ^ (A228572 (2 * (n + 1)) : ℤ)

end

end A384128.P8057498226383793810

/-! ## A384128.P14568152267780551558

`A049768(A047726(n+1))^A027642(n)`
-/

namespace A384128.P14568152267780551558
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049768 (A047726 (n + 1)).toNat : ℚ) ^ (A027642 n : ℤ)

end

end A384128.P14568152267780551558

/-! ## A384128.P10934181202816824317

`A246514(A047726(n+1))^A298372(n)`
-/

namespace A384128.P10934181202816824317
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246514 (A047726 (n + 1)).toNat : ℚ) ^ (A298372 n : ℤ)

end

end A384128.P10934181202816824317

/-! ## A384128.P252158273249673936

`A137358(A047726(n+1))^A258445(n+1)`
-/

namespace A384128.P252158273249673936
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137358 (A047726 (n + 1)).toNat : ℚ) ^ (A258445 (n + 1) : ℤ)

end

end A384128.P252158273249673936

/-! ## A384128.P2808564657099846619

`A000217(A014951(n+1)%A047726(n+1))`
-/

namespace A384128.P2808564657099846619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (Int.tmod (A014951 (n + 1)) (A047726 (n + 1))).toNat

end

end A384128.P2808564657099846619

/-! ## A384128.P16686932582598152211

`A000225(A096328(n+1)%A047726(n+1))`
-/

namespace A384128.P16686932582598152211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (Int.tmod (A096328 (n + 1)) (A047726 (n + 1))).toNat

end

end A384128.P16686932582598152211

/-! ## A384128.P7761174766544898292

`A215421(n+1)%A003422(A047726(n+1))`
-/

namespace A384128.P7761174766544898292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A215421 (n + 1)) (A003422 (A047726 (n + 1)).toNat)

end

end A384128.P7761174766544898292

/-! ## A384128.P5938390001039752147

`A037808(A056524(n+1))`
-/

namespace A384128.P5938390001039752147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037808 (A056524 (n + 1)).toNat

end

end A384128.P5938390001039752147

/-!
# A384129: Number of permutations of 3*n objects with exactly 2*n cycles.

The programs for A384129, the canonical program `A384129.P5290801417616881709` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A384129 has offset 0).

The definition of A384129 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A384129.P5290801417616881709

`A132393(C(3*n+1, 2)+2*n)`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A384129

/-- `A132393(C(3*n+1, 2)+2*n)` -/
def P5290801417616881709.Spec : Prop :=
  ∀ n, P5290801417616881709.a n = A384129 n

theorem P5290801417616881709.correct : P5290801417616881709.Spec := by
  intro n
  simp only [A384129]

end A384129

/-! ## A384129.P10241353529158437604

`A132393(n*(9*n+5)/2+n)`
-/

namespace A384129.P10241353529158437604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132393 (SequenceMachineLib.roundAway ((n : ℚ) * ((9 * n + 5 : ℚ) / 2) + (n : ℚ))).toNat

end

end A384129.P10241353529158437604

namespace A384129

/-- `A132393(n*(9*n+5)/2+n)` -/
def P10241353529158437604.Spec : Prop :=
  ∀ n, P10241353529158437604.a n = A384129 n

end A384129

/-! ## A384129.P9516337978751457101

`A094638(A276819(n))`
-/

namespace A384129.P9516337978751457101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094638 (A276819 n).toNat

end

end A384129.P9516337978751457101

namespace A384129

/-- `A094638(A276819(n))` -/
def P9516337978751457101.Spec : Prop :=
  ∀ n, P9516337978751457101.a n = A384129 n

end A384129

/-! ## A384129.P13520874768267067821

`A094638(A022266(n)+1)`
-/

namespace A384129.P13520874768267067821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094638 (A022266 n + 1).toNat

end

end A384129.P13520874768267067821

namespace A384129

/-- `A094638(A022266(n)+1)` -/
def P13520874768267067821.Spec : Prop :=
  ∀ n, P13520874768267067821.a n = A384129 n

end A384129

/-! ## A384129.P8945748858908615811

`A094638(A024000(n)+A022267(n))`
-/

namespace A384129.P8945748858908615811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094638 (A024000 n + A022267 n).toNat

end

end A384129.P8945748858908615811

namespace A384129

/-- `A094638(A024000(n)+A022267(n))` -/
def P8945748858908615811.Spec : Prop :=
  ∀ n, P8945748858908615811.a n = A384129 n

end A384129

/-!
# A384130: Number of permutations of 4*n objects with exactly 3*n cycles.

The programs for A384130, the canonical program `A384130.P10789355595204866454` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A384130 has offset 0).

The definition of A384130 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A384130.P10789355595204866454

`A132393(C(4*n+1, 2)+3*n)`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A384130

/-- `A132393(C(4*n+1, 2)+3*n)` -/
def P10789355595204866454.Spec : Prop :=
  ∀ n, P10789355595204866454.a n = A384130 n

theorem P10789355595204866454.correct : P10789355595204866454.Spec := by
  intro n
  simp only [A384130]

end A384130

/-! ## A384130.P10995365196622900414

`A132393(A139277(n))`
-/

namespace A384130.P10995365196622900414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132393 (A139277 n).toNat

end

end A384130.P10995365196622900414

namespace A384130

/-- `A132393(A139277(n))` -/
def P10995365196622900414.Spec : Prop :=
  ∀ n, P10995365196622900414.a n = A384130 n

end A384130

/-! ## A384130.P1096784196274508814

`A132393(A033586(n)+n)`
-/

namespace A384130.P1096784196274508814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132393 (A033586 n + (n : ℤ)).toNat

end

end A384130.P1096784196274508814

namespace A384130

/-- `A132393(A033586(n)+n)` -/
def P1096784196274508814.Spec : Prop :=
  ∀ n, P1096784196274508814.a n = A384130 n

end A384130

/-! ## A384130.P2132142606554098668

`A094638(A185438(n)+n)`
-/

namespace A384130.P2132142606554098668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094638 (A185438 n + (n : ℤ)).toNat

end

end A384130.P2132142606554098668

namespace A384130

/-- `A094638(A185438(n)+n)` -/
def P2132142606554098668.Spec : Prop :=
  ∀ n, P2132142606554098668.a n = A384130 n

end A384130

/-! ## A384130.P2521908785024655659

`A132393(n*A004770(n+1))`
-/

namespace A384130.P2521908785024655659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132393 ((n : ℤ) * A004770 (n + 1)).toNat

end

end A384130.P2521908785024655659

namespace A384130

/-- `A132393(n*A004770(n+1))` -/
def P2521908785024655659.Spec : Prop :=
  ∀ n, P2521908785024655659.a n = A384130 n

end A384130

/-!
# A384132: Integers k such that the Diophantine equation x^3 + y^3 + z^3 + w^3 = k^3, where 0 < x < y < z < w has no integer solutions.

The programs for A384132, there is no canonical definition to state claims against.
-/

/-! ## A384132.P317092503777227780

`comp[A385364(n+1)-1]+1`
-/

namespace A384132.P317092503777227780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385364 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A384132.P317092503777227780

/-!
# A384135: Number of Cauchy-complete categories with n morphisms.

The programs for A384135, there is no canonical definition to state claims against.
-/

/-! ## A384135.P8257257015605231238

`A087834(A149278(n+1))`
-/

namespace A384135.P8257257015605231238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087834 (A149278 (n + 1)).toNat

end

end A384135.P8257257015605231238

/-! ## A384135.P11332214446506569736

`A353833(∑[A292274(n)+A167606(n)])`
-/

namespace A384135.P11332214446506569736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292274 n + A167606 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353833 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A384135.P11332214446506569736

/-! ## A384135.P9278359565158838158

`A071973(n)+A000035(A030233(n+1))`
-/

namespace A384135.P9278359565158838158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071973 n + A000035 (A030233 (n + 1)).toNat

end

end A384135.P9278359565158838158

/-!
# A384136: a(n) = (3*n)!/(2*n)! * Sum_{k=1..n} 1/(2*n+k).

The programs for A384136, the canonical program `A384136.P8679225479780600593` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A384136 has offset 1).

The definition of A384136 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A384136.P8679225479780600593

`(3*(n+1))!/(2*(n+1))!*∑{#}[n, 1/(2*(n+1)+#+1)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A384136

/-- `(3*(n+1))!/(2*(n+1))!*∑{#}[n, 1/(2*(n+1)+#+1)]` -/
def P8679225479780600593.Spec : Prop :=
  ∀ n, P8679225479780600593.a n = (A384136 (n + 1) : ℚ)

end A384136

/-! ## A384136.P16842519669517614131

`A067176(A062728(n+1))`
-/

namespace A384136.P16842519669517614131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067176 (A062728 (n + 1)).toNat

end

end A384136.P16842519669517614131

namespace A384136

/-- `A067176(A062728(n+1))` -/
def P16842519669517614131.Spec : Prop :=
  ∀ n, P16842519669517614131.a n = A384136 (n + 1)

end A384136

/-! ## A384136.P18352327992026025568

`A093905(A022266(n+1))`
-/

namespace A384136.P18352327992026025568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093905 (A022266 (n + 1)).toNat

end

end A384136.P18352327992026025568

namespace A384136

/-- `A093905(A022266(n+1))` -/
def P18352327992026025568.Spec : Prop :=
  ∀ n, P18352327992026025568.a n = A384136 (n + 1)

end A384136

/-! ## A384136.P13963287860392805876

`A093905(A000217(3*n+2)+1+n)`
-/

namespace A384136.P13963287860392805876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093905 (A000217 (3 * n + 2) + 1 + (n : ℤ)).toNat

end

end A384136.P13963287860392805876

namespace A384136

/-- `A093905(A000217(3*n+2)+1+n)` -/
def P13963287860392805876.Spec : Prop :=
  ∀ n, P13963287860392805876.a n = A384136 (n + 1)

end A384136

/-! ## A384136.P6026629041051311213

`A093905(A000290(2*(n+1))+A000217(n))`
-/

namespace A384136.P6026629041051311213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093905 (A000290 (2 * (n + 1)) + A000217 n).toNat

end

end A384136.P6026629041051311213

namespace A384136

/-- `A093905(A000290(2*(n+1))+A000217(n))` -/
def P6026629041051311213.Spec : Prop :=
  ∀ n, P6026629041051311213.a n = A384136 (n + 1)

end A384136

/-!
# A384141: Decimal expansion of the surface area of an elongated pentagonal bipyramid with unit edge.

The programs for A384141, there is no canonical definition to state claims against.
-/

/-! ## A384141.P2456320471532693968

`A120011(n)+A020761(n)`
-/

namespace A384141.P2456320471532693968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120011 n + A020761 n

end

end A384141.P2456320471532693968

/-!
# A384145: G.f. A(x) satisfies A(x) = 1/( 1 - x*A(x*A(x)^3) ).

The programs for A384145, there is no canonical definition to state claims against.
-/

/-! ## A384145.P3374394162830286129

`A384652(∑[n+2]-1)`
-/

namespace A384145.P3374394162830286129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384652 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A384145.P3374394162830286129

/-! ## A384145.P15342668711406038922

`A384652(C(n+3, 2)-2)^A065310(3*(n+1))`
-/

namespace A384145.P15342668711406038922
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A384652 (Nat.choose (n + 3) 2 - 2) : ℚ) ^ (A065310 (3 * (n + 1)) : ℤ)

end

end A384145.P15342668711406038922

/-! ## A384145.P14324027821284673264

`A008619(xor(A005700(n), A243055(2*(n+1))))`
-/

namespace A384145.P14324027821284673264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (Int.xor (A005700 n) (A243055 (2 * (n + 1)))).toNat

end

end A384145.P14324027821284673264

/-!
# A384147: Array A(n,k) = n*(A(n-1,k)+A(n-2,k)+...+A(n-k,k)), where A(n,k) = n if n <= k, read by antidiagonals with n >= 1 and k >= 1.

The programs for A384147, there is no canonical definition to state claims against.
-/

/-! ## A384147.P9101754795694523217

`A007953(A181845(n+1)^A262809(n))`
-/

namespace A384147.P9101754795694523217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (SequenceMachineLib.roundAway ((A181845 (n + 1) : ℚ) ^ (A262809 n : ℤ))).toNat

end

end A384147.P9101754795694523217

/-! ## A384147.P9529038234440009439

`gcd(A102098(n), A182797(A129129(3*n+4)))`
-/

namespace A384147.P9529038234440009439
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A102098 n) (A182797 (A129129 (3 * n + 4)).toNat)

end

end A384147.P9529038234440009439

/-!
# A384149: Irregular triangle T(n, k) in which row n gives the 2-densely-aggregated composition of sigma(n).

The programs for A384149, there is no canonical definition to state claims against.
-/

/-! ## A384149.P17780185991684537299

`A390443(1+n)+A384226(n+1)`
-/

namespace A384149.P17780185991684537299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390443 (1 + n) + A384226 (n + 1)

end

end A384149.P17780185991684537299

/-! ## A384149.P1767682447054549579

`A390495(1+n)+A390494(n+1)`
-/

namespace A384149.P1767682447054549579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390495 (1 + n) + A390494 (n + 1)

end

end A384149.P1767682447054549579

/-! ## A384149.P15019087644295354316

`A390610(1+n)+A390609(n+1)`
-/

namespace A384149.P15019087644295354316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390610 (1 + n) + A390609 (n + 1)

end

end A384149.P15019087644295354316

/-! ## A384149.P5647168388145974891

`A004277(A237270(n+1))-A384930(n+1)`
-/

namespace A384149.P5647168388145974891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A237270 (n + 1)).toNat - A384930 (n + 1)

end

end A384149.P5647168388145974891

/-! ## A384149.P6120142490498714655

`A389592(n+1)+A379288(n+1)`
-/

namespace A384149.P6120142490498714655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389592 (n + 1) + A379288 (n + 1)

end

end A384149.P6120142490498714655

/-!
# A384153: a(n) is the number of binary strings of length n whose shortest run of 1s is of length 1.

The programs for A384153, the canonical program `A384153.P11731211239372390351` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A384153 has offset 0).

The definition of A384153 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A384153.P18356673502017201299

`ogf((x-2x^2+x^3)/(1-4x+5x^2-3x^3+2x^4))`
-/

namespace A384153.P18356673502017201299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, -2, 1] [1, -4, 5, -3, 2] n

end

end A384153.P18356673502017201299

namespace A384153

/-- `ogf((x-2x^2+x^3)/(1-4x+5x^2-3x^3+2x^4))` -/
def P18356673502017201299.Spec : Prop :=
  ∀ n, P18356673502017201299.a n = A384153 n

end A384153

/-! ## A384153.P11731211239372390351

`2^n-A005251(n+2)`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A384153

/-- `2^n-A005251(n+2)` -/
def P11731211239372390351.Spec : Prop :=
  ∀ n, P11731211239372390351.a n = A384153 n

theorem P11731211239372390351.correct : P11731211239372390351.Spec := by
  intro n
  simp only [A384153]

end A384153

/-! ## A384153.P10486387581832276868

`A078027(2*n)+2*a(n-1)` with `a(0)=0`
-/

namespace A384153.P10486387581832276868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A078027 (2 * n) + 2 * a (n - 1)

end

end A384153.P10486387581832276868

namespace A384153

/-- `A078027(2*n)+2*a(n-1)` -/
def P10486387581832276868.Spec : Prop :=
  ∀ n, P10486387581832276868.a n = A384153 n

end A384153

/-! ## A384153.P7664263415604291125

`A016116(2*n)-A134816(2*n+1)`
-/

namespace A384153.P7664263415604291125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (2 * n) - A134816 (2 * n + 1)

end

end A384153.P7664263415604291125

namespace A384153

/-- `A016116(2*n)-A134816(2*n+1)` -/
def P7664263415604291125.Spec : Prop :=
  ∀ n, P7664263415604291125.a n = A384153 n

end A384153

/-! ## A384153.P13994669426866253476

`A060546(2*n)-A134816(2*n+1)`
-/

namespace A384153.P13994669426866253476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060546 (2 * n) - A134816 (2 * n + 1)

end

end A384153.P13994669426866253476

namespace A384153

/-- `A060546(2*n)-A134816(2*n+1)` -/
def P13994669426866253476.Spec : Prop :=
  ∀ n, P13994669426866253476.a n = A384153 n

end A384153

/-! ## A384153.P6241828403439152630

`Δ[A000051(n)-A005314(n+1)]`
-/

namespace A384153.P6241828403439152630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n - A005314 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A384153.P6241828403439152630

namespace A384153

/-- `Δ[A000051(n)-A005314(n+1)]` -/
def P6241828403439152630.Spec : Prop :=
  ∀ n, P6241828403439152630.a n = A384153 n

end A384153

/-! ## A384153.P12558804362652745414

`Δ[A000079(n)-A289692(n+1)]`
-/

namespace A384153.P12558804362652745414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - A289692 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A384153.P12558804362652745414

namespace A384153

/-- `Δ[A000079(n)-A289692(n+1)]` -/
def P12558804362652745414.Spec : Prop :=
  ∀ n, P12558804362652745414.a n = A384153 n

end A384153

/-!
# A384154: a(n) is the number of binary strings of length n whose shortest run of 1s is of length 2.

The programs for A384154, the canonical program `A384154.P6573691552414329481` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A384154 has offset 0).

The definition of A384154 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A384154.P6573691552414329481

`ogf((x^2-2x^3+x^4)/(1-4x+6x^2-5x^3+2x^4+x^5-x^6+x^7))`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A384154

/-- `ogf((x^2-2x^3+x^4)/(1-4x+6x^2-5x^3+2x^4+x^5-x^6+x^7))` -/
def P6573691552414329481.Spec : Prop :=
  ∀ n, P6573691552414329481.a n = A384154 n

theorem P6573691552414329481.correct : P6573691552414329481.Spec := by
  intro n
  simp only [A384154]

end A384154

/-! ## A384154.P3815110510942756679

`A005251(n+2)-A005252(n+1)`
-/

namespace A384154.P3815110510942756679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005251 (n + 2) - A005252 (n + 1)

end

end A384154.P3815110510942756679

namespace A384154

/-- `A005251(n+2)-A005252(n+1)` -/
def P3815110510942756679.Spec : Prop :=
  ∀ n, P3815110510942756679.a n = A384154 n

end A384154

/-! ## A384154.P16077450356888696528

`A024327(A261049(n)+A000108(n))`
-/

namespace A384154.P16077450356888696528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024327 (A261049 n + A000108 n).toNat

end

end A384154.P16077450356888696528

namespace A384154

/-- `A024327(A261049(n)+A000108(n))` -/
def P16077450356888696528.Spec : Prop :=
  ∀ n, P16077450356888696528.a n = A384154 n

end A384154

/-! ## A384154.P9899583623289213540

`A374747(n)-A186188(A003242(n))`
-/

namespace A384154.P9899583623289213540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374747 n - A186188 (A003242 n).toNat

end

end A384154.P9899583623289213540

namespace A384154

/-- `A374747(n)-A186188(A003242(n))` -/
def P9899583623289213540.Spec : Prop :=
  ∀ n, P9899583623289213540.a n = A384154 n

end A384154

/-! ## A384154.P4472344578952570664

`∑[A185328(2*(n+2))+A152467(A232482(2*(n+1)))]`
-/

namespace A384154.P4472344578952570664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185328 (2 * (n + 2)) + A152467 (A232482 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A384154.P4472344578952570664

namespace A384154

/-- `∑[A185328(2*(n+2))+A152467(A232482(2*(n+1)))]` -/
def P4472344578952570664.Spec : Prop :=
  ∀ n, P4472344578952570664.a n = A384154 n

end A384154

/-!
# A384155: a(n) is the number of binary strings of length n whose shortest run of 1s is of length 3.

The programs for A384155, the canonical program `A384155.P8030485762942197015` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A384155 has offset 0).

The definition of A384155 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A384155.P8030485762942197015

`ogf((x^3-2x^4+x^5)/(1-4x+6x^2-4x^3+x^5+x^6-x^7+x^9))`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A384155

/-- `ogf((x^3-2x^4+x^5)/(1-4x+6x^2-4x^3+x^5+x^6-x^7+x^9))` -/
def P8030485762942197015.Spec : Prop :=
  ∀ n, P8030485762942197015.a n = A384155 n

theorem P8030485762942197015.correct : P8030485762942197015.Spec := by
  intro n
  simp only [A384155]

end A384155

/-! ## A384155.P9215467995244416545

`A005252(n+1)-A005253(n)`
-/

namespace A384155.P9215467995244416545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005252 (n + 1) - A005253 n

end

end A384155.P9215467995244416545

namespace A384155

/-- `A005252(n+1)-A005253(n)` -/
def P9215467995244416545.Spec : Prop :=
  ∀ n, P9215467995244416545.a n = A384155 n

end A384155

/-! ## A384155.P13344713542866181464

`A263363(2*n+3)/A001055(A001248(2*(n+1)))`
-/

namespace A384155.P13344713542866181464
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A263363 (2 * n + 3) : ℚ) / (A001055 (A001248 (2 * (n + 1))).toNat : ℚ)

end

end A384155.P13344713542866181464

namespace A384155

/-- `A263363(2*n+3)/A001055(A001248(2*(n+1)))` -/
def P13344713542866181464.Spec : Prop :=
  ∀ n, P13344713542866181464.a n = (A384155 n : ℚ)

end A384155

/-! ## A384155.P16648156190605327719

`Δ[A000188(A216116(n)²)]`
-/

namespace A384155.P16648156190605327719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A216116 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A384155.P16648156190605327719

namespace A384155

/-- `Δ[A000188(A216116(n)²)]` -/
def P16648156190605327719.Spec : Prop :=
  ∀ n, P16648156190605327719.a n = A384155 n

end A384155

/-! ## A384155.P12863949365148931337

`Δ[A023427(n+1)]%A319560(n)`
-/

namespace A384155.P12863949365148931337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023427 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A319560 n)

end

end A384155.P12863949365148931337

namespace A384155

/-- `Δ[A023427(n+1)]%A319560(n)` -/
def P12863949365148931337.Spec : Prop :=
  ∀ n, P12863949365148931337.a n = A384155 n

end A384155

/-!
# A384162: Number of length n words over an n-ary alphabet such that a single letter in every run of letters is marked.

The programs for A384162, there is no canonical definition to state claims against.
-/

/-! ## A384162.P12629307750554925235

`(1+n)*A342167(n)`
-/

namespace A384162.P12629307750554925235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 + n : ℤ) * A342167 n

end

end A384162.P12629307750554925235

/-! ## A384162.P5529575364088776884

`(A097690(n+2)-A343259(n+2))*A071045(A000265(2*n+3))`
-/

namespace A384162.P5529575364088776884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A097690 (n + 2) - A343259 (n + 2)) * A071045 (A000265 (2 * n + 3)).toNat

end

end A384162.P5529575364088776884

/-! ## A384162.P17907547597093143263

`(n+1)*A316269((n+2)²+n²)`
-/

namespace A384162.P17907547597093143263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A316269 ((n + 2) ^ 2 + n ^ 2)

end

end A384162.P17907547597093143263

/-!
# A384163: a(n) = Product_{k=0..n-1} (2*n+3*k).

The programs for A384163, there is no canonical definition to state claims against.
-/

/-! ## A384163.P12099203139518280170

`A371077(9*∑[n]-n)`
-/

namespace A384163.P12099203139518280170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371077 (9 * (∑ j ∈ Finset.range (n + 1), f1 j) - n)

end

end A384163.P12099203139518280170

/-!
# A384164: a(n) = Product_{k=0..n-1} (3*n+k).

The programs for A384164, the canonical program `A384164.P2352012248476875328` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A384164 has offset 0).

The definition of A384164 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A124320, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A384164.P2352012248476875328

`A124320(C(3*n+1, 2)+n)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A384164

/-- `A124320(C(3*n+1, 2)+n)` -/
def P2352012248476875328.Spec : Prop :=
  ∀ n, P2352012248476875328.a n = A384164 n

theorem P2352012248476875328.correct : P2352012248476875328.Spec := by
  intro n
  simp only [A384164]

end A384164

/-! ## A384164.P7897488209696907483

`n!*C(abs(1-4*n), n)`
-/

namespace A384164.P7897488209696907483
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n * Nat.choose |1 - (4 * n : ℤ)|.toNat n

end

end A384164.P7897488209696907483

namespace A384164

/-- `n!*C(abs(1-4*n), n)` -/
def P7897488209696907483.Spec : Prop :=
  ∀ n, (P7897488209696907483.a n : ℤ) = A384164 n

end A384164

/-! ## A384164.P9961419855393695536

`n!*A262977(n)`
-/

namespace A384164.P9961419855393695536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A262977 n

end

end A384164.P9961419855393695536

namespace A384164

/-- `n!*A262977(n)` -/
def P9961419855393695536.Spec : Prop :=
  ∀ n, P9961419855393695536.a n = A384164 n

end A384164

/-! ## A384164.P14240967329252715021

`C(abs(1-4*n), n)*A000142(n)`
-/

namespace A384164.P14240967329252715021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose |1 - (4 * n : ℤ)|.toNat n : ℤ) * A000142 n

end

end A384164.P14240967329252715021

namespace A384164

/-- `C(abs(1-4*n), n)*A000142(n)` -/
def P14240967329252715021.Spec : Prop :=
  ∀ n, P14240967329252715021.a n = A384164 n

end A384164

/-! ## A384164.P8977782942239512721

`A000142(n)*A262977(n)`
-/

namespace A384164.P8977782942239512721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A262977 n

end

end A384164.P8977782942239512721

namespace A384164

/-- `A000142(n)*A262977(n)` -/
def P8977782942239512721.Spec : Prop :=
  ∀ n, P8977782942239512721.a n = A384164 n

end A384164

/-!
# A384165: a(n) = Product_{k=0..n-1} (3*n+2*k).

The programs for A384165, there is no canonical definition to state claims against.
-/

/-! ## A384165.P14041806462708399948

`A370419(A139277(n))`
-/

namespace A384165.P14041806462708399948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370419 (A139277 n).toNat

end

end A384165.P14041806462708399948

/-! ## A384165.P1986390401293169775

`A370419(A014105(2*n)+A008585(n))`
-/

namespace A384165.P1986390401293169775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370419 (A014105 (2 * n) + A008585 n).toNat

end

end A384165.P1986390401293169775

/-!
# A384173: Number of Hamiltonian paths from NW to SW corners in an n X n grid reduced for symmetry, i.e., where reflection about the x-axis is not counted as distinct.

The programs for A384173, there is no canonical definition to state claims against.
-/

/-! ## A384173.P5307657644922010481

`A092360(A134964(n))`
-/

namespace A384173.P5307657644922010481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092360 (A134964 n).toNat

end

end A384173.P5307657644922010481

/-! ## A384173.P6371519560948293248

`or(1, A000010(A333734(n)))`
-/

namespace A384173.P6371519560948293248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A000010 (A333734 n).toNat)

end

end A384173.P6371519560948293248

/-!
# A384174: Primes p such that the concatenations of p and 123456789 in both orders are prime.

The programs for A384174, there is no canonical definition to state claims against.
-/

/-! ## A384174.P15831611606185999342

`∩[A232726(n+1), A384218(n+1)]`
-/

namespace A384174.P15831611606185999342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232726 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384174.P15831611606185999342

/-! ## A384174.P1813976121649899634

`p?[A384218(n+1)]`
-/

namespace A384174.P1813976121649899634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384218 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A384174.P1813976121649899634

/-! ## A384174.P4329512938344003513

`∩[A232726(n+1), A232727(n+1)]`
-/

namespace A384174.P4329512938344003513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232726 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232727 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384174.P4329512938344003513

/-! ## A384174.P7609134317360091932

`∩[A053140(n+1), A384218(n+1)]`
-/

namespace A384174.P7609134317360091932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053140 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384174.P7609134317360091932

/-! ## A384174.P11694222098701273054

`∩[A000040(n+1), A384218(n+1)]`
-/

namespace A384174.P11694222098701273054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384174.P11694222098701273054

/-! ## A384174.P14992730273116011823

`filter[A384218(n+1), A010051(#)]`
-/

namespace A384174.P14992730273116011823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384218 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A384174.P14992730273116011823

/-! ## A384174.P6931413973307224203

`filter[A384218(n+1), A069513(#)]`
-/

namespace A384174.P6931413973307224203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384218 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A069513 (f1 j).toNat = 1) n)

end

end A384174.P6931413973307224203

/-! ## A384174.P17424785733015193488

`filter[A384218(n+1), A354923(#)]`
-/

namespace A384174.P17424785733015193488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384218 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354923 (f1 j).toNat = 1) n)

end

end A384174.P17424785733015193488

/-! ## A384174.P8193968882201726978

`∩[A232725(n+1), A232728(n+1)]`
-/

namespace A384174.P8193968882201726978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232725 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232728 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384174.P8193968882201726978

/-! ## A384174.P15791711984628865984

`∩[A232726(n+1), A232728(n+1)]`
-/

namespace A384174.P15791711984628865984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232726 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232728 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384174.P15791711984628865984

/-! ## A384174.P10048366314336955199

`∩[A232728(n+1), A384218(n+1)]`
-/

namespace A384174.P10048366314336955199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232728 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384174.P10048366314336955199

/-!
# A384175: Number of subsets of {1..n} with all distinct lengths of maximal runs (increasing by 1).

The programs for A384175, there is no canonical definition to state claims against.
-/

/-! ## A384175.P9383033356001091624

`2^n-A384176(n)`
-/

namespace A384175.P9383033356001091624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A384176 n

end

end A384175.P9383033356001091624

/-! ## A384175.P4927145241460077887

`abs(A000079(n)-A384176(n))`
-/

namespace A384175.P4927145241460077887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000079 n - A384176 n|

end

end A384175.P4927145241460077887

/-! ## A384175.P13386557450060519737

`A000051(n)-(A384176(n)+1)`
-/

namespace A384175.P13386557450060519737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n - (A384176 n + 1)

end

end A384175.P13386557450060519737

/-! ## A384175.P13055400900366022424

`A000225(n)-A384176(n)+1`
-/

namespace A384175.P13055400900366022424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n - A384176 n + 1

end

end A384175.P13055400900366022424

/-! ## A384175.P9758085865807559427

`A000027(A000079(n)-A384176(n))`
-/

namespace A384175.P9758085865807559427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A000079 n - A384176 n).toNat

end

end A384175.P9758085865807559427

/-!
# A384176: Number of subsets of {1..n} without all distinct lengths of maximal runs (increasing by 1).

The programs for A384176, there is no canonical definition to state claims against.
-/

/-! ## A384176.P10115395870214262844

`2^n-A384175(n)`
-/

namespace A384176.P10115395870214262844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A384175 n

end

end A384176.P10115395870214262844

/-! ## A384176.P13714924841336321356

`abs(A000079(n)-A384175(n))`
-/

namespace A384176.P13714924841336321356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000079 n - A384175 n|

end

end A384176.P13714924841336321356

/-! ## A384176.P7337704320453912696

`A000051(n)-(A384175(n)+1)`
-/

namespace A384176.P7337704320453912696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n - (A384175 n + 1)

end

end A384176.P7337704320453912696

/-! ## A384176.P1833239946916270356

`A000225(n)-A384175(n)+1`
-/

namespace A384176.P1833239946916270356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n - A384175 n + 1

end

end A384176.P1833239946916270356

/-! ## A384176.P8628370338087769042

`abs(A016116(2*n+1)-A384175(n))`
-/

namespace A384176.P8628370338087769042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A016116 (2 * n + 1) - A384175 n|

end

end A384176.P8628370338087769042

/-!
# A384177: Number of subsets of {1..n} with all distinct lengths of maximal anti-runs (increasing by more than 1).

The programs for A384177, there is no canonical definition to state claims against.
-/

/-! ## A384177.P11877552286918390161

`A321126(A289781(n)-A163511(n))`
-/

namespace A384177.P11877552286918390161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321126 (A289781 n - A163511 n).toNat

end

end A384177.P11877552286918390161

/-! ## A384177.P17352194825496184190

`A003056(A117537(n)+A028243(n+1))`
-/

namespace A384177.P17352194825496184190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A117537 n + A028243 (n + 1)).toNat

end

end A384177.P17352194825496184190

/-! ## A384177.P1548463317658947280

`A227551(A193356(3*n+1))+A185178(n+3)`
-/

namespace A384177.P1548463317658947280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227551 (A193356 (3 * n + 1)).toNat + A185178 (n + 3)

end

end A384177.P1548463317658947280

/-!
# A384179: Number of ways to choose strict integer partitions of each conjugate prime index of n.

The programs for A384179, there is no canonical definition to state claims against.
-/

/-! ## A384179.P14083246758803578727

`A357982(A322865(1+n))`
-/

namespace A384179.P14083246758803578727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357982 (A322865 (1 + n)).toNat

end

end A384179.P14083246758803578727

/-! ## A384179.P16155671392319074148

`A259200(A001222(n+1))*A259200(A087436(n+1))`
-/

namespace A384179.P16155671392319074148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259200 ((A001222 (n + 1)).toNat + 18) * A259200 ((A087436 (n + 1)).toNat + 18)

end

end A384179.P16155671392319074148

/-! ## A384179.P16042815703532201187

`A323903(A347043(n+1)%A124786(n+1))`
-/

namespace A384179.P16042815703532201187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323903 (Int.tmod (A347043 (n + 1)) (A124786 (n + 1))).toNat

end

end A384179.P16042815703532201187

/-! ## A384179.P17675140445676502100

`A368216(A331188(n+1))`
-/

namespace A384179.P17675140445676502100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368216 (A331188 (n + 1)).toNat

end

end A384179.P17675140445676502100

/-! ## A384179.P5186270005241925435

`A046951(lcm(A331188(n+1), A367417(n+1)))`
-/

namespace A384179.P5186270005241925435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (Int.lcm (A331188 (n + 1)) (A367417 (n + 1)))

end

end A384179.P5186270005241925435

/-!
# A384180: Irregular triangle read by rows where row n lists the Heinz numbers of all uniform (equal multiplicities) and normal (covering an initial interval) multisets of length n.

The programs for A384180, there is no canonical definition to state claims against.
-/

/-! ## A384180.P463581987829499620

`A057335(A272919(n+1))`
-/

namespace A384180.P463581987829499620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057335 (A272919 (n + 1)).toNat

end

end A384180.P463581987829499620

/-! ## A384180.P9338666149639843505

`A036035(eq[1, A103921(n)])`
-/

namespace A384180.P9338666149639843505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036035 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A384180.P9338666149639843505

/-! ## A384180.P10512825302381947812

`A063008(eq[1, A115623(n)])`
-/

namespace A384180.P10512825302381947812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115623 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063008 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A384180.P10512825302381947812

/-! ## A384180.P12041759779623934620

`A057335(floor(A064896(n+2)/2))`
-/

namespace A384180.P12041759779623934620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057335 ⌊(A064896 (n + 2) : ℚ) / 2⌋.toNat

end

end A384180.P12041759779623934620

/-! ## A384180.P11308320315733420827

`A334031(floor(A064896(n+2)/2))`
-/

namespace A384180.P11308320315733420827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334031 ⌊(A064896 (n + 2) : ℚ) / 2⌋.toNat

end

end A384180.P11308320315733420827

/-!
# A384181: Primes p such that k! + p or |k! - p| is composite for all k >= 0.

The programs for A384181, there is no canonical definition to state claims against.
-/

/-! ## A384181.P17016261839036680091

`A090934(A062947(2*(n+2))+n)`
-/

namespace A384181.P17016261839036680091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090934 (A062947 (2 * (n + 2)) + (n : ℤ)).toNat

end

end A384181.P17016261839036680091

/-!
# A384186: Number of permutations of 1, 2,..., n with exactly one rising or falling succession, namely (n-1)n or n(n-1).

The programs for A384186, there is no canonical definition to state claims against.
-/

/-! ## A384186.P2091484019532955253

`a(n-2)+2*(n-1)*A002464(n-1)+2*A383857(n-1)` with `a(0)=0, a(1)=2`
-/

namespace A384186.P2091484019532955253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  a (n - 2) + 2 * ((n : ℤ) - 1) * A002464 (n - 1) + 2 * A383857 (n - 1)

end

end A384186.P2091484019532955253

/-! ## A384186.P6060847625904877076

`2*(∑[A002464(n)]-1)`
-/

namespace A384186.P6060847625904877076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002464 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A384186.P6060847625904877076

/-! ## A384186.P1292854967164352489

`A086852(n+1)-A383857(n+1)`
-/

namespace A384186.P1292854967164352489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086852 (n + 1) - A383857 (n + 1)

end

end A384186.P1292854967164352489

/-! ## A384186.P14953936099319305444

`2*(∑[A398328(A002620(n+1))]-1)`
-/

namespace A384186.P14953936099319305444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398328 (A002620 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A384186.P14953936099319305444

/-! ## A384186.P13217556703799956673

`A187333(∑[A002464(n)])`
-/

namespace A384186.P13217556703799956673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002464 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187333 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A384186.P13217556703799956673

/-!
# A384189: Numbers whose number of zeros in their binary representation is not equal to 1.

The programs for A384189, the canonical program `A384189.P11228189298359388274` is in `Seq.B004.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A384189 has offset 1).

The definition of A384189 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A384189.P11518840616734264602

`lt[(2^val(n+1, 2))%(n+1), 2*a(floor((n+1)/2)-1)+1-(n+1)%2]` with `a(0)=0`
-/

namespace A384189.P11518840616734264602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.valuation (n + 1) 2 % (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  2 * f2 (⌊(n + 1 : ℚ) / 2⌋ - 1).toNat + 1 - (((n + 1) % 2 : ℕ) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A384189.P11518840616734264602

namespace A384189

/-- `lt[(2^val(n+1, 2))%(n+1), 2*a(floor((n+1)/2)-1)+1-(n+1)%2]` -/
def P11518840616734264602.Spec : Prop :=
  ∀ n, (P11518840616734264602.a n : ℤ) = A384189 (n + 1)

end A384189

/-! ## A384189.P11228189298359388274

`comp[A030130(n+1)]`

The canonical program, it is in `Seq.B004.C004`.
-/

namespace A384189

/-- `comp[A030130(n+1)]` -/
def P11228189298359388274.Spec : Prop :=
  ∀ n, (P11228189298359388274.a n : ℤ) = A384189 (n + 1)

theorem P11228189298359388274.correct : P11228189298359388274.Spec := by
  intro n
  simp only [A384189, Nat.add_sub_cancel]

end A384189

/-! ## A384189.P16771625819812825077

`comp[record[A341522(n)-1]]+1`
-/

namespace A384189.P16771625819812825077
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341522 n - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A384189.P16771625819812825077

namespace A384189

/-- `comp[record[A341522(n)-1]]+1` -/
def P16771625819812825077.Spec : Prop :=
  ∀ n, (P16771625819812825077.a n : ℤ) = A384189 (n + 1)

end A384189

/-! ## A384189.P15347791966180029901

`comp[A164874(n+1)-1]+1`
-/

namespace A384189.P15347791966180029901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164874 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A384189.P15347791966180029901

namespace A384189

/-- `comp[A164874(n+1)-1]+1` -/
def P15347791966180029901.Spec : Prop :=
  ∀ n, (P15347791966180029901.a n : ℤ) = A384189 (n + 1)

end A384189

/-! ## A384189.P17298443581584313711

`comp[A175332(n+1)-2]+1`
-/

namespace A384189.P17298443581584313711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175332 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A384189.P17298443581584313711

namespace A384189

/-- `comp[A175332(n+1)-2]+1` -/
def P17298443581584313711.Spec : Prop :=
  ∀ n, (P17298443581584313711.a n : ℤ) = A384189 (n + 1)

end A384189

/-! ## A384189.P609869712272080810

`comp[eq[2, A124758(n+1)]]+1`
-/

namespace A384189.P609869712272080810
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124758 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1

end

end A384189.P609869712272080810

namespace A384189

/-- `comp[eq[2, A124758(n+1)]]+1` -/
def P609869712272080810.Spec : Prop :=
  ∀ n, (P609869712272080810.a n : ℤ) = A384189 (n + 1)

end A384189

/-! ## A384189.P10513680449729243243

`comp[floor((A190620(n+1)-2)/4)]`
-/

namespace A384189.P10513680449729243243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A190620 (n + 1) - 2 : ℚ) / 4⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A384189.P10513680449729243243

namespace A384189

/-- `comp[floor((A190620(n+1)-2)/4)]` -/
def P10513680449729243243.Spec : Prop :=
  ∀ n, (P10513680449729243243.a n : ℤ) = A384189 (n + 1)

end A384189

/-! ## A384189.P12714765996057468328

`lt[a(floor(n/2))*2, A319407(n+1)]` with `a(0)=3`
-/

namespace A384189.P12714765996057468328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f1 =>
  f1 ⌊(n : ℚ) / 2⌋.toNat * 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319407 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A384189.P12714765996057468328

namespace A384189

/-- `lt[a(floor(n/2))*2, A319407(n+1)]` -/
def P12714765996057468328.Spec : Prop :=
  ∀ n, (P12714765996057468328.a n : ℤ) = A384189 (n + 1)

end A384189

/-! ## A384189.P7298161934735001921

`lt[A016825(n), A319407(n+1)]`
-/

namespace A384189.P7298161934735001921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319407 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A384189.P7298161934735001921

namespace A384189

/-- `lt[A016825(n), A319407(n+1)]` -/
def P7298161934735001921.Spec : Prop :=
  ∀ n, (P7298161934735001921.a n : ℤ) = A384189 (n + 1)

end A384189

/-! ## A384189.P7596142459792666103

`∪[A158582(n+1), A059010(n)]`
-/

namespace A384189.P7596142459792666103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158582 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059010 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A384189.P7596142459792666103

namespace A384189

/-- `∪[A158582(n+1), A059010(n)]` -/
def P7596142459792666103.Spec : Prop :=
  ∀ n, (P7596142459792666103.a n : ℤ) = A384189 (n + 1)

end A384189

/-! ## A384189.P7844069716895460934

`∪[A126646(n), A158582(n+1)]`
-/

namespace A384189.P7844069716895460934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158582 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A384189.P7844069716895460934

namespace A384189

/-- `∪[A126646(n), A158582(n+1)]` -/
def P7844069716895460934.Spec : Prop :=
  ∀ n, (P7844069716895460934.a n : ℤ) = A384189 (n + 1)

end A384189

/-! ## A384189.P10510279029937929291

`∪[A383666(n+1), A008574(n)]`
-/

namespace A384189.P10510279029937929291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383666 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A384189.P10510279029937929291

namespace A384189

/-- `∪[A383666(n+1), A008574(n)]` -/
def P10510279029937929291.Spec : Prop :=
  ∀ n, (P10510279029937929291.a n : ℤ) = A384189 (n + 1)

end A384189

/-! ## A384189.P5636413792944736005

`∪[A311130(n), A383666(n+1)]`
-/

namespace A384189.P5636413792944736005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311130 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383666 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A384189.P5636413792944736005

namespace A384189

/-- `∪[A311130(n), A383666(n+1)]` -/
def P5636413792944736005.Spec : Prop :=
  ∀ n, (P5636413792944736005.a n : ℤ) = A384189 (n + 1)

end A384189

/-! ## A384189.P16630654194443144251

`∪[A311356(n), A383666(n+1)]`
-/

namespace A384189.P16630654194443144251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311356 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383666 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A384189.P16630654194443144251

namespace A384189

/-- `∪[A311356(n), A383666(n+1)]` -/
def P16630654194443144251.Spec : Prop :=
  ∀ n, (P16630654194443144251.a n : ℤ) = A384189 (n + 1)

end A384189

/-! ## A384189.P2495338516769868478

`∪[A043722(n+1), A158582(n+1)]`
-/

namespace A384189.P2495338516769868478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043722 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158582 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A384189.P2495338516769868478

namespace A384189

/-- `∪[A043722(n+1), A158582(n+1)]` -/
def P2495338516769868478.Spec : Prop :=
  ∀ n, (P2495338516769868478.a n : ℤ) = A384189 (n + 1)

end A384189

/-! ## A384189.P12661073154620295530

`∪[A043725(n+1), A158582(n+1)]`
-/

namespace A384189.P12661073154620295530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043725 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158582 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A384189.P12661073154620295530

namespace A384189

/-- `∪[A043725(n+1), A158582(n+1)]` -/
def P12661073154620295530.Spec : Prop :=
  ∀ n, (P12661073154620295530.a n : ℤ) = A384189 (n + 1)

end A384189

/-! ## A384189.P4885494162380977636

`∪[A043729(n+1), A158582(n+1)]`
-/

namespace A384189.P4885494162380977636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043729 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158582 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A384189.P4885494162380977636

namespace A384189

/-- `∪[A043729(n+1), A158582(n+1)]` -/
def P4885494162380977636.Spec : Prop :=
  ∀ n, (P4885494162380977636.a n : ℤ) = A384189 (n + 1)

end A384189

/-! ## A384189.P18082161898832287358

`∪[A043734(n+1), A158582(n+1)]`
-/

namespace A384189.P18082161898832287358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043734 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158582 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A384189.P18082161898832287358

namespace A384189

/-- `∪[A043734(n+1), A158582(n+1)]` -/
def P18082161898832287358.Spec : Prop :=
  ∀ n, (P18082161898832287358.a n : ℤ) = A384189 (n + 1)

end A384189

/-! ## A384189.P5827668705150227320

`∪[A043740(n+1), A158582(n+1)]`
-/

namespace A384189.P5827668705150227320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043740 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158582 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A384189.P5827668705150227320

namespace A384189

/-- `∪[A043740(n+1), A158582(n+1)]` -/
def P5827668705150227320.Spec : Prop :=
  ∀ n, (P5827668705150227320.a n : ℤ) = A384189 (n + 1)

end A384189

/-! ## A384189.P1576865912791831636

`∪[A043747(n+1), A158582(n+1)]`
-/

namespace A384189.P1576865912791831636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043747 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158582 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A384189.P1576865912791831636

namespace A384189

/-- `∪[A043747(n+1), A158582(n+1)]` -/
def P1576865912791831636.Spec : Prop :=
  ∀ n, (P1576865912791831636.a n : ℤ) = A384189 (n + 1)

end A384189

/-!
# A384191: Unique increasing sequence (a(n)) whose complement, (b(n)), satisfies b(n) = a(a(n))+3.

The programs for A384191, there is no canonical definition to state claims against.
-/

/-! ## A384191.P9806401136651279188

`fp[n-a(a(n-3))]` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A384191.P9806401136651279188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n f1 =>
  (n : ℤ) - f1 (f1 (n - 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f1 j) 0

end

end A384191.P9806401136651279188

/-! ## A384191.P7370637646141637869

`comp[A384192(n+1)-1]+1`
-/

namespace A384191.P7370637646141637869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384192 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A384191.P7370637646141637869

/-! ## A384191.P16397213594586756846

`comp[A384192(A028310(n))%(4^(n+1))]`
-/

namespace A384191.P16397213594586756846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A384192 (A028310 n).toNat) (4 ^ (n + 1) : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A384191.P16397213594586756846

/-! ## A384191.P15307318781014504282

`eq[char[A384192(n+1)], A151933(n)]`
-/

namespace A384191.P15307318781014504282
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384192 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A384191.P15307318781014504282

/-! ## A384191.P6598474019648801462

`∑[A124778(A360005(2*n+5))²]`
-/

namespace A384191.P6598474019648801462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124778 (A360005 (2 * n + 5)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A384191.P6598474019648801462

/-!
# A384192: Complement of A384191.

The programs for A384192, there is no canonical definition to state claims against.
-/

/-! ## A384192.P11029091131009935145

`A004482(A187579(1+n))`
-/

namespace A384192.P11029091131009935145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004482 (A187579 (1 + n)).toNat

end

end A384192.P11029091131009935145

/-! ## A384192.P7932169101938702954

`A187579(n+1)+A061347(n+1)`
-/

namespace A384192.P7932169101938702954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187579 (n + 1) + A061347 (n + 1)

end

end A384192.P7932169101938702954

/-! ## A384192.P11504076508882113934

`A384191(A384191(n+1))+3`
-/

namespace A384192.P11504076508882113934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384191 (A384191 (n + 1)).toNat + 3

end

end A384192.P11504076508882113934

/-! ## A384192.P11487140632444675706

`comp[A384191(n+1)-1]+1`
-/

namespace A384192.P11487140632444675706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384191 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A384192.P11487140632444675706

/-!
# A384195: a(n) = tau(n+1) - tau(n-1), where tau(n) = A000005(n), the number of divisors of n.

The programs for A384195, the canonical program `A384195.P12788916049746499615` is in `Seq.B004.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A384195 has offset 2).

The definition of A384195 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(n+3)-A000005(n+1)` (program `A384195.P12788916049746499615`, by `A384195.P12788916049746499615.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A384195.P12788916049746499615

`A000005(n+3)-A000005(n+1)`

The canonical program, it is in `Seq.B004.C004`.
-/

namespace A384195

/-- `A000005(n+3)-A000005(n+1)` -/
def P12788916049746499615.Spec : Prop :=
  ∀ n, P12788916049746499615.a n = A384195 (n + 2)

theorem P12788916049746499615.correct : P12788916049746499615.Spec := by
  intro n
  simp only [A384195, Nat.add_sub_cancel]

end A384195

/-! ## A384195.P6036782758547166301

`Δ[A092405(1+n)]`
-/

namespace A384195.P6036782758547166301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092405 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A384195.P6036782758547166301

namespace A384195

/-- `Δ[A092405(1+n)]` -/
def P6036782758547166301.Spec : Prop :=
  ∀ n, P6036782758547166301.a n = A384195 (n + 2)

end A384195

/-! ## A384195.P14873313305271006552

`A092405(n+2)-A092405(n+1)`
-/

namespace A384195.P14873313305271006552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092405 (n + 2) - A092405 (n + 1)

end

end A384195.P14873313305271006552

namespace A384195

/-- `A092405(n+2)-A092405(n+1)` -/
def P14873313305271006552.Spec : Prop :=
  ∀ n, P14873313305271006552.a n = A384195 (n + 2)

theorem P14873313305271006552.correct : P14873313305271006552.Spec := by
  intro n
  simp only [A384195, Nat.add_sub_cancel, A384195.P14873313305271006552.a, A384195.P12788916049746499615.a, A000005, A000005.P16091521709108585461.a, A092405, A092405.P13454232516479669845.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A051731, A051731.P11318043630102858095.a, A000007, A000007.P6599383543502402472.a, A048158, A048158.P1757030368331788429.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A384195

/-! ## A384195.P7631997901792323076

`A189827(n+2)-A062011(n+1)`
-/

namespace A384195.P7631997901792323076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189827 (n + 2) - A062011 (n + 1)

end

end A384195.P7631997901792323076

namespace A384195

/-- `A189827(n+2)-A062011(n+1)` -/
def P7631997901792323076.Spec : Prop :=
  ∀ n, P7631997901792323076.a n = A384195 (n + 2)

theorem P7631997901792323076.correct : P7631997901792323076.Spec := by
  intro n
  simp only [A384195, Nat.add_sub_cancel, A384195.P7631997901792323076.a, A384195.P12788916049746499615.a, A000005, A000005.P16091521709108585461.a, A062011, A062011.P17525320077853469406.a, A189827, A189827.P11786162763296381781.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A051950, A051950.P1558606958145203364.a, A092405, A092405.P13454232516479669845.a, A051731, A051731.P11318043630102858095.a, A000007, A000007.P6599383543502402472.a, A048158, A048158.P1757030368331788429.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A384195

/-! ## A384195.P3043631435299232669

`A051950(n+2)+A051950(n+3)`
-/

namespace A384195.P3043631435299232669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051950 (n + 2) + A051950 (n + 3)

end

end A384195.P3043631435299232669

namespace A384195

/-- `A051950(n+2)+A051950(n+3)` -/
def P3043631435299232669.Spec : Prop :=
  ∀ n, P3043631435299232669.a n = A384195 (n + 2)

theorem P3043631435299232669.correct : P3043631435299232669.Spec := by
  intro n
  simp only [A384195, Nat.add_sub_cancel, A384195.P3043631435299232669.a, A384195.P12788916049746499615.a, A000005, A000005.P16091521709108585461.a, A051950, A051950.P1558606958145203364.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A051731, A051731.P11318043630102858095.a, A000007, A000007.P6599383543502402472.a, A048158, A048158.P1757030368331788429.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A384195

/-! ## A384195.P10125069572838144409

`Δ[A343005(2+n)]`
-/

namespace A384195.P10125069572838144409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343005 (2 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A384195.P10125069572838144409

namespace A384195

/-- `Δ[A343005(2+n)]` -/
def P10125069572838144409.Spec : Prop :=
  ∀ n, P10125069572838144409.a n = A384195 (n + 2)

end A384195

/-! ## A384195.P18028257028298520013

`1-Δ[A131187(n+1)]`
-/

namespace A384195.P18028257028298520013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131187 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n)

end

end A384195.P18028257028298520013

namespace A384195

/-- `1-Δ[A131187(n+1)]` -/
def P18028257028298520013.Spec : Prop :=
  ∀ n, P18028257028298520013.a n = A384195 (n + 2)

theorem P18028257028298520013.correct : P18028257028298520013.Spec := by
  intro n
  simp only [A384195, Nat.add_sub_cancel, A384195.P18028257028298520013.f1, A384195.P18028257028298520013.a, A384195.P12788916049746499615.a, A000005, A000005.P16091521709108585461.a, A131187, A131187.P4579191634371129488.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A051731, A051731.P11318043630102858095.a, A000007, A000007.P6599383543502402472.a, A048158, A048158.P1757030368331788429.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A384195

/-! ## A384195.P8995814547087120240

`Δ[A092338(2+n)]`
-/

namespace A384195.P8995814547087120240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092338 (2 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A384195.P8995814547087120240

namespace A384195

/-- `Δ[A092338(2+n)]` -/
def P8995814547087120240.Spec : Prop :=
  ∀ n, P8995814547087120240.a n = A384195 (n + 2)

end A384195

/-! ## A384195.P8080119618522573334

`Δ[A274010(n+2)]`
-/

namespace A384195.P8080119618522573334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274010 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A384195.P8080119618522573334

namespace A384195

/-- `Δ[A274010(n+2)]` -/
def P8080119618522573334.Spec : Prop :=
  ∀ n, P8080119618522573334.a n = A384195 (n + 2)

end A384195

/-! ## A384195.P4407660275773069763

`A325765(n+2)-A032741(n+1)`
-/

namespace A384195.P4407660275773069763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325765 (n + 2) - A032741 (n + 1)

end

end A384195.P4407660275773069763

namespace A384195

/-- `A325765(n+2)-A032741(n+1)` -/
def P4407660275773069763.Spec : Prop :=
  ∀ n, P4407660275773069763.a n = A384195 (n + 2)

end A384195

/-! ## A384195.P17030652460716679902

`A378216(n+1)+A070824(n+3)`
-/

namespace A384195.P17030652460716679902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378216 (n + 1) + A070824 (n + 3)

end

end A384195.P17030652460716679902

namespace A384195

/-- `A378216(n+1)+A070824(n+3)` -/
def P17030652460716679902.Spec : Prop :=
  ∀ n, P17030652460716679902.a n = A384195 (n + 2)

end A384195

/-! ## A384195.P14684624240503161374

`A023645(n+3)-A023645(n+1)`
-/

namespace A384195.P14684624240503161374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023645 (n + 3) - A023645 (n + 1)

end

end A384195.P14684624240503161374

namespace A384195

/-- `A023645(n+3)-A023645(n+1)` -/
def P14684624240503161374.Spec : Prop :=
  ∀ n, P14684624240503161374.a n = A384195 (n + 2)

end A384195

/-! ## A384195.P6197204746905511341

`A037852(n+3)-A037852(n+1)`
-/

namespace A384195.P6197204746905511341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037852 (n + 3) - A037852 (n + 1)

end

end A384195.P6197204746905511341

namespace A384195

/-- `A037852(n+3)-A037852(n+1)` -/
def P6197204746905511341.Spec : Prop :=
  ∀ n, P6197204746905511341.a n = A384195 (n + 2)

end A384195

/-! ## A384195.P12329349446957192161

`A059292(n+1)-A049820(n+3)`
-/

namespace A384195.P12329349446957192161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059292 (n + 1) - A049820 (n + 3)

end

end A384195.P12329349446957192161

namespace A384195

/-- `A059292(n+1)-A049820(n+3)` -/
def P12329349446957192161.Spec : Prop :=
  ∀ n, P12329349446957192161.a n = A384195 (n + 2)

theorem P12329349446957192161.correct : P12329349446957192161.Spec := by
  intro n
  simp only [A384195, Nat.add_sub_cancel, A384195.P12329349446957192161.a, A384195.P12788916049746499615.a, A000005, A000005.P16091521709108585461.a, A049820, A049820.P9428372222244335888.a, A059292, A059292.P13391037705740320393.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A051731, A051731.P11318043630102858095.a, A000007, A000007.P6599383543502402472.a, A048158, A048158.P1757030368331788429.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A384195

/-! ## A384195.P5856542455896423326

`A062558(n+3)-A062558(n+1)`
-/

namespace A384195.P5856542455896423326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062558 (n + 3) - A062558 (n + 1)

end

end A384195.P5856542455896423326

namespace A384195

/-- `A062558(n+3)-A062558(n+1)` -/
def P5856542455896423326.Spec : Prop :=
  ∀ n, P5856542455896423326.a n = A384195 (n + 2)

end A384195

/-! ## A384195.P12617170885622569946

`A076984(n+3)-A076984(n+1)`
-/

namespace A384195.P12617170885622569946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076984 (n + 3) - A076984 (n + 1)

end

end A384195.P12617170885622569946

namespace A384195

/-- `A076984(n+3)-A076984(n+1)` -/
def P12617170885622569946.Spec : Prop :=
  ∀ n, P12617170885622569946.a n = A384195 (n + 2)

end A384195

/-! ## A384195.P11924643053313545699

`A212356(n+3)-A334954(n+1)`
-/

namespace A384195.P11924643053313545699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212356 (n + 3) - A334954 (n + 1)

end

end A384195.P11924643053313545699

namespace A384195

/-- `A212356(n+3)-A334954(n+1)` -/
def P11924643053313545699.Spec : Prop :=
  ∀ n, P11924643053313545699.a n = A384195 (n + 2)

end A384195

/-! ## A384195.P9643061652811301858

`A334954(n+3)-A334954(n+1)`
-/

namespace A384195.P9643061652811301858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334954 (n + 3) - A334954 (n + 1)

end

end A384195.P9643061652811301858

namespace A384195

/-- `A334954(n+3)-A334954(n+1)` -/
def P9643061652811301858.Spec : Prop :=
  ∀ n, P9643061652811301858.a n = A384195 (n + 2)

end A384195

/-! ## A384195.P62359562284412379

`A341062(n+2)+A341062(n+3)`
-/

namespace A384195.P62359562284412379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341062 (n + 2) + A341062 (n + 3)

end

end A384195.P62359562284412379

namespace A384195

/-- `A341062(n+2)+A341062(n+3)` -/
def P62359562284412379.Spec : Prop :=
  ∀ n, P62359562284412379.a n = A384195 (n + 2)

end A384195

/-! ## A384195.P10699181949650665304

`A373925(n+3)-A373925(n+1)`
-/

namespace A384195.P10699181949650665304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373925 (n + 3) - A373925 (n + 1)

end

end A384195.P10699181949650665304

namespace A384195

/-- `A373925(n+3)-A373925(n+1)` -/
def P10699181949650665304.Spec : Prop :=
  ∀ n, P10699181949650665304.a n = A384195 (n + 2)

theorem P10699181949650665304.correct : P10699181949650665304.Spec := by
  intro n
  simp only [A384195, Nat.add_sub_cancel, A384195.P10699181949650665304.a, A384195.P12788916049746499615.a, A000005, A000005.P16091521709108585461.a, A373925, A373925.P819866508961225466.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A051731, A051731.P11318043630102858095.a, A000007, A000007.P6599383543502402472.a, A048158, A048158.P1757030368331788429.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A384195

/-!
# A384197: The Barrett reducer reciprocal mod n.

The programs for A384197, the canonical program `A384197.P2193178931822294470` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A384197 has offset 1).

The definition of A384197 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A384197.P2193178931822294470

`floor(4^ceil(log2(n+2))/(n+1))`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A384197

/-- `floor(4^ceil(log2(n+2))/(n+1))` -/
def P2193178931822294470.Spec : Prop :=
  ∀ n, P2193178931822294470.a n = A384197 (n + 1)

theorem P2193178931822294470.correct : P2193178931822294470.Spec := by
  intro n
  simp only [A384197, Nat.add_sub_cancel]

end A384197

/-!
# A384198: a(n) = 3^(n-3)*(binomial(n,3) + 3*binomial(n,2) + 9*n + 27).

The programs for A384198, the canonical program `A384198.P14588015488054928887` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A384198 has offset 0).

The definition of A384198 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A384198.P14588015488054928887

`3^(n-3)*(C(n, 3)+3*C(n, 2)+9*n+27)`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A384198

/-- `3^(n-3)*(C(n, 3)+3*C(n, 2)+9*n+27)` -/
def P14588015488054928887.Spec : Prop :=
  ∀ n, P14588015488054928887.a n = (A384198 n : ℚ)

end A384198

/-! ## A384198.P10313034319995105387

`∑{#}[n, C(n, #)*A134396(#)]`
-/

namespace A384198.P10313034319995105387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A134396 k

end

end A384198.P10313034319995105387

namespace A384198

/-- `∑{#}[n, C(n, #)*A134396(#)]` -/
def P10313034319995105387.Spec : Prop :=
  ∀ n, P10313034319995105387.a n = A384198 n

end A384198

/-!
# A384199: Expansion of e.g.f. log(1 + x)/(1 - 3*x).

The programs for A384199, the canonical program `A384199.P14033144826585406245` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A384199 has offset 0).

The definition of A384199 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A384199.P14033144826585406245

`3*n*a(n-1)-(-1)^n*(n-1)!` with `a(0)=0`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A384199

/-- `3*n*a(n-1)-(-1)^n*(n-1)!` -/
def P14033144826585406245.Spec : Prop :=
  ∀ n, P14033144826585406245.a n = A384199 n

theorem P14033144826585406245.correct : P14033144826585406245.Spec := by
  intro n
  simp only [A384199]

end A384199

/-! ## A384199.P447672644172255212

`(2*n+1)*a(n-1)+3*(n-1)²*a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A384199.P447672644172255212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (2 * n + 1 : ℤ) * a (n - 1) + 3 * ((n : ℤ) - 1) ^ 2 * a (n - 2)

end

end A384199.P447672644172255212

namespace A384199

/-- `(2*n+1)*a(n-1)+3*(n-1)²*a(n-2)` -/
def P447672644172255212.Spec : Prop :=
  ∀ n, P447672644172255212.a n = A384199 n

end A384199

