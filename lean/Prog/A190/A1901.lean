import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
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
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
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
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
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
import Seq.B012.C000
import Seq.B013.C000
import Seq.B014.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C008
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
# A190100: T(n,k) = number of 1:2:sqrt(5) proportioned triangles on a (n+1) X (k+1) grid.

The programs for A190100, there is no canonical definition to state claims against.
-/

/-! ## A190100.P3581202258494266011

`A118759(4*A335678(n+1))`
-/

namespace A190100.P3581202258494266011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (4 * A335678 (n + 1)).toNat

end

end A190100.P3581202258494266011

/-! ## A190100.P3711293515512182864

`A000196((4*A335678(n+1))²)`
-/

namespace A190100.P3711293515512182864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 ((4 * A335678 (n + 1)) ^ 2).toNat

end

end A190100.P3711293515512182864

/-! ## A190100.P5306091243061993922

`(4*A335678(n+1))%A227534(n+1)`
-/

namespace A190100.P5306091243061993922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (4 * A335678 (n + 1)) (A227534 (n + 1))

end

end A190100.P5306091243061993922

/-! ## A190100.P13331372191432002930

`A102127(A091536(n))*A335678(n+1)`
-/

namespace A190100.P13331372191432002930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102127 (A091536 n).toNat * A335678 (n + 1)

end

end A190100.P13331372191432002930

/-! ## A190100.P2028183523190906109

`A103947(A181836(n))*A335678(n+1)`
-/

namespace A190100.P2028183523190906109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103947 (A181836 n).toNat * A335678 (n + 1)

end

end A190100.P2028183523190906109

/-!
# A190101: Number of transpose partition pairs of order n whose number of odd parts differ by numbers of the form 4*k + 2.

The programs for A190101, there is no canonical definition to state claims against.
-/

/-! ## A190101.P246520811768945955

`(A097566(n)-A085261(n))/2`
-/

namespace A190101.P246520811768945955
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097566 n - A085261 n : ℚ) / 2

end

end A190101.P246520811768945955

/-! ## A190101.P17940421459815171760

`(A000041(n)-A097566(n))/2`
-/

namespace A190101.P17940421459815171760
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000041 n - A097566 n : ℚ) / 2

end

end A190101.P17940421459815171760

/-! ## A190101.P4677217913322798381

`(A000041(n)-A085261(n))/4`
-/

namespace A190101.P4677217913322798381
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000041 n - A085261 n : ℚ) / 4

end

end A190101.P4677217913322798381

/-! ## A190101.P10526948187795459674

`A014682(A097566(n)-A085261(n))`
-/

namespace A190101.P10526948187795459674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A097566 n - A085261 n).toNat

end

end A190101.P10526948187795459674

/-! ## A190101.P11747579983191043706

`A001281(A000041(n)-A097566(n))`
-/

namespace A190101.P11747579983191043706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A000041 n - A097566 n).toNat

end

end A190101.P11747579983191043706

/-!
# A190102: Number of 1:3:sqrt(10) proportioned triangles on a (n+1) X (n+1) grid.

The programs for A190102, there is no canonical definition to state claims against.
-/

/-! ## A190102.P16863319618732360301

`A190103(∑[4*n]+1)`
-/

namespace A190102.P16863319618732360301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190103 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A190102.P16863319618732360301

/-! ## A190102.P17345794204819867110

`lcm(2, A190103(A001844(n)))`
-/

namespace A190102.P17345794204819867110
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A190103 (A001844 n).toNat)

end

end A190102.P17345794204819867110

/-! ## A190102.P17556883072346955667

`A054977(n)*A190103(A001844(n))`
-/

namespace A190102.P17556883072346955667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A190103 (A001844 n).toNat

end

end A190102.P17556883072346955667

/-! ## A190102.P2268623465208265015

`A190103(A001844(n))%A134158(n)`
-/

namespace A190102.P2268623465208265015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A190103 (A001844 n).toNat) (A134158 n)

end

end A190102.P2268623465208265015

/-! ## A190102.P1117599879649698771

`and(A057428(n), A190103(A001844(n)))`
-/

namespace A190102.P1117599879649698771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057428 n) (A190103 (A001844 n).toNat)

end

end A190102.P1117599879649698771

/-! ## A190102.P933791694476974505

`A000108(C(2, n))*A190103(A001844(n))`
-/

namespace A190102.P933791694476974505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose 2 n) * A190103 (A001844 n).toNat

end

end A190102.P933791694476974505

/-! ## A190102.P17325094970353194742

`A190103(A001844(n))+A008683(4*(n+1))`
-/

namespace A190102.P17325094970353194742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190103 (A001844 n).toNat + A008683 (4 * (n + 1))

end

end A190102.P17325094970353194742

/-! ## A190102.P2532277937204039954

`A000040(n+1)%2*A190103(A001844(n))`
-/

namespace A190102.P2532277937204039954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 2 * A190103 (A001844 n).toNat

end

end A190102.P2532277937204039954

/-! ## A190102.P14324580839330163580

`gcd(13, A001222(n+1))*A190103(A001844(n))`
-/

namespace A190102.P14324580839330163580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 13 (A001222 (n + 1)) : ℤ) * A190103 (A001844 n).toNat

end

end A190102.P14324580839330163580

/-! ## A190102.P5649785044453784247

`A000040(n+2)%2+A190103(A001844(n))-1`
-/

namespace A190102.P5649785044453784247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 2)) 2 + (A190103 (A001844 n).toNat - 1)

end

end A190102.P5649785044453784247

/-!
# A190103: T(n,k) = number of 1:3:sqrt(10) proportioned triangles on a (n+1) X (k+1) grid.

The programs for A190103, there is no canonical definition to state claims against.
-/

/-! ## A190103.P5718256139155252594

`2*A318995(A208108(n+1)²)`
-/

namespace A190103.P5718256139155252594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A318995 (A208108 (n + 1) ^ 2).toNat

end

end A190103.P5718256139155252594

/-! ## A190103.P17099536773826342385

`A005843(A318995(A208108(n+1)²))`
-/

namespace A190103.P17099536773826342385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A318995 (A208108 (n + 1) ^ 2).toNat).toNat

end

end A190103.P17099536773826342385

/-!
# A190104: Let sopfr(k) = A001414(k) denote the sum of the prime factors of k with multiplicity. This sequence lists the numbers k such that if sopfr(k) = m and sopfr(m) = r, then k == r (mod m) with 0 < r < m.

The programs for A190104, there is no canonical definition to state claims against.
-/

/-! ## A190104.P8529160064005003327

`A274397(eq[A008292(n+1), A118953(2*n+1)]+1)`
-/

namespace A190104.P8529160064005003327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118953 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274397 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A190104.P8529160064005003327

/-!
# A190105: a(n) = (3*A002145(n) - 1)/4.

The programs for A190105, the canonical program `A190105.P11754340986500372395` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190105 has offset 1).

The definition of A190105 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002145, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A190105.P11754340986500372395

`(3*A002145(n+1)-1)/4`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A190105

/-- `(3*A002145(n+1)-1)/4` -/
def P11754340986500372395.Spec : Prop :=
  ∀ n, P11754340986500372395.a n = (A190105 (n + 1) : ℚ)

end A190105

/-! ## A190105.P46180559347063112

`3*A005099(n+1)-1`
-/

namespace A190105.P46180559347063112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A005099 (n + 1) - 1

end

end A190105.P46180559347063112

namespace A190105

/-- `3*A005099(n+1)-1` -/
def P46180559347063112.Spec : Prop :=
  ∀ n, P46180559347063112.a n = A190105 (n + 1)

end A190105

/-! ## A190105.P8577594428438782684

`3*A095278(n+1)+2`
-/

namespace A190105.P8577594428438782684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A095278 (n + 1) + 2

end

end A190105.P8577594428438782684

namespace A190105

/-- `3*A095278(n+1)+2` -/
def P8577594428438782684.Spec : Prop :=
  ∀ n, P8577594428438782684.a n = A190105 (n + 1)

end A190105

/-! ## A190105.P7984230067794707425

`3*A089986(n+1)+5`
-/

namespace A190105.P7984230067794707425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A089986 (n + 1) + 5

end

end A190105.P7984230067794707425

namespace A190105

/-- `3*A089986(n+1)+5` -/
def P7984230067794707425.Spec : Prop :=
  ∀ n, P7984230067794707425.a n = A190105 (n + 1)

end A190105

/-! ## A190105.P10156349635185060747

`3*A156287(n+1)-4`
-/

namespace A190105.P10156349635185060747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A156287 (n + 1) - 4

end

end A190105.P10156349635185060747

namespace A190105

/-- `3*A156287(n+1)-4` -/
def P10156349635185060747.Spec : Prop :=
  ∀ n, P10156349635185060747.a n = A190105 (n + 1)

end A190105

/-! ## A190105.P1301023492565405127

`A104635(n+1)+A005099(n+1)`
-/

namespace A190105.P1301023492565405127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104635 (n + 1) + A005099 (n + 1)

end

end A190105.P1301023492565405127

namespace A190105

/-- `A104635(n+1)+A005099(n+1)` -/
def P1301023492565405127.Spec : Prop :=
  ∀ n, P1301023492565405127.a n = A190105 (n + 1)

end A190105

/-! ## A190105.P8464252118570746612

`A090670(n+1)+A089986(n+1)`
-/

namespace A190105.P8464252118570746612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090670 (n + 1) + A089986 (n + 1)

end

end A190105.P8464252118570746612

namespace A190105

/-- `A090670(n+1)+A089986(n+1)` -/
def P8464252118570746612.Spec : Prop :=
  ∀ n, P8464252118570746612.a n = A190105 (n + 1)

end A190105

/-! ## A190105.P14349816406142975662

`A156287(n+1)+A087915(n+1)`
-/

namespace A190105.P14349816406142975662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156287 (n + 1) + A087915 (n + 1)

end

end A190105.P14349816406142975662

namespace A190105

/-- `A156287(n+1)+A087915(n+1)` -/
def P14349816406142975662.Spec : Prop :=
  ∀ n, P14349816406142975662.a n = A190105 (n + 1)

end A190105

/-! ## A190105.P13148014996334418632

`A002145(n+1)-A005099(n+1)`
-/

namespace A190105.P13148014996334418632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1) - A005099 (n + 1)

end

end A190105.P13148014996334418632

namespace A190105

/-- `A002145(n+1)-A005099(n+1)` -/
def P13148014996334418632.Spec : Prop :=
  ∀ n, P13148014996334418632.a n = A190105 (n + 1)

end A190105

/-! ## A190105.P2102741467036088990

`A090658(n+1)-A156287(n+1)`
-/

namespace A190105.P2102741467036088990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090658 (n + 1) - A156287 (n + 1)

end

end A190105.P2102741467036088990

namespace A190105

/-- `A090658(n+1)-A156287(n+1)` -/
def P2102741467036088990.Spec : Prop :=
  ∀ n, P2102741467036088990.a n = A190105 (n + 1)

end A190105

/-! ## A190105.P7810658165704866454

`A002145(n+1)-(A095278(n+1)+1)`
-/

namespace A190105.P7810658165704866454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1) - (A095278 (n + 1) + 1)

end

end A190105.P7810658165704866454

namespace A190105

/-- `A002145(n+1)-(A095278(n+1)+1)` -/
def P7810658165704866454.Spec : Prop :=
  ∀ n, P7810658165704866454.a n = A190105 (n + 1)

end A190105

/-! ## A190105.P1050386172290100919

`A002145(n+1)+1-A156287(n+1)`
-/

namespace A190105.P1050386172290100919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1) + (1 - A156287 (n + 1))

end

end A190105.P1050386172290100919

namespace A190105

/-- `A002145(n+1)+1-A156287(n+1)` -/
def P1050386172290100919.Spec : Prop :=
  ∀ n, P1050386172290100919.a n = A190105 (n + 1)

end A190105

/-! ## A190105.P6541591247182862132

`A002145(n+1)-(A089986(n+1)+2)`
-/

namespace A190105.P6541591247182862132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1) - (A089986 (n + 1) + 2)

end

end A190105.P6541591247182862132

namespace A190105

/-- `A002145(n+1)-(A089986(n+1)+2)` -/
def P6541591247182862132.Spec : Prop :=
  ∀ n, P6541591247182862132.a n = A190105 (n + 1)

end A190105

/-! ## A190105.P6388192060289517860

`(A104635(n+1)+A002145(n+1))/2`
-/

namespace A190105.P6388192060289517860
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104635 (n + 1) + A002145 (n + 1) : ℚ) / 2

end

end A190105.P6388192060289517860

namespace A190105

/-- `(A104635(n+1)+A002145(n+1))/2` -/
def P6388192060289517860.Spec : Prop :=
  ∀ n, P6388192060289517860.a n = (A190105 (n + 1) : ℚ)

end A190105

/-! ## A190105.P12653072607943582357

`A005099(n+1)+A095278(n+1)+A005099(n+1)`
-/

namespace A190105.P12653072607943582357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005099 (n + 1) + (A095278 (n + 1) + A005099 (n + 1))

end

end A190105.P12653072607943582357

namespace A190105

/-- `A005099(n+1)+A095278(n+1)+A005099(n+1)` -/
def P12653072607943582357.Spec : Prop :=
  ∀ n, P12653072607943582357.a n = A190105 (n + 1)

end A190105

/-! ## A190105.P10465691190310693574

`A005099(n+1)+A156287(n+1)+A089986(n+1)`
-/

namespace A190105.P10465691190310693574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005099 (n + 1) + (A156287 (n + 1) + A089986 (n + 1))

end

end A190105.P10465691190310693574

namespace A190105

/-- `A005099(n+1)+A156287(n+1)+A089986(n+1)` -/
def P10465691190310693574.Spec : Prop :=
  ∀ n, P10465691190310693574.a n = A190105 (n + 1)

end A190105

/-! ## A190105.P230488302755723111

`A095278(n+1)+A156287(n+1)+A095278(n+1)`
-/

namespace A190105.P230488302755723111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095278 (n + 1) + (A156287 (n + 1) + A095278 (n + 1))

end

end A190105.P230488302755723111

namespace A190105

/-- `A095278(n+1)+A156287(n+1)+A095278(n+1)` -/
def P230488302755723111.Spec : Prop :=
  ∀ n, P230488302755723111.a n = A190105 (n + 1)

end A190105

/-! ## A190105.P17881283775892915209

`A045326(n+2)-A005099(n+1)`
-/

namespace A190105.P17881283775892915209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 2) - A005099 (n + 1)

end

end A190105.P17881283775892915209

namespace A190105

/-- `A045326(n+2)-A005099(n+1)` -/
def P17881283775892915209.Spec : Prop :=
  ∀ n, P17881283775892915209.a n = A190105 (n + 1)

end A190105

/-! ## A190105.P4132563968188445980

`A014682((A002145(n+1)-1)/2)`
-/

namespace A190105.P4132563968188445980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (SequenceMachineLib.roundAway ((A002145 (n + 1) - 1 : ℚ) / 2)).toNat

end

end A190105.P4132563968188445980

namespace A190105

/-- `A014682((A002145(n+1)-1)/2)` -/
def P4132563968188445980.Spec : Prop :=
  ∀ n, P4132563968188445980.a n = A190105 (n + 1)

end A190105

/-! ## A190105.P3747391130494459599

`record[A000010(4*n+3)-n]`
-/

namespace A190105.P3747391130494459599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (4 * n + 3) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190105.P3747391130494459599

namespace A190105

/-- `record[A000010(4*n+3)-n]` -/
def P3747391130494459599.Spec : Prop :=
  ∀ n, P3747391130494459599.a n = A190105 (n + 1)

end A190105

/-!
# A190106: Numbers with prime factorization p^2*q^3*r^3 where p, q, and r are distinct primes.

The programs for A190106, there is no canonical definition to state claims against.
-/

/-! ## A190106.P14031237711734216546

`∩[A109399(n+1), A381314(n+1)]`
-/

namespace A190106.P14031237711734216546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109399 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381314 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190106.P14031237711734216546

/-!
# A190107: Numbers with prime factorization pqr^2s^4.

The programs for A190107, there is no canonical definition to state claims against.
-/

/-! ## A190107.P16011381782286852606

`filter[A111030(n), A359764(#)]`
-/

namespace A190107.P16011381782286852606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111030 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359764 (f1 j).toNat = 1) n)

end

end A190107.P16011381782286852606

/-! ## A190107.P1763425812042602485

`A036458(comp[A036490(n+1)-A036489(n)])`
-/

namespace A190107.P1763425812042602485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036490 (n + 1) - A036489 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036458 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A190107.P1763425812042602485

/-! ## A190107.P4078316137248587035

`filter[A111467(n+2), A353374(#)]`
-/

namespace A190107.P4078316137248587035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111467 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353374 (f1 j).toNat = 1) n)

end

end A190107.P4078316137248587035

/-!
# A190108: Numbers with prime factorization p*q*r^3*s^3 (where p, q, r, s are distinct primes).

The programs for A190108, there is no canonical definition to state claims against.
-/

/-! ## A190108.P1369322165737954983

`∩[A074853(n+1), A386801(n+1)]`
-/

namespace A190108.P1369322165737954983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074853 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386801 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190108.P1369322165737954983

/-! ## A190108.P11973038836091484019

`∩[A074853(n+1), A377845(n+1)]`
-/

namespace A190108.P11973038836091484019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074853 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377845 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190108.P11973038836091484019

/-! ## A190108.P3166361590689579879

`∩[A074853(n+1), A391968(n+1)]`
-/

namespace A190108.P3166361590689579879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074853 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391968 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190108.P3166361590689579879

/-! ## A190108.P16699929002242674071

`∩[A172443(n+1), A386801(n+1)]`
-/

namespace A190108.P16699929002242674071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172443 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386801 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190108.P16699929002242674071

/-! ## A190108.P763090712375637663

`∩[A046310(n+1), A074853(n+1)]`
-/

namespace A190108.P763090712375637663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046310 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074853 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190108.P763090712375637663

/-! ## A190108.P673476353979433503

`∩[A046310(n+1), A172443(n+1)]`
-/

namespace A190108.P673476353979433503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046310 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172443 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190108.P673476353979433503

/-! ## A190108.P12908039128176465763

`∩[A074853(n+1), A350375(n+1)]`
-/

namespace A190108.P12908039128176465763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074853 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350375 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190108.P12908039128176465763

/-! ## A190108.P18025243100384849384

`∩[A172443(n+1), A350375(n+1)]`
-/

namespace A190108.P18025243100384849384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172443 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350375 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190108.P18025243100384849384

/-! ## A190108.P4140187939422785769

`∩[A350375(n+1), A386801(n+1)]`
-/

namespace A190108.P4140187939422785769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386801 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190108.P4140187939422785769

/-! ## A190108.P6963505997028495870

`∩[A074853(n+1), A109399(n+1)]`
-/

namespace A190108.P6963505997028495870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074853 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109399 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190108.P6963505997028495870

/-! ## A190108.P6689354867994855201

`∩[A074853(n+1), A304369(n+1)]`
-/

namespace A190108.P6689354867994855201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074853 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304369 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190108.P6689354867994855201

/-! ## A190108.P13976912031999469901

`∩[A172443(n+1), A304369(n+1)]`
-/

namespace A190108.P13976912031999469901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172443 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304369 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190108.P13976912031999469901

/-!
# A190109: Numbers with prime factorization p*q^2*r^2*s^3 (where p, q, r, s are distinct primes).

The programs for A190109, there is no canonical definition to state claims against.
-/

/-! ## A190109.P5763255314731639304

`filter[A350416(n+1), A181183(#)]`
-/

namespace A190109.P5763255314731639304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350416 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A181183 (f1 j).toNat = 1) n)

end

end A190109.P5763255314731639304

/-!
# A190110: Numbers with prime factorization p*q*r*s*t^4 (where p, q, r, s, t are distinct primes).

The programs for A190110, there is no canonical definition to state claims against.
-/

/-! ## A190110.P10034372412305779649

`A190383(A187829(n+1))/2`
-/

namespace A190110.P10034372412305779649
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A190383 (A187829 (n + 1)).toNat : ℚ) / 2

end

end A190110.P10034372412305779649

/-! ## A190110.P159477160630449835

`A040012(A000079(n))*A046387(n+1)`
-/

namespace A190110.P159477160630449835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040012 (A000079 n).toNat * A046387 (n + 1)

end

end A190110.P159477160630449835

/-! ## A190110.P6599337446214890771

`A190383(n+1)/A000122(A017006(n))`
-/

namespace A190110.P6599337446214890771
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A190383 (n + 1) : ℚ) / (A000122 (A017006 n).toNat : ℚ)

end

end A190110.P6599337446214890771

/-! ## A190110.P1880519281830767626

`A190383(n+1)/A020639(A056451(n)+1)`
-/

namespace A190110.P1880519281830767626
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A190383 (n + 1) : ℚ) / (A020639 (A056451 n + 1).toNat : ℚ)

end

end A190110.P1880519281830767626

/-!
# A190111: Numbers with prime factorization p*q*r*s^2*t^3 (where p, q, r, s, t are distinct primes).

The programs for A190111, there is no canonical definition to state claims against.
-/

/-! ## A190111.P5437460694172610493

`A273943(∪[A190384(n+1), A190385(n+1)])`
-/

namespace A190111.P5437460694172610493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190385 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A190111.P5437460694172610493

/-!
# A190112: Number of 2:3:sqrt(13) proportioned triangles on a (n+1)X(n+1) grid.

The programs for A190112, there is no canonical definition to state claims against.
-/

/-! ## A190112.P9579507145564326225

`A190113(∑[4*n]+1)`
-/

namespace A190112.P9579507145564326225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190113 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A190112.P9579507145564326225

/-! ## A190112.P4845131712590324027

`lcm(2, A190113(A001844(n)))`
-/

namespace A190112.P4845131712590324027
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A190113 (A001844 n).toNat)

end

end A190112.P4845131712590324027

/-! ## A190112.P23184433837022657

`A190113(A001844(n))%A190089(n)`
-/

namespace A190112.P23184433837022657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A190113 (A001844 n).toNat) (A190089 n)

end

end A190112.P23184433837022657

/-! ## A190112.P12117206027690852606

`A010052(n²)*A190113(A001844(n))`
-/

namespace A190112.P12117206027690852606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (n ^ 2) * A190113 (A001844 n).toNat

end

end A190112.P12117206027690852606

/-! ## A190112.P7735228881898900868

`char[A069768(n)]*A190113(A001844(n))`
-/

namespace A190112.P7735228881898900868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069768 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A190113 (A001844 n).toNat

end

end A190112.P7735228881898900868

/-! ## A190112.P2937634250933701554

`char[A130956(n)]*A190113(A001844(n))`
-/

namespace A190112.P2937634250933701554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130956 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A190113 (A001844 n).toNat

end

end A190112.P2937634250933701554

/-! ## A190112.P6901999988999182930

`A190113(A001844(n))^A056594(4*n)`
-/

namespace A190112.P6901999988999182930
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A190113 (A001844 n).toNat : ℚ) ^ (A056594 (4 * n) : ℤ)

end

end A190112.P6901999988999182930

/-! ## A190112.P1011504568091213832

`A007318(C(2, n))*A190113(A001844(n))`
-/

namespace A190112.P1011504568091213832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A190113 (A001844 n).toNat

end

end A190112.P1011504568091213832

/-! ## A190112.P8064086918824500604

`A000040(n+1)%2*A190113(A001844(n))`
-/

namespace A190112.P8064086918824500604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 2 * A190113 (A001844 n).toNat

end

end A190112.P8064086918824500604

/-!
# A190113: T(n,k) = number of 2:3:sqrt(13) proportioned triangles on a (n+1) X (k+1) grid.

The programs for A190113, there is no canonical definition to state claims against.
-/

/-! ## A190113.P575580253897206113

`4*A004257(A331315(n))`
-/

namespace A190113.P575580253897206113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A004257 (A331315 n).toNat

end

end A190113.P575580253897206113

/-! ## A190113.P12592765256864236604

`4*A137813(A124976(n+1))`
-/

namespace A190113.P12592765256864236604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A137813 (A124976 (n + 1)).toNat

end

end A190113.P12592765256864236604

/-! ## A190113.P18019890950384960440

`A055941(A144403(n)²)`
-/

namespace A190113.P18019890950384960440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055941 (A144403 n ^ 2).toNat

end

end A190113.P18019890950384960440

/-! ## A190113.P15457868986697186516

`4*A117498(A254414(n))`
-/

namespace A190113.P15457868986697186516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A117498 (A254414 n).toNat

end

end A190113.P15457868986697186516

/-! ## A190113.P15051415746078686275

`A055941(A144403(n)^2)`
-/

namespace A190113.P15051415746078686275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055941 (A144403 n ^ 2).toNat

end

end A190113.P15051415746078686275

/-!
# A190114: Numbers with prime factorization p^2*q^2*r^5 where p, q, and r are distinct primes.

The programs for A190114, there is no canonical definition to state claims against.
-/

/-! ## A190114.P16855515924450736731

`∩[A182120(n+1), A195090(n+1)]`
-/

namespace A190114.P16855515924450736731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182120 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195090 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190114.P16855515924450736731

/-! ## A190114.P13781260179889406610

`∩[A046312(n+1), A182120(n+1)]`
-/

namespace A190114.P13781260179889406610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182120 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190114.P13781260179889406610

/-! ## A190114.P6536446330314032532

`filter[A392927(n+1), A369253(#)]`
-/

namespace A190114.P6536446330314032532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392927 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369253 (f1 j).toNat = 1) n)

end

end A190114.P6536446330314032532

/-!
# A190115: Numbers with prime factorization p^2*q^3*r^4 where p, q, and r are distinct primes.

The programs for A190115, there is no canonical definition to state claims against.
-/

/-! ## A190115.P1176620010683804587

`∩[A046312(n+1), A093770(n+1)]`
-/

namespace A190115.P1176620010683804587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093770 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190115.P1176620010683804587

/-! ## A190115.P9194912143941444907

`filter[A093770(n+1), A358751(#)]`
-/

namespace A190115.P9194912143941444907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093770 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358751 (f1 j).toNat = 1) n)

end

end A190115.P9194912143941444907

/-! ## A190115.P8037937217248083266

`filter[A093770(n+1), A359464(#)]`
-/

namespace A190115.P8037937217248083266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093770 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359464 (f1 j).toNat = 1) n)

end

end A190115.P8037937217248083266

/-! ## A190115.P12261061610891558216

`filter[A093770(n+1), A373975(#)]`
-/

namespace A190115.P12261061610891558216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093770 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373975 (f1 j).toNat = 1) n)

end

end A190115.P12261061610891558216

/-! ## A190115.P15835836095241619516

`filter[A394482(n+1), A358751(#)]`
-/

namespace A190115.P15835836095241619516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394482 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358751 (f1 j).toNat = 1) n)

end

end A190115.P15835836095241619516

/-!
# A190116: a(n) = n*n', where n' is the arithmetic derivative (A003415) of n.

The programs for A190116, the canonical program `A190116.P18352050044583738239` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190116 has offset 1).

The definition of A190116 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A085731, A086130, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A190116.P388759926309564143

`(n+1)*A003415(n+1)`
-/

namespace A190116.P388759926309564143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A003415 (n + 1)

end

end A190116.P388759926309564143

namespace A190116

/-- `(n+1)*A003415(n+1)` -/
def P388759926309564143.Spec : Prop :=
  ∀ n, P388759926309564143.a n = A190116 (n + 1)

end A190116

/-! ## A190116.P18352050044583738239

`A085731(n+1)*A086130(n+1)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A190116

/-- `A085731(n+1)*A086130(n+1)` -/
def P18352050044583738239.Spec : Prop :=
  ∀ n, P18352050044583738239.a n = A190116 (n + 1)

theorem P18352050044583738239.correct : P18352050044583738239.Spec := by
  intro n
  simp only [A190116, Nat.add_sub_cancel]

end A190116

/-! ## A190116.P3989239013327379416

`A068720(n+1)/2`
-/

namespace A190116.P3989239013327379416
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068720 (n + 1) : ℚ) / 2

end

end A190116.P3989239013327379416

namespace A190116

/-- `A068720(n+1)/2` -/
def P3989239013327379416.Spec : Prop :=
  ∀ n, P3989239013327379416.a n = (A190116 (n + 1) : ℚ)

end A190116

/-! ## A190116.P13882845134103894289

`(n+1)*∑[A258057(n)]`
-/

namespace A190116.P13882845134103894289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A190116.P13882845134103894289

namespace A190116

/-- `(n+1)*∑[A258057(n)]` -/
def P13882845134103894289.Spec : Prop :=
  ∀ n, P13882845134103894289.a n = A190116 (n + 1)

end A190116

/-! ## A190116.P7979073592477004583

`A068721(n+1)/(3*(n+1))`
-/

namespace A190116.P7979073592477004583
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068721 (n + 1) : ℚ) / (3 * (n + 1) : ℚ)

end

end A190116.P7979073592477004583

namespace A190116

/-- `A068721(n+1)/(3*(n+1))` -/
def P7979073592477004583.Spec : Prop :=
  ∀ n, P7979073592477004583.a n = (A190116 (n + 1) : ℚ)

end A190116

/-! ## A190116.P4404224131301859350

`(n+1)*(A168036(n+1)+n+1)`
-/

namespace A190116.P4404224131301859350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A168036 (n + 1) + (n + 1 : ℤ))

end

end A190116.P4404224131301859350

namespace A190116

/-- `(n+1)*(A168036(n+1)+n+1)` -/
def P4404224131301859350.Spec : Prop :=
  ∀ n, P4404224131301859350.a n = A190116 (n + 1)

end A190116

/-! ## A190116.P3959923458663659927

`(n+1)*(A129283(n+1)-(n+1))`
-/

namespace A190116.P3959923458663659927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A129283 (n + 1) - (n + 1 : ℤ))

end

end A190116.P3959923458663659927

namespace A190116

/-- `(n+1)*(A129283(n+1)-(n+1))` -/
def P3959923458663659927.Spec : Prop :=
  ∀ n, P3959923458663659927.a n = A190116 (n + 1)

end A190116

/-! ## A190116.P10869323064762914520

`A102631(n+1)*A342001(n+1)`
-/

namespace A190116.P10869323064762914520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102631 (n + 1) * A342001 (n + 1)

end

end A190116.P10869323064762914520

namespace A190116

/-- `A102631(n+1)*A342001(n+1)` -/
def P10869323064762914520.Spec : Prop :=
  ∀ n, P10869323064762914520.a n = A190116 (n + 1)

end A190116

/-! ## A190116.P5189266026992908443

`A085731(n+1)²*A189036(n+1)`
-/

namespace A190116.P5189266026992908443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085731 (n + 1) ^ 2 * A189036 (n + 1)

end

end A190116.P5189266026992908443

namespace A190116

/-- `A085731(n+1)²*A189036(n+1)` -/
def P5189266026992908443.Spec : Prop :=
  ∀ n, P5189266026992908443.a n = A190116 (n + 1)

end A190116

/-! ## A190116.P14275407659964885046

`∑{d}[n+1, A008683(#)*A348279((n+1)/#)]`
-/

namespace A190116.P14275407659964885046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A348279 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A190116.P14275407659964885046

namespace A190116

/-- `∑{d}[n+1, A008683(#)*A348279((n+1)/#)]` -/
def P14275407659964885046.Spec : Prop :=
  ∀ n, P14275407659964885046.a n = A190116 (n + 1)

end A190116

/-! ## A190116.P12544331458766070672

`(n+1)*A319703(A389906(n+1))`
-/

namespace A190116.P12544331458766070672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A319703 (A389906 (n + 1)).toNat

end

end A190116.P12544331458766070672

namespace A190116

/-- `(n+1)*A319703(A389906(n+1))` -/
def P12544331458766070672.Spec : Prop :=
  ∀ n, P12544331458766070672.a n = A190116 (n + 1)

end A190116

/-! ## A190116.P14536967284949216398

`(n+1)*A319703(2*(n+1))`
-/

namespace A190116.P14536967284949216398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A319703 (2 * (n + 1))

end

end A190116.P14536967284949216398

namespace A190116

/-- `(n+1)*A319703(2*(n+1))` -/
def P14536967284949216398.Spec : Prop :=
  ∀ n, P14536967284949216398.a n = A190116 (n + 1)

end A190116

/-! ## A190116.P9937656524916028937

`A235711(2*(n+1))/2`
-/

namespace A190116.P9937656524916028937
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A235711 (2 * (n + 1)) : ℚ) / 2

end

end A190116.P9937656524916028937

namespace A190116

/-- `A235711(2*(n+1))/2` -/
def P9937656524916028937.Spec : Prop :=
  ∀ n, P9937656524916028937.a n = (A190116 (n + 1) : ℚ)

end A190116

/-! ## A190116.P12777699547473204325

`(n+1)*A068512(2*(n+1))`
-/

namespace A190116.P12777699547473204325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A068512 (2 * (n + 1))

end

end A190116.P12777699547473204325

namespace A190116

/-- `(n+1)*A068512(2*(n+1))` -/
def P12777699547473204325.Spec : Prop :=
  ∀ n, P12777699547473204325.a n = A190116 (n + 1)

end A190116

/-! ## A190116.P12403695321042539957

`A258565(A361936(n+1))/2`
-/

namespace A190116.P12403695321042539957
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A258565 (A361936 (n + 1)).toNat : ℚ) / 2

end

end A190116.P12403695321042539957

namespace A190116

/-- `A258565(A361936(n+1))/2` -/
def P12403695321042539957.Spec : Prop :=
  ∀ n, P12403695321042539957.a n = (A190116 (n + 1) : ℚ)

end A190116

/-! ## A190116.P5504037817338037144

`A351572((n+1)²)/2`
-/

namespace A190116.P5504037817338037144
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A351572 ((n + 1) ^ 2) : ℚ) / 2

end

end A190116.P5504037817338037144

namespace A190116

/-- `A351572((n+1)²)/2` -/
def P5504037817338037144.Spec : Prop :=
  ∀ n, P5504037817338037144.a n = (A190116 (n + 1) : ℚ)

end A190116

/-! ## A190116.P15803196832323728913

`A348497((n+1)²)`
-/

namespace A190116.P15803196832323728913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348497 ((n + 1) ^ 2)

end

end A190116.P15803196832323728913

namespace A190116

/-- `A348497((n+1)²)` -/
def P15803196832323728913.Spec : Prop :=
  ∀ n, P15803196832323728913.a n = A190116 (n + 1)

end A190116

/-! ## A190116.P3177713096813994658

`A084890(∑[n+1])/2`
-/

namespace A190116.P3177713096813994658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084890 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 2

end

end A190116.P3177713096813994658

namespace A190116

/-- `A084890(∑[n+1])/2` -/
def P3177713096813994658.Spec : Prop :=
  ∀ n, P3177713096813994658.a n = (A190116 (n + 1) : ℚ)

end A190116

/-! ## A190116.P1425059254630171296

`A014682(A068720(n+1))`
-/

namespace A190116.P1425059254630171296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A068720 (n + 1)).toNat

end

end A190116.P1425059254630171296

namespace A190116

/-- `A014682(A068720(n+1))` -/
def P1425059254630171296.Spec : Prop :=
  ∀ n, P1425059254630171296.a n = A190116 (n + 1)

end A190116

/-! ## A190116.P10180461337140569189

`(n+1)*A258197(A000124(n+1))`
-/

namespace A190116.P10180461337140569189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A258197 (A000124 (n + 1)).toNat

end

end A190116.P10180461337140569189

namespace A190116

/-- `(n+1)*A258197(A000124(n+1))` -/
def P10180461337140569189.Spec : Prop :=
  ∀ n, P10180461337140569189.a n = A190116 (n + 1)

end A190116

/-!
# A190117: a(n) = Sum_{k=1..n} k*k', where n' is the arithmetic derivative of n.

The programs for A190117, the canonical program `A190117.P179062767668595055` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190117 has offset 1).

The definition of A190117 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190117.P17417053940034730292

`∑[A190116(n+1)]`
-/

namespace A190117.P17417053940034730292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190116 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190117.P17417053940034730292

namespace A190117

/-- `∑[A190116(n+1)]` -/
def P17417053940034730292.Spec : Prop :=
  ∀ n, P17417053940034730292.a n = A190117 (n + 1)

end A190117

/-! ## A190117.P179062767668595055

`∑[A068720(n+1)/2]`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A190117

/-- `∑[A068720(n+1)/2]` -/
def P179062767668595055.Spec : Prop :=
  ∀ n, P179062767668595055.a n = (A190117 (n + 1) : ℚ)

end A190117

/-! ## A190117.P3614255613071872283

`∑[(n+1)*∑[A258057(n)]]`
-/

namespace A190117.P3614255613071872283
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258057 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190117.P3614255613071872283

namespace A190117

/-- `∑[(n+1)*∑[A258057(n)]]` -/
def P3614255613071872283.Spec : Prop :=
  ∀ n, P3614255613071872283.a n = A190117 (n + 1)

end A190117

/-! ## A190117.P10966423845062054656

`∑[(n+1)*A003415(n+1)]`
-/

namespace A190117.P10966423845062054656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A003415 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190117.P10966423845062054656

namespace A190117

/-- `∑[(n+1)*A003415(n+1)]` -/
def P10966423845062054656.Spec : Prop :=
  ∀ n, P10966423845062054656.a n = A190117 (n + 1)

end A190117

/-! ## A190117.P10604654889163323066

`∑[(n+1)*(A129283(n+1)-(n+1))]`
-/

namespace A190117.P10604654889163323066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A129283 (n + 1) - (n + 1 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190117.P10604654889163323066

namespace A190117

/-- `∑[(n+1)*(A129283(n+1)-(n+1))]` -/
def P10604654889163323066.Spec : Prop :=
  ∀ n, P10604654889163323066.a n = A190117 (n + 1)

end A190117

/-! ## A190117.P5596942410545865043

`∑[A085731(n+1)*A086130(n+1)]`
-/

namespace A190117.P5596942410545865043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085731 (n + 1) * A086130 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190117.P5596942410545865043

namespace A190117

/-- `∑[A085731(n+1)*A086130(n+1)]` -/
def P5596942410545865043.Spec : Prop :=
  ∀ n, P5596942410545865043.a n = A190117 (n + 1)

end A190117

/-! ## A190117.P12172089444131908350

`∑[A085731(n+1)²*A189036(n+1)]`
-/

namespace A190117.P12172089444131908350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085731 (n + 1) ^ 2 * A189036 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190117.P12172089444131908350

namespace A190117

/-- `∑[A085731(n+1)²*A189036(n+1)]` -/
def P12172089444131908350.Spec : Prop :=
  ∀ n, P12172089444131908350.a n = A190117 (n + 1)

end A190117

/-! ## A190117.P922799861859421409

`∑[A235711(A103517(n))/2]`
-/

namespace A190117.P922799861859421409
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A235711 (A103517 n).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190117.P922799861859421409

namespace A190117

/-- `∑[A235711(A103517(n))/2]` -/
def P922799861859421409.Spec : Prop :=
  ∀ n, P922799861859421409.a n = (A190117 (n + 1) : ℚ)

end A190117

/-! ## A190117.P8817494079025338270

`∑[A351572((n+1)²)/2]`
-/

namespace A190117.P8817494079025338270
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A351572 ((n + 1) ^ 2) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190117.P8817494079025338270

namespace A190117

/-- `∑[A351572((n+1)²)/2]` -/
def P8817494079025338270.Spec : Prop :=
  ∀ n, P8817494079025338270.a n = (A190117 (n + 1) : ℚ)

end A190117

/-! ## A190117.P12280580355217572715

`∑[A348497((n+1)²)]`
-/

namespace A190117.P12280580355217572715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348497 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190117.P12280580355217572715

namespace A190117

/-- `∑[A348497((n+1)²)]` -/
def P12280580355217572715.Spec : Prop :=
  ∀ n, P12280580355217572715.a n = A190117 (n + 1)

end A190117

/-! ## A190117.P5615140351111631099

`∑[A014682(A068720(n+1))]`
-/

namespace A190117.P5615140351111631099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A068720 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190117.P5615140351111631099

namespace A190117

/-- `∑[A014682(A068720(n+1))]` -/
def P5615140351111631099.Spec : Prop :=
  ∀ n, P5615140351111631099.a n = A190117 (n + 1)

end A190117

/-! ## A190117.P6148910266638920592

`∑[A003415((n+1)²)/2]`
-/

namespace A190117.P6148910266638920592
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003415 ((n + 1) ^ 2) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190117.P6148910266638920592

namespace A190117

/-- `∑[A003415((n+1)²)/2]` -/
def P6148910266638920592.Spec : Prop :=
  ∀ n, P6148910266638920592.a n = (A190117 (n + 1) : ℚ)

end A190117

/-!
# A190118: a(n) = Sum_{k=1..n} k/gcd(k,k'), where n' is arithmetic derivative of n.

The programs for A190118, the canonical program `A190118.P8393779213979660982` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190118 has offset 1).

The definition of A190118 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190118.P8393779213979660982

`∑[A083346(n+1)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A190118

/-- `∑[A083346(n+1)]` -/
def P8393779213979660982.Spec : Prop :=
  ∀ n, P8393779213979660982.a n = A190118 (n + 1)

theorem P8393779213979660982.correct : P8393779213979660982.Spec := by
  intro n
  simp only [A190118, Nat.add_sub_cancel]

end A190118

/-! ## A190118.P8947721506795411427

`∑[(n+1)/A085731(n+1)]`
-/

namespace A190118.P8947721506795411427
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A085731 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190118.P8947721506795411427

namespace A190118

/-- `∑[(n+1)/A085731(n+1)]` -/
def P8947721506795411427.Spec : Prop :=
  ∀ n, P8947721506795411427.a n = (A190118 (n + 1) : ℚ)

end A190118

/-! ## A190118.P761900543994719212

`∑[(n+1)/gcd(n+1, A003415(n+1))]`
-/

namespace A190118.P761900543994719212
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (n + 1 : ℤ) (A003415 (n + 1)) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190118.P761900543994719212

namespace A190118

/-- `∑[(n+1)/gcd(n+1, A003415(n+1))]` -/
def P761900543994719212.Spec : Prop :=
  ∀ n, P761900543994719212.a n = (A190118 (n + 1) : ℚ)

end A190118

/-! ## A190118.P15335259066230373855

`∑[A007947(A327938(n+1))]`
-/

namespace A190118.P15335259066230373855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A327938 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190118.P15335259066230373855

namespace A190118

/-- `∑[A007947(A327938(n+1))]` -/
def P15335259066230373855.Spec : Prop :=
  ∀ n, P15335259066230373855.a n = A190118 (n + 1)

end A190118

/-! ## A190118.P7531162382870787850

`∑[A083345(A008574(n+1))-A083345(n+1)]`
-/

namespace A190118.P7531162382870787850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083345 (A008574 (n + 1)).toNat - A083345 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190118.P7531162382870787850

namespace A190118

/-- `∑[A083345(A008574(n+1))-A083345(n+1)]` -/
def P7531162382870787850.Spec : Prop :=
  ∀ n, P7531162382870787850.a n = A190118 (n + 1)

end A190118

/-! ## A190118.P685998903690087009

`∑[gcd(A002110(n), A327938(n+1))]`
-/

namespace A190118.P685998903690087009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002110 n) (A327938 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190118.P685998903690087009

namespace A190118

/-- `∑[gcd(A002110(n), A327938(n+1))]` -/
def P685998903690087009.Spec : Prop :=
  ∀ n, (P685998903690087009.a n : ℤ) = A190118 (n + 1)

end A190118

/-!
# A190119: a(n) = Sum_{k=1..n} lcm(k,k')/k, where k' is arithmetic derivative of k.

The programs for A190119, the canonical program `A190119.P9883724251289863595` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190119 has offset 1).

The definition of A190119 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190119.P3765660034791783997

`∑[A083345(n+1)]`
-/

namespace A190119.P3765660034791783997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083345 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190119.P3765660034791783997

namespace A190119

/-- `∑[A083345(n+1)]` -/
def P3765660034791783997.Spec : Prop :=
  ∀ n, P3765660034791783997.a n = A190119 (n + 1)

end A190119

/-! ## A190119.P9883724251289863595

`∑[A086130(n+1)/(n+1)]`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A190119

/-- `∑[A086130(n+1)/(n+1)]` -/
def P9883724251289863595.Spec : Prop :=
  ∀ n, P9883724251289863595.a n = (A190119 (n + 1) : ℚ)

end A190119

/-! ## A190119.P5749902374771296829

`∑[∑[A258057(n)]/A085731(n+1)]`
-/

namespace A190119.P5749902374771296829
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258057 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / (A085731 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190119.P5749902374771296829

namespace A190119

/-- `∑[∑[A258057(n)]/A085731(n+1)]` -/
def P5749902374771296829.Spec : Prop :=
  ∀ n, P5749902374771296829.a n = (A190119 (n + 1) : ℚ)

end A190119

/-! ## A190119.P9031865270679910919

`∑[A003415(n+1)/A085731(n+1)]`
-/

namespace A190119.P9031865270679910919
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003415 (n + 1) : ℚ) / (A085731 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190119.P9031865270679910919

namespace A190119

/-- `∑[A003415(n+1)/A085731(n+1)]` -/
def P9031865270679910919.Spec : Prop :=
  ∀ n, P9031865270679910919.a n = (A190119 (n + 1) : ℚ)

end A190119

/-! ## A190119.P107090384933445746

`∑[A189036(n+1)/A083346(n+1)]`
-/

namespace A190119.P107090384933445746
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189036 (n + 1) : ℚ) / (A083346 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190119.P107090384933445746

namespace A190119

/-- `∑[A189036(n+1)/A083346(n+1)]` -/
def P107090384933445746.Spec : Prop :=
  ∀ n, P107090384933445746.a n = (A190119 (n + 1) : ℚ)

end A190119

/-! ## A190119.P5190727629452083388

`∑[A003415(n+1)/(n+1)*A083346(n+1)]`
-/

namespace A190119.P5190727629452083388
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003415 (n + 1) : ℚ) / (n + 1 : ℚ) * (A083346 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190119.P5190727629452083388

namespace A190119

/-- `∑[A003415(n+1)/(n+1)*A083346(n+1)]` -/
def P5190727629452083388.Spec : Prop :=
  ∀ n, P5190727629452083388.a n = (A190119 (n + 1) : ℚ)

end A190119

/-! ## A190119.P17738769573789956668

`∑[A319703(2*(n+1))/A085731(n+1)]`
-/

namespace A190119.P17738769573789956668
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319703 (2 * (n + 1)) : ℚ) / (A085731 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190119.P17738769573789956668

namespace A190119

/-- `∑[A319703(2*(n+1))/A085731(n+1)]` -/
def P17738769573789956668.Spec : Prop :=
  ∀ n, P17738769573789956668.a n = (A190119 (n + 1) : ℚ)

end A190119

/-! ## A190119.P14607129450406528067

`∑[A318573(A064988(n+1))]`
-/

namespace A190119.P14607129450406528067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318573 (A064988 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190119.P14607129450406528067

namespace A190119

/-- `∑[A318573(A064988(n+1))]` -/
def P14607129450406528067.Spec : Prop :=
  ∀ n, P14607129450406528067.a n = A190119 (n + 1)

end A190119

/-!
# A190120: a(n) = Sum_{k=1..n} lcm(k,k')/gcd(k,k'), where n' is arithmetic derivative of n.

The programs for A190120, the canonical program `A190120.P8298546026413177048` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190120 has offset 1).

The definition of A190120 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190120.P8298546026413177048

`∑[A189036(n+1)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A190120

/-- `∑[A189036(n+1)]` -/
def P8298546026413177048.Spec : Prop :=
  ∀ n, P8298546026413177048.a n = A190120 (n + 1)

theorem P8298546026413177048.correct : P8298546026413177048.Spec := by
  intro n
  simp only [A190120, Nat.add_sub_cancel]

end A190120

/-! ## A190120.P14556168447860407857

`∑[A083345(n+1)*A083346(n+1)]`
-/

namespace A190120.P14556168447860407857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083345 (n + 1) * A083346 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190120.P14556168447860407857

namespace A190120

/-- `∑[A083345(n+1)*A083346(n+1)]` -/
def P14556168447860407857.Spec : Prop :=
  ∀ n, P14556168447860407857.a n = A190120 (n + 1)

end A190120

/-! ## A190120.P1086165562677404614

`∑[A086130(n+1)/A085731(n+1)]`
-/

namespace A190120.P1086165562677404614
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086130 (n + 1) : ℚ) / (A085731 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190120.P1086165562677404614

namespace A190120

/-- `∑[A086130(n+1)/A085731(n+1)]` -/
def P1086165562677404614.Spec : Prop :=
  ∀ n, P1086165562677404614.a n = (A190120 (n + 1) : ℚ)

end A190120

/-! ## A190120.P7201317407242447455

`∑[A190116(n+1)/A085731(n+1)²]`
-/

namespace A190120.P7201317407242447455
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A190116 (n + 1) : ℚ) / (A085731 (n + 1) ^ 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190120.P7201317407242447455

namespace A190120

/-- `∑[A190116(n+1)/A085731(n+1)²]` -/
def P7201317407242447455.Spec : Prop :=
  ∀ n, P7201317407242447455.a n = (A190120 (n + 1) : ℚ)

end A190120

/-! ## A190120.P3179275557677313824

`∑[(n+1)*A083345(n+1)/A085731(n+1)]`
-/

namespace A190120.P3179275557677313824
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((A083345 (n + 1) : ℚ) / (A085731 (n + 1) : ℚ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190120.P3179275557677313824

namespace A190120

/-- `∑[(n+1)*A083345(n+1)/A085731(n+1)]` -/
def P3179275557677313824.Spec : Prop :=
  ∀ n, P3179275557677313824.a n = (A190120 (n + 1) : ℚ)

end A190120

/-! ## A190120.P7859838700678337592

`∑[A083346(n+1)/(n+1)*A086130(n+1)]`
-/

namespace A190120.P7859838700678337592
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083346 (n + 1) : ℚ) / (n + 1 : ℚ) * (A086130 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190120.P7859838700678337592

namespace A190120

/-- `∑[A083346(n+1)/(n+1)*A086130(n+1)]` -/
def P7859838700678337592.Spec : Prop :=
  ∀ n, P7859838700678337592.a n = (A190120 (n + 1) : ℚ)

end A190120

/-!
# A190121: Partial sums of the arithmetic derivative function A003415.

The programs for A190121, the canonical program `A190121.P4530630871220587938` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190121 has offset 1).

The definition of A190121 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190121.P1176380068224927759

`∑[∑[A258057(n)]]`
-/

namespace A190121.P1176380068224927759
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258057 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190121.P1176380068224927759

namespace A190121

/-- `∑[∑[A258057(n)]]` -/
def P1176380068224927759.Spec : Prop :=
  ∀ n, P1176380068224927759.a n = A190121 (n + 1)

end A190121

/-! ## A190121.P14843102571708934065

`∑[A003415(n+1)]`
-/

namespace A190121.P14843102571708934065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190121.P14843102571708934065

namespace A190121

/-- `∑[A003415(n+1)]` -/
def P14843102571708934065.Spec : Prop :=
  ∀ n, P14843102571708934065.a n = A190121 (n + 1)

end A190121

/-! ## A190121.P4530630871220587938

`∑[∑{d}[n+1, A300251(#)]]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A190121

/-- `∑[∑{d}[n+1, A300251(#)]]` -/
def P4530630871220587938.Spec : Prop :=
  ∀ n, P4530630871220587938.a n = A190121 (n + 1)

theorem P4530630871220587938.correct : P4530630871220587938.Spec := by
  intro n
  simp only [A190121, Nat.add_sub_cancel]

end A190121

/-! ## A190121.P4613080465288923248

`∑[∑[Δ[A168036(n)]+1]]`
-/

namespace A190121.P4613080465288923248
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168036 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190121.P4613080465288923248

namespace A190121

/-- `∑[∑[Δ[A168036(n)]+1]]` -/
def P4613080465288923248.Spec : Prop :=
  ∀ n, P4613080465288923248.a n = A190121 (n + 1)

end A190121

/-! ## A190121.P11928396787416967740

`∑[A168036(n+1)+n+1]`
-/

namespace A190121.P11928396787416967740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168036 (n + 1) + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190121.P11928396787416967740

namespace A190121

/-- `∑[A168036(n+1)+n+1]` -/
def P11928396787416967740.Spec : Prop :=
  ∀ n, P11928396787416967740.a n = A190121 (n + 1)

end A190121

/-! ## A190121.P13909020099929848757

`∑[A129283(n+1)-(n+1)]`
-/

namespace A190121.P13909020099929848757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129283 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190121.P13909020099929848757

namespace A190121

/-- `∑[A129283(n+1)-(n+1)]` -/
def P13909020099929848757.Spec : Prop :=
  ∀ n, P13909020099929848757.a n = A190121 (n + 1)

end A190121

/-! ## A190121.P979157242872897536

`∑[A190116(n+1)/(n+1)]`
-/

namespace A190121.P979157242872897536
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A190116 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190121.P979157242872897536

namespace A190121

/-- `∑[A190116(n+1)/(n+1)]` -/
def P979157242872897536.Spec : Prop :=
  ∀ n, P979157242872897536.a n = (A190121 (n + 1) : ℚ)

end A190121

/-! ## A190121.P5191533150090728702

`∑[A300252(n+1)+A300251(n+1)]`
-/

namespace A190121.P5191533150090728702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300252 (n + 1) + A300251 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190121.P5191533150090728702

namespace A190121

/-- `∑[A300252(n+1)+A300251(n+1)]` -/
def P5191533150090728702.Spec : Prop :=
  ∀ n, P5191533150090728702.a n = A190121 (n + 1)

end A190121

/-! ## A190121.P14509140499716528269

`∑[A083345(n+1)*A085731(n+1)]`
-/

namespace A190121.P14509140499716528269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083345 (n + 1) * A085731 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190121.P14509140499716528269

namespace A190121

/-- `∑[A083345(n+1)*A085731(n+1)]` -/
def P14509140499716528269.Spec : Prop :=
  ∀ n, P14509140499716528269.a n = A190121 (n + 1)

end A190121

/-! ## A190121.P1429130728148489207

`∑[A327858(n+1)*A351230(n+1)]`
-/

namespace A190121.P1429130728148489207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327858 (n + 1) * A351230 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190121.P1429130728148489207

namespace A190121

/-- `∑[A327858(n+1)*A351230(n+1)]` -/
def P1429130728148489207.Spec : Prop :=
  ∀ n, P1429130728148489207.a n = A190121 (n + 1)

end A190121

/-! ## A190121.P14094716231300018517

`∑[A348492(n+1)*A348493(n+1)]`
-/

namespace A190121.P14094716231300018517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348492 (n + 1) * A348493 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190121.P14094716231300018517

namespace A190121

/-- `∑[A348492(n+1)*A348493(n+1)]` -/
def P14094716231300018517.Spec : Prop :=
  ∀ n, P14094716231300018517.a n = A190121 (n + 1)

end A190121

/-! ## A190121.P11141736355150358529

`∑[A086130(n+1)/A083346(n+1)]`
-/

namespace A190121.P11141736355150358529
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086130 (n + 1) : ℚ) / (A083346 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190121.P11141736355150358529

namespace A190121

/-- `∑[A086130(n+1)/A083346(n+1)]` -/
def P11141736355150358529.Spec : Prop :=
  ∀ n, P11141736355150358529.a n = (A190121 (n + 1) : ℚ)

end A190121

/-! ## A190121.P9523849817326224378

`∑[A319703(2*(n+1))]`
-/

namespace A190121.P9523849817326224378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319703 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190121.P9523849817326224378

namespace A190121

/-- `∑[A319703(2*(n+1))]` -/
def P9523849817326224378.Spec : Prop :=
  ∀ n, P9523849817326224378.a n = A190121 (n + 1)

end A190121

/-! ## A190121.P1087924462875536918

`∑[A068512(2*(n+1))]`
-/

namespace A190121.P1087924462875536918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068512 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190121.P1087924462875536918

namespace A190121

/-- `∑[A068512(2*(n+1))]` -/
def P1087924462875536918.Spec : Prop :=
  ∀ n, P1087924462875536918.a n = A190121 (n + 1)

end A190121

/-! ## A190121.P5447069787587717043

`∑[A235711(A103517(n))/A103517(n)]`
-/

namespace A190121.P5447069787587717043
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A235711 (A103517 n).toNat : ℚ) / (A103517 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190121.P5447069787587717043

namespace A190121

/-- `∑[A235711(A103517(n))/A103517(n)]` -/
def P5447069787587717043.Spec : Prop :=
  ∀ n, P5447069787587717043.a n = (A190121 (n + 1) : ℚ)

end A190121

/-! ## A190121.P13420513845834766072

`∑[A348497((n+1)²)/(n+1)]`
-/

namespace A190121.P13420513845834766072
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348497 ((n + 1) ^ 2) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190121.P13420513845834766072

namespace A190121

/-- `∑[A348497((n+1)²)/(n+1)]` -/
def P13420513845834766072.Spec : Prop :=
  ∀ n, P13420513845834766072.a n = (A190121 (n + 1) : ℚ)

end A190121

/-! ## A190121.P601340965346489675

`∑[A258197(A000124(n+1))]`
-/

namespace A190121.P601340965346489675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258197 (A000124 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190121.P601340965346489675

namespace A190121

/-- `∑[A258197(A000124(n+1))]` -/
def P601340965346489675.Spec : Prop :=
  ∀ n, P601340965346489675.a n = A190121 (n + 1)

end A190121

/-!
# A190122: a(n) = Sum_{k=1..n} k*lcm(k,k')/gcd(k,k'), where k' is arithmetic derivative of k.

The programs for A190122, the canonical program `A190122.P18286284179449447991` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190122 has offset 1).

The definition of A190122 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190122.P18286284179449447991

`∑[(n+1)*A189036(n+1)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A190122

/-- `∑[(n+1)*A189036(n+1)]` -/
def P18286284179449447991.Spec : Prop :=
  ∀ n, P18286284179449447991.a n = A190122 (n + 1)

theorem P18286284179449447991.correct : P18286284179449447991.Spec := by
  intro n
  simp only [A190122, Nat.add_sub_cancel]

end A190122

/-! ## A190122.P18440465672007843735

`∑[(n+1)*Δ[A190120(A028310(n))]]`
-/

namespace A190122.P18440465672007843735
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190120 (A028310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190122.P18440465672007843735

namespace A190122

/-- `∑[(n+1)*Δ[A190120(A028310(n))]]` -/
def P18440465672007843735.Spec : Prop :=
  ∀ n, P18440465672007843735.a n = A190122 (n + 1)

end A190122

/-! ## A190122.P13573063705704709241

`∑[A083346(n+1)*A086130(n+1)]`
-/

namespace A190122.P13573063705704709241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083346 (n + 1) * A086130 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190122.P13573063705704709241

namespace A190122

/-- `∑[A083346(n+1)*A086130(n+1)]` -/
def P13573063705704709241.Spec : Prop :=
  ∀ n, P13573063705704709241.a n = A190122 (n + 1)

end A190122

/-! ## A190122.P1599671065291646216

`∑[A083346(n+1)²*∑[A258057(n)]]`
-/

namespace A190122.P1599671065291646216
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258057 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083346 (n + 1) ^ 2 * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190122.P1599671065291646216

namespace A190122

/-- `∑[A083346(n+1)²*∑[A258057(n)]]` -/
def P1599671065291646216.Spec : Prop :=
  ∀ n, P1599671065291646216.a n = A190122 (n + 1)

end A190122

/-! ## A190122.P6937979349412009030

`∑[(n+1)*A083345(n+1)*A083346(n+1)]`
-/

namespace A190122.P6937979349412009030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A083345 (n + 1) * A083346 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190122.P6937979349412009030

namespace A190122

/-- `∑[(n+1)*A083345(n+1)*A083346(n+1)]` -/
def P6937979349412009030.Spec : Prop :=
  ∀ n, P6937979349412009030.a n = A190122 (n + 1)

end A190122

/-! ## A190122.P16300375953987249676

`∑[(n+1)/A085731(n+1)*A086130(n+1)]`
-/

namespace A190122.P16300375953987249676
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A085731 (n + 1) : ℚ) * (A086130 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190122.P16300375953987249676

namespace A190122

/-- `∑[(n+1)/A085731(n+1)*A086130(n+1)]` -/
def P16300375953987249676.Spec : Prop :=
  ∀ n, P16300375953987249676.a n = (A190122 (n + 1) : ℚ)

end A190122

/-!
# A190123: Expansion of e.g.f.: 1/(1-tan(sin(x))).

The programs for A190123, there is no canonical definition to state claims against.
-/

/-! ## A190123.P17786202400696430527

`A195120(∑[record[A237928(n)]])`
-/

namespace A190123.P17786202400696430527
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237928 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195120 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A190123.P17786202400696430527

/-! ## A190123.P2233358440578936946

`A065033(A333018(n)+A000255(n))`
-/

namespace A190123.P2233358440578936946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A333018 n + A000255 n).toNat

end

end A190123.P2233358440578936946

/-! ## A190123.P1544845045465737330

`A210713(A193147(n))+A143426(n)`
-/

namespace A190123.P1544845045465737330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210713 (A193147 n).toNat + A143426 n

end

end A190123.P1544845045465737330

/-!
# A190125: If n = product(p_i^e_i), a(n) = product((p_i^e_i)^(p_i^e_i)).

The programs for A190125, there is no canonical definition to state claims against.
-/

/-! ## A190125.P6456208228608977117

`∏{p}[n+1, #^val(n+1, #)^#^val(n+1, #)]`
-/

namespace A190125.P6456208228608977117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (p ^ SequenceMachineLib.valuation (n + 1) p) ^ p ^ SequenceMachineLib.valuation (n + 1) p

end

end A190125.P6456208228608977117

/-! ## A190125.P7282050467420988326

`∏{p}[n+1, A000312(gcd(n+1, #^7))]`
-/

namespace A190125.P7282050467420988326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A000312 (Nat.gcd (n + 1) (p ^ 7))

end

end A190125.P7282050467420988326

/-! ## A190125.P392768930860213998

`A133482((n+1)^((n+1)/∏{p}[n+1, #]))`
-/

namespace A190125.P392768930860213998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133482 (SequenceMachineLib.roundAway ((n + 1 : ℝ) ^ ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) : ℝ))).toNat

end

end A190125.P392768930860213998

/-!
# A190126: Numbers 1 through 10000 sorted lexicographically in binary representation.

The programs for A190126, there is no canonical definition to state claims against.
-/

/-! ## A190126.P369691218186641152

`A122155(A219676(n))`
-/

namespace A190126.P369691218186641152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122155 (A219676 n).toNat

end

end A190126.P369691218186641152

/-! ## A190126.P5514959313426556208

`A122155(A220469(n+2))`
-/

namespace A190126.P5514959313426556208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122155 (A220469 (n + 2)).toNat

end

end A190126.P5514959313426556208

/-! ## A190126.P13178579461453129137

`A166079(A328679(n+2))`
-/

namespace A190126.P13178579461453129137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166079 (A328679 (n + 2)).toNat

end

end A190126.P13178579461453129137

/-! ## A190126.P13736068160571821868

`A106618(∪[2^n, A013961(n+1)])`
-/

namespace A190126.P13736068160571821868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013961 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106618 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A190126.P13736068160571821868

/-!
# A190128: Numbers 1 through 10000 sorted lexicographically in ternary representation.

The programs for A190128, there is no canonical definition to state claims against.
-/

/-! ## A190128.P14773152679292099439

`(3^n)%A125649(2^(C(comp[∑[n]]-n, 2)-n))`
-/

namespace A190128.P14773152679292099439
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (3 ^ n : ℤ) (A125649 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) : ℤ))).toNat)

end

end A190128.P14773152679292099439

/-! ## A190128.P17674022481931944051

`record[A193822(n)+A025443(n)]`
-/

namespace A190128.P17674022481931944051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193822 n + A025443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190128.P17674022481931944051

/-! ## A190128.P16388209707358302908

`record[or(A193822(n), A244315(n))]`
-/

namespace A190128.P16388209707358302908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A193822 n) (A244315 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190128.P16388209707358302908

/-! ## A190128.P15791190259793169098

`∑[A110090(record[A285280(n+3)])]`
-/

namespace A190128.P15791190259793169098
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285280 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110090 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190128.P15791190259793169098

/-! ## A190128.P1371503428053031670

`A072451(record[A140070(n+1)+1])`
-/

namespace A190128.P1371503428053031670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140070 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072451 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A190128.P1371503428053031670

/-!
# A190130: Numbers 1 through 10000 sorted lexicographically in octal representation (base 8).

The programs for A190130, there is no canonical definition to state claims against.
-/

/-! ## A190130.P17223745087431663862

`record[or(8^∑{e}[n+1, #], A384905(3*n))]`
-/

namespace A190130.P17223745087431663862
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (8 ^ (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p) : ℤ) (A384905 (3 * n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190130.P17223745087431663862

/-! ## A190130.P100491289565635400

`A190126(A000005(8^n))`
-/

namespace A190130.P100491289565635400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190126 (A000005 (8 ^ n)).toNat

end

end A190130.P100491289565635400

/-!
# A190132: Numbers 1 through 10000 sorted lexicographically in duodecimal representation (base 12).

The programs for A190132, there is no canonical definition to state claims against.
-/

/-! ## A190132.P7971703543145556911

`∑[A196731(n*A216216(A061922(n)))]`
-/

namespace A190132.P7971703543145556911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196731 ((n : ℤ) * A216216 (A061922 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190132.P7971703543145556911

/-! ## A190132.P17955809447015669565

`∑[A196731(n)^A216216(A061922(n))]`
-/

namespace A190132.P17955809447015669565
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A196731 n : ℚ) ^ (A216216 (A061922 n).toNat : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190132.P17955809447015669565

/-!
# A190134: Numbers 1 through 10000 sorted lexicographically in hexadecimal representation (base 16).

The programs for A190134, there is no canonical definition to state claims against.
-/

/-! ## A190134.P17392242629912211684

`A190126(lt[Δ[A309589(3*n+4)], 3])`
-/

namespace A190134.P17392242629912211684
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309589 (3 * n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190126 (SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n)

end

end A190134.P17392242629912211684

/-!
# A190136: Largest prime factor of n*(n+1)*(n+2)*(n+3).

The programs for A190136, the canonical program `A190136.P17099948517494276302` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190136 has offset 1).

The definition of A190136 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 445 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190136.P17099948517494276302

`A006530(A076605(n+2)*A076605(n+3))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A190136

/-- `A006530(A076605(n+2)*A076605(n+3))` -/
def P17099948517494276302.Spec : Prop :=
  ∀ n, P17099948517494276302.a n = A190136 (n + 1)

theorem P17099948517494276302.correct : P17099948517494276302.Spec := by
  intro n
  simp only [A190136, Nat.add_sub_cancel]

end A190136

/-! ## A190136.P14421262154019358278

`A006530(lcm(A076605(n+2), A076605(n+3)))`
-/

namespace A190136.P14421262154019358278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.lcm (A076605 (n + 2)) (A076605 (n + 3)))

end

end A190136.P14421262154019358278

namespace A190136

/-- `A006530(lcm(A076605(n+2), A076605(n+3)))` -/
def P14421262154019358278.Spec : Prop :=
  ∀ n, P14421262154019358278.a n = A190136 (n + 1)

end A190136

/-! ## A190136.P10332573110382820823

`A006530(A074399(n+1)*A074399(n+3))`
-/

namespace A190136.P10332573110382820823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A074399 (n + 1) * A074399 (n + 3)).toNat

end

end A190136.P10332573110382820823

namespace A190136

/-- `A006530(A074399(n+1)*A074399(n+3))` -/
def P10332573110382820823.Spec : Prop :=
  ∀ n, P10332573110382820823.a n = A190136 (n + 1)

end A190136

/-! ## A190136.P9430311631037845024

`A006530(lcm(A074399(n+1), A074399(n+3)))`
-/

namespace A190136.P9430311631037845024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.lcm (A074399 (n + 1)) (A074399 (n + 3)))

end

end A190136.P9430311631037845024

namespace A190136

/-- `A006530(lcm(A074399(n+1), A074399(n+3)))` -/
def P9430311631037845024.Spec : Prop :=
  ∀ n, P9430311631037845024.a n = A190136 (n + 1)

end A190136

/-! ## A190136.P11237168796027488289

`A006530((n+1)*A093074(n+3))`
-/

namespace A190136.P11237168796027488289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ((n + 1 : ℤ) * A093074 (n + 3)).toNat

end

end A190136.P11237168796027488289

namespace A190136

/-- `A006530((n+1)*A093074(n+3))` -/
def P11237168796027488289.Spec : Prop :=
  ∀ n, P11237168796027488289.a n = A190136 (n + 1)

end A190136

/-! ## A190136.P7078395279720469510

`A292269(A076605(n+2)*A076605(n+3))`
-/

namespace A190136.P7078395279720469510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292269 (A076605 (n + 2) * A076605 (n + 3)).toNat

end

end A190136.P7078395279720469510

namespace A190136

/-- `A292269(A076605(n+2)*A076605(n+3))` -/
def P7078395279720469510.Spec : Prop :=
  ∀ n, P7078395279720469510.a n = A190136 (n + 1)

end A190136

/-! ## A190136.P15397515457314384507

`A069902(∑[n+2])`
-/

namespace A190136.P15397515457314384507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069902 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A190136.P15397515457314384507

namespace A190136

/-- `A069902(∑[n+2])` -/
def P15397515457314384507.Spec : Prop :=
  ∀ n, P15397515457314384507.a n = A190136 (n + 1)

end A190136

/-! ## A190136.P12938720353896565438

`A074399(∑[n+2])`
-/

namespace A190136.P12938720353896565438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074399 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A190136.P12938720353896565438

namespace A190136

/-- `A074399(∑[n+2])` -/
def P12938720353896565438.Spec : Prop :=
  ∀ n, P12938720353896565438.a n = A190136 (n + 1)

end A190136

/-! ## A190136.P3278566896547297881

`A006530(A245486(∑[n+2]))`
-/

namespace A190136.P3278566896547297881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A245486 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A190136.P3278566896547297881

namespace A190136

/-- `A006530(A245486(∑[n+2]))` -/
def P3278566896547297881.Spec : Prop :=
  ∀ n, P3278566896547297881.a n = A190136 (n + 1)

end A190136

/-! ## A190136.P15034253730267667852

`A000040(A252489(∑[n+2]))`
-/

namespace A190136.P15034253730267667852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A252489 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A190136.P15034253730267667852

namespace A190136

/-- `A000040(A252489(∑[n+2]))` -/
def P15034253730267667852.Spec : Prop :=
  ∀ n, P15034253730267667852.a n = A190136 (n + 1)

end A190136

/-! ## A190136.P11780099625769556878

`A020639(A069902(A000217(n+1)+n+1))`
-/

namespace A190136.P11780099625769556878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A069902 (A000217 (n + 1) + (n + 1 : ℤ)).toNat).toNat

end

end A190136.P11780099625769556878

namespace A190136

/-- `A020639(A069902(A000217(n+1)+n+1))` -/
def P11780099625769556878.Spec : Prop :=
  ∀ n, P11780099625769556878.a n = A190136 (n + 1)

end A190136

/-! ## A190136.P16337732203131187924

`A096006(A034856(n+2))`
-/

namespace A190136.P16337732203131187924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096006 (A034856 (n + 2)).toNat

end

end A190136.P16337732203131187924

namespace A190136

/-- `A096006(A034856(n+2))` -/
def P16337732203131187924.Spec : Prop :=
  ∀ n, P16337732203131187924.a n = A190136 (n + 1)

end A190136

/-! ## A190136.P14580497245677740585

`A328827(∑[3*(n+2)])`
-/

namespace A190136.P14580497245677740585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328827 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A190136.P14580497245677740585

namespace A190136

/-- `A328827(∑[3*(n+2)])` -/
def P14580497245677740585.Spec : Prop :=
  ∀ n, P14580497245677740585.a n = A190136 (n + 1)

end A190136

/-!
# A190138: Final number of terms obtained with Euler's recurrence formula when computing the sum of divisors of n.

The programs for A190138, there is no canonical definition to state claims against.
-/

/-! ## A190138.P9828645511029851666

`∑[A105223(A000636(n+1))]`
-/

namespace A190138.P9828645511029851666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105223 (A000636 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190138.P9828645511029851666

/-! ## A190138.P18119735963146579317

`round(sqrt(A288526(floor(3^(n-1))+1)-1))`
-/

namespace A190138.P18119735963146579317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A288526 (⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ + 1).toNat - 1 : ℝ))

end

end A190138.P18119735963146579317

/-! ## A190138.P13974134543352459

`A257639(abs(A084244(n)))`
-/

namespace A190138.P13974134543352459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 |A084244 n|.toNat

end

end A190138.P13974134543352459

/-! ## A190138.P4573488878217047556

`∑[A118766(A321403(n))]`
-/

namespace A190138.P4573488878217047556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118766 (A321403 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190138.P4573488878217047556

/-! ## A190138.P13719678856459461694

`A003056(A092687(n)+1)`
-/

namespace A190138.P13719678856459461694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A092687 n + 1).toNat

end

end A190138.P13719678856459461694

/-!
# A190139: a(n) = 2*a(n-1) + a(n-2) + a(n-3) + a(n-4), a(-2)=0, a(-1)=0, a(0)=1, a(1)=1.

The programs for A190139, the canonical program `A190139.P385343375356093763` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190139 has offset 0).

The definition of A190139 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+a(n-2)+a(n-3)+a(n-4)` (program `A190139.P385343375356093763`, by `A190139.P385343375356093763.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A190139.P385343375356093763

`2*a(n-1)+a(n-2)+a(n-3)+a(n-4)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=8`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A190139

/-- `2*a(n-1)+a(n-2)+a(n-3)+a(n-4)` -/
def P385343375356093763.Spec : Prop :=
  ∀ n, (P385343375356093763.a n : ℤ) = A190139 n

theorem P385343375356093763.correct : P385343375356093763.Spec := by
  intro n
  simp only [A190139]

end A190139

/-! ## A190139.P2489334941254870740

`abs(Δ[A103142(abs(1-n))])`
-/

namespace A190139.P2489334941254870740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103142 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A190139.P2489334941254870740

namespace A190139

/-- `abs(Δ[A103142(abs(1-n))])` -/
def P2489334941254870740.Spec : Prop :=
  ∀ n, P2489334941254870740.a n = A190139 n

end A190139

/-! ## A190139.P8693611926056111231

`A248183(A326466(2*n+1)+A051450(n+1))`
-/

namespace A190139.P8693611926056111231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248183 (A326466 (2 * n + 1) + A051450 (n + 1)).toNat

end

end A190139.P8693611926056111231

namespace A190139

/-- `A248183(A326466(2*n+1)+A051450(n+1))` -/
def P8693611926056111231.Spec : Prop :=
  ∀ n, P8693611926056111231.a n = A190139 n

end A190139

/-!
# A190140: a(n) = 2*a(n-1) + a(n-2) + 3*a(n-3), a(0)=1.

The programs for A190140, the canonical program `A190140.P904092016026185817` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190140 has offset 0).

The definition of A190140 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+a(n-2)+3*a(n-3)` (program `A190140.P904092016026185817`, by `A190140.P904092016026185817.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A190140.P904092016026185817

`2*a(n-1)+a(n-2)+3*a(n-3)` with `a(0)=1, a(1)=2, a(2)=5`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A190140

/-- `2*a(n-1)+a(n-2)+3*a(n-3)` -/
def P904092016026185817.Spec : Prop :=
  ∀ n, (P904092016026185817.a n : ℤ) = A190140 n

theorem P904092016026185817.correct : P904092016026185817.Spec := by
  intro n
  simp only [A190140]

end A190140

/-! ## A190140.P10035204304721424775

`A108141(A026134(n+1))`
-/

namespace A190140.P10035204304721424775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108141 (A026134 (n + 1)).toNat

end

end A190140.P10035204304721424775

namespace A190140

/-- `A108141(A026134(n+1))` -/
def P10035204304721424775.Spec : Prop :=
  ∀ n, P10035204304721424775.a n = A190140 n

end A190140

/-!
# A190148: Largest prime factor of the least number having exactly two odd prime factors that differ by 2*n^2.

The programs for A190148, there is no canonical definition to state claims against.
-/

/-! ## A190148.P17518600264726963483

`A020484((n+1)²)`
-/

namespace A190148.P17518600264726963483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020484 ((n + 1) ^ 2)

end

end A190148.P17518600264726963483

/-! ## A190148.P5728768925190241811

`record[A020484((1-n)²)]`
-/

namespace A190148.P5728768925190241811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020484 ((1 - (n : ℤ)) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190148.P5728768925190241811

/-! ## A190148.P3000587653908421782

`A204894(2*(n+1)²)`
-/

namespace A190148.P3000587653908421782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204894 (2 * (n + 1) ^ 2)

end

end A190148.P3000587653908421782

/-! ## A190148.P17692289610010878614

`A204902(2*(n+1)²)`
-/

namespace A190148.P17692289610010878614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204902 (2 * (n + 1) ^ 2)

end

end A190148.P17692289610010878614

/-! ## A190148.P13154514380510465408

`p?[A020484(∑[2*n+1])]`
-/

namespace A190148.P13154514380510465408
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020484 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A190148.P13154514380510465408

/-! ## A190148.P2382413309419988961

`A270753((n+2)²+n²)`
-/

namespace A190148.P2382413309419988961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270753 ((n + 2) ^ 2 + n ^ 2)

end

end A190148.P2382413309419988961

/-! ## A190148.P12130496383441947219

`A216898(n+1)+(n+1)²`
-/

namespace A190148.P12130496383441947219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216898 (n + 1) + ((n + 1) ^ 2 : ℤ)

end

end A190148.P12130496383441947219

/-! ## A190148.P7966503049865345701

`A087711((n+1)²)+(n+1)²`
-/

namespace A190148.P7966503049865345701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087711 ((n + 1) ^ 2) + ((n + 1) ^ 2 : ℤ)

end

end A190148.P7966503049865345701

/-! ## A190148.P12171451785404190765

`A006530(A190052(n+1))`
-/

namespace A190148.P12171451785404190765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A190052 (n + 1)).toNat

end

end A190148.P12171451785404190765

/-! ## A190148.P12879506292040096818

`A006530(A020484((n+1)^2))`
-/

namespace A190148.P12879506292040096818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A020484 ((n + 1) ^ 2)).toNat

end

end A190148.P12879506292040096818

/-!
# A190149: Even numbers n (written in binary) such that in base-2 lunar arithmetic, the sum of the divisors of n is a number containing a 0 (in binary).

The programs for A190149, there is no canonical definition to state claims against.
-/

/-! ## A190149.P818150874523144248

`A007088(A190150(n+1))`
-/

namespace A190149.P818150874523144248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A190150 (n + 1)).toNat

end

end A190149.P818150874523144248

/-! ## A190149.P2994740915373009780

`A099820(A190151(n+1))`
-/

namespace A190149.P2994740915373009780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099820 (A190151 (n + 1)).toNat

end

end A190149.P2994740915373009780

/-! ## A190149.P848740288329498946

`A007088(2*A190151(n+1))`
-/

namespace A190149.P848740288329498946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (2 * A190151 (n + 1)).toNat

end

end A190149.P848740288329498946

/-! ## A190149.P8880312205641457029

`A185544(2*A190150(n+1))`
-/

namespace A190149.P8880312205641457029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A190150 (n + 1)).toNat

end

end A190149.P8880312205641457029

/-! ## A190149.P5715313497809165987

`A099820(A190150(n+1)/2)`
-/

namespace A190149.P5715313497809165987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099820 (SequenceMachineLib.roundAway ((A190150 (n + 1) : ℚ) / 2)).toNat

end

end A190149.P5715313497809165987

/-!
# A190150: A190149 converted to base 10.

The programs for A190150, there is no canonical definition to state claims against.
-/

/-! ## A190150.P5275715553768941654

`2*A190151(n+1)`
-/

namespace A190150.P5275715553768941654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A190151 (n + 1)

end

end A190150.P5275715553768941654

/-! ## A190150.P5815287938102945238

`A004277(A190151(n+1))`
-/

namespace A190150.P5815287938102945238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A190151 (n + 1)).toNat

end

end A190150.P5815287938102945238

/-! ## A190150.P5357631830888900184

`record[2*A190151(A141256(n))]`
-/

namespace A190150.P5357631830888900184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A190151 (A141256 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190150.P5357631830888900184

/-! ## A190150.P687158640544528002

`record[2*A190151(A305296(n))]`
-/

namespace A190150.P687158640544528002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A190151 (A305296 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190150.P687158640544528002

/-! ## A190150.P1077312410870300426

`A004275(A190151(n+1)+1)`
-/

namespace A190150.P1077312410870300426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A190151 (n + 1) + 1).toNat

end

end A190150.P1077312410870300426

/-! ## A190150.P9356003262071430333

`A051755(A190151(n+1)+1)`
-/

namespace A190150.P9356003262071430333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051755 (A190151 (n + 1) + 1).toNat

end

end A190150.P9356003262071430333

/-! ## A190150.P9500605936668304237

`A103517(A190151(n+1)-1)`
-/

namespace A190150.P9500605936668304237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (A190151 (n + 1) - 1).toNat

end

end A190150.P9500605936668304237

/-! ## A190150.P4714569307480314889

`2*lt[A061393(n), A087117(n)²]`
-/

namespace A190150.P4714569307480314889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061393 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A190150.P4714569307480314889

/-! ## A190150.P14285219242450325971

`2*lt[A136480(2*n), A087117(2*n)]`
-/

namespace A190150.P14285219242450325971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136480 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A190150.P14285219242450325971

/-! ## A190150.P9225759624584765671

`A190151(C(n+1, n))+A190151(n+1)`
-/

namespace A190150.P9225759624584765671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190151 (Nat.choose (n + 1) n) + A190151 (n + 1)

end

end A190150.P9225759624584765671

/-!
# A190151: A190149 converted to base 10 and halved.

The programs for A190151, there is no canonical definition to state claims against.
-/

/-! ## A190151.P3138267071156895456

`lt[A061393(n), A087117(n)²]`
-/

namespace A190151.P3138267071156895456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061393 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A190151.P3138267071156895456

/-! ## A190151.P1185846536608719424

`lt[A136480(2*n), A087117(n)]`
-/

namespace A190151.P1185846536608719424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136480 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A190151.P1185846536608719424

/-! ## A190151.P8781222797600602685

`lt[2*A278533(n), A278533(2*n)]`
-/

namespace A190151.P8781222797600602685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A278533 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278533 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A190151.P8781222797600602685

/-! ## A190151.P12106078364363123894

`eq[A087117(8*n+1), A087117(n)]`
-/

namespace A190151.P12106078364363123894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 (8 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190151.P12106078364363123894

/-! ## A190151.P15874783142948837596

`lt[A007814(n+1)+1, A087117(n+1)]+1`
-/

namespace A190151.P15874783142948837596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A190151.P15874783142948837596

/-! ## A190151.P11383976552947547469

`lt[A001511(A028310(n)), A087117(n)]`
-/

namespace A190151.P11383976552947547469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A190151.P11383976552947547469

/-! ## A190151.P1570563204209055285

`lt[A001511(A168101(n)), A087117(n)]`
-/

namespace A190151.P1570563204209055285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A168101 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A190151.P1570563204209055285

/-! ## A190151.P14521049482174685533

`lt[A030101(A334076(n)), A334076(n)]`
-/

namespace A190151.P14521049482174685533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A334076 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334076 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A190151.P14521049482174685533

/-! ## A190151.P15641973354357744241

`lt[A001511(A233583(n+1)), A087117(n)]`
-/

namespace A190151.P15641973354357744241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A233583 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A190151.P15641973354357744241

/-! ## A190151.P12630721371940190796

`lt[2*A030101(A331856(n)), A030101(n)]`
-/

namespace A190151.P12630721371940190796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A030101 (A331856 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A190151.P12630721371940190796

/-!
# A190152: Triangle of binomial coefficients binomial(3*n-k,3*n-3*k).

The programs for A190152, the canonical program `A190152.P9394055725372174339` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190152 has offset 0).

The definition of A190152 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6622 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190152.P9394055725372174339

`C(A131894(n)-1, A005843(A002262(n)))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A190152

/-- `C(A131894(n)-1, A005843(A002262(n)))` -/
def P9394055725372174339.Spec : Prop :=
  ∀ n, (P9394055725372174339.a n : ℤ) = A190152 n

theorem P9394055725372174339.correct : P9394055725372174339.Spec := by
  intro n
  simp only [A190152]

end A190152

/-! ## A190152.P7892729993699393962

`A193636(A245300(n)+A002262(n))`
-/

namespace A190152.P7892729993699393962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193636 (A245300 n + A002262 n).toNat

end

end A190152.P7892729993699393962

namespace A190152

/-- `A193636(A245300(n)+A002262(n))` -/
def P7892729993699393962.Spec : Prop :=
  ∀ n, P7892729993699393962.a n = A190152 n

end A190152

/-! ## A190152.P14427163406785649800

`A109955(A245300(n)+A114327(n))`
-/

namespace A190152.P14427163406785649800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109955 (A245300 n + A114327 n).toNat

end

end A190152.P14427163406785649800

namespace A190152

/-- `A109955(A245300(n)+A114327(n))` -/
def P14427163406785649800.Spec : Prop :=
  ∀ n, P14427163406785649800.a n = A190152 n

end A190152

/-! ## A190152.P14876175081775542862

`A008480(gcd(A025633(n+1), A145677(n)))`
-/

namespace A190152.P14876175081775542862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (Int.gcd (A025633 (n + 1)) (A145677 n))

end

end A190152.P14876175081775542862

namespace A190152

/-- `A008480(gcd(A025633(n+1), A145677(n)))` -/
def P14876175081775542862.Spec : Prop :=
  ∀ n, P14876175081775542862.a n = A190152 n

end A190152

/-! ## A190152.P8255918344986292857

`A008480(A025633(n+1))`
-/

namespace A190152.P8255918344986292857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (A025633 (n + 1)).toNat

end

end A190152.P8255918344986292857

namespace A190152

/-- `A008480(A025633(n+1))` -/
def P8255918344986292857.Spec : Prop :=
  ∀ n, P8255918344986292857.a n = A190152 n

end A190152

/-!
# A190153: Row sums of the triangle A190152.

The programs for A190153, the canonical program `A190153.P557704248792438487` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190153 has offset 0).

The definition of A190153 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A190153.P557704248792438487

`5*a(n-1)+2*a(n-2)+a(n-3)` with `a(0)=1, a(1)=2, a(2)=12`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A190153

/-- `5*a(n-1)+2*a(n-2)+a(n-3)` -/
def P557704248792438487.Spec : Prop :=
  ∀ n, (P557704248792438487.a n : ℤ) = A190153 n

theorem P557704248792438487.correct : P557704248792438487.Spec := by
  intro n
  simp only [A190153]

end A190153

/-! ## A190153.P17398066886606226072

`A182097(6*n)`
-/

namespace A190153.P17398066886606226072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182097 (6 * n)

end

end A190153.P17398066886606226072

namespace A190153

/-- `A182097(6*n)` -/
def P17398066886606226072.Spec : Prop :=
  ∀ n, P17398066886606226072.a n = A190153 n

end A190153

/-! ## A190153.P8108196052940420783

`A034943(Δ[n²])`
-/

namespace A190153.P8108196052940420783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034943 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A190153.P8108196052940420783

namespace A190153

/-- `A034943(Δ[n²])` -/
def P8108196052940420783.Spec : Prop :=
  ∀ n, P8108196052940420783.a n = A190153 n

end A190153

/-! ## A190153.P10382179014035964149

`∑[A159347(2*n)]`
-/

namespace A190153.P10382179014035964149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159347 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190153.P10382179014035964149

namespace A190153

/-- `∑[A159347(2*n)]` -/
def P10382179014035964149.Spec : Prop :=
  ∀ n, P10382179014035964149.a n = A190153 n

end A190153

/-! ## A190153.P753570258311094795

`A005251(3*n+1)`
-/

namespace A190153.P753570258311094795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005251 (3 * n + 1)

end

end A190153.P753570258311094795

namespace A190153

/-- `A005251(3*n+1)` -/
def P753570258311094795.Spec : Prop :=
  ∀ n, P753570258311094795.a n = A190153 n

end A190153

/-! ## A190153.P12719507320054100848

`A000931(6*n+3)`
-/

namespace A190153.P12719507320054100848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (6 * n + 3)

end

end A190153.P12719507320054100848

namespace A190153

/-- `A000931(6*n+3)` -/
def P12719507320054100848.Spec : Prop :=
  ∀ n, P12719507320054100848.a n = A190153 n

end A190153

/-! ## A190153.P10415094730032323763

`A133034(6*(n+1)+1)`
-/

namespace A190153.P10415094730032323763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133034 (6 * (n + 1) + 1)

end

end A190153.P10415094730032323763

namespace A190153

/-- `A133034(6*(n+1)+1)` -/
def P10415094730032323763.Spec : Prop :=
  ∀ n, P10415094730032323763.a n = A190153 n

end A190153

/-! ## A190153.P10533764579882443509

`A078027(6*(n+1)-1)`
-/

namespace A190153.P10533764579882443509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078027 (6 * (n + 1) - 1)

end

end A190153.P10533764579882443509

namespace A190153

/-- `A078027(6*(n+1)-1)` -/
def P10533764579882443509.Spec : Prop :=
  ∀ n, P10533764579882443509.a n = A190153 n

end A190153

/-! ## A190153.P7622215594956920487

`A159347(n+n)+a(n-1)` with `a(0)=1`
-/

namespace A190153.P7622215594956920487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A159347 (n + n) + a (n - 1)

end

end A190153.P7622215594956920487

namespace A190153

/-- `A159347(n+n)+a(n-1)` -/
def P7622215594956920487.Spec : Prop :=
  ∀ n, P7622215594956920487.a n = A190153 n

end A190153

/-! ## A190153.P6555499545886706302

`A114775(A017545(n))`
-/

namespace A190153.P6555499545886706302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114775 (A017545 n).toNat

end

end A190153.P6555499545886706302

namespace A190153

/-- `A114775(A017545(n))` -/
def P6555499545886706302.Spec : Prop :=
  ∀ n, P6555499545886706302.a n = A190153 n

end A190153

/-! ## A190153.P6074087917835286967

`A114775(A017569(n))`
-/

namespace A190153.P6074087917835286967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114775 (A017569 n).toNat

end

end A190153.P6074087917835286967

namespace A190153

/-- `A114775(A017569(n))` -/
def P6074087917835286967.Spec : Prop :=
  ∀ n, P6074087917835286967.a n = A190153 n

end A190153

/-! ## A190153.P11588999002801537731

`A181984(A004273(n))`
-/

namespace A190153.P11588999002801537731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181984 (A004273 n).toNat

end

end A190153.P11588999002801537731

namespace A190153

/-- `A181984(A004273(n))` -/
def P11588999002801537731.Spec : Prop :=
  ∀ n, P11588999002801537731.a n = A190153 n

end A190153

/-! ## A190153.P13590589959049105211

`∑[A137531(A289207(2*n))]`
-/

namespace A190153.P13590589959049105211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137531 (A289207 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190153.P13590589959049105211

namespace A190153

/-- `∑[A137531(A289207(2*n))]` -/
def P13590589959049105211.Spec : Prop :=
  ∀ n, P13590589959049105211.a n = A190153 n

end A190153

/-! ## A190153.P3613749915539732277

`A181984(A004275(n+1)-1)`
-/

namespace A190153.P3613749915539732277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181984 (A004275 (n + 1) - 1).toNat

end

end A190153.P3613749915539732277

namespace A190153

/-- `A181984(A004275(n+1)-1)` -/
def P3613749915539732277.Spec : Prop :=
  ∀ n, P3613749915539732277.a n = A190153 n

end A190153

/-! ## A190153.P18259043638653380514

`A181984(A289207(2*n+1))`
-/

namespace A190153.P18259043638653380514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181984 (A289207 (2 * n + 1)).toNat

end

end A190153.P18259043638653380514

namespace A190153

/-- `A181984(A289207(2*n+1))` -/
def P18259043638653380514.Spec : Prop :=
  ∀ n, P18259043638653380514.a n = A190153 n

end A190153

/-! ## A190153.P10096602827368448979

`A134816(2*A008486(n)-1)`
-/

namespace A190153.P10096602827368448979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134816 (2 * A008486 n - 1).toNat

end

end A190153.P10096602827368448979

namespace A190153

/-- `A134816(2*A008486(n)-1)` -/
def P10096602827368448979.Spec : Prop :=
  ∀ n, P10096602827368448979.a n = A190153 n

end A190153

/-! ## A190153.P17347222659159308404

`A181984(A004275(2*n)/2)`
-/

namespace A190153.P17347222659159308404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181984 (SequenceMachineLib.roundAway ((A004275 (2 * n) : ℚ) / 2)).toNat

end

end A190153.P17347222659159308404

namespace A190153

/-- `A181984(A004275(2*n)/2)` -/
def P17347222659159308404.Spec : Prop :=
  ∀ n, P17347222659159308404.a n = A190153 n

end A190153

/-! ## A190153.P1598997065279491169

`A181984(A289207(n+1)+n)`
-/

namespace A190153.P1598997065279491169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181984 (A289207 (n + 1) + (n : ℤ)).toNat

end

end A190153.P1598997065279491169

namespace A190153

/-- `A181984(A289207(n+1)+n)` -/
def P1598997065279491169.Spec : Prop :=
  ∀ n, P1598997065279491169.a n = A190153 n

end A190153

/-! ## A190153.P12108059454457963238

`A134816(A131098(n+1)+2*n)`
-/

namespace A190153.P12108059454457963238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134816 (A131098 (n + 1) + (2 * n : ℤ)).toNat

end

end A190153.P12108059454457963238

namespace A190153

/-- `A134816(A131098(n+1)+2*n)` -/
def P12108059454457963238.Spec : Prop :=
  ∀ n, P12108059454457963238.a n = A190153 n

end A190153

/-!
# A190155: Central coefficients of the Riordan matrix (g(x),x*g(x)), where g(x) = (1-x-x^2-sqrt(1-2*x-5*x^2+2*x^3+x^4))/(2*x^2) (A132276).

The programs for A190155, there is no canonical definition to state claims against.
-/

/-! ## A190155.P605360523138669663

`A059397(∑[4*n])`
-/

namespace A190155.P605360523138669663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059397 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A190155.P605360523138669663

/-! ## A190155.P11300663855660715757

`A132276(∑[4*n])`
-/

namespace A190155.P11300663855660715757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132276 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A190155.P11300663855660715757

/-! ## A190155.P14757753058422718924

`lcm(n+1, A132276(A046092(n)))`
-/

namespace A190155.P14757753058422718924
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A132276 (A046092 n).toNat)

end

end A190155.P14757753058422718924

/-! ## A190155.P7404129643379343294

`A132276(A046092(n))%A027307(n+1)`
-/

namespace A190155.P7404129643379343294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A132276 (A046092 n).toNat) (A027307 (n + 1))

end

end A190155.P7404129643379343294

/-! ## A190155.P239388537822685624

`A001221(A020484(n))*A132276(A046092(n))`
-/

namespace A190155.P239388537822685624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A020484 n).toNat * A132276 (A046092 n).toNat

end

end A190155.P239388537822685624

/-!
# A190156: Expansion of (1-x-3*x^2-sqrt(1-2*x-5*x^2+2*x^3+x^4))/(2*x^3*(1+2*x)).

The programs for A190156, there is no canonical definition to state claims against.
-/

/-! ## A190156.P8773029294484185276

`A128720(n+1)-2*a(n-1)` with `a(0)=1`
-/

namespace A190156.P8773029294484185276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A128720 (n + 1) - 2 * a (n - 1)

end

end A190156.P8773029294484185276

/-! ## A190156.P7697364203717756046

`∑{d}[A014437(n), A325337(#)]`
-/

namespace A190156.P7697364203717756046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014437 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A325337 d

end

end A190156.P7697364203717756046

/-! ## A190156.P11254504969566080126

`A350711(n)-A001222(A005363(n))`
-/

namespace A190156.P11254504969566080126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350711 n - A001222 (A005363 n).toNat

end

end A190156.P11254504969566080126

/-!
# A190158: Positions of 2 in A189463.

The programs for A190158, the canonical program `A190158.P6937184412483478574` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190158 has offset 1).

The definition of A190158 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190158.P6937184412483478574

`eq[2, A189463(n+1)]+1`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A190158

/-- `eq[2, A189463(n+1)]+1` -/
def P6937184412483478574.Spec : Prop :=
  ∀ n, (P6937184412483478574.a n : ℤ) = A190158 (n + 1)

theorem P6937184412483478574.correct : P6937184412483478574.Spec := by
  intro n
  simp only [A190158, Nat.add_sub_cancel]

end A190158

/-! ## A190158.P5518751161887549495

`eq[1, A279872(a(A189463(n)))]` with `a(0)=2`
-/

namespace A190158.P5518751161887549495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  A279872 (f2 (A189463 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190158.P5518751161887549495

namespace A190158

/-- `eq[1, A279872(a(A189463(n)))]` -/
def P5518751161887549495.Spec : Prop :=
  ∀ n, (P5518751161887549495.a n : ℤ) = A190158 (n + 1)

end A190158

/-! ## A190158.P13490915739178614957

`eq[1, A035553(a(A189463(n)))]` with `a(0)=4`
-/

namespace A190158.P13490915739178614957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f2 =>
  A035553 (f2 (A189463 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190158.P13490915739178614957

namespace A190158

/-- `eq[1, A035553(a(A189463(n)))]` -/
def P13490915739178614957.Spec : Prop :=
  ∀ n, (P13490915739178614957.a n : ℤ) = A190158 (n + 1)

end A190158

/-! ## A190158.P10668275701043060353

`eq[2, A112171(a(A189463(n)))]` with `a(0)=3`
-/

namespace A190158.P10668275701043060353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  A112171 (f2 (A189463 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190158.P10668275701043060353

namespace A190158

/-- `eq[2, A112171(a(A189463(n)))]` -/
def P10668275701043060353.Spec : Prop :=
  ∀ n, (P10668275701043060353.a n : ℤ) = A190158 (n + 1)

end A190158

/-! ## A190158.P13927862187922865184

`eq[3, A029967(a(A189463(n)))]` with `a(0)=6`
-/

namespace A190158.P13927862187922865184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.rec [6] fun n f2 =>
  A029967 (f2 (A189463 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190158.P13927862187922865184

namespace A190158

/-- `eq[3, A029967(a(A189463(n)))]` -/
def P13927862187922865184.Spec : Prop :=
  ∀ n, (P13927862187922865184.a n : ℤ) = A190158 (n + 1)

end A190158

/-! ## A190158.P9224714344395081948

`eq[1, A195173(3*n)%3]`
-/

namespace A190158.P9224714344395081948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A195173 (3 * n)) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190158.P9224714344395081948

namespace A190158

/-- `eq[1, A195173(3*n)%3]` -/
def P9224714344395081948.Spec : Prop :=
  ∀ n, (P9224714344395081948.a n : ℤ) = A190158 (n + 1)

end A190158

/-! ## A190158.P16410553241543001851

`lt[2, A089808(2*(n+1))]+1`
-/

namespace A190158.P16410553241543001851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089808 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A190158.P16410553241543001851

namespace A190158

/-- `lt[2, A089808(2*(n+1))]+1` -/
def P16410553241543001851.Spec : Prop :=
  ∀ n, (P16410553241543001851.a n : ℤ) = A190158 (n + 1)

end A190158

/-! ## A190158.P7750554260109877563

`lt[2, A089808(A004277(n))]`
-/

namespace A190158.P7750554260109877563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089808 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A190158.P7750554260109877563

namespace A190158

/-- `lt[2, A089808(A004277(n))]` -/
def P7750554260109877563.Spec : Prop :=
  ∀ n, (P7750554260109877563.a n : ℤ) = A190158 (n + 1)

end A190158

/-! ## A190158.P15678071630620845433

`lt[A096270(A284395(2*n+1)), A096270(2*n)]`
-/

namespace A190158.P15678071630620845433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096270 (A284395 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096270 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A190158.P15678071630620845433

namespace A190158

/-- `lt[A096270(A284395(2*n+1)), A096270(2*n)]` -/
def P15678071630620845433.Spec : Prop :=
  ∀ n, (P15678071630620845433.a n : ℤ) = A190158 (n + 1)

end A190158

/-!
# A190159: Number of peakless Motzkin paths of length n and having no uhh...hd's starting at level 0, where u = (1, 1), h = (1, 0) and d = (1, -1).

The programs for A190159, there is no canonical definition to state claims against.
-/

/-! ## A190159.P10279222040617881922

`A098071(∑[ceil(n/3)])`
-/

namespace A190159.P10279222040617881922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 3⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098071 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A190159.P10279222040617881922

/-! ## A190159.P5822082798841068852

`A098071(A001840(n))%A268302(n)`
-/

namespace A190159.P5822082798841068852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A098071 (A001840 n).toNat) (A268302 n)

end

end A190159.P5822082798841068852

/-! ## A190159.P16582830768774113522

`gcd(A000038(n), A098071(A001840(n)))`
-/

namespace A190159.P16582830768774113522
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A098071 (A001840 n).toNat)

end

end A190159.P16582830768774113522

/-! ## A190159.P1983137010763821279

`lcm(A033999(n), A098071(A001840(n)))`
-/

namespace A190159.P1983137010763821279
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A098071 (A001840 n).toNat)

end

end A190159.P1983137010763821279

/-! ## A190159.P17232338479945721727

`or(A000007(n), A098071(A001840(n)))`
-/

namespace A190159.P17232338479945721727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A098071 (A001840 n).toNat)

end

end A190159.P17232338479945721727

/-!
# A190160: Number of peakless Motzkin paths of length n containing no subwords of type uh^ju or dh^jd (j>=1), where u=(1,1), h=(1,0), and d=(1,-1) (can be easily expressed using RNA secondary structure terminology).

The programs for A190160, there is no canonical definition to state claims against.
-/

/-! ## A190160.P5420639691534902617

`A054404(∑[floor((1-n)²/(n+1))]+ceil(2^(n-1)))`
-/

namespace A190160.P5420639691534902617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((1 - (n : ℤ)) ^ 2 : ℚ) / (n + 1 : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 (∑ j ∈ Finset.range (n + 1), f1 j + ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉).toNat

end

end A190160.P5420639691534902617

/-! ## A190160.P8158399857038362509

`A092684(n)-A118759(A049856(n))`
-/

namespace A190160.P8158399857038362509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092684 n - A118759 (A049856 n).toNat

end

end A190160.P8158399857038362509

/-! ## A190160.P14552688370318372886

`floor(sqrt(A363260(∑[n])))`
-/

namespace A190160.P14552688370318372886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A363260 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A190160.P14552688370318372886

/-! ## A190160.P4572845436964242449

`A325396(a(n-1))+n-2` with `a(0)=1, a(1)=1`
-/

namespace A190160.P4572845436964242449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A325396 (a (n - 1)).toNat + ((n : ℤ) - 2)

end

end A190160.P4572845436964242449

/-! ## A190160.P11616800091234159214

`A088141(A148386(n))`
-/

namespace A190160.P11616800091234159214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088141 (A148386 n).toNat

end

end A190160.P11616800091234159214

/-!
# A190161: Number of subwords of type uh^ju and dh^jd (j>=1), where u=(1,1), h=(1,0), and d=(1,-1), in all peakless Motzkin paths of length n (can be easily expressed using RNA secondary structure terminology).

The programs for A190161, there is no canonical definition to state claims against.
-/

/-! ## A190161.P10466808592298450154

`2*A187257(n)`
-/

namespace A190161.P10466808592298450154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A187257 n

end

end A190161.P10466808592298450154

/-! ## A190161.P7577432914935501325

`A187257(char[1]+n)+A187257(n)`
-/

namespace A190161.P7577432914935501325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187257 ((if ∃ j, f1 j = n then 1 else 0) + n) + A187257 n

end

end A190161.P7577432914935501325

/-! ## A190161.P17040808731121925756

`A187257(n)/2^A008683(A020483(n))`
-/

namespace A190161.P17040808731121925756
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A187257 n : ℚ) / (2 : ℚ) ^ (A008683 (A020483 n).toNat : ℤ)

end

end A190161.P17040808731121925756

/-! ## A190161.P13956538952640779973

`A187259(n)-A190163(n)`
-/

namespace A190161.P13956538952640779973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187259 n - A190163 n

end

end A190161.P13956538952640779973

/-! ## A190161.P11387375416878228558

`A187257(n)+A187257(n)%A167539(n+1)`
-/

namespace A190161.P11387375416878228558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187257 n + Int.tmod (A187257 n) (A167539 (n + 1))

end

end A190161.P11387375416878228558

/-!
# A190162: Number of peakless Motzkin paths of length n containing no subwords of type dh^ju (j>=1), where u=(1,1), h=(1,0), and d=(1,-1) (can be easily expressed using RNA secondary structure terminology).

The programs for A190162, there is no canonical definition to state claims against.
-/

/-! ## A190162.P11449433280121619440

`A098083(lt[A182977(n), A098083(n)])`
-/

namespace A190162.P11449433280121619440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098083 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098083 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A190162.P11449433280121619440

/-! ## A190162.P2037628016802887263

`A098083(lt[A098093(2*n+1), A098045(n+1)])`
-/

namespace A190162.P2037628016802887263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098093 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098045 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098083 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A190162.P2037628016802887263

/-! ## A190162.P6046017798480588548

`A098083(lt[A098093(2*n+1), A098036(2*(n+2))])`
-/

namespace A190162.P6046017798480588548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098093 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098036 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098083 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A190162.P6046017798480588548

/-! ## A190162.P281309956737842407

`A097107(lt[A097092(n+1), A097107(n)])`
-/

namespace A190162.P281309956737842407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097092 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097107 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097107 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A190162.P281309956737842407

/-! ## A190162.P425953910114601780

`A097107(lt[A097091(n+1), A097107(n)+1])`
-/

namespace A190162.P425953910114601780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097107 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097107 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A190162.P425953910114601780

/-!
# A190163: Number of subwords of type dh^ju (j>=1), where u=(1,1), h=(1,0), and d=(1,-1), in all peakless Motzkin paths of length n (can be easily expressed using RNA secondary structure terminology).

The programs for A190163, there is no canonical definition to state claims against.
-/

/-! ## A190163.P1747251834862525608

`A187259(n)-A190161(n)`
-/

namespace A190163.P1747251834862525608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187259 n - A190161 n

end

end A190163.P1747251834862525608

/-! ## A190163.P2944201347945573024

`A187259(n)-2*A187257(n)`
-/

namespace A190163.P2944201347945573024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187259 n - 2 * A187257 n

end

end A190163.P2944201347945573024

/-! ## A190163.P2773453720738471152

`A187259(n)-A187257(n)/2^A008683(A020483(n))`
-/

namespace A190163.P2773453720738471152
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A187259 n : ℚ) - (A187257 n : ℚ) / (2 : ℚ) ^ (A008683 (A020483 n).toNat : ℤ)

end

end A190163.P2773453720738471152

/-! ## A190163.P12614155029826288062

`A187259(n)-(A187257(n)+A187257(n)%A167539(n+1))`
-/

namespace A190163.P12614155029826288062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187259 n - (A187257 n + Int.tmod (A187257 n) (A167539 (n + 1)))

end

end A190163.P12614155029826288062

/-! ## A190163.P1864354283170549608

`A347609(A068043(n))`
-/

namespace A190163.P1864354283170549608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347609 (A068043 n).toNat

end

end A190163.P1864354283170549608

/-!
# A190164: Triangle read by rows: T(n,k) is the number of peakless Motzkin paths of length n having a total of k (1,0)-steps at levels 0,2,4,... .

The programs for A190164, there is no canonical definition to state claims against.
-/

/-! ## A190164.P2841715419170804160

`A231813(lcm(A094449(n), A174690(n)))`
-/

namespace A190164.P2841715419170804160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231813 (Int.lcm (A094449 n) (A174690 n))

end

end A190164.P2841715419170804160

/-! ## A190164.P14777212824321791565

`A231813(A094449(n)*A174690(n))`
-/

namespace A190164.P14777212824321791565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231813 (A094449 n * A174690 n).toNat

end

end A190164.P14777212824321791565

/-! ## A190164.P6476516574696755150

`A060500(A145224(n)^A046854(n))`
-/

namespace A190164.P6476516574696755150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060500 (SequenceMachineLib.roundAway ((A145224 n : ℚ) ^ (A046854 n : ℤ))).toNat

end

end A190164.P6476516574696755150

/-! ## A190164.P11102213216124831069

`A060500(A145224(n)^A079487(n))`
-/

namespace A190164.P11102213216124831069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060500 (SequenceMachineLib.roundAway ((A145224 n : ℚ) ^ (A079487 n : ℤ))).toNat

end

end A190164.P11102213216124831069

/-! ## A190164.P16020448901043110340

`A060500(C(A145224(n), A046854(n)))`
-/

namespace A190164.P16020448901043110340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060500 (Nat.choose (A145224 n).toNat (A046854 n).toNat)

end

end A190164.P16020448901043110340

/-!
# A190165: Number of peakless Motzkin paths of length n having no (1,0)-steps at levels 0,2,4,... .

The programs for A190165, there is no canonical definition to state claims against.
-/

/-! ## A190165.P4123792022528636338

`A190164(∑[n])`
-/

namespace A190165.P4123792022528636338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190164 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A190165.P4123792022528636338

/-! ## A190165.P15876465294899181925

`A190164(A000217(n))^ceil(acot(n))`
-/

namespace A190165.P15876465294899181925
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A190164 (A000217 n).toNat : ℚ) ^ (⌈SequenceMachineLib.acot (n : ℝ)⌉ : ℤ)

end

end A190165.P15876465294899181925

/-! ## A190165.P7592661565509366647

`gcd(floor(1/(n+1)), A190164(A002378(n)/2))`
-/

namespace A190165.P7592661565509366647
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ⌊1 / (n + 1 : ℚ)⌋ (A190164 (SequenceMachineLib.roundAway ((A002378 n : ℚ) / 2)).toNat)

end

end A190165.P7592661565509366647

/-! ## A190165.P3761234005925912508

`A155902(a(n-1)+a(n-3))` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A190165.P3761234005925912508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A155902 (a (n - 1) + a (n - 3)).toNat

end

end A190165.P3761234005925912508

/-!
# A190166: Number of (1,0)-steps at levels 0,2,4,... in all peakless Motzkin paths of length n.

The programs for A190166, there is no canonical definition to state claims against.
-/

/-! ## A190166.P8454129851681221979

`Δ[A187258(n+1)]-A190169(n)`
-/

namespace A190166.P8454129851681221979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187258 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A190169 n

end

end A190166.P8454129851681221979

/-! ## A190166.P11851971067194362834

`A051291(n)-(A203611(n)+A190169(n))`
-/

namespace A190166.P11851971067194362834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051291 n - (A203611 n + A190169 n)

end

end A190166.P11851971067194362834

/-! ## A190166.P1553824402304173371

`A201631(n+1)-(A190169(n)+A110198(n))`
-/

namespace A190166.P1553824402304173371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201631 (n + 1) - (A190169 n + A110198 n)

end

end A190166.P1553824402304173371

/-! ## A190166.P12831517814534454059

`A201631(A028310(n)+1)%(A190169(n)+A110198(n))`
-/

namespace A190166.P12831517814534454059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A201631 (A028310 n + 1).toNat) (A190169 n + A110198 n)

end

end A190166.P12831517814534454059

/-! ## A190166.P14158083593494128058

`A202411(Δ[n²])-A190169(n)`
-/

namespace A190166.P14158083593494128058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202411 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - A190169 n

end

end A190166.P14158083593494128058

/-!
# A190168: Number of peakless Motzkin paths of length n having no (1,0)-steps at levels 1,3,5,... .

The programs for A190168, there is no canonical definition to state claims against.
-/

/-! ## A190168.P5768233277975503567

`A190167(∑[n-2]+5)`
-/

namespace A190168.P5768233277975503567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190167 (∑ j ∈ Finset.range (n + 1), f1 j + 5).toNat

end

end A190168.P5768233277975503567

/-! ## A190168.P7637228730380963899

`A257639(A045633(n)-A319396(n))`
-/

namespace A190168.P7637228730380963899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (A045633 n - A319396 n).toNat

end

end A190168.P7637228730380963899

/-! ## A190168.P11577299398636767320

`A097449(A023433(n))`
-/

namespace A190168.P11577299398636767320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097449 (A023433 n).toNat

end

end A190168.P11577299398636767320

/-! ## A190168.P9365855132966637336

`A287864(A177486(n))`
-/

namespace A190168.P9365855132966637336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287864 (A177486 n).toNat

end

end A190168.P9365855132966637336

/-! ## A190168.P5820112295963023374

`A023433(A004895(n+1))`
-/

namespace A190168.P5820112295963023374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023433 (A004895 (n + 1)).toNat

end

end A190168.P5820112295963023374

/-!
# A190169: Number of (1,0)-steps at levels 1,3,5,... in all peakless Motzkin paths of length n.

The programs for A190169, there is no canonical definition to state claims against.
-/

/-! ## A190169.P13184145610558917778

`∑[A051291(n)-A190166(n+1)]`
-/

namespace A190169.P13184145610558917778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051291 n - A190166 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190169.P13184145610558917778

/-! ## A190169.P15449116459587049738

`Δ[A187258(n+1)]-A190166(n)`
-/

namespace A190169.P15449116459587049738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187258 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A190166 n

end

end A190169.P15449116459587049738

/-! ## A190169.P8653380174301805721

`A051291(n)-(A203611(n)+A190166(n))`
-/

namespace A190169.P8653380174301805721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051291 n - (A203611 n + A190166 n)

end

end A190169.P8653380174301805721

/-! ## A190169.P954307684314202043

`A201631(n+1)-∑[A190166(n+1)]`
-/

namespace A190169.P954307684314202043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190166 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201631 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190169.P954307684314202043

/-! ## A190169.P12012175880062229513

`A201631(n+1)-(A190166(n)+A110198(n))`
-/

namespace A190169.P12012175880062229513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201631 (n + 1) - (A190166 n + A110198 n)

end

end A190169.P12012175880062229513

/-!
# A190171: Number of peakless Motzkin paths of length n having no UHD's starting at level 0; here U=(1,1), H=(1,0), and D=(1,-1).

The programs for A190171, there is no canonical definition to state claims against.
-/

/-! ## A190171.P5572965588862673161

`A190170(∑[ceil(n/3)])`
-/

namespace A190171.P5572965588862673161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 3⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190170 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A190171.P5572965588862673161

/-! ## A190171.P2265041926383013227

`A190170(A001840(n))+char[36]`
-/

namespace A190171.P2265041926383013227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  36

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190170 (A001840 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A190171.P2265041926383013227

/-! ## A190171.P14580759780987382061

`gcd(A025469(n), A190170(A001840(n)))`
-/

namespace A190171.P14580759780987382061
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025469 n) (A190170 (A001840 n).toNat)

end

end A190171.P14580759780987382061

/-! ## A190171.P6908596896102768648

`lcm(A033999(n), A190170(A001840(n)))`
-/

namespace A190171.P6908596896102768648
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A190170 (A001840 n).toNat)

end

end A190171.P6908596896102768648

/-! ## A190171.P17282945546097388139

`A190170(A001840(n))%A001262(n+1)`
-/

namespace A190171.P17282945546097388139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A190170 (A001840 n).toNat) (A001262 (n + 1))

end

end A190171.P17282945546097388139

/-!
# A190173: a(n) = Sum_{1 <= i < j <= n} F(i)*F(j), where F(k) is the k-th Fibonacci number.

The programs for A190173, the canonical program `A190173.P18046769298665928283` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190173 has offset 1).

The definition of A190173 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190173.P18046769298665928283

`A180664(n)-A001911(n)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A190173

/-- `A180664(n)-A001911(n)` -/
def P18046769298665928283.Spec : Prop :=
  ∀ n, P18046769298665928283.a n = A190173 (n + 1)

theorem P18046769298665928283.correct : P18046769298665928283.Spec := by
  intro n
  simp only [A190173, Nat.add_sub_cancel]

end A190173

/-! ## A190173.P9125289970005725299

`∑[A166536(n)-A127968(n)]`
-/

namespace A190173.P9125289970005725299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166536 n - A127968 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190173.P9125289970005725299

namespace A190173

/-- `∑[A166536(n)-A127968(n)]` -/
def P9125289970005725299.Spec : Prop :=
  ∀ n, P9125289970005725299.a n = A190173 (n + 1)

end A190173

/-! ## A190173.P2489483211135349162

`A143212(n+1)-A052952(n)`
-/

namespace A190173.P2489483211135349162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143212 (n + 1) - A052952 n

end

end A190173.P2489483211135349162

namespace A190173

/-- `A143212(n+1)-A052952(n)` -/
def P2489483211135349162.Spec : Prop :=
  ∀ n, P2489483211135349162.a n = A190173 (n + 1)

end A190173

/-! ## A190173.P6218714760435765397

`A064831(n+1)-A000071(n+3)`
-/

namespace A190173.P6218714760435765397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064831 (n + 1) - A000071 (n + 3)

end

end A190173.P6218714760435765397

namespace A190173

/-- `A064831(n+1)-A000071(n+3)` -/
def P6218714760435765397.Spec : Prop :=
  ∀ n, P6218714760435765397.a n = A190173 (n + 1)

end A190173

/-! ## A190173.P8269073775136874119

`∑[∑[A007598(n+1)-A212804(n)]]`
-/

namespace A190173.P8269073775136874119
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007598 (n + 1) - A212804 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190173.P8269073775136874119

namespace A190173

/-- `∑[∑[A007598(n+1)-A212804(n)]]` -/
def P8269073775136874119.Spec : Prop :=
  ∀ n, P8269073775136874119.a n = A190173 (n + 1)

end A190173

/-! ## A190173.P350771738650965820

`∑[A000045(n+1)*∑[A000045(n)]]`
-/

namespace A190173.P350771738650965820
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190173.P350771738650965820

namespace A190173

/-- `∑[A000045(n+1)*∑[A000045(n)]]` -/
def P350771738650965820.Spec : Prop :=
  ∀ n, P350771738650965820.a n = A190173 (n + 1)

end A190173

/-! ## A190173.P4550867677349607259

`∑[∑[A212804(n)]*A000071(n+2)]`
-/

namespace A190173.P4550867677349607259
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A000071 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190173.P4550867677349607259

namespace A190173

/-- `∑[∑[A212804(n)]*A000071(n+2)]` -/
def P4550867677349607259.Spec : Prop :=
  ∀ n, P4550867677349607259.a n = A190173 (n + 1)

end A190173

/-! ## A190173.P5031431764680603318

`∑[A001654(n+1)-A000045(n+1)]`
-/

namespace A190173.P5031431764680603318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001654 (n + 1) - A000045 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190173.P5031431764680603318

namespace A190173

/-- `∑[A001654(n+1)-A000045(n+1)]` -/
def P5031431764680603318.Spec : Prop :=
  ∀ n, P5031431764680603318.a n = A190173 (n + 1)

end A190173

/-! ## A190173.P3186408856929303149

`∑[A001654(n+1)-A212804(n+2)]`
-/

namespace A190173.P3186408856929303149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001654 (n + 1) - A212804 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190173.P3186408856929303149

namespace A190173

/-- `∑[A001654(n+1)-A212804(n+2)]` -/
def P3186408856929303149.Spec : Prop :=
  ∀ n, P3186408856929303149.a n = A190173 (n + 1)

end A190173

/-! ## A190173.P9096578998034910744

`∑[A001924(n)+∑[A000071(n+1)²]]`
-/

namespace A190173.P9096578998034910744
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001924 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190173.P9096578998034910744

namespace A190173

/-- `∑[A001924(n)+∑[A000071(n+1)²]]` -/
def P9096578998034910744.Spec : Prop :=
  ∀ n, P9096578998034910744.a n = A190173 (n + 1)

end A190173

/-! ## A190173.P18201620390741467662

`A097083(2*n+1)-A000071(n+3)`
-/

namespace A190173.P18201620390741467662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097083 (2 * n + 1) - A000071 (n + 3)

end

end A190173.P18201620390741467662

namespace A190173

/-- `A097083(2*n+1)-A000071(n+3)` -/
def P18201620390741467662.Spec : Prop :=
  ∀ n, P18201620390741467662.a n = A190173 (n + 1)

end A190173

/-! ## A190173.P18127392737500081989

`∑[∑[A152163(n+1)+A007598(n+1)]]`
-/

namespace A190173.P18127392737500081989
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152163 (n + 1) + A007598 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190173.P18127392737500081989

namespace A190173

/-- `∑[∑[A152163(n+1)+A007598(n+1)]]` -/
def P18127392737500081989.Spec : Prop :=
  ∀ n, P18127392737500081989.a n = A190173 (n + 1)

end A190173

/-! ## A190173.P11365777395819752606

`∑[∑[A007598(n+1)]-A000045(n+1)]`
-/

namespace A190173.P11365777395819752606
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007598 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A000045 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190173.P11365777395819752606

namespace A190173

/-- `∑[∑[A007598(n+1)]-A000045(n+1)]` -/
def P11365777395819752606.Spec : Prop :=
  ∀ n, P11365777395819752606.a n = A190173 (n + 1)

end A190173

/-! ## A190173.P18183691666423248889

`∑[∑[A103609(2*n)]*A079977(2*n)]`
-/

namespace A190173.P18183691666423248889
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A079977 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190173.P18183691666423248889

namespace A190173

/-- `∑[∑[A103609(2*n)]*A079977(2*n)]` -/
def P18183691666423248889.Spec : Prop :=
  ∀ n, P18183691666423248889.a n = A190173 (n + 1)

end A190173

/-! ## A190173.P9031536941591340715

`∑[Δ[A339572(2*n)]*A339572(2*n)]`
-/

namespace A190173.P9031536941591340715
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339572 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A339572 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190173.P9031536941591340715

namespace A190173

/-- `∑[Δ[A339572(2*n)]*A339572(2*n)]` -/
def P9031536941591340715.Spec : Prop :=
  ∀ n, P9031536941591340715.a n = A190173 (n + 1)

end A190173

/-! ## A190173.P7133997310464277543

`∑[(A000071(n+1)+1)*A000071(n+2)]`
-/

namespace A190173.P7133997310464277543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000071 (n + 1) + 1) * A000071 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190173.P7133997310464277543

namespace A190173

/-- `∑[(A000071(n+1)+1)*A000071(n+2)]` -/
def P7133997310464277543.Spec : Prop :=
  ∀ n, P7133997310464277543.a n = A190173 (n + 1)

end A190173

/-! ## A190173.P12461798418968218516

`∑[Δ[A131524(2*(n+1))]*A131524(2*(n+1))]`
-/

namespace A190173.P12461798418968218516
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131524 (2 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A131524 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190173.P12461798418968218516

namespace A190173

/-- `∑[Δ[A131524(2*(n+1))]*A131524(2*(n+1))]` -/
def P12461798418968218516.Spec : Prop :=
  ∀ n, P12461798418968218516.a n = A190173 (n + 1)

end A190173

/-! ## A190173.P2167029735670404923

`A119996(n+1)-(A166536(n)+A001911(n))`
-/

namespace A190173.P2167029735670404923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119996 (n + 1) - (A166536 n + A001911 n)

end

end A190173.P2167029735670404923

namespace A190173

/-- `A119996(n+1)-(A166536(n)+A001911(n))` -/
def P2167029735670404923.Spec : Prop :=
  ∀ n, P2167029735670404923.a n = A190173 (n + 1)

end A190173

/-! ## A190173.P7704608012623454032

`A180664(n)-(A000071(n+1)+A000071(n+2))`
-/

namespace A190173.P7704608012623454032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180664 n - (A000071 (n + 1) + A000071 (n + 2))

end

end A190173.P7704608012623454032

namespace A190173

/-- `A180664(n)-(A000071(n+1)+A000071(n+2))` -/
def P7704608012623454032.Spec : Prop :=
  ∀ n, P7704608012623454032.a n = A190173 (n + 1)

end A190173

/-! ## A190173.P8634444204704401766

`A064831(n)+A000071(n+1)*A000071(n+2)`
-/

namespace A190173.P8634444204704401766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064831 n + A000071 (n + 1) * A000071 (n + 2)

end

end A190173.P8634444204704401766

namespace A190173

/-- `A064831(n)+A000071(n+1)*A000071(n+2)` -/
def P8634444204704401766.Spec : Prop :=
  ∀ n, P8634444204704401766.a n = A190173 (n + 1)

end A190173

/-!
# A190175: The Goebel-Matula numbers of the rooted trees having only vertices of odd degree.

The programs for A190175, there is no canonical definition to state claims against.
-/

/-! ## A190175.P2591661777571999188

`lt[1, A229834(A196063(n+1))]+1`
-/

namespace A190175.P2591661777571999188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229834 (A196063 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A190175.P2591661777571999188

/-! ## A190175.P16458601577108804641

`record[A032742(A298126(n+2))]`
-/

namespace A190175.P16458601577108804641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A298126 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190175.P16458601577108804641

/-!
# A190176: a(n) = n^4 + 2^4 + (n+2)^4.

The programs for A190176, the canonical program `A190176.P96193524026991553` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190176 has offset 0).

The definition of A190176 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A190176.P96193524026991553

`2*(n²+2*n+4)²`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A190176

/-- `2*(n²+2*n+4)²` -/
def P96193524026991553.Spec : Prop :=
  ∀ n, (P96193524026991553.a n : ℤ) = A190176 n

theorem P96193524026991553.correct : P96193524026991553.Spec := by
  intro n
  simp only [A190176]

end A190176

/-! ## A190176.P6593016898070078392

`∑[a(n-1)+4]²/2` with `a(0)=8, a(1)=6`
-/

namespace A190176.P6593016898070078392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [8, 6] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℚ) / 2

end

end A190176.P6593016898070078392

namespace A190176

/-- `∑[a(n-1)+4]²/2` -/
def P6593016898070078392.Spec : Prop :=
  ∀ n, P6593016898070078392.a n = (A190176 n : ℚ)

end A190176

/-! ## A190176.P11801119997501060447

`(∑[A016825(n)]+6)²/2`
-/

namespace A190176.P11801119997501060447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j + 6) ^ 2 : ℤ) : ℚ) / 2

end

end A190176.P11801119997501060447

namespace A190176

/-- `(∑[A016825(n)]+6)²/2` -/
def P11801119997501060447.Spec : Prop :=
  ∀ n, P11801119997501060447.a n = (A190176 n : ℚ)

end A190176

/-! ## A190176.P8140512491398586813

`2/((n+1)/A079908(n+1))^2`
-/

namespace A190176.P8140512491398586813
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / ((n + 1 : ℚ) / (A079908 (n + 1) : ℚ)) ^ 2

end

end A190176.P8140512491398586813

namespace A190176

/-- `2/((n+1)/A079908(n+1))^2` -/
def P8140512491398586813.Spec : Prop :=
  ∀ n, P8140512491398586813.a n = (A190176 n : ℚ)

end A190176

/-! ## A190176.P4675109020741027163

`(A255844(n)+A016825(n))²/2`
-/

namespace A190176.P4675109020741027163
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A255844 n + A016825 n) ^ 2 : ℚ) / 2

end

end A190176.P4675109020741027163

namespace A190176

/-- `(A255844(n)+A016825(n))²/2` -/
def P4675109020741027163.Spec : Prop :=
  ∀ n, P4675109020741027163.a n = (A190176 n : ℚ)

end A190176

/-! ## A190176.P17500781313738829812

`A255844(n+1)²/2`
-/

namespace A190176.P17500781313738829812
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A255844 (n + 1) ^ 2 : ℚ) / 2

end

end A190176.P17500781313738829812

namespace A190176

/-- `A255844(n+1)²/2` -/
def P17500781313738829812.Spec : Prop :=
  ∀ n, P17500781313738829812.a n = (A190176 n : ℚ)

end A190176

/-! ## A190176.P4749951642505833488

`A059100(n+1)*A155966(n+1)+2`
-/

namespace A190176.P4749951642505833488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059100 (n + 1) * A155966 (n + 1) + 2

end

end A190176.P4749951642505833488

namespace A190176

/-- `A059100(n+1)*A155966(n+1)+2` -/
def P4749951642505833488.Spec : Prop :=
  ∀ n, P4749951642505833488.a n = A190176 n

end A190176

/-! ## A190176.P17444588284623719180

`A255844(n+1)+A059100(n+1)*A255844(n+1)`
-/

namespace A190176.P17444588284623719180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255844 (n + 1) + A059100 (n + 1) * A255844 (n + 1)

end

end A190176.P17444588284623719180

namespace A190176

/-- `A255844(n+1)+A059100(n+1)*A255844(n+1)` -/
def P17444588284623719180.Spec : Prop :=
  ∀ n, P17444588284623719180.a n = A190176 n

end A190176

/-! ## A190176.P3775775633003365018

`A001105((n+1)²+3)`
-/

namespace A190176.P3775775633003365018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001105 ((n + 1) ^ 2 + 3)

end

end A190176.P3775775633003365018

namespace A190176

/-- `A001105((n+1)²+3)` -/
def P3775775633003365018.Spec : Prop :=
  ∀ n, P3775775633003365018.a n = A190176 n

end A190176

/-! ## A190176.P3522501434286409551

`A184636((n+1)²+3)`
-/

namespace A190176.P3522501434286409551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184636 ((n + 1) ^ 2 + 3)

end

end A190176.P3522501434286409551

namespace A190176

/-- `A184636((n+1)²+3)` -/
def P3522501434286409551.Spec : Prop :=
  ∀ n, P3522501434286409551.a n = A190176 n

end A190176

/-!
# A190178: Continued fraction of (1+sqrt(2)+sqrt(7+6*sqrt(2)))/2.

The programs for A190178, there is no canonical definition to state claims against.
-/

/-! ## A190178.P1145871323520010985

`A190180(n+1)`
-/

namespace A190178.P1145871323520010985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190180 (n + 1)

end

end A190178.P1145871323520010985

/-!
# A190186: Numerator of expression W_n occurring in analysis of bubble sort.

The programs for A190186, there is no canonical definition to state claims against.
-/

/-! ## A190186.P2234890197435932586

`A289493(lcm(A007955(n+1), A104352(3*n+2)))`
-/

namespace A190186.P2234890197435932586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289493 (Int.lcm (A007955 (n + 1)) (A104352 (3 * n + 2)))

end

end A190186.P2234890197435932586

/-!
# A190187: Denominator of expression W_n occurring in analysis of bubble sort.

The programs for A190187, there is no canonical definition to state claims against.
-/

/-! ## A190187.P12558423840429996549

`A065033(lcm(∏[n*n²%3+1], n+1))`
-/

namespace A190187.P12558423840429996549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n ^ 2 % 3) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (Nat.lcm (∏ j ∈ Finset.range (n + 1), f1 j) (n + 1))

end

end A190187.P12558423840429996549

/-! ## A190187.P15786982845662324883

`A004525(lcm(n+1, A123144(n+1)))`
-/

namespace A190187.P15786982845662324883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (Int.lcm (n + 1 : ℤ) (A123144 (n + 1)))

end

end A190187.P15786982845662324883

/-! ## A190187.P13726046105854656365

`A106609((n+1)²/∏{p}[n+1, #]*n!)`
-/

namespace A190187.P13726046105854656365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106609 (SequenceMachineLib.roundAway (((n + 1) ^ 2 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * (Nat.factorial n : ℚ))).toNat

end

end A190187.P13726046105854656365

/-!
# A190188: a(n) = [n*u+n*v]-[n*u]-[n*v], where u=e, v=1/e, and []=floor.

The programs for A190188, there is no canonical definition to state claims against.
-/

/-! ## A190188.P16336643076863720828

`char[A190190(n+1)-1]`
-/

namespace A190188.P16336643076863720828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190190 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A190188.P16336643076863720828

/-! ## A190188.P10587244543509980334

`char[comp[A190189(n+1)-1]]`
-/

namespace A190188.P10587244543509980334
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190189 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A190188.P10587244543509980334

/-! ## A190188.P2384079440473923456

`A010060(A085318(n+2)+A018252(n+1))`
-/

namespace A190188.P2384079440473923456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A085318 (n + 2) + A018252 (n + 1)).toNat

end

end A190188.P2384079440473923456

/-! ## A190188.P8191287584891988096

`A373549(A248085(n+2))`
-/

namespace A190188.P8191287584891988096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373549 (A248085 (n + 2)).toNat

end

end A190188.P8191287584891988096

/-! ## A190188.P13137403193135250378

`A342892(lcm(A052499(n), A124518(n+1)))`
-/

namespace A190188.P13137403193135250378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342892 (Int.lcm (A052499 n) (A124518 (n + 1)))

end

end A190188.P13137403193135250378

/-!
# A190189: Positions of 0 in A190188; complement of A190190.

The programs for A190189, there is no canonical definition to state claims against.
-/

/-! ## A190189.P16330254043996060758

`eq[0, A190188(n+1)]+1`
-/

namespace A190189.P16330254043996060758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190188 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A190189.P16330254043996060758

/-! ## A190189.P15911051014209485049

`A065475(eq[0, A190188(n+1)])`
-/

namespace A190189.P15911051014209485049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190188 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A190189.P15911051014209485049

/-! ## A190189.P11063083207312714647

`eq[0, A190188(A000007(n)+n)]`
-/

namespace A190189.P11063083207312714647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190188 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190189.P11063083207312714647

/-! ## A190189.P2249074063260084086

`eq[char[A190190(n+1)], A000007(n)]`
-/

namespace A190189.P2249074063260084086
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190190 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A190189.P2249074063260084086

/-! ## A190189.P14492751844519489995

`eq[0, A190188(A233583(n+1))]`
-/

namespace A190189.P14492751844519489995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190188 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190189.P14492751844519489995

/-!
# A190190: Positions of 1 in A190188; complement of A180189.

The programs for A190190, there is no canonical definition to state claims against.
-/

/-! ## A190190.P2969779231904246840

`comp[A190189(n+1)-1]+1`
-/

namespace A190190.P2969779231904246840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190189 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A190190.P2969779231904246840

/-! ## A190190.P16835698211713072926

`filter[n+1, A190188(#)]`
-/

namespace A190190.P16835698211713072926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A190188 (f1 j) = 1) n)

end

end A190190.P16835698211713072926

/-! ## A190190.P18206177377114936691

`eq[1, A190188(n+1)]+1`
-/

namespace A190190.P18206177377114936691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190188 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A190190.P18206177377114936691

/-! ## A190190.P5033312946191022719

`record[A000290((n+1)*A190188(n+1))/(n+1)]`
-/

namespace A190190.P5033312946191022719
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000290 ((n + 1 : ℤ) * A190188 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190190.P5033312946191022719

/-! ## A190190.P1955459520710428130

`record[((n+1)*A190188(n+1))%A001748(n+1)]`
-/

namespace A190190.P1955459520710428130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n + 1 : ℤ) * A190188 (n + 1)) (A001748 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190190.P1955459520710428130

/-! ## A190190.P633471777833591960

`record[(n+1)*A190188((n+1)%A190189(n+1))]`
-/

namespace A190190.P633471777833591960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A190188 (Int.tmod (n + 1 : ℤ) (A190189 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190190.P633471777833591960

/-! ## A190190.P442427449900203860

`record[A008619(n)*A190188(A008619(n))]`
-/

namespace A190190.P442427449900203860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n * A190188 (A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190190.P442427449900203860

/-!
# A190191: a(n) = [n*u+n*v]-[n*u]-[n*v], where u=sqrt(2), v=1/u, and []=floor.

The programs for A190191, the canonical program `A190191.P5373117418856345114` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190191 has offset 1).

The definition of A190191 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A190191.P5373117418856345114

`floor((n+1)*(sqrt(2)+1/sqrt(2)))-floor((n+1)*sqrt(2))-floor((n+1)/sqrt(2))`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A190191

/-- `floor((n+1)*(sqrt(2)+1/sqrt(2)))-floor((n+1)*sqrt(2))-floor((n+1)/sqrt(2))` -/
def P5373117418856345114.Spec : Prop :=
  ∀ n, P5373117418856345114.a n = A190191 (n + 1)

theorem P5373117418856345114.correct : P5373117418856345114.Spec := by
  intro n
  simp only [A190191, Nat.add_sub_cancel]

end A190191

/-! ## A190191.P1654409266097209086

`A184920(n+1)%2`
-/

namespace A190191.P1654409266097209086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184920 (n + 1)) 2

end

end A190191.P1654409266097209086

namespace A190191

/-- `A184920(n+1)%2` -/
def P1654409266097209086.Spec : Prop :=
  ∀ n, P1654409266097209086.a n = A190191 (n + 1)

end A190191

/-! ## A190191.P2604243012254823834

`char[A190193(n+1)-1]`
-/

namespace A190191.P2604243012254823834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190193 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A190191.P2604243012254823834

namespace A190191

/-- `char[A190193(n+1)-1]` -/
def P2604243012254823834.Spec : Prop :=
  ∀ n, (P2604243012254823834.a n : ℤ) = A190191 (n + 1)

end A190191

/-! ## A190191.P13989636913058927055

`and(A080764(n), A184920(n+1))`
-/

namespace A190191.P13989636913058927055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A080764 n) (A184920 (n + 1))

end

end A190191.P13989636913058927055

namespace A190191

/-- `and(A080764(n), A184920(n+1))` -/
def P13989636913058927055.Spec : Prop :=
  ∀ n, P13989636913058927055.a n = A190191 (n + 1)

end A190191

/-! ## A190191.P6980386409782026530

`and(A184920(n+1), A329684(n))`
-/

namespace A190191.P6980386409782026530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A184920 (n + 1)) (A329684 n)

end

end A190191.P6980386409782026530

namespace A190191

/-- `and(A184920(n+1), A329684(n))` -/
def P6980386409782026530.Spec : Prop :=
  ∀ n, P6980386409782026530.a n = A190191 (n + 1)

end A190191

/-! ## A190191.P15206268906720208764

`A001951(and(1, 2-A184920(n+1)))`
-/

namespace A190191.P15206268906720208764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (Int.land 1 (2 - A184920 (n + 1))).toNat

end

end A190191.P15206268906720208764

namespace A190191

/-- `A001951(and(1, 2-A184920(n+1)))` -/
def P15206268906720208764.Spec : Prop :=
  ∀ n, P15206268906720208764.a n = A190191 (n + 1)

end A190191

/-! ## A190191.P1688008723504123491

`and(A059811(n+1), A184920(n+1))`
-/

namespace A190191.P1688008723504123491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A059811 (n + 1)) (A184920 (n + 1))

end

end A190191.P1688008723504123491

namespace A190191

/-- `and(A059811(n+1), A184920(n+1))` -/
def P1688008723504123491.Spec : Prop :=
  ∀ n, P1688008723504123491.a n = A190191 (n + 1)

end A190191

/-! ## A190191.P8666951105768947722

`and(A184920(n+1), A187967(n+1))`
-/

namespace A190191.P8666951105768947722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A184920 (n + 1)) (A187967 (n + 1))

end

end A190191.P8666951105768947722

namespace A190191

/-- `and(A184920(n+1), A187967(n+1))` -/
def P8666951105768947722.Spec : Prop :=
  ∀ n, P8666951105768947722.a n = A190191 (n + 1)

end A190191

/-! ## A190191.P7560034551110906556

`and(A184920(n+1), A188395(n+1))`
-/

namespace A190191.P7560034551110906556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A184920 (n + 1)) (A188395 (n + 1))

end

end A190191.P7560034551110906556

namespace A190191

/-- `and(A184920(n+1), A188395(n+1))` -/
def P7560034551110906556.Spec : Prop :=
  ∀ n, P7560034551110906556.a n = A190191 (n + 1)

end A190191

/-! ## A190191.P10236654040273432335

`and(1, (A105132(n+1)*A184920(n+1))²)`
-/

namespace A190191.P10236654040273432335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ((A105132 (n + 1) * A184920 (n + 1)) ^ 2)

end

end A190191.P10236654040273432335

namespace A190191

/-- `and(1, (A105132(n+1)*A184920(n+1))²)` -/
def P10236654040273432335.Spec : Prop :=
  ∀ n, P10236654040273432335.a n = A190191 (n + 1)

end A190191

/-! ## A190191.P14441324652498861413

`A187976(A003152(3*(n+1))-A001952(n+1))`
-/

namespace A190191.P14441324652498861413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187976 (A003152 (3 * (n + 1)) - A001952 (n + 1)).toNat

end

end A190191.P14441324652498861413

namespace A190191

/-- `A187976(A003152(3*(n+1))-A001952(n+1))` -/
def P14441324652498861413.Spec : Prop :=
  ∀ n, P14441324652498861413.a n = A190191 (n + 1)

end A190191

/-! ## A190191.P8254327483328892039

`A187976(A003152(3*(n+1))-A003152(n+1))`
-/

namespace A190191.P8254327483328892039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187976 (A003152 (3 * (n + 1)) - A003152 (n + 1)).toNat

end

end A190191.P8254327483328892039

namespace A190191

/-- `A187976(A003152(3*(n+1))-A003152(n+1))` -/
def P8254327483328892039.Spec : Prop :=
  ∀ n, P8254327483328892039.a n = A190191 (n + 1)

end A190191

/-! ## A190191.P16727162481618788213

`A004641(A003152(3*(n+1))-(n+1))`
-/

namespace A190191.P16727162481618788213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004641 (A003152 (3 * (n + 1)) - (n + 1 : ℤ)).toNat

end

end A190191.P16727162481618788213

namespace A190191

/-- `A004641(A003152(3*(n+1))-(n+1))` -/
def P16727162481618788213.Spec : Prop :=
  ∀ n, P16727162481618788213.a n = A190191 (n + 1)

end A190191

/-! ## A190191.P4771381637789626140

`A080764(A184920(n+1)-n)*A080764(n)`
-/

namespace A190191.P4771381637789626140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080764 (A184920 (n + 1) - (n : ℤ)).toNat * A080764 n

end

end A190191.P4771381637789626140

namespace A190191

/-- `A080764(A184920(n+1)-n)*A080764(n)` -/
def P4771381637789626140.Spec : Prop :=
  ∀ n, P4771381637789626140.a n = A190191 (n + 1)

end A190191

/-! ## A190191.P14682394984314908904

`A000035(A184920(n+1))`
-/

namespace A190191.P14682394984314908904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A184920 (n + 1)).toNat

end

end A190191.P14682394984314908904

namespace A190191

/-- `A000035(A184920(n+1))` -/
def P14682394984314908904.Spec : Prop :=
  ∀ n, P14682394984314908904.a n = A190191 (n + 1)

end A190191

/-! ## A190191.P7136579830233358423

`A188041(A188043(2*(n+1))+A188043(n+1))`
-/

namespace A190191.P7136579830233358423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188041 (A188043 (2 * (n + 1)) + A188043 (n + 1)).toNat

end

end A190191.P7136579830233358423

namespace A190191

/-- `A188041(A188043(2*(n+1))+A188043(n+1))` -/
def P7136579830233358423.Spec : Prop :=
  ∀ n, P7136579830233358423.a n = A190191 (n + 1)

end A190191

/-! ## A190191.P9476492803332429040

`A080764(2*A184920(n+1)+n)`
-/

namespace A190191.P9476492803332429040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080764 (2 * A184920 (n + 1) + (n : ℤ)).toNat

end

end A190191.P9476492803332429040

namespace A190191

/-- `A080764(2*A184920(n+1)+n)` -/
def P9476492803332429040.Spec : Prop :=
  ∀ n, P9476492803332429040.a n = A190191 (n + 1)

end A190191

/-! ## A190191.P14258486055613299102

`A080764(A184920(n+1)+A184920(n+1)+n)`
-/

namespace A190191.P14258486055613299102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080764 (A184920 (n + 1) + (A184920 (n + 1) + (n : ℤ))).toNat

end

end A190191.P14258486055613299102

namespace A190191

/-- `A080764(A184920(n+1)+A184920(n+1)+n)` -/
def P14258486055613299102.Spec : Prop :=
  ∀ n, P14258486055613299102.a n = A190191 (n + 1)

end A190191

/-!
# A190192: Positions of 0 in A190191; complement of A190193.

The programs for A190192, there is no canonical definition to state claims against.
-/

/-! ## A190192.P11987509801486027023

`∪[A190488(n+1), A190767(n+1)]`
-/

namespace A190192.P11987509801486027023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190488 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190767 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A190192.P11987509801486027023

/-! ## A190192.P7233106970473120941

`eq[0, A190191(n+1)]+1`
-/

namespace A190192.P7233106970473120941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190191 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A190192.P7233106970473120941

/-! ## A190192.P14871772791971265899

`A020725(eq[0, A190191(n+1)])`
-/

namespace A190192.P14871772791971265899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190191 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A190192.P14871772791971265899

/-! ## A190192.P11893898664450834594

`eq[A083035(n+1), A190766(n+1)]+1`
-/

namespace A190192.P11893898664450834594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083035 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190766 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A190192.P11893898664450834594

/-! ## A190192.P6667197480201250547

`eq[0, A190191(A000007(n)+n)]`
-/

namespace A190192.P6667197480201250547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190191 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190192.P6667197480201250547

/-! ## A190192.P13995474148635444175

`eq[0, A190191(A233583(n+1))]`
-/

namespace A190192.P13995474148635444175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190191 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190192.P13995474148635444175

/-!
# A190193: Positions of 1 in A190191; complement of A190192.

The programs for A190193, the canonical program `A190193.P15655261993866097081` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190193 has offset 1).

The definition of A190193 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190193.P15785156458745105119

`∪[A190490(n+1), A190769(n+1)]`
-/

namespace A190193.P15785156458745105119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190490 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190769 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A190193.P15785156458745105119

namespace A190193

/-- `∪[A190490(n+1), A190769(n+1)]` -/
def P15785156458745105119.Spec : Prop :=
  ∀ n, (P15785156458745105119.a n : ℤ) = A190193 (n + 1)

end A190193

/-! ## A190193.P15655261993866097081

`filter[n+1, A190191(#)]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A190193

/-- `filter[n+1, A190191(#)]` -/
def P15655261993866097081.Spec : Prop :=
  ∀ n, (P15655261993866097081.a n : ℤ) = A190193 (n + 1)

theorem P15655261993866097081.correct : P15655261993866097081.Spec := by
  intro n
  simp only [A190193, Nat.add_sub_cancel]

end A190193

/-! ## A190193.P16070431931444680495

`eq[1, A190191(n+1)]+1`
-/

namespace A190193.P16070431931444680495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190191 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A190193.P16070431931444680495

namespace A190193

/-- `eq[1, A190191(n+1)]+1` -/
def P16070431931444680495.Spec : Prop :=
  ∀ n, (P16070431931444680495.a n : ℤ) = A190193 (n + 1)

end A190193

/-! ## A190193.P12236560327622950231

`record[(n+1)*A184920(n+1)%2]`
-/

namespace A190193.P12236560327622950231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.tmod (A184920 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190193.P12236560327622950231

namespace A190193

/-- `record[(n+1)*A184920(n+1)%2]` -/
def P12236560327622950231.Spec : Prop :=
  ∀ n, P12236560327622950231.a n = A190193 (n + 1)

end A190193

/-! ## A190193.P4994355565913414729

`record[A000027(n+1)*A190191(n+1)]`
-/

namespace A190193.P4994355565913414729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A190191 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190193.P4994355565913414729

namespace A190193

/-- `record[A000027(n+1)*A190191(n+1)]` -/
def P4994355565913414729.Spec : Prop :=
  ∀ n, P4994355565913414729.a n = A190193 (n + 1)

end A190193

/-! ## A190193.P13117540432481892889

`record[(n+1)*and(A184920(n+1), A188395(n+1))]`
-/

namespace A190193.P13117540432481892889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.land (A184920 (n + 1)) (A188395 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190193.P13117540432481892889

namespace A190193

/-- `record[(n+1)*and(A184920(n+1), A188395(n+1))]` -/
def P13117540432481892889.Spec : Prop :=
  ∀ n, P13117540432481892889.a n = A190193 (n + 1)

end A190193

/-! ## A190193.P5935165776849876485

`record[A190191(A285758(n+1))*A285758(n+1)]`
-/

namespace A190193.P5935165776849876485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190191 (A285758 (n + 1)).toNat * A285758 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190193.P5935165776849876485

namespace A190193

/-- `record[A190191(A285758(n+1))*A285758(n+1)]` -/
def P5935165776849876485.Spec : Prop :=
  ∀ n, P5935165776849876485.a n = A190193 (n + 1)

end A190193

/-! ## A190193.P17666450363220545941

`record[A008619(n)*A190191(A008619(n))]`
-/

namespace A190193.P17666450363220545941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n * A190191 (A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190193.P17666450363220545941

namespace A190193

/-- `record[A008619(n)*A190191(A008619(n))]` -/
def P17666450363220545941.Spec : Prop :=
  ∀ n, P17666450363220545941.a n = A190193 (n + 1)

end A190193

/-! ## A190193.P6179801372703231126

`record[A190191(A266977(n))*A266977(n)]`
-/

namespace A190193.P6179801372703231126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190191 (A266977 n).toNat * A266977 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190193.P6179801372703231126

namespace A190193

/-- `record[A190191(A266977(n))*A266977(n)]` -/
def P6179801372703231126.Spec : Prop :=
  ∀ n, P6179801372703231126.a n = A190193 (n + 1)

end A190193

/-!
# A190194: a(n) = Sum_{r=0..n-1} Sum_{s=r+1..n} s! * r^(n-s).

The programs for A190194, there is no canonical definition to state claims against.
-/

/-! ## A190194.P14667282567029561208

`∑[A004526((∑[n+1]+1)/2*n!)]`
-/

namespace A190194.P14667282567029561208
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f2 j + 1 : ℕ) : ℚ) / 2 * (Nat.factorial n : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190194.P14667282567029561208

/-! ## A190194.P6749880627652791726

`∑[A004526(A006595(n))]`
-/

namespace A190194.P6749880627652791726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A006595 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190194.P6749880627652791726

/-!
# A190195: Numerators of a Taylor series expansion of 1/sqrt(cosh(x)) (even powers only).

The programs for A190195, there is no canonical definition to state claims against.
-/

/-! ## A190195.P16637339410452490562

`A033999(n)*A038502(A126156(n))`
-/

namespace A190195.P16637339410452490562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A038502 (A126156 n).toNat

end

end A190195.P16637339410452490562

/-!
# A190196: Denominators of a Taylor series expansion of 1/sqrt(cosh(x)) (even powers only).

The programs for A190196, there is no canonical definition to state claims against.
-/

/-! ## A190196.P16221293501035420977

`A010050(n)/A345000(2*4^n-1)*record[A131052(n+1)]`
-/

namespace A190196.P16221293501035420977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131052 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010050 n : ℚ) / (A345000 (2 * 4 ^ n - 1) : ℚ) * (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A190196.P16221293501035420977

/-! ## A190196.P15465366846050878087

`A010050(n)/A345000(2*4^n-1)*record[A181815(n+1)]`
-/

namespace A190196.P15465366846050878087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181815 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010050 n : ℚ) / (A345000 (2 * 4 ^ n - 1) : ℚ) * (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A190196.P15465366846050878087

/-! ## A190196.P2024442860381068791

`A065140(n)/A050352(A324687(n))`
-/

namespace A190196.P2024442860381068791
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065140 n : ℚ) / (A050352 (A324687 n).toNat : ℚ)

end

end A190196.P2024442860381068791

/-!
# A190197: a(1) = 2. For n > 1, a(n) is the least prime > a(n-1)*n/2.

The programs for A190197, there is no canonical definition to state claims against.
-/

/-! ## A190197.P11370523848496747251

`A151800(floor((n+1)/2*a(n-1)))` with `a(0)=2`
-/

namespace A190197.P11370523848496747251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A151800 ⌊(n + 1 : ℚ) / 2 * (a (n - 1) : ℚ)⌋.toNat

end

end A190197.P11370523848496747251

/-! ## A190197.P16748637480901863171

`A188666((n+1)*a(n-1))` with `a(0)=2`
-/

namespace A190197.P16748637480901863171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A188666 ((n + 1 : ℤ) * a (n - 1)).toNat

end

end A190197.P16748637480901863171

/-! ## A190197.P8400698245602433023

`A308052((n+1)*a(n-1))` with `a(0)=2, a(1)=3`
-/

namespace A190197.P8400698245602433023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  A308052 ((n + 1 : ℤ) * a (n - 1)).toNat

end

end A190197.P8400698245602433023

/-! ## A190197.P14492780157754910576

`A076973((n+1)*a(n-1)+n-1)` with `a(0)=2`
-/

namespace A190197.P14492780157754910576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A076973 ((n + 1 : ℤ) * a (n - 1) + ((n : ℤ) - 1)).toNat

end

end A190197.P14492780157754910576

/-!
# A190198: a(n) = [n*u+n*v]-[n*u]-[n*v], where u=sqrt(3), v=1/u, and []=floor.

The programs for A190198, the canonical program `A190198.P8237210884700633152` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190198 has offset 1).

The definition of A190198 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A190198.P8237210884700633152

`floor((n+1)*(sqrt(3)+1/sqrt(3)))-floor((n+1)*sqrt(3))-floor((n+1)/sqrt(3))`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A190198

/-- `floor((n+1)*(sqrt(3)+1/sqrt(3)))-floor((n+1)*sqrt(3))-floor((n+1)/sqrt(3))` -/
def P8237210884700633152.Spec : Prop :=
  ∀ n, P8237210884700633152.a n = A190198 (n + 1)

theorem P8237210884700633152.correct : P8237210884700633152.Spec := by
  intro n
  simp only [A190198, Nat.add_sub_cancel]

end A190198

/-! ## A190198.P8530926439899684681

`char[A190200(n+1)-1]`
-/

namespace A190198.P8530926439899684681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190200 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A190198.P8530926439899684681

namespace A190198

/-- `char[A190200(n+1)-1]` -/
def P8530926439899684681.Spec : Prop :=
  ∀ n, (P8530926439899684681.a n : ℤ) = A190198 (n + 1)

end A190198

/-! ## A190198.P6423230202513584071

`(A195072(n+1)+A190056(n+1))%2`
-/

namespace A190198.P6423230202513584071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A195072 (n + 1) + A190056 (n + 1)) 2

end

end A190198.P6423230202513584071

namespace A190198

/-- `(A195072(n+1)+A190056(n+1))%2` -/
def P6423230202513584071.Spec : Prop :=
  ∀ n, P6423230202513584071.a n = A190198 (n + 1)

end A190198

/-! ## A190198.P17341848205502041816

`A000035(A190056(n+1)-A186539(n+1))`
-/

namespace A190198.P17341848205502041816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A190056 (n + 1) - A186539 (n + 1)).toNat

end

end A190198.P17341848205502041816

namespace A190198

/-- `A000035(A190056(n+1)-A186539(n+1))` -/
def P17341848205502041816.Spec : Prop :=
  ∀ n, P17341848205502041816.a n = A190198 (n + 1)

end A190198

/-! ## A190198.P8819973442055880375

`A000035(A190056(n+1)-A195072(n+1))`
-/

namespace A190198.P8819973442055880375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A190056 (n + 1) - A195072 (n + 1)).toNat

end

end A190198.P8819973442055880375

namespace A190198

/-- `A000035(A190056(n+1)-A195072(n+1))` -/
def P8819973442055880375.Spec : Prop :=
  ∀ n, P8819973442055880375.a n = A190198 (n + 1)

end A190198

/-! ## A190198.P15725959099234202042

`A059841(A190056(n+1)-A183142(n+1))`
-/

namespace A190198.P15725959099234202042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A190056 (n + 1) - A183142 (n + 1)).toNat

end

end A190198.P15725959099234202042

namespace A190198

/-- `A059841(A190056(n+1)-A183142(n+1))` -/
def P15725959099234202042.Spec : Prop :=
  ∀ n, P15725959099234202042.a n = A190198 (n + 1)

end A190198

/-! ## A190198.P252084994548493224

`A000035(A195072(n+1)+A190056(n+1))`
-/

namespace A190198.P252084994548493224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A195072 (n + 1) + A190056 (n + 1)).toNat

end

end A190198.P252084994548493224

namespace A190198

/-- `A000035(A195072(n+1)+A190056(n+1))` -/
def P252084994548493224.Spec : Prop :=
  ∀ n, P252084994548493224.a n = A190198 (n + 1)

end A190198

/-! ## A190198.P17959971017635768098

`A059841(A183142(n+1)+A190056(n+1)+2)`
-/

namespace A190198.P17959971017635768098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A183142 (n + 1) + (A190056 (n + 1) + 2)).toNat

end

end A190198.P17959971017635768098

namespace A190198

/-- `A059841(A183142(n+1)+A190056(n+1)+2)` -/
def P17959971017635768098.Spec : Prop :=
  ∀ n, P17959971017635768098.a n = A190198 (n + 1)

end A190198

/-! ## A190198.P11659105972492627064

`A000035(A186539(n+1)+A190056(n+1)+2)`
-/

namespace A190198.P11659105972492627064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A186539 (n + 1) + (A190056 (n + 1) + 2)).toNat

end

end A190198.P11659105972492627064

namespace A190198

/-- `A000035(A186539(n+1)+A190056(n+1)+2)` -/
def P11659105972492627064.Spec : Prop :=
  ∀ n, P11659105972492627064.a n = A190198 (n + 1)

end A190198

/-! ## A190198.P16796428290212195829

`A059841(A190056(n+1)+A183142(n+1)²)`
-/

namespace A190198.P16796428290212195829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A190056 (n + 1) + A183142 (n + 1) ^ 2).toNat

end

end A190198.P16796428290212195829

namespace A190198

/-- `A059841(A190056(n+1)+A183142(n+1)²)` -/
def P16796428290212195829.Spec : Prop :=
  ∀ n, P16796428290212195829.a n = A190198 (n + 1)

end A190198

/-!
# A190199: Positions of 0 in A190198; complement of A190200.

The programs for A190199, the canonical program `A190199.P13571509793014364535` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190199 has offset 1).

The definition of A190199 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190199.P13571509793014364535

`comp[A190200(n+1)-1]+1`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A190199

/-- `comp[A190200(n+1)-1]+1` -/
def P13571509793014364535.Spec : Prop :=
  ∀ n, (P13571509793014364535.a n : ℤ) = A190199 (n + 1)

theorem P13571509793014364535.correct : P13571509793014364535.Spec := by
  intro n
  simp only [A190199, Nat.add_sub_cancel]

end A190199

/-! ## A190199.P4842901977800084376

`eq[0, A190198(n+1)]+1`
-/

namespace A190199.P4842901977800084376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190198 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A190199.P4842901977800084376

namespace A190199

/-- `eq[0, A190198(n+1)]+1` -/
def P4842901977800084376.Spec : Prop :=
  ∀ n, (P4842901977800084376.a n : ℤ) = A190199 (n + 1)

end A190199

/-! ## A190199.P12837110051559318866

`eq[0, A190198(A028310(n))]`
-/

namespace A190199.P12837110051559318866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190198 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190199.P12837110051559318866

namespace A190199

/-- `eq[0, A190198(A028310(n))]` -/
def P12837110051559318866.Spec : Prop :=
  ∀ n, (P12837110051559318866.a n : ℤ) = A190199 (n + 1)

end A190199

/-! ## A190199.P17623389764025337161

`A020725(eq[0, A190198(n+1)])`
-/

namespace A190199.P17623389764025337161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190198 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A190199.P17623389764025337161

namespace A190199

/-- `A020725(eq[0, A190198(n+1)])` -/
def P17623389764025337161.Spec : Prop :=
  ∀ n, P17623389764025337161.a n = A190199 (n + 1)

end A190199

/-! ## A190199.P2414766423877015158

`eq[char[A190200(n+1)], A000007(n)]`
-/

namespace A190199.P2414766423877015158
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190200 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A190199.P2414766423877015158

namespace A190199

/-- `eq[char[A190200(n+1)], A000007(n)]` -/
def P2414766423877015158.Spec : Prop :=
  ∀ n, (P2414766423877015158.a n : ℤ) = A190199 (n + 1)

end A190199

/-! ## A190199.P10477828060530156500

`eq[0, A190198(A137735(n²))]`
-/

namespace A190199.P10477828060530156500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190198 (A137735 (n ^ 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190199.P10477828060530156500

namespace A190199

/-- `eq[0, A190198(A137735(n²))]` -/
def P10477828060530156500.Spec : Prop :=
  ∀ n, (P10477828060530156500.a n : ℤ) = A190199 (n + 1)

end A190199

