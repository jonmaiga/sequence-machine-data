import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
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
import Seq.B000.C019
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
# A355000: Lexicographically earliest infinite sequence such that a(i) = a(j) => A046523(i) = A046523(j) and A327858(i) = A327858(j) for all i, j >= 1.

The programs for A355000, there is no canonical definition to state claims against.
-/

/-! ## A355000.P5721580021993033600

`A351236(n+1)-A379115(A244172(n+10))`
-/

namespace A355000.P5721580021993033600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351236 (n + 1) - A379115 (A244172 (n + 10)).toNat

end

end A355000.P5721580021993033600

/-! ## A355000.P17734445010874396258

`A300249(n+1)-A055999(A185284(2*n+3))`
-/

namespace A355000.P17734445010874396258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300249 (n + 1) - A055999 (A185284 (2 * n + 3)).toNat

end

end A355000.P17734445010874396258

/-! ## A355000.P13276551883182462576

`A300231(n+1)-A160498(A277741(2*n+5))`
-/

namespace A355000.P13276551883182462576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300231 (n + 1) - A160498 (A277741 (2 * n + 5)).toNat

end

end A355000.P13276551883182462576

/-! ## A355000.P5566091052028709009

`and(A218388(A335479(3*n+1)), A293215(n+1))`
-/

namespace A355000.P5566091052028709009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A218388 (A335479 (3 * n + 1)).toNat) (A293215 (n + 1))

end

end A355000.P5566091052028709009

/-!
# A355001: Smallest common prime factor of A003961(n) and A276086(n), or 1 if they are coprime, where A003961 is fully multiplicative with a(p) = nextprime(p), and A276086 is primorial base exp-function.

The programs for A355001, there is no canonical definition to state claims against.
-/

/-! ## A355001.P13923031846872073139

`A020639(A355442(n+1))`
-/

namespace A355001.P13923031846872073139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A355442 (n + 1)).toNat

end

end A355001.P13923031846872073139

/-! ## A355001.P399392938825049695

`A020639(gcd(A003961(n+1), A276086(n+1)))`
-/

namespace A355001.P399392938825049695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.gcd (A003961 (n + 1)) (A276086 (n + 1)))

end

end A355001.P399392938825049695

/-! ## A355001.P15875595789110000883

`A028233(∏{p}[A355442(n+1), #])`
-/

namespace A355001.P15875595789110000883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355442 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A355001.P15875595789110000883

/-! ## A355001.P4129162479110811666

`A028233(gcd(A328915(n+1), A355442(n+1)))`
-/

namespace A355001.P4129162479110811666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (Int.gcd (A328915 (n + 1)) (A355442 (n + 1)))

end

end A355001.P4129162479110811666

/-! ## A355001.P13919196209259554329

`A119288(2*A355442(n+1))`
-/

namespace A355001.P13919196209259554329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119288 (2 * A355442 (n + 1)).toNat

end

end A355001.P13919196209259554329

/-!
# A355003: a(n) = gcd(A003415(n), A277791(n)), where A003415 is the arithmetic derivative and A277791 is the denominator of sum of reciprocals of proper divisors of n.

The programs for A355003, the canonical program `A355003.P5537165438358420567` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A355003 has offset 1).

The definition of A355003 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A277791, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A355003.P5537165438358420567

`gcd(A003415(n+1), A277791(n+1))`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A355003

/-- `gcd(A003415(n+1), A277791(n+1))` -/
def P5537165438358420567.Spec : Prop :=
  ∀ n, (P5537165438358420567.a n : ℤ) = A355003 (n + 1)

theorem P5537165438358420567.correct : P5537165438358420567.Spec := by
  intro n
  simp only [A355003, Nat.add_sub_cancel]

end A355003

/-! ## A355003.P2348865919332119810

`gcd(A008833(n+1), A193677(2*(n+1)))`
-/

namespace A355003.P2348865919332119810
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008833 (n + 1)) (A193677 (2 * (n + 1)))

end

end A355003.P2348865919332119810

namespace A355003

/-- `gcd(A008833(n+1), A193677(2*(n+1)))` -/
def P2348865919332119810.Spec : Prop :=
  ∀ n, (P2348865919332119810.a n : ℤ) = A355003 (n + 1)

end A355003

/-! ## A355003.P141332645104903034

`gcd(A008833(n+1)%A270339(n+5), A000010(n+1))`
-/

namespace A355003.P141332645104903034
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Int.tmod (A008833 (n + 1)) (A270339 (n + 5))) (A000010 (n + 1))

end

end A355003.P141332645104903034

namespace A355003

/-- `gcd(A008833(n+1)%A270339(n+5), A000010(n+1))` -/
def P141332645104903034.Spec : Prop :=
  ∀ n, (P141332645104903034.a n : ℤ) = A355003 (n + 1)

end A355003

/-! ## A355003.P3375402721265413083

`A003557(n+1)^A080131(Δ[A089593(n+1)])`
-/

namespace A355003.P3375402721265413083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089593 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003557 (n + 1) : ℚ) ^ (A080131 (f1 (n + 1) - f1 n).toNat : ℤ)

end

end A355003.P3375402721265413083

namespace A355003

/-- `A003557(n+1)^A080131(Δ[A089593(n+1)])` -/
def P3375402721265413083.Spec : Prop :=
  ∀ n, P3375402721265413083.a n = (A355003 (n + 1) : ℚ)

end A355003

/-! ## A355003.P1247506011764027746

`gcd(A036484(n), A085731(n+1))`
-/

namespace A355003.P1247506011764027746
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A036484 n) (A085731 (n + 1))

end

end A355003.P1247506011764027746

namespace A355003

/-- `gcd(A036484(n), A085731(n+1))` -/
def P1247506011764027746.Spec : Prop :=
  ∀ n, (P1247506011764027746.a n : ℤ) = A355003 (n + 1)

end A355003

/-!
# A355005: Table read by rows. T(n, k) = n*((k + n)!)^2/((k + n)*(n!)^2*k!) for n > 0 and T(0, 0) = 1.

The programs for A355005, there is no canonical definition to state claims against.
-/

/-! ## A355005.P2137226836342083600

`A046899(n)*A124320(n)`
-/

namespace A355005.P2137226836342083600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046899 n * A124320 n

end

end A355005.P2137226836342083600

/-! ## A355005.P14538845552581175922

`A271703(A245300(n)+A025581(n))`
-/

namespace A355005.P14538845552581175922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271703 (A245300 n + A025581 n).toNat

end

end A355005.P14538845552581175922

/-! ## A355005.P8493230161465180064

`A008279(A245300(n))*A059481(n)`
-/

namespace A355005.P8493230161465180064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008279 (A245300 n).toNat * A059481 n

end

end A355005.P8493230161465180064

/-! ## A355005.P17728143539454522176

`A007318(A245300(n))*A124320(n)`
-/

namespace A355005.P17728143539454522176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A245300 n).toNat * A124320 n

end

end A355005.P17728143539454522176

/-! ## A355005.P14318078592312631690

`A131198(A245300(n))*A166350(n+1)`
-/

namespace A355005.P14318078592312631690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131198 (A245300 n).toNat * A166350 (n + 1)

end

end A355005.P14318078592312631690

/-!
# A355006: Triangle read by rows. T(n, k) = n^(n - k) * |Stirling1(n, k)|.

The programs for A355006, there is no canonical definition to state claims against.
-/

/-! ## A355006.P12673406024190218729

`A132393(n)*A364870(n)`
-/

namespace A355006.P12673406024190218729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132393 n * A364870 n

end

end A355006.P12673406024190218729

/-! ## A355006.P9982470617986768719

`A007954(A022175(n))*A106234(n+1)`
-/

namespace A355006.P9982470617986768719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (A022175 n).toNat * A106234 (n + 1)

end

end A355006.P9982470617986768719

/-!
# A355007: Triangle read by rows. T(n, k) = n^k * |Stirling1(n, k)|.

The programs for A355007, there is no canonical definition to state claims against.
-/

/-! ## A355007.P4891657286829213323

`A079901(n)*A132393(n)`
-/

namespace A355007.P4891657286829213323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079901 n * A132393 n

end

end A355007.P4891657286829213323

/-! ## A355007.P16151825777121188143

`A397422(n)/A046899(n)`
-/

namespace A355007.P16151825777121188143
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A397422 n : ℚ) / (A046899 n : ℚ)

end

end A355007.P16151825777121188143

/-!
# A355009: Primes in A354975.

The programs for A355009, there is no canonical definition to state claims against.
-/

/-! ## A355009.P6143898005624045960

`A354975(A354972(n+1))`
-/

namespace A355009.P6143898005624045960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354975 (A354972 (n + 1)).toNat

end

end A355009.P6143898005624045960

/-! ## A355009.P6936311955099485427

`p?[A354975(n+1)]`
-/

namespace A355009.P6936311955099485427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354975 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A355009.P6936311955099485427

/-! ## A355009.P7881298068563776503

`filter[A354975(n+1), A010051(#)]`
-/

namespace A355009.P7881298068563776503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354975 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A355009.P7881298068563776503

/-!
# A355010: Array read by ascending antidiagonals: T(n, k) is the number of n-core partitions with k corners.

The programs for A355010, there is no canonical definition to state claims against.
-/

/-! ## A355010.P273953827990452241

`A273350(comp[∑[n]]+2)`
-/

namespace A355010.P273953827990452241
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273350 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 2)

end

end A355010.P273953827990452241

/-! ## A355010.P13027364010037525635

`A273350(A080036(n+2))+A000007(n+4)`
-/

namespace A355010.P13027364010037525635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273350 (A080036 (n + 2)).toNat + A000007 (n + 4)

end

end A355010.P13027364010037525635

/-! ## A355010.P14893236583674842049

`A209972(A000120(n))*A273350(A080036(n+2))`
-/

namespace A355010.P14893236583674842049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209972 (A000120 n).toNat * A273350 (A080036 (n + 2)).toNat

end

end A355010.P14893236583674842049

/-! ## A355010.P6097660291918396782

`A209972(A294893(n+1))*A273350(A080036(n+2))`
-/

namespace A355010.P6097660291918396782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209972 (A294893 (n + 1)).toNat * A273350 (A080036 (n + 2)).toNat

end

end A355010.P6097660291918396782

/-! ## A355010.P895148552366463380

`A003415(A215848(n+2))*A273350(A080036(n+2))`
-/

namespace A355010.P895148552366463380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A215848 (n + 2)).toNat * A273350 (A080036 (n + 2)).toNat

end

end A355010.P895148552366463380

/-! ## A355010.P12555929084977777597

`A273350(A080036(n+2))+A291914(A000040(n+1))+1`
-/

namespace A355010.P12555929084977777597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273350 (A080036 (n + 2)).toNat + (A291914 (A000040 (n + 1)).toNat + 1)

end

end A355010.P12555929084977777597

/-!
# A355011: Array read by ascending antidiagonals: T(n, k) is the number of self-conjugate n-core partitions with k corners.

The programs for A355011, there is no canonical definition to state claims against.
-/

/-! ## A355011.P13445290857898940573

`A132075(A131054(n)%A077468(3*n+4))`
-/

namespace A355011.P13445290857898940573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132075 (Int.tmod (A131054 n) (A077468 (3 * n + 4))).toNat

end

end A355011.P13445290857898940573

/-! ## A355011.P3501858334586803958

`A070939(A089840(n)^a(n-1))` with `a(0)=1`
-/

namespace A355011.P3501858334586803958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A070939 (SequenceMachineLib.roundAway ((A089840 n : ℚ) ^ (a (n - 1) : ℤ))).toNat

end

end A355011.P3501858334586803958

/-! ## A355011.P4751386459351227862

`A070939(A122203(n)^a(n-1))` with `a(0)=1`
-/

namespace A355011.P4751386459351227862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A070939 (SequenceMachineLib.roundAway ((A122203 n : ℚ) ^ (a (n - 1) : ℤ))).toNat

end

end A355011.P4751386459351227862

/-! ## A355011.P5856627930967595028

`A131054(n)-A014372(A331562(n))`
-/

namespace A355011.P5856627930967595028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131054 n - A014372 (A331562 n).toNat

end

end A355011.P5856627930967595028

/-! ## A355011.P16210098944052087359

`A105069(A369559(n+1))`
-/

namespace A355011.P16210098944052087359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105069 (A369559 (n + 1)).toNat

end

end A355011.P16210098944052087359

/-!
# A355012: Prime powers (p^k, k >= 2) in A090252 in order of appearance.

The programs for A355012, there is no canonical definition to state claims against.
-/

/-! ## A355012.P830770690672971897

`A025475(A355014(n+1)+1)`
-/

namespace A355012.P830770690672971897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025475 (A355014 (n + 1) + 1).toNat

end

end A355012.P830770690672971897

/-! ## A355012.P6038377430010834560

`A249435(A355014(n+1)+1)+1`
-/

namespace A355012.P6038377430010834560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249435 (A355014 (n + 1) + 1).toNat + 1

end

end A355012.P6038377430010834560

/-! ## A355012.P3207561237540768662

`A090252(A355013(n+1))`
-/

namespace A355012.P3207561237540768662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090252 (A355013 (n + 1)).toNat

end

end A355012.P3207561237540768662

/-! ## A355012.P17200850489630844633

`A354165(A354166(A355013(A354166(A354164(n+1)))))`
-/

namespace A355012.P17200850489630844633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354165 (A354166 (A355013 (A354166 (A354164 (n + 1)).toNat).toNat).toNat).toNat

end

end A355012.P17200850489630844633

/-! ## A355012.P14667785462500382430

`filter[A354165(n+1), A069513(#)]`
-/

namespace A355012.P14667785462500382430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354165 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A069513 (f1 j).toNat = 1) n)

end

end A355012.P14667785462500382430

/-! ## A355012.P7206400189384004070

`filter[A354165(n+1), A355453(#)]`
-/

namespace A355012.P7206400189384004070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354165 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355453 (f1 j).toNat = 1) n)

end

end A355012.P7206400189384004070

/-! ## A355012.P4706062464289036002

`filter[A354165(n+1), A359466(#)]`
-/

namespace A355012.P4706062464289036002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354165 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359466 (f1 j).toNat = 1) n)

end

end A355012.P4706062464289036002

/-! ## A355012.P9855565642426385603

`filter[A354165(n+1), A359469(#)]`
-/

namespace A355012.P9855565642426385603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354165 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359469 (f1 j).toNat = 1) n)

end

end A355012.P9855565642426385603

/-!
# A355013: Index of A355012(n) in A090252.

The programs for A355013, there is no canonical definition to state claims against.
-/

/-! ## A355013.P15784805847365250075

`lt[1, A353841(A090252(n+1))]+1`
-/

namespace A355013.P15784805847365250075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353841 (A090252 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A355013.P15784805847365250075

/-!
# A355014: Index of A355012(n) in A246547.

The programs for A355014, there is no canonical definition to state claims against.
-/

/-! ## A355014.P3077053392991283908

`A069637(A355012(n+1))`
-/

namespace A355014.P3077053392991283908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069637 (A355012 (n + 1)).toNat

end

end A355014.P3077053392991283908

/-!
# A355015: The least integer with cost n, using the cost function used in sequence A354914.

The programs for A355015, there is no canonical definition to state claims against.
-/

/-! ## A355015.P17909743427836463271

`A356427(comp[∏{p}[n+1, -#]]!)`
-/

namespace A355015.P17909743427836463271
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (-(p : ℤ))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356427 (Nat.factorial (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n))

end

end A355015.P17909743427836463271

/-! ## A355015.P9319996642739560244

`∑[4*A353837(a(n-1))]` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A355015.P9319996642739560244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n f1 =>
  4 * A353837 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A355015.P9319996642739560244

/-!
# A355016: Least prime p such that the n smallest primitive roots modulo p are the first n primes.

The programs for A355016, there is no canonical definition to state claims against.
-/

/-! ## A355016.P7506934425686918071

`A096385(A220647(n+1)+∑{d}[(n+1)², 1/gcd(2, #)])`
-/

namespace A355016.P7506934425686918071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096385 (SequenceMachineLib.roundAway ((A220647 (n + 1) : ℚ) + ∑ d ∈ Nat.divisors (f1 n), 1 / (Nat.gcd 2 d : ℚ))).toNat

end

end A355016.P7506934425686918071

/-!
# A355017: a(n) is the number of bases in 2..n in which the sum of the digits of n is prime.

The programs for A355017, there is no canonical definition to state claims against.
-/

/-! ## A355017.P11611097283282376609

`A004001(n+2)-A010055(A023610(n))`
-/

namespace A355017.P11611097283282376609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004001 (n + 2) - A010055 (A023610 n).toNat

end

end A355017.P11611097283282376609

/-! ## A355017.P11006522370514817491

`A331410(A336469(n+1)+A033844(n))`
-/

namespace A355017.P11006522370514817491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331410 (A336469 (n + 1) + A033844 n).toNat

end

end A355017.P11006522370514817491

/-! ## A355017.P8767922548602789627

`A035026(n+1)+A001842(A001384(n+2))`
-/

namespace A355017.P8767922548602789627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035026 (n + 1) + A001842 (A001384 (n + 2)).toNat

end

end A355017.P8767922548602789627

/-!
# A355018: Partial sums of F(1) - L(1) + F(2) - L(2) + F(3) - L(3) + ..., where F = A000045 and L = A000032.

The programs for A355018, the canonical program `A355018.P3836106825667504369` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A355018 has offset 0).

The definition of A355018 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A355018.P3836106825667504369

`a(n-1)+a(n-2)-a(n-3)+a(n-4)-a(n-5)` with `a(0)=1, a(1)=0, a(2)=1, a(3)=-2, a(4)=0`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A355018

/-- `a(n-1)+a(n-2)-a(n-3)+a(n-4)-a(n-5)` -/
def P3836106825667504369.Spec : Prop :=
  ∀ n, P3836106825667504369.a n = A355018 n

theorem P3836106825667504369.correct : P3836106825667504369.Spec := by
  intro n
  simp only [A355018]

end A355018

/-! ## A355018.P16199028233255843186

`∑[a(n-2)+a(n-4)]` with `a(0)=1, a(1)=-1, a(2)=1, a(3)=-3`
-/

namespace A355018.P16199028233255843186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 1, -3] fun n f1 =>
  f1 (n - 2) + f1 (n - 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A355018.P16199028233255843186

namespace A355018

/-- `∑[a(n-2)+a(n-4)]` -/
def P16199028233255843186.Spec : Prop :=
  ∀ n, P16199028233255843186.a n = A355018 n

end A355018

/-! ## A355018.P4840016682291299779

`a(n-2)+a(n-4)-2` with `a(0)=1, a(1)=0, a(2)=1, a(3)=-2`
-/

namespace A355018.P4840016682291299779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, -2] fun n a =>
  a (n - 2) + (a (n - 4) - 2)

end

end A355018.P4840016682291299779

namespace A355018

/-- `a(n-2)+a(n-4)-2` -/
def P4840016682291299779.Spec : Prop :=
  ∀ n, P4840016682291299779.a n = A355018 n

end A355018

/-! ## A355018.P9336086716068437100

`a(n-2)-(2-a(n-4))` with `a(0)=1, a(1)=0, a(2)=1, a(3)=-2`
-/

namespace A355018.P9336086716068437100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, -2] fun n a =>
  a (n - 2) - (2 - a (n - 4))

end

end A355018.P9336086716068437100

namespace A355018

/-- `a(n-2)-(2-a(n-4))` -/
def P9336086716068437100.Spec : Prop :=
  ∀ n, P9336086716068437100.a n = A355018 n

end A355018

/-! ## A355018.P7769428988310906062

`A079977(n+2)-A094707(n)`
-/

namespace A355018.P7769428988310906062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079977 (n + 2) - A094707 n

end

end A355018.P7769428988310906062

namespace A355018

/-- `A079977(n+2)-A094707(n)` -/
def P7769428988310906062.Spec : Prop :=
  ∀ n, P7769428988310906062.a n = A355018 n

end A355018

/-! ## A355018.P14968372490593400482

`2-A000034(n)*A000045(A080513(n))`
-/

namespace A355018.P14968372490593400482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A000034 n * A000045 (A080513 n).toNat

end

end A355018.P14968372490593400482

namespace A355018

/-- `2-A000034(n)*A000045(A080513(n))` -/
def P14968372490593400482.Spec : Prop :=
  ∀ n, P14968372490593400482.a n = A355018 n

end A355018

/-! ## A355018.P5956970761861007603

`A094707(A103889(n+1))-2*A094707(n)`
-/

namespace A355018.P5956970761861007603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094707 (A103889 (n + 1)).toNat - 2 * A094707 n

end

end A355018.P5956970761861007603

namespace A355018

/-- `A094707(A103889(n+1))-2*A094707(n)` -/
def P5956970761861007603.Spec : Prop :=
  ∀ n, P5956970761861007603.a n = A355018 n

end A355018

/-!
# A355019: Partial sums of L(1) - F(1) + L(2) - F(2) + L(3) - F(3) + ..., where L = A000032 and F = A000045.

The programs for A355019, the canonical program `A355019.P16478531607942263402` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A355019 has offset 0).

The definition of A355019 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A355019.P16478531607942263402

`a(n-1)+a(n-2)-a(n-3)+a(n-4)-a(n-5)` with `a(0)=1, a(1)=0, a(2)=3, a(3)=2, a(4)=6`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A355019

/-- `a(n-1)+a(n-2)-a(n-3)+a(n-4)-a(n-5)` -/
def P16478531607942263402.Spec : Prop :=
  ∀ n, P16478531607942263402.a n = A355019 n

theorem P16478531607942263402.correct : P16478531607942263402.Spec := by
  intro n
  simp only [A355019]

end A355019

/-! ## A355019.P9615649045188397144

`∑[a(n-2)+a(n-4)]` with `a(0)=1, a(1)=-1, a(2)=3, a(3)=-1`
-/

namespace A355019.P9615649045188397144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 3, -1] fun n f1 =>
  f1 (n - 2) + f1 (n - 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A355019.P9615649045188397144

namespace A355019

/-- `∑[a(n-2)+a(n-4)]` -/
def P9615649045188397144.Spec : Prop :=
  ∀ n, P9615649045188397144.a n = A355019 n

end A355019

/-! ## A355019.P14301070493426665355

`a(n-2)+a(n-4)+2` with `a(0)=1, a(1)=0, a(2)=3, a(3)=2`
-/

namespace A355019.P14301070493426665355
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 3, 2] fun n a =>
  a (n - 2) + (a (n - 4) + 2)

end

end A355019.P14301070493426665355

namespace A355019

/-- `a(n-2)+a(n-4)+2` -/
def P14301070493426665355.Spec : Prop :=
  ∀ n, (P14301070493426665355.a n : ℤ) = A355019 n

end A355019

/-! ## A355019.P11403067539642535908

`A094707(xor(1, n)+1)`
-/

namespace A355019.P11403067539642535908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094707 (Nat.xor 1 n + 1)

end

end A355019.P11403067539642535908

namespace A355019

/-- `A094707(xor(1, n)+1)` -/
def P11403067539642535908.Spec : Prop :=
  ∀ n, P11403067539642535908.a n = A355019 n

end A355019

/-! ## A355019.P18443894970461213977

`A094707((-1)^n+n+1)`
-/

namespace A355019.P18443894970461213977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094707 ((-1) ^ n + (n + 1 : ℤ)).toNat

end

end A355019.P18443894970461213977

namespace A355019

/-- `A094707((-1)^n+n+1)` -/
def P18443894970461213977.Spec : Prop :=
  ∀ n, P18443894970461213977.a n = A355019 n

end A355019

/-! ## A355019.P2224583916241679616

`A094707(n)+A079977(n+2)`
-/

namespace A355019.P2224583916241679616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094707 n + A079977 (n + 2)

end

end A355019.P2224583916241679616

namespace A355019

/-- `A094707(n)+A079977(n+2)` -/
def P2224583916241679616.Spec : Prop :=
  ∀ n, P2224583916241679616.a n = A355019 n

end A355019

/-!
# A355020: a(n) = (-1)^n * A000045(n) + 1.

The programs for A355020, the canonical program `A355020.P11655395210472108157` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A355020 has offset 0).

The definition of A355020 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(-1)^n*A000045(n)+1` (program `A355020.P11655395210472108157`, by `A355020.P11655395210472108157.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A355020.P5249951804308788455

`2*a(n-2)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=2`
-/

namespace A355020.P5249951804308788455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 2] fun n a =>
  2 * a (n - 2) - a (n - 3)

end

end A355020.P5249951804308788455

namespace A355020

/-- `2*a(n-2)-a(n-3)` -/
def P5249951804308788455.Spec : Prop :=
  ∀ n, P5249951804308788455.a n = A355020 n

end A355020

/-! ## A355020.P11655395210472108157

`(-1)^n*A000045(n)+1`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A355020

/-- `(-1)^n*A000045(n)+1` -/
def P11655395210472108157.Spec : Prop :=
  ∀ n, P11655395210472108157.a n = A355020 n

theorem P11655395210472108157.correct : P11655395210472108157.Spec := by
  intro n
  simp only [A355020]

end A355020

/-! ## A355020.P10772520941738520390

`ogf(1/(1-2x^2+x^3))`
-/

namespace A355020.P10772520941738520390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, 0, -2, 1] n

end

end A355020.P10772520941738520390

namespace A355020

/-- `ogf(1/(1-2x^2+x^3))` -/
def P10772520941738520390.Spec : Prop :=
  ∀ n, P10772520941738520390.a n = A355020 n

end A355020

/-! ## A355020.P11901897180220248606

`2-floor(ϕ*a(n-1))` with `a(0)=1, a(1)=0`
-/

namespace A355020.P11901897180220248606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  2 - ⌊Real.goldenRatio * (a (n - 1) : ℝ)⌋

end

end A355020.P11901897180220248606

namespace A355020

/-- `2-floor(ϕ*a(n-1))` -/
def P11901897180220248606.Spec : Prop :=
  ∀ n, P11901897180220248606.a n = A355020 n

end A355020

/-! ## A355020.P5826402325702653770

`a(n-2)+1-a(n-1)` with `a(0)=1, a(1)=0`
-/

namespace A355020.P5826402325702653770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  a (n - 2) + (1 - a (n - 1))

end

end A355020.P5826402325702653770

namespace A355020

/-- `a(n-2)+1-a(n-1)` -/
def P5826402325702653770.Spec : Prop :=
  ∀ n, P5826402325702653770.a n = A355020 n

end A355020

/-! ## A355020.P12132184271974657146

`1-(a(n-1)-a(n-2))` with `a(0)=1, a(1)=0`
-/

namespace A355020.P12132184271974657146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  1 - (a (n - 1) - a (n - 2))

end

end A355020.P12132184271974657146

namespace A355020

/-- `1-(a(n-1)-a(n-2))` -/
def P12132184271974657146.Spec : Prop :=
  ∀ n, P12132184271974657146.a n = A355020 n

end A355020

/-! ## A355020.P5981741742435159873

`-A119282(n+1)`
-/

namespace A355020.P5981741742435159873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A119282 (n + 1)

end

end A355020.P5981741742435159873

namespace A355020

/-- `-A119282(n+1)` -/
def P5981741742435159873.Spec : Prop :=
  ∀ n, P5981741742435159873.a n = A355020 n

end A355020

/-! ## A355020.P12541882831923361282

`(-1)^n*A008346(n)`
-/

namespace A355020.P12541882831923361282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A008346 n

end

end A355020.P12541882831923361282

namespace A355020

/-- `(-1)^n*A008346(n)` -/
def P12541882831923361282.Spec : Prop :=
  ∀ n, P12541882831923361282.a n = A355020 n

end A355020

/-! ## A355020.P7756636083041608396

`1-A051792(2*n+3)`
-/

namespace A355020.P7756636083041608396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A051792 (2 * n + 3)

end

end A355020.P7756636083041608396

namespace A355020

/-- `1-A051792(2*n+3)` -/
def P7756636083041608396.Spec : Prop :=
  ∀ n, P7756636083041608396.a n = A355020 n

end A355020

/-! ## A355020.P7433832502374044233

`Δ[A051792(2*(n+1))]+1`
-/

namespace A355020.P7433832502374044233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051792 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A355020.P7433832502374044233

namespace A355020

/-- `Δ[A051792(2*(n+1))]+1` -/
def P7433832502374044233.Spec : Prop :=
  ∀ n, P7433832502374044233.a n = A355020 n

end A355020

/-! ## A355020.P3426895623191226232

`A008346(n)*A033999(n)`
-/

namespace A355020.P3426895623191226232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008346 n * A033999 n

end

end A355020.P3426895623191226232

namespace A355020

/-- `A008346(n)*A033999(n)` -/
def P3426895623191226232.Spec : Prop :=
  ∀ n, P3426895623191226232.a n = A355020 n

end A355020

/-! ## A355020.P522383412389315696

`A000045(n)*A033999(n)+1`
-/

namespace A355020.P522383412389315696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A033999 n + 1

end

end A355020.P522383412389315696

namespace A355020

/-- `A000045(n)*A033999(n)+1` -/
def P522383412389315696.Spec : Prop :=
  ∀ n, P522383412389315696.a n = A355020 n

end A355020

/-! ## A355020.P2312113780021313539

`A008346(n)*A062157(n+1)`
-/

namespace A355020.P2312113780021313539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008346 n * A062157 (n + 1)

end

end A355020.P2312113780021313539

namespace A355020

/-- `A008346(n)*A062157(n+1)` -/
def P2312113780021313539.Spec : Prop :=
  ∀ n, P2312113780021313539.a n = A355020 n

end A355020

/-! ## A355020.P6434593769547996009

`A008346(n)*A165326(n+1)`
-/

namespace A355020.P6434593769547996009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008346 n * A165326 (n + 1)

end

end A355020.P6434593769547996009

namespace A355020

/-- `A008346(n)*A165326(n+1)` -/
def P6434593769547996009.Spec : Prop :=
  ∀ n, P6434593769547996009.a n = A355020 n

end A355020

/-! ## A355020.P16304576207597657132

`1-A000045(n)*A062157(n)`
-/

namespace A355020.P16304576207597657132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A000045 n * A062157 n

end

end A355020.P16304576207597657132

namespace A355020

/-- `1-A000045(n)*A062157(n)` -/
def P16304576207597657132.Spec : Prop :=
  ∀ n, P16304576207597657132.a n = A355020 n

end A355020

/-! ## A355020.P13652140245510648593

`1-A000045(n)*A165326(n)`
-/

namespace A355020.P13652140245510648593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A000045 n * A165326 n

end

end A355020.P13652140245510648593

namespace A355020

/-- `1-A000045(n)*A165326(n)` -/
def P13652140245510648593.Spec : Prop :=
  ∀ n, P13652140245510648593.a n = A355020 n

end A355020

/-! ## A355020.P3250755341318185569

`A008346(n)/A033999(n+2)`
-/

namespace A355020.P3250755341318185569
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008346 n : ℚ) / (A033999 (n + 2) : ℚ)

end

end A355020.P3250755341318185569

namespace A355020

/-- `A008346(n)/A033999(n+2)` -/
def P3250755341318185569.Spec : Prop :=
  ∀ n, P3250755341318185569.a n = (A355020 n : ℚ)

end A355020

/-! ## A355020.P13740921419549588696

`A033999(2*n+1)*A119282(n+1)`
-/

namespace A355020.P13740921419549588696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n + 1) * A119282 (n + 1)

end

end A355020.P13740921419549588696

namespace A355020

/-- `A033999(2*n+1)*A119282(n+1)` -/
def P13740921419549588696.Spec : Prop :=
  ∀ n, P13740921419549588696.a n = A355020 n

end A355020

/-! ## A355020.P3069822188242241095

`(A105812(n)-A000045(n))*A105812(n)`
-/

namespace A355020.P3069822188242241095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A105812 n - A000045 n) * A105812 n

end

end A355020.P3069822188242241095

namespace A355020

/-- `(A105812(n)-A000045(n))*A105812(n)` -/
def P3069822188242241095.Spec : Prop :=
  ∀ n, P3069822188242241095.a n = A355020 n

end A355020

/-!
# A355021: a(n) = (-1)^n * A000032(n) - 1.

The programs for A355021, the canonical program `A355021.P16287794224417540827` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A355021 has offset 0).

The definition of A355021 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A355021.P5703643492330539645

`2*a(n-2)-a(n-3)` with `a(0)=1, a(1)=-2, a(2)=2`
-/

namespace A355021.P5703643492330539645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -2, 2] fun n a =>
  2 * a (n - 2) - a (n - 3)

end

end A355021.P5703643492330539645

namespace A355021

/-- `2*a(n-2)-a(n-3)` -/
def P5703643492330539645.Spec : Prop :=
  ∀ n, P5703643492330539645.a n = A355021 n

end A355021

/-! ## A355021.P16287794224417540827

`(-1)^n*A000032(n)-1`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A355021

/-- `(-1)^n*A000032(n)-1` -/
def P16287794224417540827.Spec : Prop :=
  ∀ n, P16287794224417540827.a n = A355021 n

theorem P16287794224417540827.correct : P16287794224417540827.Spec := by
  intro n
  simp only [A355021]

end A355021

/-! ## A355021.P10199052497176775960

`ogf((1-2x)/(1-2x^2+x^3))`
-/

namespace A355021.P10199052497176775960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2] [1, 0, -2, 1] n

end

end A355021.P10199052497176775960

namespace A355021

/-- `ogf((1-2x)/(1-2x^2+x^3))` -/
def P10199052497176775960.Spec : Prop :=
  ∀ n, P10199052497176775960.a n = A355021 n

end A355021

/-! ## A355021.P10294117275805257414

`a(n-2)-(a(n-1)+1)` with `a(0)=1, a(1)=-2`
-/

namespace A355021.P10294117275805257414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -2] fun n a =>
  a (n - 2) - (a (n - 1) + 1)

end

end A355021.P10294117275805257414

namespace A355021

/-- `a(n-2)-(a(n-1)+1)` -/
def P10294117275805257414.Spec : Prop :=
  ∀ n, P10294117275805257414.a n = A355021 n

end A355021

/-! ## A355021.P5615526886275948172

`a(n-2)-1-a(n-1)` with `a(0)=1, a(1)=-2`
-/

namespace A355021.P5615526886275948172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -2] fun n a =>
  a (n - 2) - 1 - a (n - 1)

end

end A355021.P5615526886275948172

namespace A355021

/-- `a(n-2)-1-a(n-1)` -/
def P5615526886275948172.Spec : Prop :=
  ∀ n, P5615526886275948172.a n = A355021 n

end A355021

/-! ## A355021.P4995082999092992091

`A061084(n+1)-1`
-/

namespace A355021.P4995082999092992091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061084 (n + 1) - 1

end

end A355021.P4995082999092992091

namespace A355021

/-- `A061084(n+1)-1` -/
def P4995082999092992091.Spec : Prop :=
  ∀ n, P4995082999092992091.a n = A355021 n

end A355021

/-! ## A355021.P15856793247917950077

`A033999(n)*A098600(n)`
-/

namespace A355021.P15856793247917950077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A098600 n

end

end A355021.P15856793247917950077

namespace A355021

/-- `A033999(n)*A098600(n)` -/
def P15856793247917950077.Spec : Prop :=
  ∀ n, P15856793247917950077.a n = A355021 n

end A355021

/-! ## A355021.P13009113191543280403

`A119282(n)-Δ[A119282(n)]`
-/

namespace A355021.P13009113191543280403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119282 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119282 n - (f1 (n + 1) - f1 n)

end

end A355021.P13009113191543280403

namespace A355021

/-- `A119282(n)-Δ[A119282(n)]` -/
def P13009113191543280403.Spec : Prop :=
  ∀ n, P13009113191543280403.a n = A355021 n

end A355021

/-! ## A355021.P13243072755192879192

`(A001350(n)+1)*A033999(n)`
-/

namespace A355021.P13243072755192879192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001350 n + 1) * A033999 n

end

end A355021.P13243072755192879192

namespace A355021

/-- `(A001350(n)+1)*A033999(n)` -/
def P13243072755192879192.Spec : Prop :=
  ∀ n, P13243072755192879192.a n = A355021 n

end A355021

/-! ## A355021.P11811820625375343896

`A000032(n)*A033999(n)-1`
-/

namespace A355021.P11811820625375343896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n * A033999 n - 1

end

end A355021.P11811820625375343896

namespace A355021

/-- `A000032(n)*A033999(n)-1` -/
def P11811820625375343896.Spec : Prop :=
  ∀ n, P11811820625375343896.a n = A355021 n

end A355021

/-! ## A355021.P15946796617302943913

`(A020878(n)-1)*A033999(n)`
-/

namespace A355021.P15946796617302943913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A020878 n - 1) * A033999 n

end

end A355021.P15946796617302943913

namespace A355021

/-- `(A020878(n)-1)*A033999(n)` -/
def P15946796617302943913.Spec : Prop :=
  ∀ n, P15946796617302943913.a n = A355021 n

end A355021

/-! ## A355021.P15822863054805536479

`A355020(n)+2*A119282(n)`
-/

namespace A355021.P15822863054805536479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355020 n + 2 * A119282 n

end

end A355021.P15822863054805536479

namespace A355021

/-- `A355020(n)+2*A119282(n)` -/
def P15822863054805536479.Spec : Prop :=
  ∀ n, P15822863054805536479.a n = A355021 n

end A355021

/-! ## A355021.P16704196644876029664

`A098600(n)/A033999(n+2)`
-/

namespace A355021.P16704196644876029664
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098600 n : ℚ) / (A033999 (n + 2) : ℚ)

end

end A355021.P16704196644876029664

namespace A355021

/-- `A098600(n)/A033999(n+2)` -/
def P16704196644876029664.Spec : Prop :=
  ∀ n, P16704196644876029664.a n = (A355021 n : ℚ)

end A355021

/-! ## A355021.P651109109333648404

`(A176040(n)-2)*A098600(n)`
-/

namespace A355021.P651109109333648404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A176040 n - 2) * A098600 n

end

end A355021.P651109109333648404

namespace A355021

/-- `(A176040(n)-2)*A098600(n)` -/
def P651109109333648404.Spec : Prop :=
  ∀ n, P651109109333648404.a n = A355021 n

end A355021

/-! ## A355021.P4571648613777886191

`(A008346(n)-A000045(n))*A098600(n)`
-/

namespace A355021.P4571648613777886191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008346 n - A000045 n) * A098600 n

end

end A355021.P4571648613777886191

namespace A355021

/-- `(A008346(n)-A000045(n))*A098600(n)` -/
def P4571648613777886191.Spec : Prop :=
  ∀ n, P4571648613777886191.a n = A355021 n

end A355021

/-! ## A355021.P11469813711277010246

`(A000032(n)-A098600(n))*A098600(n)`
-/

namespace A355021.P11469813711277010246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000032 n - A098600 n) * A098600 n

end

end A355021.P11469813711277010246

namespace A355021

/-- `(A000032(n)-A098600(n))*A098600(n)` -/
def P11469813711277010246.Spec : Prop :=
  ∀ n, P11469813711277010246.a n = A355021 n

end A355021

/-! ## A355021.P825251933120328179

`A098600(n)/(A099925(n)-A000032(n))`
-/

namespace A355021.P825251933120328179
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098600 n : ℚ) / (A099925 n - A000032 n : ℚ)

end

end A355021.P825251933120328179

namespace A355021

/-- `A098600(n)/(A099925(n)-A000032(n))` -/
def P825251933120328179.Spec : Prop :=
  ∀ n, P825251933120328179.a n = (A355021 n : ℚ)

end A355021

/-! ## A355021.P10260198943402104005

`A119282(n)+A119282(n)-A119282(n+1)`
-/

namespace A355021.P10260198943402104005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119282 n + (A119282 n - A119282 (n + 1))

end

end A355021.P10260198943402104005

namespace A355021

/-- `A119282(n)+A119282(n)-A119282(n+1)` -/
def P10260198943402104005.Spec : Prop :=
  ∀ n, P10260198943402104005.a n = A355021 n

end A355021

/-! ## A355021.P3996327204971308144

`(A033999(n+1)+A000032(n))*A033999(n)`
-/

namespace A355021.P3996327204971308144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A033999 (n + 1) + A000032 n) * A033999 n

end

end A355021.P3996327204971308144

namespace A355021

/-- `(A033999(n+1)+A000032(n))*A033999(n)` -/
def P3996327204971308144.Spec : Prop :=
  ∀ n, P3996327204971308144.a n = A355021 n

end A355021

/-! ## A355021.P13961072077897154323

`(A008346(n)-A000045(n))*A181716(n+1)`
-/

namespace A355021.P13961072077897154323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008346 n - A000045 n) * A181716 (n + 1)

end

end A355021.P13961072077897154323

namespace A355021

/-- `(A008346(n)-A000045(n))*A181716(n+1)` -/
def P13961072077897154323.Spec : Prop :=
  ∀ n, P13961072077897154323.a n = A355021 n

end A355021

/-!
# A355023: Number of labeled trees on n nodes with maximum degree three and three vertices of degree three.

The programs for A355023, the canonical program `A355023.P6291996003193150384` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A355023 has offset 8).

The definition of A355023 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A355023.P6291996003193150384

`7*C(n+8, n)*(n+6)!`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A355023

/-- `7*C(n+8, n)*(n+6)!` -/
def P6291996003193150384.Spec : Prop :=
  ∀ n, (P6291996003193150384.a n : ℤ) = A355023 (n + 8)

theorem P6291996003193150384.correct : P6291996003193150384.Spec := by
  intro n
  simp only [A355023, Nat.add_sub_cancel]

end A355023

/-!
# A355024: Number of unlabeled trees on n nodes with maximum degree three and three vertices of degree three.

The programs for A355024, there is no canonical definition to state claims against.
-/

/-! ## A355024.P9122576304891568001

`A137451(A132109(n))`
-/

namespace A355024.P9122576304891568001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137451 (A132109 n).toNat

end

end A355024.P9122576304891568001

/-! ## A355024.P17898924792171536947

`A302505(A027587(3*n))`
-/

namespace A355024.P17898924792171536947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302505 (A027587 (3 * n)).toNat

end

end A355024.P17898924792171536947

/-!
# A355027: a(n) is the number of possible values of numbers of divisors of numbers k with Omega(k) = n.

The programs for A355027, there is no canonical definition to state claims against.
-/

/-! ## A355027.P9370094258381768994

`A089867(A354468(n))`
-/

namespace A355027.P9370094258381768994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089867 (A354468 n).toNat

end

end A355027.P9370094258381768994

/-! ## A355027.P12541470516715362199

`A089867(∑[A060028(n)])`
-/

namespace A355027.P12541470516715362199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060028 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089867 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A355027.P12541470516715362199

/-! ## A355027.P2853122850471924945

`∑[A261348(A061799(n+1))]+1`
-/

namespace A355027.P2853122850471924945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261348 (A061799 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A355027.P2853122850471924945

/-! ## A355027.P3782616822019267933

`or(∏{p}[A292935(n), #%2], A347573(n))`
-/

namespace A355027.P3782616822019267933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292935 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, p % 2 : ℕ) : ℤ) (A347573 (n + 21))

end

end A355027.P3782616822019267933

/-! ## A355027.P1245827212256504540

`A343606(A319056(n))+A008636(n)`
-/

namespace A355027.P1245827212256504540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343606 (A319056 n).toNat + A008636 n

end

end A355027.P1245827212256504540

/-!
# A355029: Irregular table read by rows: the n-th row gives the possible values of the number of prime divisors (counted with multiplicity) of numbers with n divisors.

The programs for A355029, there is no canonical definition to state claims against.
-/

/-! ## A355029.P8341225067210007334

`A056239(A080688(n+1))%A165572(n+1)`
-/

namespace A355029.P8341225067210007334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056239 (A080688 (n + 1)).toNat) (A165572 (n + 1))

end

end A355029.P8341225067210007334

/-! ## A355029.P4837186505322516749

`A056239(A263489(2*(n+3))+A080688(n+1))`
-/

namespace A355029.P4837186505322516749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A263489 (2 * (n + 3)) + A080688 (n + 1)).toNat

end

end A355029.P4837186505322516749

/-! ## A355029.P1208036216293418749

`A056239(A246868(A056239(A080688(n+1))))`
-/

namespace A355029.P1208036216293418749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A246868 (A056239 (A080688 (n + 1)).toNat).toNat).toNat

end

end A355029.P1208036216293418749

/-! ## A355029.P12604287084251318210

`A056239(A080688(A122111(A122111(n+1))))`
-/

namespace A355029.P12604287084251318210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A080688 (A122111 (A122111 (n + 1)).toNat).toNat).toNat

end

end A355029.P12604287084251318210

/-! ## A355029.P17631405770556766457

`A056239(C(A080688(n+1), A304042(2*n+1)))`
-/

namespace A355029.P17631405770556766457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (Nat.choose (A080688 (n + 1)).toNat (A304042 (2 * n + 1)).toNat)

end

end A355029.P17631405770556766457

/-!
# A355030: a(n) is the number of possible values of the number of prime divisors (counted with multiplicity) of numbers with n divisors.

The programs for A355030, there is no canonical definition to state claims against.
-/

/-! ## A355030.P10150056354306053881

`A001055(n+1)-A326334(2*n+1)%A355032(n+1)`
-/

namespace A355030.P10150056354306053881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (n + 1) - Int.tmod (A326334 (2 * n + 1)) (A355032 (n + 1))

end

end A355030.P10150056354306053881

/-! ## A355030.P17356498451746109527

`A305254(n+1)-A137745(A305254(2*n+3))`
-/

namespace A355030.P17356498451746109527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305254 (n + 1) - A137745 (A305254 (2 * n + 3)).toNat

end

end A355030.P17356498451746109527

/-! ## A355030.P8917555464850134803

`A001055(n+1)-A318559(2*n+3)%A355032(n+1)`
-/

namespace A355030.P8917555464850134803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (n + 1) - Int.tmod (A318559 (2 * n + 3)) (A355032 (n + 1))

end

end A355030.P8917555464850134803

/-! ## A355030.P13567480157443542717

`A305254(n+1)-A193095(A129649(n+1))`
-/

namespace A355030.P13567480157443542717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305254 (n + 1) - A193095 (A129649 (n + 1)).toNat

end

end A355030.P13567480157443542717

/-! ## A355030.P2121737583176401458

`and(A256172(n+1), A305254(n+1))`
-/

namespace A355030.P2121737583176401458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A256172 (n + 1)) (A305254 (n + 1))

end

end A355030.P2121737583176401458

/-!
# A355032: a(n) is the maximum number of prime signatures of numbers with n divisors that have the same number of prime divisors (counted with multiplicity).

The programs for A355032, there is no canonical definition to state claims against.
-/

/-! ## A355032.P15644263948799796508

`A207642(and((-1)^n*∑{d}[n+1, #], A368413(n+1)))`
-/

namespace A355032.P15644263948799796508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207642 (Int.land ((-1) ^ n * ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ)) (A368413 (n + 1))).toNat

end

end A355032.P15644263948799796508

/-! ## A355032.P8063094242235407939

`gcd(A007318(n+2), A184720(A347050(n+1)))`
-/

namespace A355032.P8063094242235407939
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007318 (n + 2)) (A184720 (A347050 (n + 1)).toNat)

end

end A355032.P8063094242235407939

/-! ## A355032.P3437041555803551588

`gcd(A008480(A295935(n+1)), A014153(n))`
-/

namespace A355032.P3437041555803551588
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008480 (A295935 (n + 1)).toNat) (A014153 n)

end

end A355032.P3437041555803551588

/-! ## A355032.P15377019568772275529

`A184257(A294788(n+1)+A002654(n+1))`
-/

namespace A355032.P15377019568772275529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184257 (A294788 (n + 1) + A002654 (n + 1)).toNat

end

end A355032.P15377019568772275529

/-! ## A355032.P14862864194772456243

`A257743(and(A256692(n+1), A257744(n+1)))`
-/

namespace A355032.P14862864194772456243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257743 (Int.land (A256692 (n + 1)) (A257744 (n + 1))).toNat

end

end A355032.P14862864194772456243

/-! ## A355032.P7751583749736287443

`A007318(and(A071136(n+1), A339846(n+1)))`
-/

namespace A355032.P7751583749736287443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Int.land (A071136 (n + 1)) (A339846 (n + 1))).toNat

end

end A355032.P7751583749736287443

/-! ## A355032.P788665154664687510

`C(2, A327051(A294889(n+1)))`
-/

namespace A355032.P788665154664687510
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A327051 (A294889 (n + 1)).toNat).toNat

end

end A355032.P788665154664687510

/-! ## A355032.P14952051578454251833

`A103263(A339218(n)%A000005(n+1))`
-/

namespace A355032.P14952051578454251833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103263 (Int.tmod (A339218 n) (A000005 (n + 1))).toNat

end

end A355032.P14952051578454251833

/-! ## A355032.P16038977051231527228

`A363999(n+1)%A370372(n+1)`
-/

namespace A355032.P16038977051231527228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A363999 (n + 1)) (A370372 (n + 1))

end

end A355032.P16038977051231527228

/-! ## A355032.P5284469671545915493

`A043285(A284554(n))`
-/

namespace A355032.P5284469671545915493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043285 (A284554 n).toNat

end

end A355032.P5284469671545915493

/-!
# A355033: a(n) is the least number k such that A355032(k) = n, or -1 if no such k exists.

The programs for A355033, there is no canonical definition to state claims against.
-/

/-! ## A355033.P16061714378361388141

`A023022(A000384(2*n+1)*A357636(n+2))`
-/

namespace A355033.P16061714378361388141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023022 (A000384 (2 * n + 1) * A357636 (n + 2)).toNat

end

end A355033.P16061714378361388141

/-!
# A355035: Consider the least base b >= 2 where the sum of digits of n is a prime number; a(n) corresponds to this prime number.

The programs for A355035, there is no canonical definition to state claims against.
-/

/-! ## A355035.P8421871227981962570

`A196941(n+2)-A159075(A100641(n))`
-/

namespace A355035.P8421871227981962570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196941 (n + 2) - A159075 (A100641 n).toNat

end

end A355035.P8421871227981962570

/-! ## A355035.P2347439384081389288

`A196941(A196941(2*(n+2))+A016116(n))`
-/

namespace A355035.P2347439384081389288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196941 (A196941 (2 * (n + 2)) + A016116 n).toNat

end

end A355035.P2347439384081389288

/-! ## A355035.P14940201199794253947

`A051335(A196941(n+2))%A145215(n+1)`
-/

namespace A355035.P14940201199794253947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051335 (A196941 (n + 2)).toNat) (A145215 (n + 1))

end

end A355035.P14940201199794253947

/-! ## A355035.P15809521065628173283

`A196941(2*(n+2))%A133432(A137688(n))`
-/

namespace A355035.P15809521065628173283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A196941 (2 * (n + 2))) (A133432 (A137688 n).toNat)

end

end A355035.P15809521065628173283

/-! ## A355035.P13638407623161158459

`lcm(A033999(A026300(3*n+1)), A196941(2*(n+2)))`
-/

namespace A355035.P13638407623161158459
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 (A026300 (3 * n + 1)).toNat) (A196941 (2 * (n + 2)))

end

end A355035.P13638407623161158459

/-!
# A355036: a(n) is the least number whose product of digits in primorial base equals n.

The programs for A355036, there is no canonical definition to state claims against.
-/

/-! ## A355036.P17588383318701011430

`A253577(n+1)%∑[A005592(n)]`
-/

namespace A355036.P17588383318701011430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A253577 (n + 1)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A355036.P17588383318701011430

/-! ## A355036.P286998470220612053

`A153477(A150277(n))%A150289(n)`
-/

namespace A355036.P286998470220612053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A153477 (A150277 n).toNat) (A150289 n)

end

end A355036.P286998470220612053

/-!
# A355037: a(n) is the product of the digits of n in primorial base.

The programs for A355037, there is no canonical definition to state claims against.
-/

/-! ## A355037.P5110840520614589996

`char[A328574(n+2)]*A328581(n)`
-/

namespace A355037.P5110840520614589996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328574 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A328581 n

end

end A355037.P5110840520614589996

/-! ## A355037.P1196973836191309998

`∏{digits}[A049345(n), #]`
-/

namespace A355037.P1196973836191309998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049345 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod

end

end A355037.P1196973836191309998

/-! ## A355037.P15984099203537135435

`A007954(A049345(n))`
-/

namespace A355037.P15984099203537135435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (A049345 n).toNat

end

end A355037.P15984099203537135435

/-! ## A355037.P3271454844873147060

`∏{digits}[A001202(A277022(n)+1), #]`
-/

namespace A355037.P3271454844873147060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001202 (A277022 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod

end

end A355037.P3271454844873147060

/-! ## A355037.P11589177790407878368

`A031347(A049345(n)^A178334(2*n+1))`
-/

namespace A355037.P11589177790407878368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031347 (SequenceMachineLib.roundAway ((A049345 n : ℚ) ^ (A178334 (2 * n + 1) : ℤ))).toNat

end

end A355037.P11589177790407878368

/-!
# A355038: a(n) = n^2 times the squarefree kernel of n.

The programs for A355038, the canonical program `A355038.P3918847276696299283` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A355038 has offset 1).

The definition of A355038 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007947, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A355038.P3918847276696299283

`(n+1)²*A007947(n+1)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A355038

/-- `(n+1)²*A007947(n+1)` -/
def P3918847276696299283.Spec : Prop :=
  ∀ n, P3918847276696299283.a n = A355038 (n + 1)

theorem P3918847276696299283.correct : P3918847276696299283.Spec := by
  intro n
  simp only [A355038, Nat.add_sub_cancel]

end A355038

/-! ## A355038.P3422498265907805327

`A064549((n+1)²)`
-/

namespace A355038.P3422498265907805327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064549 ((n + 1) ^ 2)

end

end A355038.P3422498265907805327

namespace A355038

/-- `A064549((n+1)²)` -/
def P3422498265907805327.Spec : Prop :=
  ∀ n, P3422498265907805327.a n = A355038 (n + 1)

end A355038

/-! ## A355038.P14305722849947467936

`A356191((n+1)²)`
-/

namespace A355038.P14305722849947467936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356191 ((n + 1) ^ 2)

end

end A355038.P14305722849947467936

namespace A355038

/-- `A356191((n+1)²)` -/
def P14305722849947467936.Spec : Prop :=
  ∀ n, P14305722849947467936.a n = A355038 (n + 1)

end A355038

/-! ## A355038.P13662937305868032675

`(n+1)²*∏{p}[n+1, #]`
-/

namespace A355038.P13662937305868032675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2 * (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A355038.P13662937305868032675

namespace A355038

/-- `(n+1)²*∏{p}[n+1, #]` -/
def P13662937305868032675.Spec : Prop :=
  ∀ n, (P13662937305868032675.a n : ℤ) = A355038 (n + 1)

end A355038

/-! ## A355038.P1798139345762808123

`∏{p}[n+1, #]/(1/(n+1))²`
-/

namespace A355038.P1798139345762808123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) / (1 / (n + 1 : ℚ)) ^ 2

end

end A355038.P1798139345762808123

namespace A355038

/-- `∏{p}[n+1, #]/(1/(n+1))²` -/
def P1798139345762808123.Spec : Prop :=
  ∀ n, P1798139345762808123.a n = (A355038 (n + 1) : ℚ)

end A355038

/-! ## A355038.P17849038548446677622

`(n+1)*(n+1)*∏{p}[n+1, #]`
-/

namespace A355038.P17849038548446677622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * ((n + 1) * (∏ p ∈ Nat.primeFactors (f1 n), p))

end

end A355038.P17849038548446677622

namespace A355038

/-- `(n+1)*(n+1)*∏{p}[n+1, #]` -/
def P17849038548446677622.Spec : Prop :=
  ∀ n, (P17849038548446677622.a n : ℤ) = A355038 (n + 1)

end A355038

/-! ## A355038.P11858583318305832367

`(n+1)*A064549(n+1)`
-/

namespace A355038.P11858583318305832367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A064549 (n + 1)

end

end A355038.P11858583318305832367

namespace A355038

/-- `(n+1)*A064549(n+1)` -/
def P11858583318305832367.Spec : Prop :=
  ∀ n, P11858583318305832367.a n = A355038 (n + 1)

end A355038

/-! ## A355038.P4442249841712529589

`(n+1)*(A078310(n+1)-1)`
-/

namespace A355038.P4442249841712529589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A078310 (n + 1) - 1)

end

end A355038.P4442249841712529589

namespace A355038

/-- `(n+1)*(A078310(n+1)-1)` -/
def P4442249841712529589.Spec : Prop :=
  ∀ n, P4442249841712529589.a n = A355038 (n + 1)

end A355038

/-! ## A355038.P4994570384074631663

`(n+1)^3/A003557(n+1)`
-/

namespace A355038.P4994570384074631663
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 : ℚ) / (A003557 (n + 1) : ℚ)

end

end A355038.P4994570384074631663

namespace A355038

/-- `(n+1)^3/A003557(n+1)` -/
def P4994570384074631663.Spec : Prop :=
  ∀ n, P4994570384074631663.a n = (A355038 (n + 1) : ℚ)

end A355038

/-! ## A355038.P4500873489299592634

`(n+1)²²/A102631(n+1)`
-/

namespace A355038.P4500873489299592634
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ 2) ^ 2 : ℚ) / (A102631 (n + 1) : ℚ)

end

end A355038.P4500873489299592634

namespace A355038

/-- `(n+1)²²/A102631(n+1)` -/
def P4500873489299592634.Spec : Prop :=
  ∀ n, P4500873489299592634.a n = (A355038 (n + 1) : ℚ)

end A355038

/-! ## A355038.P15156851724100194554

`A078615(n+1)*A102631(n+1)`
-/

namespace A355038.P15156851724100194554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078615 (n + 1) * A102631 (n + 1)

end

end A355038.P15156851724100194554

namespace A355038

/-- `A078615(n+1)*A102631(n+1)` -/
def P15156851724100194554.Spec : Prop :=
  ∀ n, P15156851724100194554.a n = A355038 (n + 1)

end A355038

/-! ## A355038.P4151856673862256236

`A003557(n+1)*A361264(n+1)`
-/

namespace A355038.P4151856673862256236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1) * A361264 (n + 1)

end

end A355038.P4151856673862256236

namespace A355038

/-- `A003557(n+1)*A361264(n+1)` -/
def P4151856673862256236.Spec : Prop :=
  ∀ n, P4151856673862256236.a n = A355038 (n + 1)

end A355038

/-! ## A355038.P14933369166519470352

`A053143(n+1)*A356191(n+1)`
-/

namespace A355038.P14933369166519470352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053143 (n + 1) * A356191 (n + 1)

end

end A355038.P14933369166519470352

namespace A355038

/-- `A053143(n+1)*A356191(n+1)` -/
def P14933369166519470352.Spec : Prop :=
  ∀ n, P14933369166519470352.a n = A355038 (n + 1)

end A355038

/-! ## A355038.P13219185384545173914

`(n+1)²*A053166(A053166(n+1))`
-/

namespace A355038.P13219185384545173914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A053166 (A053166 (n + 1)).toNat

end

end A355038.P13219185384545173914

namespace A355038

/-- `(n+1)²*A053166(A053166(n+1))` -/
def P13219185384545173914.Spec : Prop :=
  ∀ n, P13219185384545173914.a n = A355038 (n + 1)

end A355038

/-! ## A355038.P2960897477596410722

`(n+1)*A001694(A348018(n+1))`
-/

namespace A355038.P2960897477596410722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A001694 (A348018 (n + 1)).toNat

end

end A355038.P2960897477596410722

namespace A355038

/-- `(n+1)*A001694(A348018(n+1))` -/
def P2960897477596410722.Spec : Prop :=
  ∀ n, P2960897477596410722.a n = A355038 (n + 1)

end A355038

/-! ## A355038.P7888763406118576707

`(n+1)²*A336643((n+1)²)`
-/

namespace A355038.P7888763406118576707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A336643 ((n + 1) ^ 2)

end

end A355038.P7888763406118576707

namespace A355038

/-- `(n+1)²*A336643((n+1)²)` -/
def P7888763406118576707.Spec : Prop :=
  ∀ n, P7888763406118576707.a n = A355038 (n + 1)

end A355038

/-! ## A355038.P15184768226953771719

`A361264(A102631(n+1))`
-/

namespace A355038.P15184768226953771719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361264 (A102631 (n + 1)).toNat

end

end A355038.P15184768226953771719

namespace A355038

/-- `A361264(A102631(n+1))` -/
def P15184768226953771719.Spec : Prop :=
  ∀ n, P15184768226953771719.a n = A355038 (n + 1)

end A355038

/-! ## A355038.P7383123550339465754

`(n+1)²*A342905(∑[n+1])`
-/

namespace A355038.P7383123550339465754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A342905 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A355038.P7383123550339465754

namespace A355038

/-- `(n+1)²*A342905(∑[n+1])` -/
def P7383123550339465754.Spec : Prop :=
  ∀ n, P7383123550339465754.a n = A355038 (n + 1)

end A355038

/-! ## A355038.P11779794223255526769

`record[A056623(n+1)]*A019555(A019555(n+1))`
-/

namespace A355038.P11779794223255526769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056623 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A019555 (A019555 (n + 1)).toNat

end

end A355038.P11779794223255526769

namespace A355038

/-- `record[A056623(n+1)]*A019555(A019555(n+1))` -/
def P11779794223255526769.Spec : Prop :=
  ∀ n, P11779794223255526769.a n = A355038 (n + 1)

end A355038

/-! ## A355038.P18243378546210347104

`A356192(A103390(n+2))`
-/

namespace A355038.P18243378546210347104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356192 (A103390 (n + 2)).toNat

end

end A355038.P18243378546210347104

namespace A355038

/-- `A356192(A103390(n+2))` -/
def P18243378546210347104.Spec : Prop :=
  ∀ n, P18243378546210347104.a n = A355038 (n + 1)

end A355038

/-!
# A355039: Carmichael numbers whose number of prime factors is prime.

The programs for A355039, there is no canonical definition to state claims against.
-/

/-! ## A355039.P10739967067264288284

`A002997(lt[∏{p}[A002997(n+1), -#], 0]+1)`
-/

namespace A355039.P10739967067264288284
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002997 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, (-(p : ℤ))

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002997 (SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 1)

end

end A355039.P10739967067264288284

/-!
# A355040: Expansion of the continued fraction 1 / (1-q / (1-q-q^2 / (1-q-q^2-q^3 / (1-q-q^2-q^3-q^4 / (...))))).

The programs for A355040, there is no canonical definition to state claims against.
-/

/-! ## A355040.P8733199175762211128

`A005773(n)-A137748(A032559(n+1))`
-/

namespace A355040.P8733199175762211128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005773 n - A137748 (A032559 (n + 1)).toNat

end

end A355040.P8733199175762211128

/-! ## A355040.P8606721371098895398

`A005773(n)-A137748(A032563(n+1))`
-/

namespace A355040.P8606721371098895398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005773 n - A137748 (A032563 (n + 1)).toNat

end

end A355040.P8606721371098895398

/-! ## A355040.P15663657934557777329

`A307789(n+1)-A137748(A032559(n+1))`
-/

namespace A355040.P15663657934557777329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307789 (n + 1) - A137748 (A032559 (n + 1)).toNat

end

end A355040.P15663657934557777329

/-! ## A355040.P14167849629894424646

`A307789(n+1)-A137748(A032563(n+1))`
-/

namespace A355040.P14167849629894424646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307789 (n + 1) - A137748 (A032563 (n + 1)).toNat

end

end A355040.P14167849629894424646

/-! ## A355040.P14606727877504808446

`A085810(A028310(n))+A010815(A048640(3*n+4))`
-/

namespace A355040.P14606727877504808446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085810 (A028310 n).toNat + A010815 (A048640 (3 * n + 4)).toNat

end

end A355040.P14606727877504808446

/-!
# A355042: a(n) is the number of minimal balanced collections on a ground set of n labeled elements.

The programs for A355042, there is no canonical definition to state claims against.
-/

/-! ## A355042.P9726226771117925390

`A178772(∑[A351730(n)])`
-/

namespace A355042.P9726226771117925390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351730 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178772 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A355042.P9726226771117925390

/-!
# A355043: Expansion of the continued fraction 1 / (1-q-q^2 / (1-q-q^2-q^3 / (1-q-q^2-q^3-q^4 / (...)))).

The programs for A355043, there is no canonical definition to state claims against.
-/

/-! ## A355043.P5719598762880874262

`A257104(n)-A118759(A137748(n))`
-/

namespace A355043.P5719598762880874262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257104 n - A118759 (A137748 n).toNat

end

end A355043.P5719598762880874262

/-! ## A355043.P4043277283175917935

`A257104(A120126(n))-A137748(n)`
-/

namespace A355043.P4043277283175917935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257104 (A120126 n).toNat - A137748 n

end

end A355043.P4043277283175917935

/-! ## A355043.P13959202076504005515

`A257104(n)-A118759(A036647(n+1))`
-/

namespace A355043.P13959202076504005515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257104 n - A118759 (A036647 (n + 1)).toNat

end

end A355043.P13959202076504005515

/-! ## A355043.P15164836524512400564

`A257104(A120126(n))-A036647(n+1)`
-/

namespace A355043.P15164836524512400564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257104 (A120126 n).toNat - A036647 (n + 1)

end

end A355043.P15164836524512400564

/-! ## A355043.P16062422405314320675

`A238438(n)+A079978(A000800(n))-A036647(n+1)`
-/

namespace A355043.P16062422405314320675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238438 n + A079978 (A000800 n).toNat - A036647 (n + 1)

end

end A355043.P16062422405314320675

/-!
# A355044: Number of coalescent histories for matching gene trees and species trees with n leaves and a 5-leaf seed tree.

The programs for A355044, the canonical program `A355044.P8837514568109609866` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A355044 has offset 5).

The definition of A355044 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A355044.P8837514568109609866

`(23*(n+5)²-131*(n+5)+180)/(4*(2*(n+5)-3)*(2*(n+5)-5))*A000108(n+4)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A355044

/-- `(23*(n+5)²-131*(n+5)+180)/(4*(2*(n+5)-3)*(2*(n+5)-5))*A000108(n+4)` -/
def P8837514568109609866.Spec : Prop :=
  ∀ n, P8837514568109609866.a n = (A355044 (n + 5) : ℚ)

end A355044

/-! ## A355044.P11587617418914573350

`A002057(n+1)+A120989(n+1)+A002057(n+1)`
-/

namespace A355044.P11587617418914573350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002057 (n + 1) + (A120989 (n + 1) + A002057 (n + 1))

end

end A355044.P11587617418914573350

namespace A355044

/-- `A002057(n+1)+A120989(n+1)+A002057(n+1)` -/
def P11587617418914573350.Spec : Prop :=
  ∀ n, P11587617418914573350.a n = A355044 (n + 5)

end A355044

/-! ## A355044.P6740568143333139953

`A120989(n+1)+A120989(n+2)-A003517(n+2)`
-/

namespace A355044.P6740568143333139953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120989 (n + 1) + (A120989 (n + 2) - A003517 (n + 2))

end

end A355044.P6740568143333139953

namespace A355044

/-- `A120989(n+1)+A120989(n+2)-A003517(n+2)` -/
def P6740568143333139953.Spec : Prop :=
  ∀ n, P6740568143333139953.a n = A355044 (n + 5)

end A355044

/-!
# A355046: Expansion of the continued fraction 1 / (1-q / (1-q-q^3 / (1-q-q^3-q^5 / (1-q-q^3-q^5-q^7 / (...))))).

The programs for A355046, there is no canonical definition to state claims against.
-/

/-! ## A355046.P13029507883184759808

`A054404(A052912(n)+1)`
-/

namespace A355046.P13029507883184759808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 (A052912 n + 1).toNat

end

end A355046.P13029507883184759808

/-! ## A355046.P16985859731837645709

`A317137(A352853(n+1))`
-/

namespace A355046.P16985859731837645709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317137 (A352853 (n + 1)).toNat

end

end A355046.P16985859731837645709

/-! ## A355046.P635460166784258066

`(A208643(A322325(n))+1)/2`
-/

namespace A355046.P635460166784258066
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208643 (A322325 n).toNat + 1 : ℚ) / 2

end

end A355046.P635460166784258066

/-! ## A355046.P11304864623645095561

`∑[A166297(A032563(n+1))]+1`
-/

namespace A355046.P11304864623645095561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166297 (A032563 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A355046.P11304864623645095561

/-! ## A355046.P16155663080496401609

`ceil(A340920(2*(n+1))/A088218(n+2))`
-/

namespace A355046.P16155663080496401609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A340920 (2 * (n + 1)) : ℚ) / (A088218 (n + 2) : ℚ)⌉

end

end A355046.P16155663080496401609

/-!
# A355047: Number of oriented orthoplex n-ominoes with cell centers determining n-3 space.

The programs for A355047, there is no canonical definition to state claims against.
-/

/-! ## A355047.P2651264119225010717

`2*A355048(n+6)-A355050(n+6)`
-/

namespace A355047.P2651264119225010717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A355048 (n + 6) - A355050 (n + 6)

end

end A355047.P2651264119225010717

/-!
# A355048: Number of unoriented orthoplex n-ominoes with cell centers determining n-3 space.

The programs for A355048, there is no canonical definition to state claims against.
-/

/-! ## A355048.P1196836080363924

`(A355047(n+6)+A355050(n+6))/2`
-/

namespace A355048.P1196836080363924
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A355047 (n + 6) + A355050 (n + 6) : ℚ) / 2

end

end A355048.P1196836080363924

/-!
# A355049: Number of chiral pairs of orthoplex n-ominoes with cell centers determining n-3 space.

The programs for A355049, there is no canonical definition to state claims against.
-/

/-! ## A355049.P5001984286530642945

`A355047(n+7)-A355048(n+7)`
-/

namespace A355049.P5001984286530642945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355047 (n + 7) - A355048 (n + 7)

end

end A355049.P5001984286530642945

/-! ## A355049.P3255575386230129957

`A355048(n+7)-A355050(n+7)`
-/

namespace A355049.P3255575386230129957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355048 (n + 7) - A355050 (n + 7)

end

end A355049.P3255575386230129957

/-! ## A355049.P7817647985178872027

`(A355047(n+7)-A355050(n+7))/2`
-/

namespace A355049.P7817647985178872027
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A355047 (n + 7) - A355050 (n + 7) : ℚ) / 2

end

end A355049.P7817647985178872027

/-!
# A355050: Number of achiral orthoplex n-ominoes with cell centers determining n-3 space.

The programs for A355050, there is no canonical definition to state claims against.
-/

/-! ## A355050.P14632235545373440846

`2*A355048(n+6)-A355047(n+6)`
-/

namespace A355050.P14632235545373440846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A355048 (n + 6) - A355047 (n + 6)

end

end A355050.P14632235545373440846

/-!
# A355052: Number of oriented multidimensional n-ominoes with cell centers determining n-3 space.

The programs for A355052, there is no canonical definition to state claims against.
-/

/-! ## A355052.P1635918741067590772

`2*A355053(n+4)-A355055(n+4)`
-/

namespace A355052.P1635918741067590772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A355053 (n + 4) - A355055 (n + 4)

end

end A355052.P1635918741067590772

/-! ## A355052.P9014093599440393044

`A004277(A355053(n+4))-A355055(n+4)`
-/

namespace A355052.P9014093599440393044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A355053 (n + 4)).toNat - A355055 (n + 4)

end

end A355052.P9014093599440393044

/-!
# A355053: Number of unoriented multidimensional n-ominoes with cell centers determining n-3 space.

The programs for A355053, there is no canonical definition to state claims against.
-/

/-! ## A355053.P3954070130948751626

`(A355052(n+4)+A355055(n+4))/2`
-/

namespace A355053.P3954070130948751626
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A355052 (n + 4) + A355055 (n + 4) : ℚ) / 2

end

end A355053.P3954070130948751626

/-! ## A355053.P2313969512853034172

`A049429(∑[n+3]+2)`
-/

namespace A355053.P2313969512853034172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049429 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A355053.P2313969512853034172

/-! ## A355053.P9490076838755363250

`A049430(∑[n+4]+4)`
-/

namespace A355053.P9490076838755363250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049430 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A355053.P9490076838755363250

/-! ## A355053.P3570703207052108775

`record[A049430(A034856(n+1))]`
-/

namespace A355053.P3570703207052108775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049430 (A034856 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A355053.P3570703207052108775

/-!
# A355054: Number of chiral pairs of multidimensional n-ominoes with cell centers determining n-3 space.

The programs for A355054, there is no canonical definition to state claims against.
-/

/-! ## A355054.P15501409661633939542

`A355053(n+5)-A355055(n+5)`
-/

namespace A355054.P15501409661633939542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355053 (n + 5) - A355055 (n + 5)

end

end A355054.P15501409661633939542

/-! ## A355054.P13614018342379295090

`A355052(n+5)-A355053(n+5)`
-/

namespace A355054.P13614018342379295090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355052 (n + 5) - A355053 (n + 5)

end

end A355054.P13614018342379295090

/-! ## A355054.P7158736385423491693

`(A355052(n+5)-A355055(n+5))/2`
-/

namespace A355054.P7158736385423491693
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A355052 (n + 5) - A355055 (n + 5) : ℚ) / 2

end

end A355054.P7158736385423491693

/-!
# A355055: Number of achiral multidimensional n-ominoes with cell centers determining n-3 space.

The programs for A355055, there is no canonical definition to state claims against.
-/

/-! ## A355055.P6583978491459559076

`2*A355053(n+4)-A355052(n+4)`
-/

namespace A355055.P6583978491459559076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A355053 (n + 4) - A355052 (n + 4)

end

end A355055.P6583978491459559076

/-! ## A355055.P5253201836108430851

`A004277(A355053(n+4))-A355052(n+4)`
-/

namespace A355055.P5253201836108430851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A355053 (n + 4)).toNat - A355052 (n + 4)

end

end A355055.P5253201836108430851

/-!
# A355057: a(n) = product of prohibited prime factors of A090252(n).

The programs for A355057, there is no canonical definition to state claims against.
-/

/-! ## A355057.P13819528641905761685

`gcd(A002110(n), A354758(n+1))`
-/

namespace A355057.P13819528641905761685
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002110 n) (A354758 (n + 1))

end

end A355057.P13819528641905761685

/-! ## A355057.P1124154196365588511

`A019565(A354765(n+1))`
-/

namespace A355057.P1124154196365588511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (A354765 (n + 1)).toNat

end

end A355057.P1124154196365588511

/-! ## A355057.P9261129556721589504

`gcd(A077327(n+1), A354758(A077168(n)))`
-/

namespace A355057.P9261129556721589504
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A077327 (n + 1)) (A354758 (A077168 n).toNat)

end

end A355057.P9261129556721589504

/-! ## A355057.P13676406258385377694

`∏{p}[A354758(n+1), #]`
-/

namespace A355057.P13676406258385377694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354758 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A355057.P13676406258385377694

/-! ## A355057.P1607871396772644058

`A007947(A354758(n+1)/A219272(n))`
-/

namespace A355057.P1607871396772644058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (SequenceMachineLib.roundAway ((A354758 (n + 1) : ℚ) / (A219272 n : ℚ))).toNat

end

end A355057.P1607871396772644058

/-!
# A355058: Numbers m such that d(m) mod 6 = 3, where d(m) is the number of divisors of m.

The programs for A355058, the canonical program `A355058.P17814861015086141742` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A355058 has offset 1).

The definition of A355058 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 234 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A355058.P17814861015086141742

`filter[(n+1)², A353470(#)]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A355058

/-- `filter[(n+1)², A353470(#)]` -/
def P17814861015086141742.Spec : Prop :=
  ∀ n, (P17814861015086141742.a n : ℤ) = A355058 (n + 1)

theorem P17814861015086141742.correct : P17814861015086141742.Spec := by
  intro n
  simp only [A355058, Nat.add_sub_cancel]

end A355058

/-! ## A355058.P9003820602572273755

`∩[A059269(n+1), n²]`
-/

namespace A355058.P9003820602572273755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059269 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A355058.P9003820602572273755

namespace A355058

/-- `∩[A059269(n+1), n²]` -/
def P9003820602572273755.Spec : Prop :=
  ∀ n, (P9003820602572273755.a n : ℤ) = A355058 (n + 1)

end A355058

/-! ## A355058.P4914063052403211011

`∩[A000290(n), A059269(n+1)]`
-/

namespace A355058.P4914063052403211011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059269 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A355058.P4914063052403211011

namespace A355058

/-- `∩[A000290(n), A059269(n+1)]` -/
def P4914063052403211011.Spec : Prop :=
  ∀ n, (P4914063052403211011.a n : ℤ) = A355058 (n + 1)

end A355058

/-! ## A355058.P4619500700716833809

`∩[A002760(n+1), A059269(n+1)]`
-/

namespace A355058.P4619500700716833809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002760 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059269 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A355058.P4619500700716833809

namespace A355058

/-- `∩[A002760(n+1), A059269(n+1)]` -/
def P4619500700716833809.Spec : Prop :=
  ∀ n, (P4619500700716833809.a n : ℤ) = A355058 (n + 1)

end A355058

/-! ## A355058.P8875140198794901599

`∩[A034793(n+1), A059269(n+1)]`
-/

namespace A355058.P8875140198794901599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034793 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059269 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A355058.P8875140198794901599

namespace A355058

/-- `∩[A034793(n+1), A059269(n+1)]` -/
def P8875140198794901599.Spec : Prop :=
  ∀ n, (P8875140198794901599.a n : ℤ) = A355058 (n + 1)

end A355058

/-! ## A355058.P14961896963706776624

`∩[A048944(n+1), A179126(n+1)]`
-/

namespace A355058.P14961896963706776624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048944 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A355058.P14961896963706776624

namespace A355058

/-- `∩[A048944(n+1), A179126(n+1)]` -/
def P14961896963706776624.Spec : Prop :=
  ∀ n, (P14961896963706776624.a n : ℤ) = A355058 (n + 1)

end A355058

/-! ## A355058.P115228277820108707

`∩[A179126(n+1), A261355(n+1)]`
-/

namespace A355058.P115228277820108707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261355 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A355058.P115228277820108707

namespace A355058

/-- `∩[A179126(n+1), A261355(n+1)]` -/
def P115228277820108707.Spec : Prop :=
  ∀ n, (P115228277820108707.a n : ℤ) = A355058 (n + 1)

end A355058

/-! ## A355058.P15440416403324947714

`filter[A059269(n+1), A010052(#)]`
-/

namespace A355058.P15440416403324947714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059269 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010052 (f1 j).toNat = 1) n)

end

end A355058.P15440416403324947714

namespace A355058

/-- `filter[A059269(n+1), A010052(#)]` -/
def P15440416403324947714.Spec : Prop :=
  ∀ n, P15440416403324947714.a n = A355058 (n + 1)

end A355058

/-! ## A355058.P6136526999119979502

`A259444(n+1)^A237271(A005383(2*(n+1)))`
-/

namespace A355058.P6136526999119979502
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259444 (n + 1) : ℚ) ^ (A237271 (A005383 (2 * (n + 1))).toNat : ℤ)

end

end A355058.P6136526999119979502

namespace A355058

/-- `A259444(n+1)^A237271(A005383(2*(n+1)))` -/
def P6136526999119979502.Spec : Prop :=
  ∀ n, P6136526999119979502.a n = (A355058 (n + 1) : ℚ)

end A355058

/-!
# A355059: a(n) is the positive integer such that psi(A355045(n)) = rad(A355045(n))^a(n), where psi(k) = A001615(k) and rad(k) = A007947(k).

The programs for A355059, there is no canonical definition to state claims against.
-/

/-! ## A355059.P17230839307501886191

`A001222(A049311(n+1)*A076400(n+3))`
-/

namespace A355059.P17230839307501886191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A049311 (n + 1) * A076400 (n + 3)).toNat

end

end A355059.P17230839307501886191

/-!
# A355060: Perfect powers whose digits are in strictly increasing order.

The programs for A355060, there is no canonical definition to state claims against.
-/

/-! ## A355060.P8231393798002033297

`∩[A009993(n+1), A355062(n+1)]`
-/

namespace A355060.P8231393798002033297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009993 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355062 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A355060.P8231393798002033297

/-! ## A355060.P38931794647720197

`∩[A075309(n+1), A355062(n+1)]`
-/

namespace A355060.P38931794647720197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355062 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A355060.P38931794647720197

/-! ## A355060.P17780942681979654600

`∩[A090516(n+1), A355062(n+1)]`
-/

namespace A355060.P17780942681979654600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090516 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355062 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A355060.P17780942681979654600

/-! ## A355060.P9542338908011352692

`∩[A179308(n+1), A355062(n+1)]`
-/

namespace A355060.P9542338908011352692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179308 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355062 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A355060.P9542338908011352692

/-! ## A355060.P12341705292559995825

`∩[A211771(n+1), A355062(n+1)]`
-/

namespace A355060.P12341705292559995825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211771 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355062 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A355060.P12341705292559995825

/-!
# A355061: Lexicographically earliest infinite sequence of positive numbers such that, for n>2, a(n) has a common factor with a(n-1), no common factor with a(n-2), and the product a(n)*a(n-1) is distinct from all previous products, a(i)*a(i-1), i=2..n-1.

The programs for A355061, there is no canonical definition to state claims against.
-/

/-! ## A355061.P4254517650699944774

`A355138(n)/a(n-1)` with `a(0)=1`
-/

namespace A355061.P4254517650699944774
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A355138 n : ℚ) / a (n - 1)

end

end A355061.P4254517650699944774

/-! ## A355061.P1143710176610527044

`A097448(∏{p}[A336957(n+1), #])`
-/

namespace A355061.P1143710176610527044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336957 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097448 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A355061.P1143710176610527044

/-! ## A355061.P16428634697571148372

`A097448(∏{p}[A338055(n+1), #])`
-/

namespace A355061.P16428634697571148372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338055 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097448 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A355061.P16428634697571148372

/-! ## A355061.P3614305576855922886

`A007947(A336957(n+1)^A048793(n))`
-/

namespace A355061.P3614305576855922886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (SequenceMachineLib.roundAway ((A336957 (n + 1) : ℚ) ^ (A048793 n : ℤ))).toNat

end

end A355061.P3614305576855922886

/-! ## A355061.P1336893059513472207

`A007947(A336957(n+1)^A045917(n+1))`
-/

namespace A355061.P1336893059513472207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (SequenceMachineLib.roundAway ((A336957 (n + 1) : ℚ) ^ (A045917 (n + 1) : ℤ))).toNat

end

end A355061.P1336893059513472207

/-!
# A355062: Perfect powers whose digits are in nondecreasing order.

The programs for A355062, there is no canonical definition to state claims against.
-/

/-! ## A355062.P4911388654512988150

`∩[A009994(n+1), A001597(n+2)]`
-/

namespace A355062.P4911388654512988150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009994 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A355062.P4911388654512988150

/-!
# A355063: Perfect powers whose digits are in nonincreasing order and do not include 0.

The programs for A355063, there is no canonical definition to state claims against.
-/

/-! ## A355063.P4175290997402376250

`filter[A385517(n+1), A011558(#)]`
-/

namespace A355063.P4175290997402376250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385517 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011558 (f1 j).toNat = 1) n)

end

end A355063.P4175290997402376250

/-! ## A355063.P809449608125783979

`filter[A385517(n+1), A168046(#)]`
-/

namespace A355063.P809449608125783979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385517 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168046 (f1 j).toNat = 1) n)

end

end A355063.P809449608125783979

/-! ## A355063.P4932224990649999351

`filter[A385517(n+1), A168184(#)]`
-/

namespace A355063.P4932224990649999351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385517 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168184 (f1 j).toNat = 1) n)

end

end A355063.P4932224990649999351

/-! ## A355063.P7703770458451779218

`∩[A034709(n+1), A385517(n+1)]`
-/

namespace A355063.P7703770458451779218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034709 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385517 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A355063.P7703770458451779218

/-! ## A355063.P4091280060014056295

`∩[A201010(n+1), A385517(n+1)]`
-/

namespace A355063.P4091280060014056295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385517 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A355063.P4091280060014056295

/-!
# A355064: Expansion of e.g.f. ( Product_{k>0} 1/(1-x^k)^(1/k) )^x.

The programs for A355064, there is no canonical definition to state claims against.
-/

/-! ## A355064.P10014381972462591767

`round(sqrt(A003213(n)-n))`
-/

namespace A355064.P10014381972462591767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A003213 n - (n : ℤ) : ℝ))

end

end A355064.P10014381972462591767

/-! ## A355064.P15771322099612793424

`A301915(a(n-1))` with `a(0)=1, a(1)=0, a(2)=2`
-/

namespace A355064.P15771322099612793424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 2] fun n a =>
  A301915 (a (n - 1)).toNat

end

end A355064.P15771322099612793424

/-!
# A355066: Inverse permutation to A355065.

The programs for A355066, there is no canonical definition to state claims against.
-/

/-! ## A355066.P17822701870992562079

`A181819(∩[A272919(n+1), A353431(n+1)])`
-/

namespace A355066.P17822701870992562079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272919 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353431 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181819 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A355066.P17822701870992562079

/-! ## A355066.P12938885856238880964

`A241916(A028691(n+1))%A045770(3*(n+1))`
-/

namespace A355066.P12938885856238880964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A241916 (A028691 (n + 1)).toNat) (A045770 (3 * (n + 1)))

end

end A355066.P12938885856238880964

/-! ## A355066.P14755998864527913745

`A241916(A028691(n+1)%A178057(3*(n+1)))`
-/

namespace A355066.P14755998864527913745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241916 (Int.tmod (A028691 (n + 1)) (A178057 (3 * (n + 1)))).toNat

end

end A355066.P14755998864527913745

/-! ## A355066.P14414821996275362353

`A028691(n+1)-A346012(A284402(n))`
-/

namespace A355066.P14414821996275362353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028691 (n + 1) - A346012 (A284402 n).toNat

end

end A355066.P14414821996275362353

/-! ## A355066.P575879690209297713

`A241916(A028691(n+1)%A179108(n+1))`
-/

namespace A355066.P575879690209297713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241916 (Int.tmod (A028691 (n + 1)) (A179108 (n + 1))).toNat

end

end A355066.P575879690209297713

/-!
# A355067: a(n) is the failed skew zero forcing number of P^3_n.

The programs for A355067, the canonical program `A355067.P6989031738138831130` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A355067 has offset 3).

The definition of A355067 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A355067.P6989031738138831130

`A354779(n)+A059169(n+1)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A355067

/-- `A354779(n)+A059169(n+1)` -/
def P6989031738138831130.Spec : Prop :=
  ∀ n, P6989031738138831130.a n = A355067 (n + 3)

theorem P6989031738138831130.correct : P6989031738138831130.Spec := by
  intro n
  simp only [A355067, Nat.add_sub_cancel]

end A355067

/-! ## A355067.P11825879738984110036

`A059169(n+1)+∑[∑[A298801(n)]%2]`
-/

namespace A355067.P11825879738984110036
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298801 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f2 j) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059169 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A355067.P11825879738984110036

namespace A355067

/-- `A059169(n+1)+∑[∑[A298801(n)]%2]` -/
def P11825879738984110036.Spec : Prop :=
  ∀ n, P11825879738984110036.a n = A355067 (n + 3)

end A355067

/-! ## A355067.P4508430847122065851

`A307707(A301758(n+1))+A059169(n+1)`
-/

namespace A355067.P4508430847122065851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307707 (A301758 (n + 1)).toNat + A059169 (n + 1)

end

end A355067.P4508430847122065851

namespace A355067

/-- `A307707(A301758(n+1))+A059169(n+1)` -/
def P4508430847122065851.Spec : Prop :=
  ∀ n, P4508430847122065851.a n = A355067 (n + 3)

end A355067

/-! ## A355067.P10294938443071096907

`A353481(A167167(n+4))+ceil(n/sqrt(2))`
-/

namespace A355067.P10294938443071096907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353481 (A167167 (n + 4)).toNat + ⌈(n : ℝ) / Real.sqrt (2 : ℝ)⌉

end

end A355067.P10294938443071096907

namespace A355067

/-- `A353481(A167167(n+4))+ceil(n/sqrt(2))` -/
def P10294938443071096907.Spec : Prop :=
  ∀ n, P10294938443071096907.a n = A355067 (n + 3)

end A355067

/-! ## A355067.P11413805671841755520

`A085021(n+1)+A001222(A026150(n))`
-/

namespace A355067.P11413805671841755520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085021 (n + 1) + A001222 (A026150 n).toNat

end

end A355067.P11413805671841755520

namespace A355067

/-- `A085021(n+1)+A001222(A026150(n))` -/
def P11413805671841755520.Spec : Prop :=
  ∀ n, P11413805671841755520.a n = A355067 (n + 3)

end A355067

/-!
# A355073: G.f.: Sum_{n>=0} a(n)*x^n/(n!*3^(n*(n-1)/2)) = exp( Sum_{n>=1} x^n/(n!*3^(n*(n-1)/2)) ).

The programs for A355073, there is no canonical definition to state claims against.
-/

/-! ## A355073.P3778571737077701359

`A350839(Δ[ceil(5*2^n/3)])+1`
-/

namespace A355073.P3778571737077701359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈5 * ((2 ^ n : ℚ) / 3)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350839 (f1 (n + 1) - f1 n).toNat + 1

end

end A355073.P3778571737077701359

/-!
# A355074: G.f.: Sum_{n>=0} a(n)*x^n/(n!*4^(n*(n-1)/2)) = exp( Sum_{n>=1} x^n/(n!*4^(n*(n-1)/2)) ).

The programs for A355074, there is no canonical definition to state claims against.
-/

/-! ## A355074.P7973159597284507888

`A003415(A197927(n))+1`
-/

namespace A355074.P7973159597284507888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A197927 n).toNat + 1

end

end A355074.P7973159597284507888

/-!
# A355079: Irregular triangle read by rows: the first row is 1, and the n-th row (n > 1) lists the factors f of n where n/f is prime (the maximal factors of n.)

The programs for A355079, there is no canonical definition to state claims against.
-/

/-! ## A355079.P7615405459402249451

`A082287(n+1)/A302170(n+1)`
-/

namespace A355079.P7615405459402249451
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082287 (n + 1) : ℚ) / (A302170 (n + 1) : ℚ)

end

end A355079.P7615405459402249451

/-! ## A355079.P2526256559346151822

`A334948(A076839(n+2)+A000079(n))`
-/

namespace A355079.P2526256559346151822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334948 (A076839 (n + 2) + A000079 n).toNat

end

end A355079.P2526256559346151822

/-!
# A355080: Start with the positive integers. Term by term from left to right insert a copy of the current term x m steps further, where m is the number of times x has appeared.

The programs for A355080, there is no canonical definition to state claims against.
-/

/-! ## A355080.P16538965873710917306

`A331254(A117816(n+1)+n)`
-/

namespace A355080.P16538965873710917306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331254 (A117816 (n + 1) + (n : ℤ)).toNat

end

end A355080.P16538965873710917306

/-! ## A355080.P13548818980444347222

`gcd((2^n)%(n+1)², A231717(A213709(n)))`
-/

namespace A355080.P13548818980444347222
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((2 ^ n % (n + 1) ^ 2 : ℕ) : ℤ) (A231717 (A213709 n).toNat)

end

end A355080.P13548818980444347222

/-! ## A355080.P2187267757657109083

`A001221(floor(sqrt(A041506(n))))`
-/

namespace A355080.P2187267757657109083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.sqrt (A041506 n)).toNat

end

end A355080.P2187267757657109083

/-! ## A355080.P10623194047657180009

`A233420(ceil(sqrt(A127602(n+2))))`
-/

namespace A355080.P10623194047657180009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233420 ⌈Real.sqrt (A127602 (n + 2) : ℝ)⌉.toNat

end

end A355080.P10623194047657180009

/-!
# A355081: G.f. A(x) satisfies A(x) = 1 + x * A(3 * x / (1 - x)) / (1 - x).

The programs for A355081, there is no canonical definition to state claims against.
-/

/-! ## A355081.P12497431941360936393

`A306245(A046691(n+2))`
-/

namespace A355081.P12497431941360936393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306245 (A046691 (n + 2)).toNat

end

end A355081.P12497431941360936393

/-! ## A355081.P13940170500144572653

`A306245(A155212(n)+4)`
-/

namespace A355081.P13940170500144572653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306245 (A155212 n + 4).toNat

end

end A355081.P13940170500144572653

/-! ## A355081.P17322959478645546394

`A306245(A056000(n)+6)`
-/

namespace A355081.P17322959478645546394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306245 (A056000 n + 6).toNat

end

end A355081.P17322959478645546394

/-! ## A355081.P14860508533822665981

`A306245(eq[8, A130321(n)])`
-/

namespace A355081.P14860508533822665981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306245 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A355081.P14860508533822665981

/-! ## A355081.P9824838498482242171

`A306245(A052905(n+1)+1)`
-/

namespace A355081.P9824838498482242171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306245 (A052905 (n + 1) + 1).toNat

end

end A355081.P9824838498482242171

/-!
# A355082: G.f. A(x) satisfies A(x) = 1 + x * A(4 * x / (1 - x)) / (1 - x).

The programs for A355082, there is no canonical definition to state claims against.
-/

/-! ## A355082.P7800169066126104473

`A306245(A052905(n+2))`
-/

namespace A355082.P7800169066126104473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306245 (A052905 (n + 2)).toNat

end

end A355082.P7800169066126104473

/-! ## A355082.P3934105943098917413

`A306245(eq[5, A193739(n)])`
-/

namespace A355082.P3934105943098917413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306245 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A355082.P3934105943098917413

/-! ## A355082.P9397381634749071968

`A306245(eq[16, A130321(n)])`
-/

namespace A355082.P9397381634749071968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306245 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A355082.P9397381634749071968

/-! ## A355082.P13213983873880481295

`A306245(A046691(n+3)-1)`
-/

namespace A355082.P13213983873880481295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306245 (A046691 (n + 3) - 1).toNat

end

end A355082.P13213983873880481295

/-! ## A355082.P13562243623614321987

`A306245(eq[5, A004736(n+1)])`
-/

namespace A355082.P13562243623614321987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306245 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A355082.P13562243623614321987

/-!
# A355083: E.g.f. A(x) satisfies A(x) = 1 + 2 * (exp(x) - 1) * A(exp(x) - 1).

The programs for A355083, there is no canonical definition to state claims against.
-/

/-! ## A355083.P9677813408731807142

`A355100(n+1)/A004277(n+1)`
-/

namespace A355083.P9677813408731807142
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A355100 (n + 1) : ℚ) / (A004277 (n + 1) : ℚ)

end

end A355083.P9677813408731807142

/-! ## A355083.P17789848824175282917

`A355100(n+1)/A005843(n+1)`
-/

namespace A355083.P17789848824175282917
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A355100 (n + 1) : ℚ) / (A005843 (n + 1) : ℚ)

end

end A355083.P17789848824175282917

/-! ## A355083.P2374508004131208527

`A355100(n+1)/A265369(A265369(2*(n+1)))`
-/

namespace A355083.P2374508004131208527
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A355100 (n + 1) : ℚ) / (A265369 (A265369 (2 * (n + 1))).toNat : ℚ)

end

end A355083.P2374508004131208527

/-!
# A355084: E.g.f. A(x) satisfies A(x) = 1 + log(1+x) * A(2*x).

The programs for A355084, there is no canonical definition to state claims against.
-/

/-! ## A355084.P5585590458827856248

`A155043(∑[n]^n)`
-/

namespace A355084.P5585590458827856248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155043 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ n)

end

end A355084.P5585590458827856248

/-!
# A355085: E.g.f. A(x) satisfies A(x) = 1 + log(1+x) * A(3*x).

The programs for A355085, there is no canonical definition to state claims against.
-/

/-! ## A355085.P4093968507533911769

`A347796(A000142(n))*A364747(n)`
-/

namespace A355085.P4093968507533911769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347796 (A000142 n).toNat * A364747 n

end

end A355085.P4093968507533911769

/-!
# A355086: E.g.f. A(x) satisfies A(x) = 1 - log(1-x) * A(2*x).

The programs for A355086, there is no canonical definition to state claims against.
-/

/-! ## A355086.P1390487231665268790

`A337836(n*a(n-3))` with `a(0)=1, a(1)=1, a(2)=5`
-/

namespace A355086.P1390487231665268790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 5] fun n a =>
  A337836 ((n : ℤ) * a (n - 3)).toNat

end

end A355086.P1390487231665268790

/-!
# A355089: Number of parity-alternating permutations of [n] avoiding the pattern 123.

The programs for A355089, there is no canonical definition to state claims against.
-/

/-! ## A355089.P9617316879847597927

`A020951(A041559(n+1))`
-/

namespace A355089.P9617316879847597927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020951 (A041559 (n + 1)).toNat

end

end A355089.P9617316879847597927

/-! ## A355089.P11120157558359807634

`A299537(A264759(n+3))`
-/

namespace A355089.P11120157558359807634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299537 (A264759 (n + 3)).toNat

end

end A355089.P11120157558359807634

/-! ## A355089.P17182390443173910203

`A319628(lcm(n, A002265(n)))`
-/

namespace A355089.P17182390443173910203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319628 (Int.lcm (n : ℤ) (A002265 n))

end

end A355089.P17182390443173910203

/-! ## A355089.P7762441837356223303

`A263998(C(A008747(n), n))`
-/

namespace A355089.P7762441837356223303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263998 (Nat.choose (A008747 n).toNat n)

end

end A355089.P7762441837356223303

/-! ## A355089.P1306369247634976428

`A319628(n*A264595(2*n))`
-/

namespace A355089.P1306369247634976428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319628 ((n : ℤ) * A264595 (2 * n)).toNat

end

end A355089.P1306369247634976428

/-!
# A355090: Square array A(n, k), n >= 0, k > 0, read by antidiagonals upwards; A(n, k) is the unique m such that n/k = fusc(m)/fusc(m+1) (where fusc is Stern's diatomic series A002487).

The programs for A355090, there is no canonical definition to state claims against.
-/

/-! ## A355090.P1154250005029958809

`A173787(n)%A051882(A329605(n+1))`
-/

namespace A355090.P1154250005029958809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A173787 n) (A051882 (A329605 (n + 1)).toNat)

end

end A355090.P1154250005029958809

/-!
# A355092: E.g.f. A(x) satisfies A(x) = 1 + 3 * (exp(x) - 1) * A(exp(x) - 1).

The programs for A355092, there is no canonical definition to state claims against.
-/

/-! ## A355092.P10107413146394532972

`∏{p}[A355101(A355159(n)), #]`
-/

namespace A355092.P10107413146394532972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355101 (A355159 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A355092.P10107413146394532972

/-!
# A355093: E.g.f. A(x) satisfies A(x) = 1 + 2 * (1 - exp(-x)) * A(1 - exp(-x)).

The programs for A355093, there is no canonical definition to state claims against.
-/

/-! ## A355093.P4938485734219244402

`A355102(n+1)/(2*(n+1))`
-/

namespace A355093.P4938485734219244402
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A355102 (n + 1) : ℚ) / (2 * (n + 1) : ℚ)

end

end A355093.P4938485734219244402

/-!
# A355094: E.g.f. A(x) satisfies A(x) = 1 + 3 * (1 - exp(-x)) * A(1 - exp(-x)).

The programs for A355094, there is no canonical definition to state claims against.
-/

/-! ## A355094.P3608558331770145909

`A355103(n+1)/(3*(n+1))`
-/

namespace A355094.P3608558331770145909
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A355103 (n + 1) : ℚ) / (3 * (n + 1) : ℚ)

end

end A355094.P3608558331770145909

/-!
# A355096: E.g.f. A(x) satisfies A(x) = 1 + 2 * log(1+x) * A(log(1+x)).

The programs for A355096, there is no canonical definition to state claims against.
-/

/-! ## A355096.P14218190604373698739

`A355104(n+1)/A004277(n+1)`
-/

namespace A355096.P14218190604373698739
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A355104 (n + 1) : ℚ) / (A004277 (n + 1) : ℚ)

end

end A355096.P14218190604373698739

/-! ## A355096.P13667824939517051063

`A355104(n+1)/A000005(A355118(3*n+11))`
-/

namespace A355096.P13667824939517051063
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A355104 (n + 1) : ℚ) / (A000005 (A355118 (3 * n + 11)).toNat : ℚ)

end

end A355096.P13667824939517051063

/-!
# A355097: E.g.f. A(x) satisfies A(x) = 1 + 3 * log(1+x) * A(log(1+x)).

The programs for A355097, there is no canonical definition to state claims against.
-/

/-! ## A355097.P11389985868593515506

`A355105(n+1)/(3*(n+1))`
-/

namespace A355097.P11389985868593515506
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A355105 (n + 1) : ℚ) / (3 * (n + 1) : ℚ)

end

end A355097.P11389985868593515506

/-!
# A355098: E.g.f. A(x) satisfies A(x) = 1 - 2 * log(1-x) * A(-log(1-x)).

The programs for A355098, there is no canonical definition to state claims against.
-/

/-! ## A355098.P5661922531639126180

`A355106(n+1)/A004277(n+1)`
-/

namespace A355098.P5661922531639126180
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A355106 (n + 1) : ℚ) / (A004277 (n + 1) : ℚ)

end

end A355098.P5661922531639126180

/-!
# A355099: E.g.f. A(x) satisfies A(x) = 1 - 3 * log(1-x) * A(-log(1-x)).

The programs for A355099, there is no canonical definition to state claims against.
-/

/-! ## A355099.P3331354521187738120

`A355107(n+1)/(3*(n+1))`
-/

namespace A355099.P3331354521187738120
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A355107 (n + 1) : ℚ) / (3 * (n + 1) : ℚ)

end

end A355099.P3331354521187738120

