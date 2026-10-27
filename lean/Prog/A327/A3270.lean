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
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
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
# A327001: Generalized Bell numbers, square array read by ascending antidiagonals, A(n, k) for n, k >= 0.

The programs for A327001, there is no canonical definition to state claims against.
-/

/-! ## A327001.P10758534763245625975

`A007953(A113143(n)^A196017(n+1))`
-/

namespace A327001.P10758534763245625975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (SequenceMachineLib.roundAway ((A113143 n : ℚ) ^ (A196017 (n + 1) : ℤ))).toNat

end

end A327001.P10758534763245625975

/-! ## A327001.P14194758053651496893

`A007953(A274859(n)^A196017(n+1))`
-/

namespace A327001.P14194758053651496893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (SequenceMachineLib.roundAway ((A274859 n : ℚ) ^ (A196017 (n + 1) : ℤ))).toNat

end

end A327001.P14194758053651496893

/-! ## A327001.P6491898139516709791

`A007953(A381369(n)^A196017(n+1))`
-/

namespace A327001.P6491898139516709791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (SequenceMachineLib.roundAway ((A381369 n : ℚ) ^ (A196017 (n + 1) : ℤ))).toNat

end

end A327001.P6491898139516709791

/-! ## A327001.P17970851556041375526

`A113143(n)^A080159(n)!`
-/

namespace A327001.P17970851556041375526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113143 n ^ Nat.factorial (A080159 n).toNat

end

end A327001.P17970851556041375526

/-! ## A327001.P2471244239056917893

`A113143(n)^A095759(n)!`
-/

namespace A327001.P2471244239056917893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113143 n ^ Nat.factorial (A095759 n).toNat

end

end A327001.P2471244239056917893

/-!
# A327002: a(n) = A018893(n) - A291973(n).

The programs for A327002, there is no canonical definition to state claims against.
-/

/-! ## A327002.P4814067643269647180

`A018893(n)-A291973(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A327002.P4814067643269647180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018893 n - A291973 n

end

end A327002.P4814067643269647180

/-! ## A327002.P13784831438690672511

`A018893(n)-A260876(A056000(n)+6)`
-/

namespace A327002.P13784831438690672511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018893 n - A260876 (A056000 n + 6).toNat

end

end A327002.P13784831438690672511

/-! ## A327002.P6298869004485509939

`A018893(n)-A260876(eq[3, A025581(n)])`
-/

namespace A327002.P6298869004485509939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018893 n - A260876 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A327002.P6298869004485509939

/-! ## A327002.P16756275697292673197

`A018893(n)-A260876(eq[7, A099375(n)])`
-/

namespace A327002.P16756275697292673197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018893 n - A260876 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A327002.P16756275697292673197

/-! ## A327002.P6547065329728885436

`A018893(n)-A260876(eq[4, A004736(n+1)])`
-/

namespace A327002.P6547065329728885436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018893 n - A260876 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A327002.P6547065329728885436

/-!
# A327003: Irregular triangle read by rows in which the n-th row lists multinomials for partitions of 3n which have only parts which are multiples of 3, in Hindenburg order.

The programs for A327003, there is no canonical definition to state claims against.
-/

/-! ## A327003.P17421169600066508692

`(A327023(n)/A036043(n)!)%A174216(n+1)`
-/

namespace A327003.P17421169600066508692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A327023 n : ℚ) / (Nat.factorial (A036043 n).toNat : ℚ))) (A174216 (n + 1))

end

end A327003.P17421169600066508692

/-! ## A327003.P8401314292731749407

`A211360(gcd(A037213(n), A292164(n)))`
-/

namespace A327003.P8401314292731749407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211360 (Int.gcd (A037213 n) (A292164 n))

end

end A327003.P8401314292731749407

/-! ## A327003.P2706357881507954026

`A291451(A115384(n)+A099145(n+1))`
-/

namespace A327003.P2706357881507954026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291451 (A115384 n + A099145 (n + 1)).toNat

end

end A327003.P2706357881507954026

/-!
# A327004: Irregular triangle read by rows in which the n-th row lists multinomials for partitions of 4n which have only parts which are multiples of 4, in Hindenburg order.

The programs for A327004, there is no canonical definition to state claims against.
-/

/-! ## A327004.P13271187673339661412

`A291452(lcm(A116583(n), A116590(n)))`
-/

namespace A327004.P13271187673339661412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291452 (Int.lcm (A116583 n) (A116590 n))

end

end A327004.P13271187673339661412

/-! ## A327004.P5451832888678320458

`A291452(lt[A348811(n), A264428(n)])`
-/

namespace A327004.P5451832888678320458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348811 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264428 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291452 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A327004.P5451832888678320458

/-! ## A327004.P1114608617565532404

`A291452(lt[A348811(n), A291452(n)])`
-/

namespace A327004.P1114608617565532404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348811 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291452 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291452 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A327004.P1114608617565532404

/-!
# A327005: T(n, k) = Sum_{i=1..n} BM[k][i] where BM is the BellMatrix(x -> x mod n) as defined in A264428. Square array read by ascending antidiagonals for n >= 1 and k >= 1.

The programs for A327005, there is no canonical definition to state claims against.
-/

/-! ## A327005.P9961699194035681197

`A005136(A276890(n))*A259776(n)`
-/

namespace A327005.P9961699194035681197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005136 (A276890 n).toNat * A259776 n

end

end A327005.P9961699194035681197

/-! ## A327005.P9003394361070607944

`lcm(A005136(A276921(n)), A259776(n))`
-/

namespace A327005.P9003394361070607944
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A005136 (A276921 n).toNat) (A259776 n)

end

end A327005.P9003394361070607944

/-! ## A327005.P3861527196919168101

`A213945(n)*A248908(A203647(n+1))`
-/

namespace A327005.P3861527196919168101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213945 n * A248908 (A203647 (n + 1)).toNat

end

end A327005.P3861527196919168101

/-! ## A327005.P11068620667631947172

`A005136(and(A166350(n+1), A276890(n)))`
-/

namespace A327005.P11068620667631947172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005136 (Int.land (A166350 (n + 1)) (A276890 n)).toNat

end

end A327005.P11068620667631947172

/-! ## A327005.P11757514708040569977

`A259776(A057889(n)%A355747(n+3))`
-/

namespace A327005.P11757514708040569977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259776 (Int.tmod (A057889 n) (A355747 (n + 3))).toNat

end

end A327005.P11757514708040569977

/-!
# A327006: a(n) = A327005(n, n).

The programs for A327006, there is no canonical definition to state claims against.
-/

/-! ## A327006.P8019977675851010905

`A005843(A347571(n))-A321989(n)`
-/

namespace A327006.P8019977675851010905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A347571 n).toNat - A321989 n

end

end A327006.P8019977675851010905

/-! ## A327006.P9110055124523784766

`A099947(n)*A234022(A000166(n))`
-/

namespace A327006.P9110055124523784766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099947 n * A234022 (A000166 n).toNat

end

end A327006.P9110055124523784766

/-! ## A327006.P10384316023229197584

`A327005(A058331(n))`
-/

namespace A327006.P10384316023229197584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327005 (A058331 n).toNat

end

end A327006.P10384316023229197584

/-!
# A327007: a(n) = number of iterations of f(x)=floor((x^2+n)/(2x)) starting at x=n to reach the value floor(sqrt(n)) (=A000196(n)).

The programs for A327007, there is no canonical definition to state claims against.
-/

/-! ## A327007.P16763273769344218742

`A000195((2*A249683(n))%A248381(n+1))`
-/

namespace A327007.P16763273769344218742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000195 (Int.tmod (2 * A249683 n) (A248381 (n + 1))).toNat

end

end A327007.P16763273769344218742

/-!
# A327008: a(n) = number of iterations of f(x)=floor((x^2+n^2)/(2x)) starting at x=n^2 to reach the value n.

The programs for A327008, the canonical program `A327008.P7042617821927860861` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327008 has offset 1).

The definition of A327008 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A327008.P2356576655262527585

`floor(log2(A241920((n+1)²)))`
-/

namespace A327008.P2356576655262527585
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A241920 ((n + 1) ^ 2)).toNat

end

end A327008.P2356576655262527585

namespace A327008

/-- `floor(log2(A241920((n+1)²)))` -/
def P2356576655262527585.Spec : Prop :=
  ∀ n, (P2356576655262527585.a n : ℤ) = A327008 (n + 1)

end A327008

/-! ## A327008.P17103080417968497512

`∑[char[A327010(n+2)-1]]`
-/

namespace A327008.P17103080417968497512
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327010 (n + 2) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327008.P17103080417968497512

namespace A327008

/-- `∑[char[A327010(n+2)-1]]` -/
def P17103080417968497512.Spec : Prop :=
  ∀ n, (P17103080417968497512.a n : ℤ) = A327008 (n + 1)

end A327008

/-! ## A327008.P2001467849114323815

`floor(log2(∑[A233519(3*n+1)]))`
-/

namespace A327008.P2001467849114323815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233519 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A327008.P2001467849114323815

namespace A327008

/-- `floor(log2(∑[A233519(3*n+1)]))` -/
def P2001467849114323815.Spec : Prop :=
  ∀ n, (P2001467849114323815.a n : ℤ) = A327008 (n + 1)

end A327008

/-! ## A327008.P18121140771731674355

`∑[char[A008619(A384177(n))]]`
-/

namespace A327008.P18121140771731674355
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A384177 n).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327008.P18121140771731674355

namespace A327008

/-- `∑[char[A008619(A384177(n))]]` -/
def P18121140771731674355.Spec : Prop :=
  ∀ n, (P18121140771731674355.a n : ℤ) = A327008 (n + 1)

end A327008

/-! ## A327008.P1894361865164815730

`A000523(A241920((n+1)²))`
-/

namespace A327008.P1894361865164815730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A241920 ((n + 1) ^ 2)).toNat

end

end A327008.P1894361865164815730

namespace A327008

/-- `A000523(A241920((n+1)²))` -/
def P1894361865164815730.Spec : Prop :=
  ∀ n, P1894361865164815730.a n = A327008 (n + 1)

end A327008

/-! ## A327008.P16399680707601520559

`A130259(n*A089576(n+1))`
-/

namespace A327008.P16399680707601520559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130259 ((n : ℤ) * A089576 (n + 1)).toNat

end

end A327008.P16399680707601520559

namespace A327008

/-- `A130259(n*A089576(n+1))` -/
def P16399680707601520559.Spec : Prop :=
  ∀ n, P16399680707601520559.a n = A327008 (n + 1)

end A327008

/-! ## A327008.P10600645986932731613

`∑[char[A214899(n)+A110532(n)]]`
-/

namespace A327008.P10600645986932731613
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214899 n + A110532 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327008.P10600645986932731613

namespace A327008

/-- `∑[char[A214899(n)+A110532(n)]]` -/
def P10600645986932731613.Spec : Prop :=
  ∀ n, (P10600645986932731613.a n : ℤ) = A327008 (n + 1)

end A327008

/-! ## A327008.P11223622681980161444

`A000523(∑[A032741(2*or(1, n))])`
-/

namespace A327008.P11223622681980161444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (2 * Nat.lor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A327008.P11223622681980161444

namespace A327008

/-- `A000523(∑[A032741(2*or(1, n))])` -/
def P11223622681980161444.Spec : Prop :=
  ∀ n, P11223622681980161444.a n = A327008 (n + 1)

end A327008

/-! ## A327008.P7042617821927860861

`A029837(∑[A246017(A055941(n+3))])`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A327008

/-- `A029837(∑[A246017(A055941(n+3))])` -/
def P7042617821927860861.Spec : Prop :=
  ∀ n, P7042617821927860861.a n = A327008 (n + 1)

theorem P7042617821927860861.correct : P7042617821927860861.Spec := by
  intro n
  simp only [A327008, Nat.add_sub_cancel]

end A327008

/-! ## A327008.P5013661231662986680

`A080342(A020915(n)*A127739(n+1))`
-/

namespace A327008.P5013661231662986680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080342 (A020915 n * A127739 (n + 1)).toNat

end

end A327008.P5013661231662986680

namespace A327008

/-- `A080342(A020915(n)*A127739(n+1))` -/
def P5013661231662986680.Spec : Prop :=
  ∀ n, P5013661231662986680.a n = A327008 (n + 1)

end A327008

/-! ## A327008.P11713197864745079872

`A000523(∑[A000193(A055948(2*n+1))])`
-/

namespace A327008.P11713197864745079872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000193 (A055948 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A327008.P11713197864745079872

namespace A327008

/-- `A000523(∑[A000193(A055948(2*n+1))])` -/
def P11713197864745079872.Spec : Prop :=
  ∀ n, P11713197864745079872.a n = A327008 (n + 1)

end A327008

/-! ## A327008.P2402043774947523868

`A000523(or(A015919(n+1), A095375(n+1)))`
-/

namespace A327008.P2402043774947523868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (Int.lor (A015919 (n + 1)) (A095375 (n + 1))).toNat

end

end A327008.P2402043774947523868

namespace A327008

/-- `A000523(or(A015919(n+1), A095375(n+1)))` -/
def P2402043774947523868.Spec : Prop :=
  ∀ n, P2402043774947523868.a n = A327008 (n + 1)

end A327008

/-!
# A327009: Indices of records in A327007.

The programs for A327009, there is no canonical definition to state claims against.
-/

/-! ## A327009.P16738098800896704047

`A001175(A015859(a(n-1)))` with `a(0)=1, a(1)=2`
-/

namespace A327009.P16738098800896704047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A001175 (A015859 (a (n - 1)).toNat).toNat

end

end A327009.P16738098800896704047

/-! ## A327009.P12027909658133126789

`record[gcd(A006851(2*n), A006882(n))]`
-/

namespace A327009.P12027909658133126789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A006851 (2 * n)) (A006882 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A327009.P12027909658133126789

/-! ## A327009.P2330685563197534784

`A018253(n+1)*A048766(A149632(n))`
-/

namespace A327009.P2330685563197534784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018253 (n + 1) * A048766 (A149632 n).toNat

end

end A327009.P2330685563197534784

/-! ## A327009.P13975690286859545908

`eq[A069359(n+1), A262689(A299702(n+1))]`
-/

namespace A327009.P13975690286859545908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (A299702 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327009.P13975690286859545908

/-!
# A327010: Indices of records in A327008.

The programs for A327010, there is no canonical definition to state claims against.
-/

/-! ## A327010.P11239446133178788866

`A194303(A148079(n+1))`
-/

namespace A327010.P11239446133178788866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194303 (A148079 (n + 1)).toNat

end

end A327010.P11239446133178788866

/-! ## A327010.P13098758773443346856

`A069623(2*(A073193(n)+n))`
-/

namespace A327010.P13098758773443346856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069623 (2 * (A073193 n + (n : ℤ))).toNat

end

end A327010.P13098758773443346856

/-! ## A327010.P2692682352845161895

`A055086(n)+A000196(A294768(n))`
-/

namespace A327010.P2692682352845161895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 n + A000196 (A294768 n).toNat

end

end A327010.P2692682352845161895

/-! ## A327010.P2921362453611529458

`A281976(n)+A024327(A046717(n))`
-/

namespace A327010.P2921362453611529458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281976 n + A024327 (A046717 n).toNat

end

end A327010.P2921362453611529458

/-! ## A327010.P6830989086486831978

`A002024(A336419(n)-A218629(n))`
-/

namespace A327010.P6830989086486831978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A336419 n - A218629 n).toNat

end

end A327010.P6830989086486831978

/-!
# A327011: Number of unlabeled sets of subsets covering n vertices where every vertex is the unique common element of some subset of the edges, also called unlabeled covering T_1 sets of subsets.

The programs for A327011, there is no canonical definition to state claims against.
-/

/-! ## A327011.P8065112095865776338

`2*A326974(n)`
-/

namespace A327011.P8065112095865776338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A326974 n

end

end A327011.P8065112095865776338

/-!
# A327012: Number of factorizations of n into factors > 1 whose dual is a (strict) antichain.

The programs for A327012, there is no canonical definition to state claims against.
-/

/-! ## A327012.P5101619138788046869

`A050367(A000688(n+1))`
-/

namespace A327012.P5101619138788046869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050367 (A000688 (n + 1)).toNat

end

end A327012.P5101619138788046869

/-! ## A327012.P9574193461763671787

`A050367(A295879(n+1))`
-/

namespace A327012.P9574193461763671787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050367 (A295879 (n + 1)).toNat

end

end A327012.P9574193461763671787

/-! ## A327012.P6000624809354280628

`A050367(A381455(n+1))`
-/

namespace A327012.P6000624809354280628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050367 (A381455 (n + 1)).toNat

end

end A327012.P6000624809354280628

/-! ## A327012.P1421889574387088649

`A024899(ceil(sqrt(A212173(n+1))))`
-/

namespace A327012.P1421889574387088649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024899 ⌈Real.sqrt (A212173 (n + 1) : ℝ)⌉.toNat

end

end A327012.P1421889574387088649

/-! ## A327012.P9101733036492869073

`A212167(ceil(sqrt(A212173(n+1))))`
-/

namespace A327012.P9101733036492869073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212167 ⌈Real.sqrt (A212173 (n + 1) : ℝ)⌉.toNat

end

end A327012.P9101733036492869073

/-! ## A327012.P4700963384569030526

`A349026(ceil(sqrt(A212173(n+1))))`
-/

namespace A327012.P4700963384569030526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349026 ⌈Real.sqrt (A212173 (n + 1) : ℝ)⌉.toNat

end

end A327012.P4700963384569030526

/-! ## A327012.P13653503465258917497

`A050367(∏{e}[n+1, A000041(#)])`
-/

namespace A327012.P13653503465258917497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050367 (∏ p ∈ Nat.primeFactors (f1 n), A000041 (Nat.factorization (f1 n) p)).toNat

end

end A327012.P13653503465258917497

/-! ## A327012.P11731166810245129836

`A335462(n+1)+A322453(n+1)`
-/

namespace A327012.P11731166810245129836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335462 (n + 1) + A322453 (n + 1)

end

end A327012.P11731166810245129836

/-! ## A327012.P6594839485994029194

`A000041(A337331((n+1)/∏{p}[n+1, #]))%18`
-/

namespace A327012.P6594839485994029194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000041 (A337331 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat).toNat) 18

end

end A327012.P6594839485994029194

/-! ## A327012.P1733444177021996797

`A087826(A000124(A292582(n+1)))`
-/

namespace A327012.P1733444177021996797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087826 (A000124 (A292582 (n + 1)).toNat).toNat

end

end A327012.P1733444177021996797

/-!
# A327013: Number of non-isomorphic T_0 set-systems covering a subset of {1..n} that are closed under intersection.

The programs for A327013, there is no canonical definition to state claims against.
-/

/-! ## A327013.P1668711509140434305

`A001462(A304986(n))`
-/

namespace A327013.P1668711509140434305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A304986 n).toNat

end

end A327013.P1668711509140434305

/-! ## A327013.P5750908732199829060

`A394021(A038373(n))`
-/

namespace A327013.P5750908732199829060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394021 (A038373 n).toNat

end

end A327013.P5750908732199829060

/-!
# A327014: Number of orbits of Sym(n)^2 where Sym(n) acts by conjugation such that both permutations in a representative pair have the same cycle type.

The programs for A327014, there is no canonical definition to state claims against.
-/

/-! ## A327014.P11005736116116955840

`2*A327015(n)-A110143(n)`
-/

namespace A327014.P11005736116116955840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A327015 n - A110143 n

end

end A327014.P11005736116116955840

/-! ## A327014.P13639785888889940772

`2*A327015(n)-A160449(∑[n+1]+2)`
-/

namespace A327014.P13639785888889940772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A327015 n - A160449 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A327014.P13639785888889940772

/-! ## A327014.P11110939005535908602

`A005843(A327015(n))-A110143(n)`
-/

namespace A327014.P11110939005535908602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A327015 n).toNat - A110143 n

end

end A327014.P11110939005535908602

/-! ## A327014.P5927783403444982388

`A005843(A327015(n))-A160449(∑[n+1]+2)`
-/

namespace A327014.P5927783403444982388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A327015 n).toNat - A160449 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A327014.P5927783403444982388

/-!
# A327015: Number of equivalence classes of pairs of permutations in S_n where two pairs are equivalent if they are simultaneously conjugate to each other or simultaneously conjugate to each other after a reversal of one pair.

The programs for A327015, there is no canonical definition to state claims against.
-/

/-! ## A327015.P156934411009809258

`(A110143(n)+A327014(n))/2`
-/

namespace A327015.P156934411009809258
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110143 n + A327014 n : ℚ) / 2

end

end A327015.P156934411009809258

/-! ## A327015.P13755468996784335616

`(A327014(n)+A160449(∑[n+1]+2))/2`
-/

namespace A327015.P13755468996784335616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327014 n + A160449 (∑ j ∈ Finset.range (n + 1), f1 j + 2) : ℚ) / 2

end

end A327015.P13755468996784335616

/-! ## A327015.P5750810135623184830

`A273943(A327014(n)+A110143(n))`
-/

namespace A327015.P5750810135623184830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A327014 n + A110143 n).toNat

end

end A327015.P5750810135623184830

/-! ## A327015.P6688134401937109416

`A273943(A327014(n)+A160449(∑[n+1]+2))`
-/

namespace A327015.P6688134401937109416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A327014 n + A160449 (∑ j ∈ Finset.range (n + 1), f1 j + 2)).toNat

end

end A327015.P6688134401937109416

/-!
# A327016: BII-numbers of finite T_0 topologies without their empty set.

The programs for A327016, there is no canonical definition to state claims against.
-/

/-! ## A327016.P15059279933477909254

`∩[A326876(n+1), A326947(n+1)]`
-/

namespace A327016.P15059279933477909254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326876 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326947 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A327016.P15059279933477909254

/-! ## A327016.P11503157400229926156

`lt[A344339(comp[xor(n, 2*n+1)]), 2]`
-/

namespace A327016.P11503157400229926156
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344339 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A327016.P11503157400229926156

/-! ## A327016.P1173709371263060910

`eq[0, A174886(A330101(n))]`
-/

namespace A327016.P1173709371263060910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174886 (A330101 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A327016.P1173709371263060910

/-! ## A327016.P13366383272524872822

`eq[A326702(A326031(n)), A326702(n)]`
-/

namespace A327016.P13366383272524872822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326702 (A326031 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326702 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327016.P13366383272524872822

/-!
# A327017: Number of non-isomorphic multiset partitions of weight n where every vertex, as a multiset of weight 1, is the multiset-meet of some subset of the edges.

The programs for A327017, there is no canonical definition to state claims against.
-/

/-! ## A327017.P858018902972609664

`A163858(∏[2*a(floor(n/2))])` with `a(0)=13, a(1)=1`
-/

namespace A327017.P858018902972609664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [13, 1] fun n f1 =>
  2 * f1 ⌊(n : ℚ) / 2⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163858 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A327017.P858018902972609664

/-! ## A327017.P9708315087414794164

`A337125(A151256(n))`
-/

namespace A327017.P9708315087414794164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337125 (A151256 n).toNat

end

end A327017.P9708315087414794164

/-! ## A327017.P12757386774931108893

`A337125(A208126(n))`
-/

namespace A327017.P12757386774931108893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337125 (A208126 n).toNat

end

end A327017.P12757386774931108893

/-! ## A327017.P7242548897949424982

`floor((A204892(A164090(3*n+4))+6)/9)`
-/

namespace A327017.P7242548897949424982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A204892 (A164090 (3 * n + 4)).toNat + 6 : ℚ) / 9⌋

end

end A327017.P7242548897949424982

/-!
# A327018: Number of non-isomorphic set-systems of weight n whose dual is a weak antichain.

The programs for A327018, there is no canonical definition to state claims against.
-/

/-! ## A327018.P8824234650902136250

`A220418(n+1)-A098238(n)`
-/

namespace A327018.P8824234650902136250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220418 (n + 1) - A098238 n

end

end A327018.P8824234650902136250

/-! ## A327018.P731692453896179765

`A182522(n)-A290101(A020114(n))`
-/

namespace A327018.P731692453896179765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182522 n - A290101 (A020114 n).toNat

end

end A327018.P731692453896179765

/-! ## A327018.P11405089037445643812

`ceil(sqrt(A186443(n+1)/3)/3)`
-/

namespace A327018.P11405089037445643812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt ((A186443 (n + 1) : ℚ) / 3 : ℝ) / 3⌉

end

end A327018.P11405089037445643812

/-! ## A327018.P10923776837545307328

`A306468(A083323(n))`
-/

namespace A327018.P10923776837545307328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306468 (A083323 n).toNat

end

end A327018.P10923776837545307328

/-!
# A327019: Number of non-isomorphic set-systems of weight n whose dual is a (strict) antichain.

The programs for A327019, there is no canonical definition to state claims against.
-/

/-! ## A327019.P17453248654813267715

`A238875(round(n²/8)+1)`
-/

namespace A327019.P17453248654813267715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238875 (SequenceMachineLib.roundAway ((n ^ 2 : ℚ) / 8) + 1).toNat

end

end A327019.P17453248654813267715

/-! ## A327019.P1046737032861821104

`ceil(4^n/A325676(3*n+2))`
-/

namespace A327019.P1046737032861821104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(4 ^ n : ℚ) / (A325676 (3 * n + 2) : ℚ)⌉

end

end A327019.P1046737032861821104

/-! ## A327019.P4942721159158480275

`A071995(n*a(n-2)+1)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=2`
-/

namespace A327019.P4942721159158480275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1, 2] fun n a =>
  A071995 ((n : ℤ) * a (n - 2) + 1).toNat

end

end A327019.P4942721159158480275

/-! ## A327019.P14052544446170588484

`A035382(A008627(n))`
-/

namespace A327019.P14052544446170588484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035382 (A008627 n).toNat

end

end A327019.P14052544446170588484

/-! ## A327019.P2201080780206315630

`A203076(A000672(n))`
-/

namespace A327019.P2201080780206315630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203076 (A000672 n).toNat

end

end A327019.P2201080780206315630

/-!
# A327020: Number of antichains covering n vertices where every two vertices appear together in some edge (cointersecting).

The programs for A327020, there is no canonical definition to state claims against.
-/

/-! ## A327020.P6278040295034087809

`A327351(abs(2-∑[n+1]))`
-/

namespace A327020.P6278040295034087809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327351 |2 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)|.toNat

end

end A327020.P6278040295034087809

/-! ## A327020.P13975095335691352770

`A363026(a(n-1)²)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A327020.P13975095335691352770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A363026 (a (n - 1) ^ 2).toNat

end

end A327020.P13975095335691352770

/-!
# A327021: a(n) = (2*n-1)! / 2^(n-1) if n > 0 and a(0) = 1.

The programs for A327021, there is no canonical definition to state claims against.
-/

/-! ## A327021.P16658264429945090880

`C(2*n-1, 2)*a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A327021.P16658264429945090880
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  Nat.choose ((2 * n : ℤ) - 1).toNat 2 * a (n - 1)

end

end A327021.P16658264429945090880

/-! ## A327021.P4590087786259911139

`∏[C(comp[2*(n+1)], comp[2*(n+2)])]`
-/

namespace A327021.P4590087786259911139
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n) (SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A327021.P4590087786259911139

/-! ## A327021.P15957869390476047778

`(1-2*n)*(1-n)*a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A327021.P15957869390476047778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (1 - (2 * n : ℤ)) * ((1 - (n : ℤ)) * a (n - 1))

end

end A327021.P15957869390476047778

/-! ## A327021.P1352703010400768945

`∏[2*n+1]/(2*n+1)*abs(1-n)!`
-/

namespace A327021.P1352703010400768945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (2 * n + 1 : ℚ) * (Nat.factorial |1 - (n : ℤ)|.toNat : ℚ)

end

end A327021.P1352703010400768945

/-! ## A327021.P17017186062742996095

`(2*n-1)*a(n-1)*A023443(n)` with `a(0)=1, a(1)=1`
-/

namespace A327021.P17017186062742996095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  ((2 * n : ℤ) - 1) * a (n - 1) * A023443 n

end

end A327021.P17017186062742996095

/-!
# A327022: Partition triangle read by rows. Number of ordered set partitions of the set {1, 2, ..., 2*n} with all block sizes divisible by 2.

The programs for A327022, there is no canonical definition to state claims against.
-/

/-! ## A327022.P14453145275849650339

`A048996(n)*A257468(A028310(n))`
-/

namespace A327022.P14453145275849650339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048996 n * A257468 (A028310 n).toNat

end

end A327022.P14453145275849650339

/-! ## A327022.P2849746184891623985

`A048996(n)*A257468(A233583(n+1))`
-/

namespace A327022.P2849746184891623985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048996 n * A257468 (A233583 (n + 1)).toNat

end

end A327022.P2849746184891623985

/-!
# A327023: Ordered set partitions of the set {1, 2, ..., 3*n} with all block sizes divisible by 3, irregular triangle T(n, k) for n >= 0 and 0 <= k < A000041(n), read by rows.

The programs for A327023, there is no canonical definition to state claims against.
-/

/-! ## A327023.P17693689390016858823

`A278073(A082216(comp[2^n+n]))`
-/

namespace A327023.P17693689390016858823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278073 (A082216 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A327023.P17693689390016858823

/-! ## A327023.P9231564095247067746

`A278073(lcm(A116583(n), A116590(n)))`
-/

namespace A327023.P9231564095247067746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278073 (Int.lcm (A116583 n) (A116590 n))

end

end A327023.P9231564095247067746

/-! ## A327023.P14993202525345033989

`A278073(lt[A238921(n), A048723(n)])`
-/

namespace A327023.P14993202525345033989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238921 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048723 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278073 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A327023.P14993202525345033989

/-!
# A327024: Ordered set partitions of the set {1, 2, ..., 4*n} with all block sizes divisible by 4, irregular triangle T(n, k) for n >= 0 and 0 <= k < A000041(n), read by rows.

The programs for A327024, there is no canonical definition to state claims against.
-/

/-! ## A327024.P4552152037074196160

`A278074(lt[1, A292606(2*n+7)])`
-/

namespace A327024.P4552152037074196160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292606 (2 * n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278074 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A327024.P4552152037074196160

/-! ## A327024.P9012017299606976464

`A062279(A327004(n))`
-/

namespace A327024.P9012017299606976464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062279 (A327004 n).toNat

end

end A327024.P9012017299606976464

/-!
# A327025: a(n) = Sum_{k=0..n} k! * Sum_{d|n} phi(d) * A008284(n/d, k).

The programs for A327025, there is no canonical definition to state claims against.
-/

/-! ## A327025.P10625608844030638920

`(n-1)*A350634(a(n-1)+1)+n` with `a(0)=1`
-/

namespace A327025.P10625608844030638920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((n : ℤ) - 1) * A350634 (a (n - 1) + 1).toNat + (n : ℤ)

end

end A327025.P10625608844030638920

/-! ## A327025.P9633509520905829845

`A316997(A150231(n))`
-/

namespace A327025.P9633509520905829845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316997 (A150231 n).toNat

end

end A327025.P9633509520905829845

/-!
# A327026: a(n) = (1/n) Sum_{k=0..n} Sum_{d|n} phi(d) A241171(n/d, k) for n >= 1, a(0) = 1.

The programs for A327026, there is no canonical definition to state claims against.
-/

/-! ## A327026.P16406968933688636211

`979%p?[A061912(n)]`
-/

namespace A327026.P16406968933688636211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061912 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 979 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A327026.P16406968933688636211

/-!
# A327027: T(n, k) = (1/n) * Sum_{d|n} phi(d) * A241171(n/d, k) for n >= 1, T(0, k) = 0^k. Triangle read by rows for 0 <= k <= n.

The programs for A327027, there is no canonical definition to state claims against.
-/

/-! ## A327027.P13067834570458162412

`A241914(A278073(n)+11)`
-/

namespace A327027.P13067834570458162412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241914 (A278073 n + 11).toNat

end

end A327027.P13067834570458162412

/-! ## A327027.P13777531976555510534

`A033886(A035539(n))*A269939(n)`
-/

namespace A327027.P13777531976555510534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033886 (A035539 n).toNat * A269939 n

end

end A327027.P13777531976555510534

/-! ## A327027.P2337069537698951761

`A006466(A113224(n))*A269939(n)`
-/

namespace A327027.P2337069537698951761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006466 (A113224 n).toNat * A269939 n

end

end A327027.P2337069537698951761

/-! ## A327027.P16040188379780591591

`A136480(A007598(n))*A269939(n)`
-/

namespace A327027.P16040188379780591591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136480 (A007598 n).toNat * A269939 n

end

end A327027.P16040188379780591591

/-! ## A327027.P17702894194013662109

`A136043(A008293(n))*A269939(n)`
-/

namespace A327027.P17702894194013662109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136043 (A008293 n).toNat * A269939 n

end

end A327027.P17702894194013662109

/-!
# A327028: T(n, k) = k! * Sum_{d|n} phi(d) * A008284(n/d, k) for n >= 1, T(0, k) = 0^k. Triangle read by rows for 0 <= k <= n.

The programs for A327028, there is no canonical definition to state claims against.
-/

/-! ## A327028.P5058200261134288776

`(n-C(∑[char[∑[n]]], 2))!*A327029(n)`
-/

namespace A327028.P5058200261134288776
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ)).toNat : ℤ) * A327029 n

end

end A327028.P5058200261134288776

/-! ## A327028.P4910522542688675420

`A233543(n)*A327029(n)`
-/

namespace A327028.P4910522542688675420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233543 n * A327029 n

end

end A327028.P4910522542688675420

/-! ## A327028.P2683849712929988644

`A002262(n)!*A327029(n)`
-/

namespace A327028.P2683849712929988644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A002262 n).toNat : ℤ) * A327029 n

end

end A327028.P2683849712929988644

/-! ## A327028.P8454190868089073506

`A329221(n)!*A327029(n)`
-/

namespace A327028.P8454190868089073506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A329221 n).toNat : ℤ) * A327029 n

end

end A327028.P8454190868089073506

/-! ## A327028.P7058537364662098612

`A119502(A061579(n))*A327029(n)`
-/

namespace A327028.P7058537364662098612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119502 (A061579 n).toNat * A327029 n

end

end A327028.P7058537364662098612

/-! ## A327028.P11017941291404515218

`A166350(A028310(n))*A327029(n)`
-/

namespace A327028.P11017941291404515218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166350 (A028310 n).toNat * A327029 n

end

end A327028.P11017941291404515218

/-! ## A327028.P1317769974717331729

`A021009(A112367(n))*A327029(n)`
-/

namespace A327028.P1317769974717331729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021009 (A112367 n).toNat * A327029 n

end

end A327028.P1317769974717331729

/-! ## A327028.P4866150408659033044

`A112624(A059268(n))*A327029(n)`
-/

namespace A327028.P4866150408659033044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112624 (A059268 n).toNat * A327029 n

end

end A327028.P4866150408659033044

/-!
# A327029: T(n, k) = Sum_{d|n} phi(d) * A008284(n/d, k) for n >= 1, T(0, 0) = 1. Triangle read by rows for 0 <= k <= n.

The programs for A327029, there is no canonical definition to state claims against.
-/

/-! ## A327029.P6373440857292830933

`A327028(n)/A233543(n)`
-/

namespace A327029.P6373440857292830933
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327028 n : ℚ) / (A233543 n : ℚ)

end

end A327029.P6373440857292830933

/-! ## A327029.P17476161784543390807

`A327028(n)/A002262(n)!`
-/

namespace A327029.P17476161784543390807
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327028 n : ℚ) / (Nat.factorial (A002262 n).toNat : ℚ)

end

end A327029.P17476161784543390807

/-! ## A327029.P13907496099018279335

`A327028(n)/A329221(n)!`
-/

namespace A327029.P13907496099018279335
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327028 n : ℚ) / (Nat.factorial (A329221 n).toNat : ℚ)

end

end A327029.P13907496099018279335

/-! ## A327029.P10384698254447262431

`A327028(n)/(A002260(n+1)-1)!`
-/

namespace A327029.P10384698254447262431
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327028 n : ℚ) / (Nat.factorial (A002260 (n + 1) - 1).toNat : ℚ)

end

end A327029.P10384698254447262431

/-! ## A327029.P7962349786214515213

`A327028(n)/A166350(A028310(n))`
-/

namespace A327029.P7962349786214515213
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327028 n : ℚ) / (A166350 (A028310 n).toNat : ℚ)

end

end A327029.P7962349786214515213

/-! ## A327029.P4644440669762926655

`A327028(n)/A166350(A007401(n+1))`
-/

namespace A327029.P4644440669762926655
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327028 n : ℚ) / (A166350 (A007401 (n + 1)).toNat : ℚ)

end

end A327029.P4644440669762926655

/-! ## A327029.P11354104304629474616

`A327028(n)/A112624(A059268(n))`
-/

namespace A327029.P11354104304629474616
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327028 n : ℚ) / (A112624 (A059268 n).toNat : ℚ)

end

end A327029.P11354104304629474616

/-!
# A327030: a(n) = Sum_{d|n} phi(d)*(n/d)! for n > 0, a(0) = 0.

The programs for A327030, the canonical program `A327030.P6329466770021811722` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327030 has offset 0).

The definition of A327030 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A327030.P6329466770021811722

`∑{d}[n, A000010(#)*(n/#)!]`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A327030

/-- `∑{d}[n, A000010(#)*(n/#)!]` -/
def P6329466770021811722.Spec : Prop :=
  ∀ n, P6329466770021811722.a n = A327030 n

theorem P6329466770021811722.correct : P6329466770021811722.Spec := by
  intro n
  simp only [A327030]

end A327030

/-! ## A327030.P8528499362750577260

`A062363(n)+A054991(A185387(n))`
-/

namespace A327030.P8528499362750577260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062363 n + A054991 (A185387 n).toNat

end

end A327030.P8528499362750577260

namespace A327030

/-- `A062363(n)+A054991(A185387(n))` -/
def P8528499362750577260.Spec : Prop :=
  ∀ n, P8528499362750577260.a n = A327030 n

end A327030

/-! ## A327030.P7052394850613160231

`A323014(A218271(n))+A062363(n)`
-/

namespace A327030.P7052394850613160231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323014 (A218271 n).toNat + A062363 n

end

end A327030.P7052394850613160231

namespace A327030

/-- `A323014(A218271(n))+A062363(n)` -/
def P7052394850613160231.Spec : Prop :=
  ∀ n, P7052394850613160231.a n = A327030 n

end A327030

/-!
# A327031: A(n, k) = Sum_{d|n} phi(d)*T(n/d, k) if n > 0 and A(0, k) = 0 where T(n, k) = binomial(n+k-1, n). Square array read by ascending antidiagonals, with n, k >= 0.

The programs for A327031, there is no canonical definition to state claims against.
-/

/-! ## A327031.P6743963259877633331

`A108363(n)-A108363(A238012(n))`
-/

namespace A327031.P6743963259877633331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108363 n - A108363 (A238012 n).toNat

end

end A327031.P6743963259877633331

/-! ## A327031.P6132147829506567886

`A007318(n)-A338428(A227578(n))`
-/

namespace A327031.P6132147829506567886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n - A338428 (A227578 n).toNat

end

end A327031.P6132147829506567886

/-! ## A327031.P11529863614635826827

`A286748(A331315(n))+A271916(n+1)`
-/

namespace A327031.P11529863614635826827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286748 (A331315 n).toNat + A271916 (n + 1)

end

end A327031.P11529863614635826827

/-! ## A327031.P16205827520627809601

`A082860(A098568(n))-1`
-/

namespace A327031.P16205827520627809601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082860 (A098568 n).toNat - 1

end

end A327031.P16205827520627809601

/-! ## A327031.P16920311274100768171

`A089840(C(A299807(n+1), 2))`
-/

namespace A327031.P16920311274100768171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089840 (Nat.choose (A299807 (n + 1)).toNat 2)

end

end A327031.P16920311274100768171

/-!
# A327032: a(n) = T(n, 4) with T(n, k) = Sum_{d|k} phi(d)*binomial(n - 1 + k/d, k/d).

The programs for A327032, the canonical program `A327032.P9289962555777655947` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327032 has offset 0).

The definition of A327032 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A327032.P9289962555777655947

`n*(n*(n*(n+6)+23)+66)/24`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A327032

/-- `n*(n*(n*(n+6)+23)+66)/24` -/
def P9289962555777655947.Spec : Prop :=
  ∀ n, P9289962555777655947.a n = (A327032 n : ℚ)

end A327032

/-! ## A327032.P3348384537229395340

`∑[C(n+2, 3)+n+2]-2`
-/

namespace A327032.P3348384537229395340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 2) 3 + (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 2

end

end A327032.P3348384537229395340

namespace A327032

/-- `∑[C(n+2, 3)+n+2]-2` -/
def P3348384537229395340.Spec : Prop :=
  ∀ n, P3348384537229395340.a n = A327032 n

end A327032

/-! ## A327032.P12426286756659869722

`∑[∑[a(n-1)+n]]-2` with `a(0)=2, a(1)=2`
-/

namespace A327032.P12426286756659869722
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2, 2] fun n f2 =>
  f2 (n - 1) + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 2

end

end A327032.P12426286756659869722

namespace A327032

/-- `∑[∑[a(n-1)+n]]-2` -/
def P12426286756659869722.Spec : Prop :=
  ∀ n, P12426286756659869722.a n = A327032 n

end A327032

/-! ## A327032.P16819061838025758723

`2*n+∑[n]+C(n+3, 4)`
-/

namespace A327032.P16819061838025758723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + (∑ j ∈ Finset.range (n + 1), f1 j + Nat.choose (n + 3) 4)

end

end A327032.P16819061838025758723

namespace A327032

/-- `2*n+∑[n]+C(n+3, 4)` -/
def P16819061838025758723.Spec : Prop :=
  ∀ n, (P16819061838025758723.a n : ℤ) = A327032 n

end A327032

/-! ## A327032.P1209689078000809237

`∑[a(n-1)-xor(-1, ∑[n])]` with `a(0)=0, a(1)=4`
-/

namespace A327032.P1209689078000809237
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 4] fun n f1 =>
  f1 (n - 1) - Int.xor (-1) ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327032.P1209689078000809237

namespace A327032

/-- `∑[a(n-1)-xor(-1, ∑[n])]` -/
def P1209689078000809237.Spec : Prop :=
  ∀ n, P1209689078000809237.a n = A327032 n

end A327032

/-! ## A327032.P7573430531597005612

`a(n-1)+C(n+2, n-1)+n+2` with `a(0)=0`
-/

namespace A327032.P7573430531597005612
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (Nat.choose (n + 2) ((n : ℤ) - 1).toNat + (n + 2))

end

end A327032.P7573430531597005612

namespace A327032

/-- `a(n-1)+C(n+2, n-1)+n+2` -/
def P7573430531597005612.Spec : Prop :=
  ∀ n, (P7573430531597005612.a n : ℤ) = A327032 n

end A327032

/-! ## A327032.P7180425963898953176

`A145126(n)+A046691(n)`
-/

namespace A327032.P7180425963898953176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145126 n + A046691 n

end

end A327032.P7180425963898953176

namespace A327032

/-- `A145126(n)+A046691(n)` -/
def P7180425963898953176.Spec : Prop :=
  ∀ n, P7180425963898953176.a n = A327032 n

end A327032

/-! ## A327032.P14347704356078994432

`A223718(n)+A060747(n)`
-/

namespace A327032.P14347704356078994432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223718 n + A060747 n

end

end A327032.P14347704356078994432

namespace A327032

/-- `A223718(n)+A060747(n)` -/
def P14347704356078994432.Spec : Prop :=
  ∀ n, P14347704356078994432.a n = A327032 n

end A327032

/-! ## A327032.P863768563478203417

`A223718(n)-A165747(n)`
-/

namespace A327032.P863768563478203417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223718 n - A165747 n

end

end A327032.P863768563478203417

namespace A327032

/-- `A223718(n)-A165747(n)` -/
def P863768563478203417.Spec : Prop :=
  ∀ n, P863768563478203417.a n = A327032 n

end A327032

/-! ## A327032.P13594985486371211415

`A005587(n)-A393327(n)`
-/

namespace A327032.P13594985486371211415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005587 n - A393327 n

end

end A327032.P13594985486371211415

namespace A327032

/-- `A005587(n)-A393327(n)` -/
def P13594985486371211415.Spec : Prop :=
  ∀ n, P13594985486371211415.a n = A327032 n

end A327032

/-! ## A327032.P1856872576833309614

`A052472(n+3)-A387204(n)`
-/

namespace A327032.P1856872576833309614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052472 (n + 3) - A387204 n

end

end A327032.P1856872576833309614

namespace A327032

/-- `A052472(n+3)-A387204(n)` -/
def P1856872576833309614.Spec : Prop :=
  ∀ n, P1856872576833309614.a n = A327032 n

end A327032

/-! ## A327032.P15106370598907276981

`∑[A158388(n)+∑[A000124(n)]]`
-/

namespace A327032.P15106370598907276981
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327032.P15106370598907276981

namespace A327032

/-- `∑[A158388(n)+∑[A000124(n)]]` -/
def P15106370598907276981.Spec : Prop :=
  ∀ n, P15106370598907276981.a n = A327032 n

end A327032

/-! ## A327032.P5507893740266845781

`∑[A114637(n+1)+A000292(n)]`
-/

namespace A327032.P5507893740266845781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114637 (n + 1) + A000292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327032.P5507893740266845781

namespace A327032

/-- `∑[A114637(n+1)+A000292(n)]` -/
def P5507893740266845781.Spec : Prop :=
  ∀ n, P5507893740266845781.a n = A327032 n

end A327032

/-! ## A327032.P5383290206650270793

`∑[A163300(n+1)+A005581(n)]`
-/

namespace A327032.P5383290206650270793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163300 (n + 1) + A005581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327032.P5383290206650270793

namespace A327032

/-- `∑[A163300(n+1)+A005581(n)]` -/
def P5383290206650270793.Spec : Prop :=
  ∀ n, P5383290206650270793.a n = A327032 n

end A327032

/-! ## A327032.P4442644243664142315

`A116699(n+1)+A008865(n+1)`
-/

namespace A327032.P4442644243664142315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116699 (n + 1) + A008865 (n + 1)

end

end A327032.P4442644243664142315

namespace A327032

/-- `A116699(n+1)+A008865(n+1)` -/
def P4442644243664142315.Spec : Prop :=
  ∀ n, P4442644243664142315.a n = A327032 n

end A327032

/-! ## A327032.P1527476299878726232

`A145068(n+1)+A055795(n+1)`
-/

namespace A327032.P1527476299878726232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145068 (n + 1) + A055795 (n + 1)

end

end A327032.P1527476299878726232

namespace A327032

/-- `A145068(n+1)+A055795(n+1)` -/
def P1527476299878726232.Spec : Prop :=
  ∀ n, P1527476299878726232.a n = A327032 n

end A327032

/-! ## A327032.P18191238171872179943

`A219846(n+1)-A152949(n+1)`
-/

namespace A327032.P18191238171872179943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219846 (n + 1) - A152949 (n + 1)

end

end A327032.P18191238171872179943

namespace A327032

/-- `A219846(n+1)-A152949(n+1)` -/
def P18191238171872179943.Spec : Prop :=
  ∀ n, P18191238171872179943.a n = A327032 n

end A327032

/-! ## A327032.P15933667851181948483

`A227259(n+1)-A155753(n+1)`
-/

namespace A327032.P15933667851181948483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227259 (n + 1) - A155753 (n + 1)

end

end A327032.P15933667851181948483

namespace A327032

/-- `A227259(n+1)-A155753(n+1)` -/
def P15933667851181948483.Spec : Prop :=
  ∀ n, P15933667851181948483.a n = A327032 n

end A327032

/-! ## A327032.P17047755466794857145

`A000096(n)+A005582(n)-A005581(n)`
-/

namespace A327032.P17047755466794857145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 n + (A005582 n - A005581 n)

end

end A327032.P17047755466794857145

namespace A327032

/-- `A000096(n)+A005582(n)-A005581(n)` -/
def P17047755466794857145.Spec : Prop :=
  ∀ n, P17047755466794857145.a n = A327032 n

end A327032

/-! ## A327032.P13478514486695020975

`Δ[A027660(n)]-3`
-/

namespace A327032.P13478514486695020975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027660 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 3

end

end A327032.P13478514486695020975

namespace A327032

/-- `Δ[A027660(n)]-3` -/
def P13478514486695020975.Spec : Prop :=
  ∀ n, P13478514486695020975.a n = A327032 n

end A327032

/-!
# A327033: N(p-1)/p + D(p-1)/p^2 with p the n-th prime and B(k) = N(k)/D(k) the k-th Bernoulli number.

The programs for A327033, there is no canonical definition to state claims against.
-/

/-! ## A327033.P12973291821151120177

`A174341(A006093(n+1))-A000007(n)`
-/

namespace A327033.P12973291821151120177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174341 (A006093 (n + 1)).toNat - A000007 n

end

end A327033.P12973291821151120177

/-! ## A327033.P15667337535051372193

`A057427(n)*A174341(A006093(n+1))`
-/

namespace A327033.P15667337535051372193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A174341 (A006093 (n + 1)).toNat

end

end A327033.P15667337535051372193

/-! ## A327033.P4954523503783157251

`A174341(A006093(n+1))*A178334(n)`
-/

namespace A327033.P4954523503783157251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174341 (A006093 (n + 1)).toNat * A178334 n

end

end A327033.P4954523503783157251

/-! ## A327033.P14836069682232665631

`A174341(A006093(n+1))-A036987(2*n)`
-/

namespace A327033.P14836069682232665631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174341 (A006093 (n + 1)).toNat - A036987 (2 * n)

end

end A327033.P14836069682232665631

/-! ## A327033.P1619379963593631571

`A000040(n+1)%2*A174341(A006093(n+1))`
-/

namespace A327033.P1619379963593631571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 2 * A174341 (A006093 (n + 1)).toNat

end

end A327033.P1619379963593631571

/-!
# A327034: Expansion of e.g.f. exp(x) / (2 - cosh(x)).

The programs for A327034, there is no canonical definition to state claims against.
-/

/-! ## A327034.P8744029711412588803

`ceil(A260464(n)/2)`
-/

namespace A327034.P8744029711412588803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A260464 n : ℚ) / 2⌉

end

end A327034.P8744029711412588803

/-! ## A327034.P9111818870288275073

`or(round(A260464(n)/2), A000007(n))`
-/

namespace A327034.P9111818870288275073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway ((A260464 n : ℚ) / 2)) (A000007 n)

end

end A327034.P9111818870288275073

/-! ## A327034.P16224028946144392923

`(A260464(n)+A007318(A010894(n)))/2`
-/

namespace A327034.P16224028946144392923
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260464 n + A007318 (A010894 (n + 21)).toNat : ℚ) / 2

end

end A327034.P16224028946144392923

/-! ## A327034.P5107991051133961630

`(A260464(n)+A007318(A057944(n)))/2`
-/

namespace A327034.P5107991051133961630
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260464 n + A007318 (A057944 n).toNat : ℚ) / 2

end

end A327034.P5107991051133961630

/-! ## A327034.P17219528455646554231

`round(A260464(n)/2)-A000007(A007318(n))`
-/

namespace A327034.P17219528455646554231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A260464 n : ℚ) / 2) - A000007 (A007318 n).toNat

end

end A327034.P17219528455646554231

/-!
# A327035: An unbounded sequence consisting solely of Fibonacci numbers with the property that for any four consecutive terms the maximum term is the sum of the two minimum terms.

The programs for A327035, the canonical program `A327035.P16069004739960620247` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327035 has offset 0).

The definition of A327035 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A327035.P16069004739960620247

`a(n-3)+a(n-6)` with `a(0)=1, a(1)=1, a(2)=0, a(3)=1, a(4)=1, a(5)=1`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A327035

/-- `a(n-3)+a(n-6)` -/
def P16069004739960620247.Spec : Prop :=
  ∀ n, (P16069004739960620247.a n : ℤ) = A327035 n

theorem P16069004739960620247.correct : P16069004739960620247.Spec := by
  intro n
  simp only [A327035]

end A327035

/-! ## A327035.P9350092032013672443

`A000045(Δ[a(n-3)+n-1])` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A327035.P9350092032013672443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n f1 =>
  f1 (n - 3) + ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (f1 (n + 1) - f1 n).toNat

end

end A327035.P9350092032013672443

namespace A327035

/-- `A000045(Δ[a(n-3)+n-1])` -/
def P9350092032013672443.Spec : Prop :=
  ∀ n, P9350092032013672443.a n = A327035 n

end A327035

/-! ## A327035.P17540712900192541862

`A000045(ceil((n+1)/3)-Δ[ceil((n+1)/3)])`
-/

namespace A327035.P17540712900192541862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℚ) / 3⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (⌈(n + 1 : ℚ) / 3⌉ - (f1 (n + 1) - f1 n)).toNat

end

end A327035.P17540712900192541862

namespace A327035

/-- `A000045(ceil((n+1)/3)-Δ[ceil((n+1)/3)])` -/
def P17540712900192541862.Spec : Prop :=
  ∀ n, P17540712900192541862.a n = A327035 n

end A327035

/-! ## A327035.P3123195195194900816

`A103610(A047455(n+1))`
-/

namespace A327035.P3123195195194900816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103610 (A047455 (n + 1)).toNat

end

end A327035.P3123195195194900816

namespace A327035

/-- `A103610(A047455(n+1))` -/
def P3123195195194900816.Spec : Prop :=
  ∀ n, P3123195195194900816.a n = A327035 n

end A327035

/-! ## A327035.P14232364407116643331

`A053602(A004396(abs(2-n)))`
-/

namespace A327035.P14232364407116643331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 (A004396 |2 - (n : ℤ)|.toNat).toNat

end

end A327035.P14232364407116643331

namespace A327035

/-- `A053602(A004396(abs(2-n)))` -/
def P14232364407116643331.Spec : Prop :=
  ∀ n, P14232364407116643331.a n = A327035 n

end A327035

/-! ## A327035.P17746379587146719266

`A053602(A008576(n+1)%(n+2))`
-/

namespace A327035.P17746379587146719266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 (Int.tmod (A008576 (n + 1)) (n + 2 : ℤ)).toNat

end

end A327035.P17746379587146719266

namespace A327035

/-- `A053602(A008576(n+1)%(n+2))` -/
def P17746379587146719266.Spec : Prop :=
  ∀ n, P17746379587146719266.a n = A327035 n

end A327035

/-! ## A327035.P11475410103146236099

`A212804(A047343(n+1)-2*n+1)`
-/

namespace A327035.P11475410103146236099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (A047343 (n + 1) - (2 * n : ℤ) + 1).toNat

end

end A327035.P11475410103146236099

namespace A327035

/-- `A212804(A047343(n+1)-2*n+1)` -/
def P11475410103146236099.Spec : Prop :=
  ∀ n, P11475410103146236099.a n = A327035 n

end A327035

/-! ## A327035.P9866934158870256710

`A321664(n+3)-A321664(n)`
-/

namespace A327035.P9866934158870256710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321664 (n + 3) - A321664 n

end

end A327035.P9866934158870256710

namespace A327035

/-- `A321664(n+3)-A321664(n)` -/
def P9866934158870256710.Spec : Prop :=
  ∀ n, P9866934158870256710.a n = A327035 n

end A327035

/-!
# A327036: a(0)=0; for n > 0, a(n) is the number of distinct digit strings that occur at least twice (not counting overlapping occurrences) in the concatenation of all previous terms.

The programs for A327036, there is no canonical definition to state claims against.
-/

/-! ## A327036.P7179050522846527296

`A102683(A088050(n+1))+A004526(n)`
-/

namespace A327036.P7179050522846527296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 (A088050 (n + 1)).toNat + A004526 n

end

end A327036.P7179050522846527296

/-! ## A327036.P5429640556945916346

`A111660(n)+A102683(A088050(n+1))`
-/

namespace A327036.P5429640556945916346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111660 n + A102683 (A088050 (n + 1)).toNat

end

end A327036.P5429640556945916346

/-! ## A327036.P13555689348078346328

`A004526(lt[A000009(n), A212200(3*(n+1))])`
-/

namespace A327036.P13555689348078346328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212200 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A327036.P13555689348078346328

/-! ## A327036.P5767448385286013217

`A004526(lt[A058137(n+1), A252407(n+5)])`
-/

namespace A327036.P5767448385286013217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058137 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252407 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A327036.P5767448385286013217

/-! ## A327036.P14534193204985014414

`A309395(lt[A188813(n+1), A006128(2*n)]²)`
-/

namespace A327036.P14534193204985014414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006128 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309395 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n ^ 2)

end

end A327036.P14534193204985014414

/-!
# A327037: Number of pairwise intersecting set-systems covering n vertices where every two vertices appear together in some edge (cointersecting).

The programs for A327037, there is no canonical definition to state claims against.
-/

/-! ## A327037.P11390346246399171624

`A359821(a(n-1)²)` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A327037.P11390346246399171624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  A359821 (a (n - 1) ^ 2).toNat

end

end A327037.P11390346246399171624

/-!
# A327038: Number of pairwise intersecting set-systems covering a subset of {1..n} where every two covered vertices appear together in some edge (cointersecting).

The programs for A327038, there is no canonical definition to state claims against.
-/

/-! ## A327038.P1975341835870639546

`A320496(n^2^(n-2))`
-/

namespace A327038.P1975341835870639546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320496 (SequenceMachineLib.roundAway ((n : ℝ) ^ ((2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) : ℝ))).toNat

end

end A327038.P1975341835870639546

/-!
# A327040: Number of set-systems covering n vertices, every two of which appear together in some edge (cointersecting).

The programs for A327040, there is no canonical definition to state claims against.
-/

/-! ## A327040.P6488242125765953031

`A294410(A285381(n+1))*A300300(n)`
-/

namespace A327040.P6488242125765953031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294410 (A285381 (n + 1)).toNat * A300300 n

end

end A327040.P6488242125765953031

/-!
# A327041: a(n) is the number whose binary indices are the union of the set-system with BII-number n.

The programs for A327041, there is no canonical definition to state claims against.
-/

/-! ## A327041.P9390212638487119944

`or(a(and(n, n-1)), A001511(n))` with `a(0)=0`
-/

namespace A327041.P9390212638487119944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.lor (a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat) (A001511 n)

end

end A327041.P9390212638487119944

/-! ## A327041.P16386160848203131945

`A329616(A057335(n))`
-/

namespace A327041.P16386160848203131945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329616 (A057335 n).toNat

end

end A327041.P16386160848203131945

/-! ## A327041.P6706469586938315306

`or(a(A053645(n)), A029837(n+1))` with `a(0)=0`
-/

namespace A327041.P6706469586938315306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.lor (a (A053645 n).toNat) (A029837 (n + 1))

end

end A327041.P6706469586938315306

/-! ## A327041.P2530358266171586822

`A329616(A356603(n))`
-/

namespace A327041.P2530358266171586822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329616 (A356603 n).toNat

end

end A327041.P2530358266171586822

/-!
# A327042: Expansion of Product_{k>=1} 1/((1 - x^k) * (1 - x^(2*k)) * (1 - x^(3*k))).

The programs for A327042, there is no canonical definition to state claims against.
-/

/-! ## A327042.P10368219730653078069

`∏{e}[A008776(n), A006168(#)]`
-/

namespace A327042.P10368219730653078069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008776 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A006168 (Nat.factorization (f1 n).natAbs p)

end

end A327042.P10368219730653078069

/-! ## A327042.P3882718970181444521

`A006168(round(1/acot(n))^A061674(n))`
-/

namespace A327042.P3882718970181444521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006168 (SequenceMachineLib.roundAway ((SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ)) : ℚ) ^ (A061674 n : ℤ))).toNat

end

end A327042.P3882718970181444521

/-! ## A327042.P10276742861398905432

`A006168(A028310(n)^A061674(n))`
-/

namespace A327042.P10276742861398905432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006168 (SequenceMachineLib.roundAway ((A028310 n : ℚ) ^ (A061674 n : ℤ))).toNat

end

end A327042.P10276742861398905432

/-! ## A327042.P17525969724311020185

`A079275(A006229(n))+A077285(n)`
-/

namespace A327042.P17525969724311020185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079275 (A006229 n).toNat + A077285 n

end

end A327042.P17525969724311020185

/-!
# A327043: Expansion of Product_{k>=1} 1/((1 - x^k) * (1 - x^(2*k)) * (1 - x^(3*k)) * (1 - x^(4*k))).

The programs for A327043, there is no canonical definition to state claims against.
-/

/-! ## A327043.P17067204656098521566

`A006169(A323533(n)+n)`
-/

namespace A327043.P17067204656098521566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006169 (A323533 n + (n : ℤ)).toNat

end

end A327043.P17067204656098521566

/-! ## A327043.P5153124166095449632

`A006169(A087051(A028310(n)))`
-/

namespace A327043.P5153124166095449632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006169 (A087051 (A028310 n).toNat).toNat

end

end A327043.P5153124166095449632

/-! ## A327043.P17703229443558213784

`A006169(A087051(A000007(n)+n))`
-/

namespace A327043.P17703229443558213784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006169 (A087051 (A000007 n + (n : ℤ)).toNat).toNat

end

end A327043.P17703229443558213784

/-! ## A327043.P14233069448343002639

`A006169(gcd(A004176(n), A006153(n)))`
-/

namespace A327043.P14233069448343002639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006169 (Int.gcd (A004176 n) (A006153 n))

end

end A327043.P14233069448343002639

/-! ## A327043.P16745318325686385852

`A006169(or(A000007(n), A087051(n)))`
-/

namespace A327043.P16745318325686385852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006169 (Int.lor (A000007 n) (A087051 n)).toNat

end

end A327043.P16745318325686385852

/-!
# A327044: Expansion of Product_{k>=1} 1/((1 - x^k) * (1 - x^(2*k)) * (1 - x^(3*k)) * (1 - x^(4*k)) * (1 - x^(5*k))).

The programs for A327044, there is no canonical definition to state claims against.
-/

/-! ## A327044.P14911726411536347294

`A006170(A169945(∑[n]))`
-/

namespace A327044.P14911726411536347294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006170 (A169945 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A327044.P14911726411536347294

/-! ## A327044.P6543149015298819679

`∏{e}[A008776(n), A006170(#)]`
-/

namespace A327044.P6543149015298819679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008776 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A006170 (Nat.factorization (f1 n).natAbs p)

end

end A327044.P6543149015298819679

/-! ## A327044.P13855940455269547

`A006170(A028310(n)^A061674(n))`
-/

namespace A327044.P13855940455269547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006170 (SequenceMachineLib.roundAway ((A028310 n : ℚ) ^ (A061674 n : ℤ))).toNat

end

end A327044.P13855940455269547

/-! ## A327044.P16061008530300733713

`A006170(A151937(n)+n)`
-/

namespace A327044.P16061008530300733713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006170 (A151937 n + (n : ℤ)).toNat

end

end A327044.P16061008530300733713

/-! ## A327044.P4487726522051770758

`A335513(A232432(n)+A028310(n))`
-/

namespace A327044.P4487726522051770758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335513 (A232432 n + A028310 n).toNat

end

end A327044.P4487726522051770758

/-!
# A327045: Expansion of Product_{k>=1} (1 + x^k) * (1 + x^(2*k)) * (1 + x^(3*k)).

The programs for A327045, there is no canonical definition to state claims against.
-/

/-! ## A327045.P824646406495274185

`A327745(n)+A238589(A077168(n))`
-/

namespace A327045.P824646406495274185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327745 n + A238589 (A077168 n).toNat

end

end A327045.P824646406495274185

/-! ## A327045.P2502391081849980138

`A351870(A238589(n+1))+A327745(n)`
-/

namespace A327045.P2502391081849980138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351870 (A238589 (n + 1)).toNat + A327745 n

end

end A327045.P2502391081849980138

/-! ## A327045.P3452874165888545985

`A327534(A102186(n))`
-/

namespace A327045.P3452874165888545985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327534 (A102186 n).toNat

end

end A327045.P3452874165888545985

/-! ## A327045.P15236729023980811006

`A238589(A077168(n+2))`
-/

namespace A327045.P15236729023980811006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238589 (A077168 (n + 2)).toNat

end

end A327045.P15236729023980811006

/-! ## A327045.P14585480760025295835

`A339220(2*A049872(n))`
-/

namespace A327045.P14585480760025295835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339220 (2 * A049872 n).toNat

end

end A327045.P14585480760025295835

/-!
# A327046: Expansion of Product_{k>=1} (1 + x^k) * (1 + x^(2*k)) * (1 + x^(3*k)) * (1 + x^(4*k)).

The programs for A327046, there is no canonical definition to state claims against.
-/

/-! ## A327046.P13841427906546680008

`A252474(A097197(n))`
-/

namespace A327046.P13841427906546680008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252474 (A097197 n).toNat

end

end A327046.P13841427906546680008

/-! ## A327046.P1037553311645398594

`A347628(A136484(n))`
-/

namespace A327046.P1037553311645398594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347628 (A136484 n).toNat

end

end A327046.P1037553311645398594

/-! ## A327046.P5067805451471899487

`A252474(A260600(n+1))`
-/

namespace A327046.P5067805451471899487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252474 (A260600 (n + 1)).toNat

end

end A327046.P5067805451471899487

/-! ## A327046.P9994600914978518392

`A156251(A003242(n))+A002620(n)`
-/

namespace A327046.P9994600914978518392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156251 (A003242 n).toNat + A002620 n

end

end A327046.P9994600914978518392

/-!
# A327047: Expansion of Product_{k>=1} (1 + x^k) * (1 + x^(2*k)) * (1 + x^(3*k)) * (1 + x^(4*k)) * (1 + x^(5*k)).

The programs for A327047, there is no canonical definition to state claims against.
-/

/-! ## A327047.P18092003651698795964

`A309173(n)+A309168(A281732(n+1))`
-/

namespace A327047.P18092003651698795964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309173 n + A309168 (A281732 (n + 1)).toNat

end

end A327047.P18092003651698795964

/-! ## A327047.P12341617970675793893

`A135304(A264392(n+1)+1)+A002264(A137735(n))`
-/

namespace A327047.P12341617970675793893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135304 (A264392 (n + 1) + 1).toNat + A002264 (A137735 n).toNat

end

end A327047.P12341617970675793893

/-! ## A327047.P8453108923296146984

`A289122(A289139(n))+A135304(A264392(n+1)+1)`
-/

namespace A327047.P8453108923296146984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289122 (A289139 n).toNat + A135304 (A264392 (n + 1) + 1).toNat

end

end A327047.P8453108923296146984

/-! ## A327047.P708179493836740880

`A173241(n)+A169672(A072346(n))`
-/

namespace A327047.P708179493836740880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173241 n + A169672 (A072346 n).toNat

end

end A327047.P708179493836740880

/-! ## A327047.P1678335855001877113

`A085736(A269249(n)+A132212(n))`
-/

namespace A327047.P1678335855001877113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085736 (A269249 n + A132212 n).toNat

end

end A327047.P1678335855001877113

/-!
# A327048: Expansion of Product_{k>=1} (1 + x^k) * (1 + x^(2*k)) * (1 + x^(3*k)) / ((1 - x^k) * (1 - x^(2*k)) * (1 - x^(3*k))).

The programs for A327048, there is no canonical definition to state claims against.
-/

/-! ## A327048.P12847380910957722324

`A328596(A061257(n+1))`
-/

namespace A327048.P12847380910957722324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328596 (A061257 (n + 1)).toNat

end

end A327048.P12847380910957722324

/-! ## A327048.P16645530904687403088

`∑[A131089(∏[A022825(n+1)])]`
-/

namespace A327048.P16645530904687403088
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022825 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131089 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327048.P16645530904687403088

/-! ## A327048.P9683530794304978263

`∑[A000005(A350113(n+1)-char[1])]`
-/

namespace A327048.P9683530794304978263
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A350113 (n + 1) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327048.P9683530794304978263

/-!
# A327049: Expansion of Product_{k>=1} (1 + x^k) * (1 + x^(2*k)) * (1 + x^(3*k)) * (1 + x^(4*k)) / ((1 - x^k) * (1 - x^(2*k)) * (1 - x^(3*k)) * (1 - x^(4*k))).

The programs for A327049, there is no canonical definition to state claims against.
-/

/-! ## A327049.P1279761940812877885

`A185283((A024786(n+1)+A024786(n+2))*A303861(n))`
-/

namespace A327049.P1279761940812877885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185283 ((A024786 (n + 1) + A024786 (n + 2)) * A303861 n).toNat

end

end A327049.P1279761940812877885

/-! ## A327049.P1863611610512664794

`A229219(A178747(n))`
-/

namespace A327049.P1863611610512664794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229219 (A178747 n).toNat

end

end A327049.P1863611610512664794

/-! ## A327049.P10833144169470637032

`A229219(A267450(n))`
-/

namespace A327049.P10833144169470637032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229219 (A267450 n).toNat

end

end A327049.P10833144169470637032

/-!
# A327050: Expansion of Product_{k>=1} (1 + x^k) * (1 + x^(2*k)) * (1 + x^(3*k)) * (1 + x^(4*k)) * (1 + x^(5*k)) / ((1 - x^k) * (1 - x^(2*k)) * (1 - x^(3*k)) * (1 - x^(4*k)) * (1 - x^(5*k))).

The programs for A327050, there is no canonical definition to state claims against.
-/

/-! ## A327050.P8221310670842240243

`A358008(A339034(n))+A035592(n)`
-/

namespace A327050.P8221310670842240243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358008 ((A339034 n).toNat + 87) + A035592 n

end

end A327050.P8221310670842240243

/-! ## A327050.P1886609906680753359

`xor(A083120(A309861(n+1)), A301554(n))`
-/

namespace A327050.P1886609906680753359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A083120 (A309861 (n + 1)).toNat) (A301554 n)

end

end A327050.P1886609906680753359

/-! ## A327050.P8349797018590266735

`∑[A163822((n+1)!)]-1`
-/

namespace A327050.P8349797018590266735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163822 (Nat.factorial (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A327050.P8349797018590266735

/-!
# A327051: Vertex-connectivity of the set-system with BII-number n.

The programs for A327051, there is no canonical definition to state claims against.
-/

/-! ## A327051.P2315168608847603418

`A326786(n)-char[A326853(n+2)]`
-/

namespace A327051.P2315168608847603418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326853 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326786 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A327051.P2315168608847603418

/-! ## A327051.P1926672436935200444

`A037203(A037203(n)*A326786(n))`
-/

namespace A327051.P1926672436935200444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037203 (A037203 n * A326786 n).toNat

end

end A327051.P1926672436935200444

/-! ## A327051.P15581364252012435786

`A008615(lcm(A326786(n), A345379(n)))`
-/

namespace A327051.P15581364252012435786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (Int.lcm (A326786 n) (A345379 n))

end

end A327051.P15581364252012435786

/-! ## A327051.P17893481216374982314

`lcm(A302242(A070939(n)), A327144(n))`
-/

namespace A327051.P17893481216374982314
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A302242 (A070939 n).toNat) (A327144 n)

end

end A327051.P17893481216374982314

/-! ## A327051.P12678543788009688645

`A325691(A326786(n)+A121902(n+4))`
-/

namespace A327051.P12678543788009688645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325691 (A326786 n + A121902 (n + 4)).toNat

end

end A327051.P12678543788009688645

/-!
# A327054: a(n) is the smallest number m such that the antiharmonic mean of the divisors is n, or 0 if no such m exists.

The programs for A327054, there is no canonical definition to state claims against.
-/

/-! ## A327054.P11400217406567127131

`A049084(p?[A348960(n)]+n)`
-/

namespace A327054.P11400217406567127131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348960 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + (n : ℤ)).toNat

end

end A327054.P11400217406567127131

/-!
# A327057: Number of antichains covering a subset of {1..n} where every two covered vertices appear together in some edge (cointersecting).

The programs for A327057, there is no canonical definition to state claims against.
-/

/-! ## A327057.P16552226570183973252

`record[A326443(a(n-1)+n)]` with `a(0)=1`
-/

namespace A327057.P16552226570183973252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A326443 (f1 (n - 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A327057.P16552226570183973252

/-! ## A327057.P6769876225286754557

`∑[A329382(∑[A210912(n)])]`
-/

namespace A327057.P6769876225286754557
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210912 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329382 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327057.P6769876225286754557

/-!
# A327059: Number of pairwise intersecting set-systems covering a subset of {1..n} whose dual is a weak antichain.

The programs for A327059, there is no canonical definition to state claims against.
-/

/-! ## A327059.P5455984046365537027

`floor(∑[2^exp(n-2)])`
-/

namespace A327059.P5455984046365537027
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ (Real.exp ((n : ℤ) - 2 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A327059.P5455984046365537027

/-!
# A327061: BII-numbers of pairwise intersecting set-systems where every two covered vertices appear together in some edge (cointersecting).

The programs for A327061, there is no canonical definition to state claims against.
-/

/-! ## A327061.P879347464021297805

`∪[A326703(n+1), A326854(n+1)]`
-/

namespace A327061.P879347464021297805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326703 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326854 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A327061.P879347464021297805

/-! ## A327061.P11475576864368849123

`∪[A326854(n+1), A326913(n+1)]`
-/

namespace A327061.P11475576864368849123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326854 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326913 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A327061.P11475576864368849123

/-! ## A327061.P4788679082770345012

`∩[A326853(n+1), A326910(n+1)]`
-/

namespace A327061.P4788679082770345012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326853 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326910 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A327061.P4788679082770345012

/-!
# A327062: Number of antichains of distinct sets covering a subset of {1..n} whose dual is a weak antichain.

The programs for A327062, there is no canonical definition to state claims against.
-/

/-! ## A327062.P10413909205205095926

`A325857(A330455(n))+A004273(n)`
-/

namespace A327062.P10413909205205095926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325857 (A330455 n).toNat + A004273 n

end

end A327062.P10413909205205095926

/-!
# A327063: Expansion of Product_{k>=1} (Product_{j=1..k} (1 + x^(k*j))^j).

The programs for A327063, there is no canonical definition to state claims against.
-/

/-! ## A327063.P5189566195324270

`A063712(A325404(∑[n]))`
-/

namespace A327063.P5189566195324270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063712 (A325404 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A327063.P5189566195324270

/-! ## A327063.P322958995052023956

`A000792(n)-A323179(A049019(n+5))`
-/

namespace A327063.P322958995052023956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000792 n - A323179 (A049019 (n + 5)).toNat

end

end A327063.P322958995052023956

/-! ## A327063.P13066595290744520341

`A352516(A259645(n+1))+A143587(n+1)`
-/

namespace A327063.P13066595290744520341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352516 (A259645 (n + 1)).toNat + A143587 (n + 1)

end

end A327063.P13066595290744520341

/-!
# A327064: Expansion of Product_{k>=1} (Product_{j=1..k} (1 + x^(k*j))^k).

The programs for A327064, there is no canonical definition to state claims against.
-/

/-! ## A327064.P6899941795695630530

`A220279(A000124(n+1))-A064876(2*n)`
-/

namespace A327064.P6899941795695630530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220279 (A000124 (n + 1)).toNat - A064876 (2 * n)

end

end A327064.P6899941795695630530

/-! ## A327064.P17946408519003754812

`A123578(3^n)-(n-C(∑[char[∑[n+1]]], 2))`
-/

namespace A327064.P17946408519003754812
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 (3 ^ n) - ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ))

end

end A327064.P17946408519003754812

/-! ## A327064.P9759036763375664048

`A087063(A257932(n))`
-/

namespace A327064.P9759036763375664048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087063 (A257932 n).toNat

end

end A327064.P9759036763375664048

/-! ## A327064.P211637607375275915

`A194311(or(n, A101052(n)))`
-/

namespace A327064.P211637607375275915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194311 (Int.lor (n : ℤ) (A101052 n)).toNat

end

end A327064.P211637607375275915

/-! ## A327064.P12321127690697785372

`A325124(round(sqrt(A156664(n))))`
-/

namespace A327064.P12321127690697785372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325124 (SequenceMachineLib.roundAway (Real.sqrt (A156664 n : ℝ))).toNat

end

end A327064.P12321127690697785372

/-!
# A327065: Expansion of Product_{k>=1} (Product_{j=1..k} (1 + x^(k*j))^(k*j)).

The programs for A327065, there is no canonical definition to state claims against.
-/

/-! ## A327065.P6965639810842219849

`A055244(n)-A056973(A298497(n+1))`
-/

namespace A327065.P6965639810842219849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055244 n - A056973 (A298497 (n + 1)).toNat

end

end A327065.P6965639810842219849

/-!
# A327066: Expansion of Product_{k>=1} (Product_{j=1..k} 1/(1 - x^(k*j))^j).

The programs for A327066, there is no canonical definition to state claims against.
-/

/-! ## A327066.P1211053182733381515

`A230999(A027383(n))-A260732(n)`
-/

namespace A327066.P1211053182733381515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230999 (A027383 n).toNat - A260732 n

end

end A327066.P1211053182733381515

/-! ## A327066.P2333874296314404888

`A095861(A121449(n)+A083945(n))+A123108(n)²`
-/

namespace A327066.P2333874296314404888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095861 (A121449 n + A083945 n).toNat + A123108 n ^ 2

end

end A327066.P2333874296314404888

/-! ## A327066.P13328980497470360342

`A095861(A121449(n)+A083947(n))+A123108(n)²`
-/

namespace A327066.P13328980497470360342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095861 (A121449 n + A083947 n).toNat + A123108 n ^ 2

end

end A327066.P13328980497470360342

/-! ## A327066.P14160161538764443813

`A252649(A047082(n))`
-/

namespace A327066.P14160161538764443813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252649 (A047082 n).toNat

end

end A327066.P14160161538764443813

/-! ## A327066.P913497917041103006

`A371593(A094768(n+1))`
-/

namespace A327066.P913497917041103006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371593 (A094768 (n + 1)).toNat

end

end A327066.P913497917041103006

/-!
# A327067: Expansion of Product_{k>=1} (Product_{j=1..k} 1/(1 - x^(k*j))^k).

The programs for A327067, there is no canonical definition to state claims against.
-/

/-! ## A327067.P9379978060826307221

`A088432(A124303(n))+A006906(n)`
-/

namespace A327067.P9379978060826307221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088432 (A124303 n).toNat + A006906 n

end

end A327067.P9379978060826307221

/-! ## A327067.P6396375352239510953

`A129260(A107847(n+1))+A116732(n)`
-/

namespace A327067.P6396375352239510953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129260 (A107847 (n + 1)).toNat + A116732 n

end

end A327067.P6396375352239510953

/-! ## A327067.P8375179909682517778

`A241952(A187490(n+7))`
-/

namespace A327067.P8375179909682517778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241952 (A187490 (n + 7)).toNat

end

end A327067.P8375179909682517778

/-! ## A327067.P13246330528415147720

`A293137(∑[A116406(n)²])`
-/

namespace A327067.P13246330528415147720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116406 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293137 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A327067.P13246330528415147720

/-!
# A327068: Expansion of Product_{k>=1} (Product_{j=1..k} 1/(1 - x^(k*j))^(k*j)).

The programs for A327068, there is no canonical definition to state claims against.
-/

/-! ## A327068.P13894265436657435011

`A318396(n)+A004198(A300482(n))`
-/

namespace A327068.P13894265436657435011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318396 n + A004198 (A300482 n).toNat

end

end A327068.P13894265436657435011

/-! ## A327068.P8650065540212894785

`A325227(A347775(n))+A318396(n)`
-/

namespace A327068.P8650065540212894785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325227 (A347775 n).toNat + A318396 n

end

end A327068.P8650065540212894785

/-! ## A327068.P16986060800582937796

`A307604(n)-A160086(A027649(n))`
-/

namespace A327068.P16986060800582937796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307604 n - A160086 (A027649 n).toNat

end

end A327068.P16986060800582937796

/-! ## A327068.P8741594321031711668

`A318396(n)+A130635(A215292(3*n+1))`
-/

namespace A327068.P8741594321031711668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318396 n + A130635 (A215292 (3 * n + 1)).toNat

end

end A327068.P8741594321031711668

/-!
# A327069: Triangle read by rows where T(n,k) is the number of labeled simple graphs with n vertices and spanning edge-connectivity k.

The programs for A327069, there is no canonical definition to state claims against.
-/

/-! ## A327069.P1312535947580820377

`A327334(n)-A185133(A185063(n))`
-/

namespace A327069.P1312535947580820377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327334 n - A185133 (A185063 n).toNat

end

end A327069.P1312535947580820377

/-! ## A327069.P18067061991292390905

`A327334(n*n^(char[n²]/2))`
-/

namespace A327069.P18067061991292390905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327334 (SequenceMachineLib.roundAway ((n : ℝ) * (n : ℝ) ^ (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℚ) / 2 : ℝ))).toNat

end

end A327069.P18067061991292390905

/-! ## A327069.P17088600887680938061

`A327334(n)%Δ[A272763(n)]`
-/

namespace A327069.P17088600887680938061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272763 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A327334 n) (f1 (n + 1) - f1 n)

end

end A327069.P17088600887680938061

/-! ## A327069.P5932302724560356057

`A327334(n)^Δ[A004881(n+1)]`
-/

namespace A327069.P5932302724560356057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004881 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327334 n : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A327069.P5932302724560356057

/-! ## A327069.P10765352442919121549

`A327334(n)^A094853(2*(n+1))`
-/

namespace A327069.P10765352442919121549
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327334 n : ℚ) ^ (A094853 (2 * (n + 1)) : ℤ)

end

end A327069.P10765352442919121549

/-!
# A327070: Number of non-connected simple labeled graphs covering n vertices.

The programs for A327070, there is no canonical definition to state claims against.
-/

/-! ## A327070.P6873899833805937569

`A054592(A233583(n+1))-A327367(n)`
-/

namespace A327070.P6873899833805937569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054592 (A233583 (n + 1)).toNat - A327367 n

end

end A327070.P6873899833805937569

/-! ## A327070.P1545315841212869002

`A006129(n)-A001187(n)%A327078(n)`
-/

namespace A327070.P1545315841212869002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006129 n - Int.tmod (A001187 n) (A327078 n)

end

end A327070.P1545315841212869002

/-! ## A327070.P14405606908201930664

`A327334(A000217(n))-A327367(n)`
-/

namespace A327070.P14405606908201930664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327334 (A000217 n).toNat - A327367 n

end

end A327070.P14405606908201930664

/-! ## A327070.P1532655190265753117

`A327334(A179865(n+1))-A327367(n)`
-/

namespace A327070.P1532655190265753117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327334 (A179865 (n + 1)).toNat - A327367 n

end

end A327070.P1532655190265753117

/-!
# A327071: Number of labeled simple connected graphs with n vertices and at least one bridge, or graphs with spanning edge-connectivity 1.

The programs for A327071, there is no canonical definition to state claims against.
-/

/-! ## A327071.P3733595672905747019

`A001187(n)-A327072(∑[n])`
-/

namespace A327071.P3733595672905747019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001187 n - A327072 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A327071.P3733595672905747019

/-! ## A327071.P17818242196498844684

`A223894(A179865(n+1))-A327072(A000217(n))`
-/

namespace A327071.P17818242196498844684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223894 (A179865 (n + 1)).toNat - A327072 (A000217 n).toNat

end

end A327071.P17818242196498844684

/-! ## A327071.P6977983745890051613

`A059166(n)+A327362(n)-A327072(A000217(n))`
-/

namespace A327071.P6977983745890051613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059166 n + (A327362 n - A327072 (A000217 n).toNat)

end

end A327071.P6977983745890051613

/-! ## A327071.P6016210111084605440

`A059166(n)+A327362(n)-A327072(A179865(n+1))`
-/

namespace A327071.P6016210111084605440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059166 n + (A327362 n - A327072 (A179865 (n + 1)).toNat)

end

end A327071.P6016210111084605440

/-! ## A327071.P10873935596903800987

`A001187(n)%A092430(n+2)-A095983(n)`
-/

namespace A327071.P10873935596903800987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001187 n) (A092430 (n + 2)) - A095983 n

end

end A327071.P10873935596903800987

/-!
# A327072: Triangle read by rows where T(n,k) is the number of labeled simple connected graphs with n vertices and exactly k bridges.

The programs for A327072, there is no canonical definition to state claims against.
-/

/-! ## A327072.P2409468754324083561

`A144161(comp[2*n+3])%A086323(3*(n+1))`
-/

namespace A327072.P2409468754324083561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A144161 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)) (A086323 (3 * (n + 1)))

end

end A327072.P2409468754324083561

/-! ## A327072.P7661211747920985957

`A327149(A161413(n+3)-A204459(n))`
-/

namespace A327072.P7661211747920985957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327149 (A161413 (n + 3) - A204459 n).toNat

end

end A327072.P7661211747920985957

/-!
# A327073: Number of labeled simple connected graphs with n vertices and exactly one bridge.

The programs for A327073, there is no canonical definition to state claims against.
-/

/-! ## A327073.P11749739264889107435

`A327072(A179865(n+1)+1)`
-/

namespace A327073.P11749739264889107435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327072 (A179865 (n + 1) + 1).toNat

end

end A327073.P11749739264889107435

/-! ## A327073.P9647243700272126897

`A327072(A000124(n)+A000038(n))`
-/

namespace A327073.P9647243700272126897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327072 (A000124 n + A000038 n).toNat

end

end A327073.P9647243700272126897

/-! ## A327073.P4879595769517922618

`A057427(n)*A327072(A000124(n))`
-/

namespace A327073.P4879595769517922618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A327072 (A000124 n).toNat

end

end A327073.P4879595769517922618

/-! ## A327073.P13023251446636366939

`A327072(or(A000038(n), A000124(n)))`
-/

namespace A327073.P13023251446636366939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327072 (Int.lor (A000038 n) (A000124 n)).toNat

end

end A327073.P13023251446636366939

/-! ## A327073.P958632172285466312

`A327072(xor(A000038(n), A000124(n)))`
-/

namespace A327073.P958632172285466312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327072 (Int.xor (A000038 n) (A000124 n)).toNat

end

end A327073.P958632172285466312

/-!
# A327074: Number of unlabeled connected graphs with n vertices and exactly one bridge.

The programs for A327074, there is no canonical definition to state claims against.
-/

/-! ## A327074.P17727383582981064837

`A327077(∑[n]+1)%n!`
-/

namespace A327074.P17727383582981064837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A327077 (∑ j ∈ Finset.range (n + 1), f1 j + 1)) (Nat.factorial n : ℤ)

end

end A327074.P17727383582981064837

/-! ## A327074.P10175653680464433211

`A327077(round(sqrt(∑[n]²+1))+1)`
-/

namespace A327074.P10175653680464433211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327077 (SequenceMachineLib.roundAway (Real.sqrt (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 + 1 : ℕ) : ℝ)) + 1).toNat

end

end A327074.P10175653680464433211

/-! ## A327074.P3410036855479025011

`A327077(A000124(n))-A017904(n)`
-/

namespace A327074.P3410036855479025011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327077 (A000124 n).toNat - A017904 n

end

end A327074.P3410036855479025011

/-! ## A327074.P12109765058703959475

`A327077(A000124(n))%A000088(n)`
-/

namespace A327074.P12109765058703959475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A327077 (A000124 n).toNat) (A000088 n)

end

end A327074.P12109765058703959475

/-! ## A327074.P12731065913909186546

`A071625(n+1)*A327077(A000124(n))`
-/

namespace A327074.P12731065913909186546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071625 (n + 1) * A327077 (A000124 n).toNat

end

end A327074.P12731065913909186546

/-!
# A327075: Number of non-connected unlabeled simple graphs covering n vertices.

The programs for A327075, there is no canonical definition to state claims against.
-/

/-! ## A327075.P11202718756637879585

`A000007(n)+A002494(n)%A001349(n)`
-/

namespace A327075.P11202718756637879585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + Int.tmod (A002494 n) (A001349 n)

end

end A327075.P11202718756637879585

/-! ## A327075.P12156023082869248540

`A002494(n)-A001349(n)%A000088(n)`
-/

namespace A327075.P12156023082869248540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002494 n - Int.tmod (A001349 n) (A000088 n)

end

end A327075.P12156023082869248540

/-! ## A327075.P9940209387014263334

`A002494(n)-A327365(A000124(n))`
-/

namespace A327075.P9940209387014263334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002494 n - A327365 (A000124 n).toNat

end

end A327075.P9940209387014263334

/-! ## A327075.P8297456535481437018

`A217653(∑[n])-A327365(A000124(n))`
-/

namespace A327075.P8297456535481437018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217653 (∑ j ∈ Finset.range (n + 1), f1 j) - A327365 (A000124 n).toNat

end

end A327075.P8297456535481437018

/-! ## A327075.P14479335524362024599

`A327365(∑[n])-A327365(A000124(n))`
-/

namespace A327075.P14479335524362024599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327365 (∑ j ∈ Finset.range (n + 1), f1 j) - A327365 (A000124 n).toNat

end

end A327075.P14479335524362024599

/-!
# A327076: Maximum divisor of n that is 1 or connected.

The programs for A327076, there is no canonical definition to state claims against.
-/

/-! ## A327076.P11421407754071297513

`(n+1)/A327395(n+1)`
-/

namespace A327076.P11421407754071297513
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A327395 (n + 1) : ℚ)

end

end A327076.P11421407754071297513

/-! ## A327076.P5367526024339310273

`floor((ϕ²-(ϕ-n))/A327395(ϕ²-(ϕ-n)))`
-/

namespace A327076.P5367526024339310273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ))) / (A327395 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat : ℝ)⌋

end

end A327076.P5367526024339310273

/-! ## A327076.P8050314831956777851

`lcm(ceil((n+1)/∏{p}[n+1, (n+1)/#]), A327656(n+1))`
-/

namespace A327076.P8050314831956777851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ⌈(n + 1 : ℚ) / (∏ p ∈ Nat.primeFactors (f1 n), (n + 1 : ℚ) / (p : ℚ))⌉ (A327656 (n + 1))

end

end A327076.P8050314831956777851

/-! ## A327076.P16557587004370666727

`(n+1)/A327405((n+1)/ceil((n+1)/∏{p}[n+1, (n+1)/#]))`
-/

namespace A327076.P16557587004370666727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A327405 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (⌈(n + 1 : ℚ) / (∏ p ∈ Nat.primeFactors (f1 n), (n + 1 : ℚ) / (p : ℚ))⌉ : ℚ))).toNat : ℚ)

end

end A327076.P16557587004370666727

/-! ## A327076.P12366832622909543981

`lcm(A286299(n), A327656(n+1))`
-/

namespace A327076.P12366832622909543981
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A286299 n) (A327656 (n + 1))

end

end A327076.P12366832622909543981

/-! ## A327076.P12458217208972887782

`A327656(n+1)+Δ[A070939(n)]`
-/

namespace A327076.P12458217208972887782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327656 (n + 1) + (f1 (n + 1) - f1 n)

end

end A327076.P12458217208972887782

/-! ## A327076.P10181886246026630756

`A327656(n+1)+char[A052551(n)]`
-/

namespace A327076.P10181886246026630756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052551 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327656 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A327076.P10181886246026630756

/-! ## A327076.P12995086383918094582

`A327656(n+1)+char[A126646(n)]`
-/

namespace A327076.P12995086383918094582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327656 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A327076.P12995086383918094582

/-! ## A327076.P16296803412595140552

`(n+1)/A327405(A048671(n+1))`
-/

namespace A327076.P16296803412595140552
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A327405 (A048671 (n + 1)).toNat : ℚ)

end

end A327076.P16296803412595140552

/-! ## A327076.P12618384620325416962

`A327656(n+1)+char[∑[A000079(n)]]`
-/

namespace A327076.P12618384620325416962
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327656 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A327076.P12618384620325416962

/-!
# A327077: Triangle read by rows where T(n,k) is the number of unlabeled simple connected graphs with n vertices and k bridges.

The programs for A327077, there is no canonical definition to state claims against.
-/

/-! ## A327077.P2305464397372679912

`A182858(A327072(n))`
-/

namespace A327077.P2305464397372679912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182858 (A327072 n).toNat

end

end A327077.P2305464397372679912

/-! ## A327077.P1248732124074698503

`A319572(A327072(n)+1)`
-/

namespace A327077.P1248732124074698503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319572 (A327072 n + 1).toNat

end

end A327077.P1248732124074698503

/-! ## A327077.P18347761508982124240

`A352513(A327072(n)+1)`
-/

namespace A327077.P18347761508982124240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352513 (A327072 n + 1).toNat

end

end A327077.P18347761508982124240

/-! ## A327077.P10216054400712774451

`A088205(3*A327072(n))`
-/

namespace A327077.P10216054400712774451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088205 (3 * A327072 n).toNat

end

end A327077.P10216054400712774451

/-! ## A327077.P12188615426008244162

`A079294(xor(4, A327072(n)))`
-/

namespace A327077.P12188615426008244162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079294 (Int.xor 4 (A327072 n)).toNat

end

end A327077.P12188615426008244162

/-!
# A327078: Binomial transform of A001187 (labeled connected graphs), if we assume A001187(1) = 0.

The programs for A327078, there is no canonical definition to state claims against.
-/

/-! ## A327078.P7861176931389543079

`A182100(n)-n`
-/

namespace A327078.P7861176931389543079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182100 n - (n : ℤ)

end

end A327078.P7861176931389543079

/-! ## A327078.P8050697275979842026

`A006125(n)+1-A327199(n)`
-/

namespace A327078.P8050697275979842026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006125 n + (1 - A327199 n)

end

end A327078.P8050697275979842026

/-! ## A327078.P10246763821908239629

`A000051(A161680(n))-A327199(n)`
-/

namespace A327078.P10246763821908239629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 (A161680 n).toNat - A327199 n

end

end A327078.P10246763821908239629

/-! ## A327078.P15557086409355911569

`A167939(A028310(n))+A057427(n)-n`
-/

namespace A327078.P15557086409355911569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167939 (A028310 n).toNat + (A057427 n - (n : ℤ))

end

end A327078.P15557086409355911569

/-! ## A327078.P14791464586796707065

`A327200(n)+A327231(n)+1`
-/

namespace A327078.P14791464586796707065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327200 n + (A327231 n + 1)

end

end A327078.P14791464586796707065

/-!
# A327079: Number of labeled simple connected graphs covering n vertices with at least one bridge that is not an endpoint/leaf (non-spanning edge-connectivity 1).

The programs for A327079, there is no canonical definition to state claims against.
-/

/-! ## A327079.P12951420153554264139

`A316402(round(4*n^(n/4)))`
-/

namespace A327079.P12951420153554264139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316402 (SequenceMachineLib.roundAway (4 * (n : ℝ) ^ ((n : ℚ) / 4 : ℝ))).toNat

end

end A327079.P12951420153554264139

/-! ## A327079.P16690435679922937725

`xor(1, A319778(floor(6*(n/4)²)))`
-/

namespace A327079.P16690435679922937725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A319778 ⌊6 * ((n : ℚ) / 4) ^ 2⌋.toNat)

end

end A327079.P16690435679922937725

/-!
# A327080: BII-numbers of maximal uniform set-systems (or complete hypergraphs).

The programs for A327080, there is no canonical definition to state claims against.
-/

/-! ## A327080.P10719630793860658060

`∩[A326704(n+1), A330217(n+1)]`
-/

namespace A327080.P10719630793860658060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326704 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330217 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A327080.P10719630793860658060

/-! ## A327080.P9689827964015649468

`∩[A326785(n+1), A330217(n+1)]`
-/

namespace A327080.P9689827964015649468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326785 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330217 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A327080.P9689827964015649468

/-! ## A327080.P11750042678655187027

`∩[A326783(n+1), A330217(n+1)]`
-/

namespace A327080.P11750042678655187027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326783 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330217 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A327080.P11750042678655187027

/-!
# A327081: BII-numbers of maximal uniform set-systems covering an initial interval of positive integers.

The programs for A327081, there is no canonical definition to state claims against.
-/

/-! ## A327081.P14034203812848116144

`A326783(A277852(n+2))`
-/

namespace A327081.P14034203812848116144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326783 (A277852 (n + 2)).toNat

end

end A327081.P14034203812848116144

/-! ## A327081.P539110081576994443

`∩[A327080(n+1), A330099(n+2)]`
-/

namespace A327081.P539110081576994443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327080 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330099 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A327081.P539110081576994443

/-!
# A327082: BII-numbers of set-systems with cut-connectivity 2.

The programs for A327082, there is no canonical definition to state claims against.
-/

/-! ## A327082.P7791824339973066283

`eq[2, A326786(n)]`
-/

namespace A327082.P7791824339973066283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326786 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A327082.P7791824339973066283

/-! ## A327082.P12709801056532271557

`eq[7, or(3, A330101(n))]`
-/

namespace A327082.P12709801056532271557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 3 (A330101 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A327082.P12709801056532271557

/-! ## A327082.P12730146401980177495

`eq[7, or(3, A330195(n))]`
-/

namespace A327082.P12730146401980177495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 3 (A330195 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A327082.P12730146401980177495

/-! ## A327082.P8090747751575822919

`A327101(A043317(n+1))`
-/

namespace A327082.P8090747751575822919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327101 (A043317 (n + 1)).toNat

end

end A327082.P8090747751575822919

/-! ## A327082.P13607907403124534896

`A327101(A044914(n+1))`
-/

namespace A327082.P13607907403124534896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327101 (A044914 (n + 1)).toNat

end

end A327082.P13607907403124534896

/-!
# A327083: Array read by descending antidiagonals: A(n,k) is the number of oriented colorings of the edges of a regular n-dimensional simplex using up to k colors.

The programs for A327083, there is no canonical definition to state claims against.
-/

/-! ## A327083.P17618031853028706874

`A327085(n+1)+A327084(n+1)`
-/

namespace A327083.P17618031853028706874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327085 (n + 1) + A327084 (n + 1)

end

end A327083.P17618031853028706874

/-! ## A327083.P14232381291449196398

`A327086(n+1)+2*A327085(n+1)`
-/

namespace A327083.P14232381291449196398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327086 (n + 1) + 2 * A327085 (n + 1)

end

end A327083.P14232381291449196398

/-! ## A327083.P8557083988888678547

`2*A327084(n+1)-A327086(n+1)`
-/

namespace A327083.P8557083988888678547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A327084 (n + 1) - A327086 (n + 1)

end

end A327083.P8557083988888678547

/-! ## A327083.P3454637105771587066

`A327085(n+1)+A063841(A080036(n+1))`
-/

namespace A327083.P3454637105771587066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327085 (n + 1) + A063841 (A080036 (n + 1)).toNat

end

end A327083.P3454637105771587066

/-! ## A327083.P11381117501601713689

`A327085(n+1)+A063841(A014132(n+2))`
-/

namespace A327083.P11381117501601713689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327085 (n + 1) + A063841 (A014132 (n + 2)).toNat

end

end A327083.P11381117501601713689

/-!
# A327084: Array read by descending antidiagonals: A(n,k) is the number of unoriented colorings of the edges of a regular n-dimensional simplex using up to k colors.

The programs for A327084, there is no canonical definition to state claims against.
-/

/-! ## A327084.P2694943458671512588

`A063841(comp[∑[n]]+1)`
-/

namespace A327084.P2694943458671512588
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063841 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A327084.P2694943458671512588

/-! ## A327084.P17132986026534690746

`A327086(n+1)+A327085(n+1)`
-/

namespace A327084.P17132986026534690746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327086 (n + 1) + A327085 (n + 1)

end

end A327084.P17132986026534690746

/-! ## A327084.P7655521001972720703

`A327083(n+1)-A327085(n+1)`
-/

namespace A327084.P7655521001972720703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327083 (n + 1) - A327085 (n + 1)

end

end A327084.P7655521001972720703

/-! ## A327084.P597276137871959719

`(A327086(n+1)+A327083(n+1))/2`
-/

namespace A327084.P597276137871959719
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327086 (n + 1) + A327083 (n + 1) : ℚ) / 2

end

end A327084.P597276137871959719

/-! ## A327084.P3546880122310315671

`A001489(n)+A063841(A014132(n+2))+n`
-/

namespace A327084.P3546880122310315671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 n + (A063841 (A014132 (n + 2)).toNat + (n : ℤ))

end

end A327084.P3546880122310315671

/-! ## A327084.P3612236823680275823

`A327083(n+1)-(A063841(A080036(n+1))-A327086(n+1))`
-/

namespace A327084.P3612236823680275823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327083 (n + 1) - (A063841 (A080036 (n + 1)).toNat - A327086 (n + 1))

end

end A327084.P3612236823680275823

/-! ## A327084.P1288725324430793417

`A327083(n+1)-(A063841(A014132(n+2))-A327086(n+1))`
-/

namespace A327084.P1288725324430793417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327083 (n + 1) - (A063841 (A014132 (n + 2)).toNat - A327086 (n + 1))

end

end A327084.P1288725324430793417

/-!
# A327085: Array read by descending antidiagonals: A(n,k) is the number of chiral pairs of colorings of the edges of a regular n-dimensional simplex using up to k colors.

The programs for A327085, there is no canonical definition to state claims against.
-/

/-! ## A327085.P13641980705499837008

`A327083(n+1)-A327084(n+1)`
-/

namespace A327085.P13641980705499837008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327083 (n + 1) - A327084 (n + 1)

end

end A327085.P13641980705499837008

/-! ## A327085.P1431454695332622934

`A327084(n+1)-A327086(n+1)`
-/

namespace A327085.P1431454695332622934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327084 (n + 1) - A327086 (n + 1)

end

end A327085.P1431454695332622934

/-! ## A327085.P2106237224066453320

`(A327083(n+1)-A327086(n+1))/2`
-/

namespace A327085.P2106237224066453320
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327083 (n + 1) - A327086 (n + 1) : ℚ) / 2

end

end A327085.P2106237224066453320

/-! ## A327085.P8069212034599808125

`A063841(A080036(n+1))-A327086(n+1)`
-/

namespace A327085.P8069212034599808125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063841 (A080036 (n + 1)).toNat - A327086 (n + 1)

end

end A327085.P8069212034599808125

/-! ## A327085.P15263945748122201603

`A063841(A014132(n+2))-A327086(n+1)`
-/

namespace A327085.P15263945748122201603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063841 (A014132 (n + 2)).toNat - A327086 (n + 1)

end

end A327085.P15263945748122201603

/-! ## A327085.P16037152845544964219

`A327083(A000027(n+1))%A327084(n+1)`
-/

namespace A327085.P16037152845544964219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A327083 (A000027 (n + 1)).toNat) (A327084 (n + 1))

end

end A327085.P16037152845544964219

/-! ## A327085.P15781966290373856153

`(A327083(n+1)+A000007(n))%A327084(n+1)`
-/

namespace A327085.P15781966290373856153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A327083 (n + 1) + A000007 n) (A327084 (n + 1))

end

end A327085.P15781966290373856153

/-!
# A327086: Array read by descending antidiagonals: A(n,k) is the number of achiral colorings of the edges of a regular n-dimensional simplex using up to k colors.

The programs for A327086, there is no canonical definition to state claims against.
-/

/-! ## A327086.P15003702403979061100

`A327084(n+1)-A327085(n+1)`
-/

namespace A327086.P15003702403979061100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327084 (n + 1) - A327085 (n + 1)

end

end A327086.P15003702403979061100

/-! ## A327086.P12577974674026619285

`2*A327084(n+1)-A327083(n+1)`
-/

namespace A327086.P12577974674026619285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A327084 (n + 1) - A327083 (n + 1)

end

end A327086.P12577974674026619285

/-! ## A327086.P2524238127919110242

`A327083(n+1)-2*A327085(n+1)`
-/

namespace A327086.P2524238127919110242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327083 (n + 1) - 2 * A327085 (n + 1)

end

end A327086.P2524238127919110242

/-! ## A327086.P12209860976345852387

`A063841(A080036(n+1))-A327085(n+1)`
-/

namespace A327086.P12209860976345852387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063841 (A080036 (n + 1)).toNat - A327085 (n + 1)

end

end A327086.P12209860976345852387

/-! ## A327086.P7817702742016072804

`A063841(A014132(n+2))-A327085(n+1)`
-/

namespace A327086.P7817702742016072804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063841 (A014132 (n + 2)).toNat - A327085 (n + 1)

end

end A327086.P7817702742016072804

/-! ## A327086.P3460046489514919216

`A327084(n+1)+A057428(n)*A327085(n+1)`
-/

namespace A327086.P3460046489514919216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327084 (n + 1) + A057428 n * A327085 (n + 1)

end

end A327086.P3460046489514919216

/-!
# A327087: Triangle read by rows: T(n,k) is the number of oriented colorings of the edges of a regular n-dimensional simplex using exactly k colors. Row n has (n+1)*n/2 columns.

The programs for A327087, there is no canonical definition to state claims against.
-/

/-! ## A327087.P5574158713704286498

`A327089(n+1)+A327088(n+1)`
-/

namespace A327087.P5574158713704286498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327089 (n + 1) + A327088 (n + 1)

end

end A327087.P5574158713704286498

/-! ## A327087.P14567444711364939062

`A327090(n+1)+2*A327089(n+1)`
-/

namespace A327087.P14567444711364939062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327090 (n + 1) + 2 * A327089 (n + 1)

end

end A327087.P14567444711364939062

/-! ## A327087.P4762718002953598811

`2*A327088(n+1)-A327090(n+1)`
-/

namespace A327087.P4762718002953598811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A327088 (n + 1) - A327090 (n + 1)

end

end A327087.P4762718002953598811

/-! ## A327087.P8047146571864685569

`A327089(A000027(n+1))+A327090(n+1)+A327089(n+1)`
-/

namespace A327087.P8047146571864685569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327089 (A000027 (n + 1)).toNat + (A327090 (n + 1) + A327089 (n + 1))

end

end A327087.P8047146571864685569

/-! ## A327087.P14231304558013488073

`A327088(A000027(n+1))+A327088(n+1)-A327090(n+1)`
-/

namespace A327087.P14231304558013488073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327088 (A000027 (n + 1)).toNat + (A327088 (n + 1) - A327090 (n + 1))

end

end A327087.P14231304558013488073

/-!
# A327088: Triangle read by rows: T(n,k) is the number of unoriented colorings of the edges of a regular n-dimensional simplex using exactly k colors. Row n has (n+1)*n/2 columns.

The programs for A327088, there is no canonical definition to state claims against.
-/

/-! ## A327088.P8570805470458459622

`A327090(n+1)+A327089(n+1)`
-/

namespace A327088.P8570805470458459622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327090 (n + 1) + A327089 (n + 1)

end

end A327088.P8570805470458459622

/-! ## A327088.P9913725386622996460

`A327087(n+1)-A327089(n+1)`
-/

namespace A327088.P9913725386622996460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327087 (n + 1) - A327089 (n + 1)

end

end A327088.P9913725386622996460

/-! ## A327088.P32168511384353571

`(A327090(n+1)+A327087(n+1))/2`
-/

namespace A327088.P32168511384353571
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327090 (n + 1) + A327087 (n + 1) : ℚ) / 2

end

end A327088.P32168511384353571

/-! ## A327088.P17376673140456744246

`A014682(A327090(n+1)+A327087(n+1))`
-/

namespace A327088.P17376673140456744246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A327090 (n + 1) + A327087 (n + 1)).toNat

end

end A327088.P17376673140456744246

/-! ## A327088.P10000916885951560240

`A273943(A327090(n+1)+A327087(n+1))`
-/

namespace A327088.P10000916885951560240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A327090 (n + 1) + A327087 (n + 1)).toNat

end

end A327088.P10000916885951560240

/-!
# A327089: Triangle read by rows: T(n,k) is the number of chiral pairs of colorings of the edges of a regular n-dimensional simplex using exactly k colors. Row n has (n+1)*n/2 columns.

The programs for A327089, there is no canonical definition to state claims against.
-/

/-! ## A327089.P9406620117375721580

`A327087(n+1)-A327088(n+1)`
-/

namespace A327089.P9406620117375721580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327087 (n + 1) - A327088 (n + 1)

end

end A327089.P9406620117375721580

/-! ## A327089.P10388979111154475384

`A327088(n+1)-A327090(n+1)`
-/

namespace A327089.P10388979111154475384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327088 (n + 1) - A327090 (n + 1)

end

end A327089.P10388979111154475384

/-! ## A327089.P1352521311504883156

`(A327087(n+1)-A327090(n+1))/2`
-/

namespace A327089.P1352521311504883156
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327087 (n + 1) - A327090 (n + 1) : ℚ) / 2

end

end A327089.P1352521311504883156

/-! ## A327089.P3462382153983011058

`A327088(n+1)+A327090(n+1)/A057428(2*n+3)`
-/

namespace A327089.P3462382153983011058
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327088 (n + 1) : ℚ) + (A327090 (n + 1) : ℚ) / (A057428 (2 * n + 3) : ℚ)

end

end A327089.P3462382153983011058

/-! ## A327089.P2948270496741440854

`A014682(A327087(n+1)-A327090(n+1))`
-/

namespace A327089.P2948270496741440854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A327087 (n + 1) - A327090 (n + 1)).toNat

end

end A327089.P2948270496741440854

/-!
# A327090: Triangle read by rows: T(n,k) is the number of achiral colorings of the edges of a regular n-dimensional simplex using exactly k colors. Row n has (n+1)*n/2 columns.

The programs for A327090, there is no canonical definition to state claims against.
-/

/-! ## A327090.P9751427579276935274

`A327088(n+1)-A327089(n+1)`
-/

namespace A327090.P9751427579276935274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327088 (n + 1) - A327089 (n + 1)

end

end A327090.P9751427579276935274

/-! ## A327090.P2815477418063203680

`2*A327088(n+1)-A327087(n+1)`
-/

namespace A327090.P2815477418063203680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A327088 (n + 1) - A327087 (n + 1)

end

end A327090.P2815477418063203680

/-! ## A327090.P796446302910703890

`A327087(n+1)-2*A327089(n+1)`
-/

namespace A327090.P796446302910703890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327087 (n + 1) - 2 * A327089 (n + 1)

end

end A327090.P796446302910703890

/-! ## A327090.P18160934027469049823

`A327088(A000027(n+1))+A327088(n+1)-A327087(n+1)`
-/

namespace A327090.P18160934027469049823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327088 (A000027 (n + 1)).toNat + (A327088 (n + 1) - A327087 (n + 1))

end

end A327090.P18160934027469049823

/-! ## A327090.P1087382982298256166

`A327087(n+1)-(A327089(A000027(n+1))+A327089(n+1))`
-/

namespace A327090.P1087382982298256166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327087 (n + 1) - (A327089 (A000027 (n + 1)).toNat + A327089 (n + 1))

end

end A327090.P1087382982298256166

/-!
# A327091: Number of chiral pairs of length n words with integer entries that cover an initial interval of positive integers.

The programs for A327091, there is no canonical definition to state claims against.
-/

/-! ## A327091.P8015613588137144242

`record[Δ[A032109(A117910(n))]]`
-/

namespace A327091.P8015613588137144242
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032109 (A117910 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A327091.P8015613588137144242

/-! ## A327091.P4107644237833028735

`record[Δ[A032109(A178804(n+1))]]`
-/

namespace A327091.P4107644237833028735
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032109 (A178804 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A327091.P4107644237833028735

/-! ## A327091.P9637595701025904394

`A032109(n+1)-A032109(A008619(n))`
-/

namespace A327091.P9637595701025904394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032109 (n + 1) - A032109 (A008619 n).toNat

end

end A327091.P9637595701025904394

/-! ## A327091.P13242321703772750550

`A032109(n+1)-A032109(A065033(n+1))`
-/

namespace A327091.P13242321703772750550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032109 (n + 1) - A032109 (A065033 (n + 1)).toNat

end

end A327091.P13242321703772750550

/-! ## A327091.P13576980711269681210

`A032109(n+1)-A032109(A110654(n+1))`
-/

namespace A327091.P13576980711269681210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032109 (n + 1) - A032109 (A110654 (n + 1)).toNat

end

end A327091.P13576980711269681210

/-! ## A327091.P5387725277570279317

`A032109(n+1)-A032109(A123108(n+2))`
-/

namespace A327091.P5387725277570279317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032109 (n + 1) - A032109 (A123108 (n + 2)).toNat

end

end A327091.P5387725277570279317

/-! ## A327091.P12858617579121956466

`A032109(n+1)-A032109(A008624(2*n))`
-/

namespace A327091.P12858617579121956466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032109 (n + 1) - A032109 (A008624 (2 * n)).toNat

end

end A327091.P12858617579121956466

/-! ## A327091.P13304163186483351132

`A032109(n+1)-A032109(A178804(2*n+1))`
-/

namespace A327091.P13304163186483351132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032109 (n + 1) - A032109 (A178804 (2 * n + 1)).toNat

end

end A327091.P13304163186483351132

/-!
# A327092: Numbers k that are neither prime nor semiprime, and one of n-1 and n+1 is prime while the other is semiprime.

The programs for A327092, there is no canonical definition to state claims against.
-/

/-! ## A327092.P7713422726227535945

`∑[8/A334430(A138565(n+1))]`
-/

namespace A327092.P7713422726227535945
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  8 / (A334430 (A138565 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327092.P7713422726227535945

/-! ## A327092.P9304349898221318319

`lt[A323908(A338907(n+1)), A168036(n)]`
-/

namespace A327092.P9304349898221318319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323908 (A338907 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168036 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A327092.P9304349898221318319

/-! ## A327092.P113999656208748711

`lt[A039698(A206710(n+2)), A003415(n)]`
-/

namespace A327092.P113999656208748711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039698 (A206710 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A327092.P113999656208748711

/-! ## A327092.P10739081097978096348

`lt[A105023(A049451(n))+n, A003415(n)]`
-/

namespace A327092.P10739081097978096348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105023 (A049451 n).toNat + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A327092.P10739081097978096348

/-! ## A327092.P15130303570184833128

`A046315(n+1)-A165326(A215329(n+2))`
-/

namespace A327092.P15130303570184833128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046315 (n + 1) - A165326 (A215329 (n + 2)).toNat

end

end A327092.P15130303570184833128

/-!
# A327093: Sequence obtained by swapping each (k*(2n))-th element of the positive integers with the (k*(2n-1))-th element, for all k > 0, in ascending order.

The programs for A327093, there is no canonical definition to state claims against.
-/

/-! ## A327093.P1142533423061331903

`abs(xor(1, -A064494(n+1)))`
-/

namespace A327093.P1142533423061331903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor 1 (-A064494 (n + 1))|

end

end A327093.P1142533423061331903

/-! ## A327093.P9497897627425134546

`gcd(xor(1, -A064494(n+1)), A000038(n))`
-/

namespace A327093.P9497897627425134546
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Int.xor 1 (-A064494 (n + 1))) (A000038 n)

end

end A327093.P9497897627425134546

/-! ## A327093.P8161715117259731761

`(-1)^A000040(n+2)*xor(1, -A064494(n+1))`
-/

namespace A327093.P8161715117259731761
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A000040 (n + 2) : ℤ) * (Int.xor 1 (-A064494 (n + 1)) : ℚ)

end

end A327093.P8161715117259731761

/-! ## A327093.P16880586491871925876

`A014681(A064494(n+1))`
-/

namespace A327093.P16880586491871925876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A064494 (n + 1)).toNat

end

end A327093.P16880586491871925876

/-! ## A327093.P16309180581753150264

`A103889(or(char[7], A064494(n+1)))`
-/

namespace A327093.P16309180581753150264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103889 (Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A064494 (n + 1))).toNat

end

end A327093.P16309180581753150264

/-! ## A327093.P17558473109579710628

`A004442(A064494(n+1)+1)-1`
-/

namespace A327093.P17558473109579710628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A064494 (n + 1) + 1).toNat - 1

end

end A327093.P17558473109579710628

/-! ## A327093.P1808581813540907192

`A023443(xor(1, A064494(n+1)+1))`
-/

namespace A327093.P1808581813540907192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (Int.xor 1 (A064494 (n + 1) + 1)).toNat

end

end A327093.P1808581813540907192

/-! ## A327093.P11609806261849826777

`A103889(dr((-1)^n)*A064494(n+1))`
-/

namespace A327093.P11609806261849826777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103889 ((SequenceMachineLib.digitalRoot ((-1) ^ n) : ℤ) * A064494 (n + 1)).toNat

end

end A327093.P11609806261849826777

/-!
# A327094: a(n) is the number of cells in the smallest polyomino that can contain all free n-ominoes.

The programs for A327094, there is no canonical definition to state claims against.
-/

/-! ## A327094.P14226411308124085325

`∑[A121895(n+1)]+n`
-/

namespace A327094.P14226411308124085325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121895 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A327094.P14226411308124085325

/-! ## A327094.P1334813746712075164

`comp[round(sqrt(A185007(n+1)))]`
-/

namespace A327094.P1334813746712075164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A185007 (n + 1) : ℝ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A327094.P1334813746712075164

/-! ## A327094.P5453926340557164930

`∑[n-a(A353847(n)-1)]` with `a(0)=0`
-/

namespace A327094.P5453926340557164930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  (n : ℤ) - f1 (A353847 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327094.P5453926340557164930

/-! ## A327094.P13701227125526789190

`round((A124763(n)+∑[n])/exp(γ))`
-/

namespace A327094.P13701227125526789190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A124763 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) : ℝ) / Real.exp Real.eulerMascheroniConstant)

end

end A327094.P13701227125526789190

/-! ## A327094.P14074897500986472678

`∑[floor(A216841(3*n+4)/10)]`
-/

namespace A327094.P14074897500986472678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A216841 (3 * n + 4) : ℚ) / 10⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327094.P14074897500986472678

/-!
# A327095: Expansion of Sum_{k>=1} k * x^k * (1 - x^k + x^(2*k)) / (1 - x^(4*k)).

The programs for A327095, the canonical program `A327095.P17468697000068290047` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327095 has offset 1).

The definition of A327095 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A327095.P17468697000068290047

`∑{d}[n+1, A316631(#)]`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A327095

/-- `∑{d}[n+1, A316631(#)]` -/
def P17468697000068290047.Spec : Prop :=
  ∀ n, P17468697000068290047.a n = A327095 (n + 1)

theorem P17468697000068290047.correct : P17468697000068290047.Spec := by
  intro n
  simp only [A327095, Nat.add_sub_cancel]

end A327095

/-! ## A327095.P10134940060403988094

`A002131(floor(n/(n%2+1))+1)`
-/

namespace A327095.P10134940060403988094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002131 (⌊(n : ℚ) / ((n % 2 + 1 : ℕ) : ℚ)⌋ + 1).toNat

end

end A327095.P10134940060403988094

namespace A327095

/-- `A002131(floor(n/(n%2+1))+1)` -/
def P10134940060403988094.Spec : Prop :=
  ∀ n, P10134940060403988094.a n = A327095 (n + 1)

end A327095

/-! ## A327095.P14408055645879567974

`∑{d}[n+1, #]/xor(n, n+1)*A011782(val(n+1, 2))`
-/

namespace A327095.P14408055645879567974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) / (Nat.xor n (n + 1) : ℚ) * (A011782 (SequenceMachineLib.valuation (n + 1) 2) : ℚ)

end

end A327095.P14408055645879567974

namespace A327095

/-- `∑{d}[n+1, #]/xor(n, n+1)*A011782(val(n+1, 2))` -/
def P14408055645879567974.Spec : Prop :=
  ∀ n, P14408055645879567974.a n = (A327095 (n + 1) : ℚ)

end A327095

/-! ## A327095.P1360981960604366750

`ceil(xor(n, n+1)/4)*A000203((n+1)/2^val(n+1, 2))`
-/

namespace A327095.P1360981960604366750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.xor n (n + 1) : ℚ) / 4⌉ * A000203 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

end

end A327095.P1360981960604366750

namespace A327095

/-- `ceil(xor(n, n+1)/4)*A000203((n+1)/2^val(n+1, 2))` -/
def P1360981960604366750.Spec : Prop :=
  ∀ n, P1360981960604366750.a n = A327095 (n + 1)

end A327095

/-! ## A327095.P10004608335323945012

`ceil(xor(n, n+1)/4)*A046897((n+1)/2^val(n+1, 2))`
-/

namespace A327095.P10004608335323945012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.xor n (n + 1) : ℚ) / 4⌉ * A046897 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

end

end A327095.P10004608335323945012

namespace A327095

/-- `ceil(xor(n, n+1)/4)*A046897((n+1)/2^val(n+1, 2))` -/
def P10004608335323945012.Spec : Prop :=
  ∀ n, P10004608335323945012.a n = A327095 (n + 1)

end A327095

/-! ## A327095.P12170527964507344749

`∑{d}[n+1, #]/xor(n, n+1)*A000010(and(n+1, -(n+1)))`
-/

namespace A327095.P12170527964507344749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) / (Nat.xor n (n + 1) : ℚ) * (A000010 (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ))).toNat : ℚ)

end

end A327095.P12170527964507344749

namespace A327095

/-- `∑{d}[n+1, #]/xor(n, n+1)*A000010(and(n+1, -(n+1)))` -/
def P12170527964507344749.Spec : Prop :=
  ∀ n, P12170527964507344749.a n = (A327095 (n + 1) : ℚ)

end A327095

/-! ## A327095.P10659631095953524602

`∑{d}[n+1, #]/xor(n, n+1)*A074206(and(n+1, -(n+1)))`
-/

namespace A327095.P10659631095953524602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) / (Nat.xor n (n + 1) : ℚ) * (A074206 (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ))).toNat : ℚ)

end

end A327095.P10659631095953524602

namespace A327095

/-- `∑{d}[n+1, #]/xor(n, n+1)*A074206(and(n+1, -(n+1)))` -/
def P10659631095953524602.Spec : Prop :=
  ∀ n, P10659631095953524602.a n = (A327095 (n + 1) : ℚ)

end A327095

/-! ## A327095.P1873329443736021192

`∑{d}[n+1, #]/xor(n, n+1)*A006519((n+1)/∏{p}[n+1, #])`
-/

namespace A327095.P1873329443736021192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) / (Nat.xor n (n + 1) : ℚ) * (A006519 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ))).toNat : ℚ)

end

end A327095.P1873329443736021192

namespace A327095

/-- `∑{d}[n+1, #]/xor(n, n+1)*A006519((n+1)/∏{p}[n+1, #])` -/
def P1873329443736021192.Spec : Prop :=
  ∀ n, P1873329443736021192.a n = (A327095 (n + 1) : ℚ)

end A327095

/-! ## A327095.P5250982440612505508

`∑{d}[(n+1)/and(n+1, -(n+1)), #]*A252463(and(n+1, -(n+1)))`
-/

namespace A327095.P5250982440612505508
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d : ℕ) : ℤ) * A252463 (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ))).toNat

end

end A327095.P5250982440612505508

namespace A327095

/-- `∑{d}[(n+1)/and(n+1, -(n+1)), #]*A252463(and(n+1, -(n+1)))` -/
def P5250982440612505508.Spec : Prop :=
  ∀ n, P5250982440612505508.a n = A327095 (n + 1)

end A327095

/-! ## A327095.P13715834165722392987

`A002131(A026741(n+1))`
-/

namespace A327095.P13715834165722392987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002131 (A026741 (n + 1)).toNat

end

end A327095.P13715834165722392987

namespace A327095

/-- `A002131(A026741(n+1))` -/
def P13715834165722392987.Spec : Prop :=
  ∀ n, P13715834165722392987.a n = A327095 (n + 1)

end A327095

/-! ## A327095.P14741512816582907786

`A002131(A065423(n+1)+1)`
-/

namespace A327095.P14741512816582907786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002131 (A065423 (n + 1) + 1).toNat

end

end A327095.P14741512816582907786

namespace A327095

/-- `A002131(A065423(n+1)+1)` -/
def P14741512816582907786.Spec : Prop :=
  ∀ n, P14741512816582907786.a n = A327095 (n + 1)

end A327095

/-! ## A327095.P6349525160183805838

`A002131(A109043(n+1)/2)`
-/

namespace A327095.P6349525160183805838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002131 (SequenceMachineLib.roundAway ((A109043 (n + 1) : ℚ) / 2)).toNat

end

end A327095.P6349525160183805838

namespace A327095

/-- `A002131(A109043(n+1)/2)` -/
def P6349525160183805838.Spec : Prop :=
  ∀ n, P6349525160183805838.a n = A327095 (n + 1)

end A327095

/-! ## A327095.P8451523348261246514

`A002131((n+1)/A000034(n))`
-/

namespace A327095.P8451523348261246514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002131 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A000034 n : ℚ))).toNat

end

end A327095.P8451523348261246514

namespace A327095

/-- `A002131((n+1)/A000034(n))` -/
def P8451523348261246514.Spec : Prop :=
  ∀ n, P8451523348261246514.a n = A327095 (n + 1)

end A327095

/-! ## A327095.P15021535918838253540

`A054785(n+1)/A010694(n)`
-/

namespace A327095.P15021535918838253540
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054785 (n + 1) : ℚ) / (A010694 n : ℚ)

end

end A327095.P15021535918838253540

namespace A327095

/-- `A054785(n+1)/A010694(n)` -/
def P15021535918838253540.Spec : Prop :=
  ∀ n, P15021535918838253540.a n = (A327095 (n + 1) : ℚ)

end A327095

/-! ## A327095.P15826172125036672502

`A285895(n+1)/A010684(n)`
-/

namespace A327095.P15826172125036672502
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285895 (n + 1) : ℚ) / (A010684 n : ℚ)

end

end A327095.P15826172125036672502

namespace A327095

/-- `A285895(n+1)/A010684(n)` -/
def P15826172125036672502.Spec : Prop :=
  ∀ n, P15826172125036672502.a n = (A327095 (n + 1) : ℚ)

end A327095

/-! ## A327095.P15923823453868669952

`∑{d}[A026741(n+1), A026741(#)]`
-/

namespace A327095.P15923823453868669952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A026741 d

end

end A327095.P15923823453868669952

namespace A327095

/-- `∑{d}[A026741(n+1), A026741(#)]` -/
def P15923823453868669952.Spec : Prop :=
  ∀ n, P15923823453868669952.a n = A327095 (n + 1)

end A327095

/-! ## A327095.P16760506104297420383

`A054785(n+1)-A285895(n+1)`
-/

namespace A327095.P16760506104297420383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054785 (n + 1) - A285895 (n + 1)

end

end A327095.P16760506104297420383

namespace A327095

/-- `A054785(n+1)-A285895(n+1)` -/
def P16760506104297420383.Spec : Prop :=
  ∀ n, P16760506104297420383.a n = A327095 (n + 1)

end A327095

/-! ## A327095.P14503162204734734388

`A000593(n+1)*A160467(n+1)`
-/

namespace A327095.P14503162204734734388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (n + 1) * A160467 (n + 1)

end

end A327095.P14503162204734734388

namespace A327095

/-- `A000593(n+1)*A160467(n+1)` -/
def P14503162204734734388.Spec : Prop :=
  ∀ n, P14503162204734734388.a n = A327095 (n + 1)

end A327095

/-! ## A327095.P12031598311775288157

`A002131(n+1)/(A000035(n)+1)`
-/

namespace A327095.P12031598311775288157
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002131 (n + 1) : ℚ) / (A000035 n + 1 : ℚ)

end

end A327095.P12031598311775288157

namespace A327095

/-- `A002131(n+1)/(A000035(n)+1)` -/
def P12031598311775288157.Spec : Prop :=
  ∀ n, P12031598311775288157.a n = (A327095 (n + 1) : ℚ)

end A327095

/-! ## A327095.P18046618365582643373

`A186690(n+1)/A327767(n+1)`
-/

namespace A327095.P18046618365582643373
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A186690 (n + 1) : ℚ) / (A327767 (n + 1) : ℚ)

end

end A327095.P18046618365582643373

namespace A327095

/-- `A186690(n+1)/A327767(n+1)` -/
def P18046618365582643373.Spec : Prop :=
  ∀ n, P18046618365582643373.a n = (A327095 (n + 1) : ℚ)

end A327095

/-!
# A327096: Expansion of Sum_{k>=1} sigma(k) * x^k / (1 - x^(2*k)), where sigma = A000203.

The programs for A327096, the canonical program `A327096.P11519137177335428529` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327096 has offset 1).

The definition of A327096 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007429, A288417, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A327096.P11519137177335428529

`(A007429(n+1)+A288417(n+1))/2`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A327096

/-- `(A007429(n+1)+A288417(n+1))/2` -/
def P11519137177335428529.Spec : Prop :=
  ∀ n, P11519137177335428529.a n = (A327096 (n + 1) : ℚ)

end A327096

/-! ## A327096.P6673676873556196131

`A263827(n+1)/2`
-/

namespace A327096.P6673676873556196131
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A263827 (n + 1) : ℚ) / 2

end

end A327096.P6673676873556196131

namespace A327096

/-- `A263827(n+1)/2` -/
def P6673676873556196131.Spec : Prop :=
  ∀ n, P6673676873556196131.a n = (A327096 (n + 1) : ℚ)

end A327096

/-! ## A327096.P7093114202712031203

`∑{d}[n+1, A002131(#)]`
-/

namespace A327096.P7093114202712031203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002131 d

end

end A327096.P7093114202712031203

namespace A327096

/-- `∑{d}[n+1, A002131(#)]` -/
def P7093114202712031203.Spec : Prop :=
  ∀ n, P7093114202712031203.a n = A327096 (n + 1)

end A327096

/-! ## A327096.P584711587656376184

`∑{d}[n+1, A054785(#)]/2`
-/

namespace A327096.P584711587656376184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), A054785 d : ℤ) : ℚ) / 2

end

end A327096.P584711587656376184

namespace A327096

/-- `∑{d}[n+1, A054785(#)]/2` -/
def P584711587656376184.Spec : Prop :=
  ∀ n, P584711587656376184.a n = (A327096 (n + 1) : ℚ)

end A327096

/-! ## A327096.P3870942472149416121

`∑{d}[n+1, #*A001227((n+1)/#)]`
-/

namespace A327096.P3870942472149416121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A001227 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A327096.P3870942472149416121

namespace A327096

/-- `∑{d}[n+1, #*A001227((n+1)/#)]` -/
def P3870942472149416121.Spec : Prop :=
  ∀ n, P3870942472149416121.a n = A327096 (n + 1)

end A327096

/-! ## A327096.P11337474182203732712

`∑{d}[A000265(n+1), A000203((n+1)/#)]`
-/

namespace A327096.P11337474182203732712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000203 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A327096.P11337474182203732712

namespace A327096

/-- `∑{d}[A000265(n+1), A000203((n+1)/#)]` -/
def P11337474182203732712.Spec : Prop :=
  ∀ n, P11337474182203732712.a n = A327096 (n + 1)

end A327096

/-! ## A327096.P11462502237069971765

`∑{d}[n+1, A000593(#)*A006519((n+1)/#)]`
-/

namespace A327096.P11462502237069971765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000593 d * A006519 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A327096.P11462502237069971765

namespace A327096

/-- `∑{d}[n+1, A000593(#)*A006519((n+1)/#)]` -/
def P11462502237069971765.Spec : Prop :=
  ∀ n, P11462502237069971765.a n = A327096 (n + 1)

end A327096

/-! ## A327096.P18437311652433914209

`∑{d}[n+1, A000005(#)*A026741((n+1)/#)]`
-/

namespace A327096.P18437311652433914209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A026741 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A327096.P18437311652433914209

namespace A327096

/-- `∑{d}[n+1, A000005(#)*A026741((n+1)/#)]` -/
def P18437311652433914209.Spec : Prop :=
  ∀ n, P18437311652433914209.a n = A327096 (n + 1)

end A327096

/-! ## A327096.P17572163724618855189

`∑{d}[n+1, A007430(#)*A092673((n+1)/#)]`
-/

namespace A327096.P17572163724618855189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007430 d * A092673 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A327096.P17572163724618855189

namespace A327096

/-- `∑{d}[n+1, A007430(#)*A092673((n+1)/#)]` -/
def P17572163724618855189.Spec : Prop :=
  ∀ n, P17572163724618855189.a n = A327096 (n + 1)

end A327096

/-! ## A327096.P11509091631684434801

`∑{d}[n+1, A000010(#)*A133700((n+1)/#)]`
-/

namespace A327096.P11509091631684434801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A133700 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A327096.P11509091631684434801

namespace A327096

/-- `∑{d}[n+1, A000010(#)*A133700((n+1)/#)]` -/
def P11509091631684434801.Spec : Prop :=
  ∀ n, P11509091631684434801.a n = A327096 (n + 1)

end A327096

/-! ## A327096.P11033251591469644146

`∑{d}[n+1, A007429(#)*A154955((n+1)/#)]`
-/

namespace A327096.P11033251591469644146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007429 d * A154955 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A327096.P11033251591469644146

namespace A327096

/-- `∑{d}[n+1, A007429(#)*A154955((n+1)/#)]` -/
def P11033251591469644146.Spec : Prop :=
  ∀ n, P11033251591469644146.a n = A327096 (n + 1)

end A327096

/-! ## A327096.P1196778989659491703

`∑{d}[n+1, A080278(#)*A111932((n+1)/#)]`
-/

namespace A327096.P1196778989659491703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A080278 d * A111932 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A327096.P1196778989659491703

namespace A327096

/-- `∑{d}[n+1, A080278(#)*A111932((n+1)/#)]` -/
def P1196778989659491703.Spec : Prop :=
  ∀ n, P1196778989659491703.a n = A327096 (n + 1)

end A327096

/-! ## A327096.P12724556521585058998

`∑{d}[n+1, A060648(#)*A143259((n+1)/#)]`
-/

namespace A327096.P12724556521585058998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A060648 d * A143259 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A327096.P12724556521585058998

namespace A327096

/-- `∑{d}[n+1, A060648(#)*A143259((n+1)/#)]` -/
def P12724556521585058998.Spec : Prop :=
  ∀ n, P12724556521585058998.a n = A327096 (n + 1)

end A327096

/-! ## A327096.P17454370091415246893

`∑{d}[n+1, A048272(#)*A267092((n+1)/#)]`
-/

namespace A327096.P17454370091415246893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A048272 d * A267092 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A327096.P17454370091415246893

namespace A327096

/-- `∑{d}[n+1, A048272(#)*A267092((n+1)/#)]` -/
def P17454370091415246893.Spec : Prop :=
  ∀ n, P17454370091415246893.a n = A327096 (n + 1)

end A327096

/-! ## A327096.P4489684667521307661

`∑{d}[n+1, A065704(#)*A253629((n+1)/#)]`
-/

namespace A327096.P4489684667521307661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A065704 d * A253629 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A327096.P4489684667521307661

namespace A327096

/-- `∑{d}[n+1, A065704(#)*A253629((n+1)/#)]` -/
def P4489684667521307661.Spec : Prop :=
  ∀ n, P4489684667521307661.a n = A327096 (n + 1)

end A327096

/-! ## A327096.P2161779751017327081

`∑{d}[n+1, A035263(#)*A285895((n+1)/#)]`
-/

namespace A327096.P2161779751017327081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A035263 d * A285895 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A327096.P2161779751017327081

namespace A327096

/-- `∑{d}[n+1, A035263(#)*A285895((n+1)/#)]` -/
def P2161779751017327081.Spec : Prop :=
  ∀ n, P2161779751017327081.a n = A327096 (n + 1)

end A327096

/-! ## A327096.P2575953253917688093

`∑{d}[n+1, A001511(#)*A327095((n+1)/#)]`
-/

namespace A327096.P2575953253917688093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001511 d * A327095 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A327096.P2575953253917688093

namespace A327096

/-- `∑{d}[n+1, A001511(#)*A327095((n+1)/#)]` -/
def P2575953253917688093.Spec : Prop :=
  ∀ n, P2575953253917688093.a n = A327096 (n + 1)

end A327096

/-! ## A327096.P8088811213559762956

`∑{d}[n+1, A001615(#)*A328372((n+1)/#)]`
-/

namespace A327096.P8088811213559762956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001615 d * A328372 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A327096.P8088811213559762956

namespace A327096

/-- `∑{d}[n+1, A001615(#)*A328372((n+1)/#)]` -/
def P8088811213559762956.Spec : Prop :=
  ∀ n, P8088811213559762956.a n = A327096 (n + 1)

end A327096

/-! ## A327096.P7425472938044464548

`∑{d}[n+1, A007425(#)*A326305((n+1)/#)]`
-/

namespace A327096.P7425472938044464548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007425 d * A326305 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A327096.P7425472938044464548

namespace A327096

/-- `∑{d}[n+1, A007425(#)*A326305((n+1)/#)]` -/
def P7425472938044464548.Spec : Prop :=
  ∀ n, P7425472938044464548.a n = A327096 (n + 1)

end A327096

/-! ## A327096.P16685407636852930937

`∑{d}[n+1, A035218(#)*A327625((n+1)/#)]`
-/

namespace A327096.P16685407636852930937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A035218 d * A327625 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A327096.P16685407636852930937

namespace A327096

/-- `∑{d}[n+1, A035218(#)*A327625((n+1)/#)]` -/
def P16685407636852930937.Spec : Prop :=
  ∀ n, P16685407636852930937.a n = A327096 (n + 1)

end A327096

/-!
# A327097: BII-numbers of set-systems with non-spanning edge-connectivity 2.

The programs for A327097, there is no canonical definition to state claims against.
-/

/-! ## A327097.P17111884307512194877

`eq[2, A326787(n)]`
-/

namespace A327097.P17111884307512194877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326787 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A327097.P17111884307512194877

/-! ## A327097.P11252328323949788314

`lt[(2-A326787(n))², A326753(n)]`
-/

namespace A327097.P11252328323949788314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A326787 n) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326753 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A327097.P11252328323949788314

/-! ## A327097.P957292702264021166

`lt[tan(A326787(n)), A033999(2*n+1)]`
-/

namespace A327097.P957292702264021166
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (A326787 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A327097.P957292702264021166

/-! ## A327097.P12671062055316193155

`lt[A319698(A055230(n+1)), A326787(n)]`
-/

namespace A327097.P12671062055316193155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319698 (A055230 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326787 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A327097.P12671062055316193155

/-! ## A327097.P1229978868140144994

`eq[2, A231204(A330101(n))]`
-/

namespace A327097.P1229978868140144994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231204 (A330101 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A327097.P1229978868140144994

/-!
# A327098: BII-numbers of set-systems with cut-connectivity 1.

The programs for A327098, there is no canonical definition to state claims against.
-/

/-! ## A327098.P18023113575376212274

`eq[1, A326786(n)]`
-/

namespace A327098.P18023113575376212274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326786 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A327098.P18023113575376212274

/-! ## A327098.P5990910471063775558

`lt[A000007(n), tan(A326786(n))]`
-/

namespace A327098.P5990910471063775558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (A326786 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A327098.P5990910471063775558

/-! ## A327098.P3811331238666506121

`lt[A000038(n), tan(A326786(n))]`
-/

namespace A327098.P3811331238666506121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (A326786 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A327098.P3811331238666506121

/-! ## A327098.P6145197109140331932

`lt[A047999(n), tan(A326786(n))]`
-/

namespace A327098.P6145197109140331932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047999 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (A326786 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A327098.P6145197109140331932

/-! ## A327098.P15318248080796191271

`lt[A057427(n), tan(A326786(n))]`
-/

namespace A327098.P15318248080796191271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (A326786 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A327098.P15318248080796191271

/-!
# A327099: BII-numbers of set-systems with non-spanning edge-connectivity 1.

The programs for A327099, there is no canonical definition to state claims against.
-/

/-! ## A327099.P6347292111466294966

`∩[comp[A327102(n+1)], A327111(n+1)]`
-/

namespace A327099.P6347292111466294966
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327102 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327111 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A327099.P6347292111466294966

/-! ## A327099.P2598272025088050797

`eq[1, A326787(n)]`
-/

namespace A327099.P2598272025088050797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326787 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A327099.P2598272025088050797

/-! ## A327099.P13348794659518387836

`lt[A326787(n), tan(A326753(n))]`
-/

namespace A327099.P13348794659518387836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326787 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (A326753 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A327099.P13348794659518387836

/-! ## A327099.P3504571040196166348

`lt[A326787(n), tan(A327144(n))]`
-/

namespace A327099.P3504571040196166348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326787 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (A327144 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A327099.P3504571040196166348

/-! ## A327099.P2957297251927828006

`∩[A326749(n+2), lt[A326787(n), 2]]`
-/

namespace A327099.P2957297251927828006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326749 (n + 2)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326787 n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j < (f4 j : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A327099.P2957297251927828006

