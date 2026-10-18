import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C027
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C035
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
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
# A358100: a(n) is the smallest integer that has exactly n divisors whose decimal digits are in strictly decreasing order.

The programs for A358100, there is no canonical definition to state claims against.
-/

/-! ## A358100.P3585291934239372030

`record[A238745(A008804(n))]`
-/

namespace A358100.P3585291934239372030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238745 (A008804 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A358100.P3585291934239372030

/-! ## A358100.P6889552684364948002

`A000005(∏[A290585(n+1)])`
-/

namespace A358100.P6889552684364948002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290585 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A358100.P6889552684364948002

/-! ## A358100.P3230956686934083484

`A000005(∏[A178244(2*n)])`
-/

namespace A358100.P3230956686934083484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178244 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A358100.P3230956686934083484

/-! ## A358100.P12405883489376078921

`A000005(∏[A000120(∑{d}[n+1, #^3])])`
-/

namespace A358100.P12405883489376078921
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (∑ d ∈ Nat.divisors (f2 n), d ^ 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A358100.P12405883489376078921

/-! ## A358100.P4500981447453979453

`A030066(A056336(n+1)+A011971(n))`
-/

namespace A358100.P4500981447453979453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030066 (A056336 (n + 1) + A011971 n).toNat

end

end A358100.P4500981447453979453

/-!
# A358101: Positions of records in A358099, i.e., integers whose number of divisors whose decimal digits are in strictly decreasing order sets a new record.

The programs for A358101, there is no canonical definition to state claims against.
-/

/-! ## A358101.P6963564989022459937

`A358100(record[A358099(n+1)])`
-/

namespace A358101.P6963564989022459937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358099 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358100 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A358101.P6963564989022459937

/-! ## A358101.P6566417065512826988

`∑[A322483(∏[∑{d}[n+1, #*#%2]])]`
-/

namespace A358101.P6566417065512826988
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n), d * (d % 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322483 (∏ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A358101.P6566417065512826988

/-! ## A358101.P8322003717613657127

`A271647(A259393(n))`
-/

namespace A358101.P8322003717613657127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271647 (A259393 n).toNat

end

end A358101.P8322003717613657127

/-!
# A358103: Quotient of the n-th divisible pair, where pairs are ordered by Heinz number. Quotient of prime indices of A318990(n).

The programs for A358103, there is no canonical definition to state claims against.
-/

/-! ## A358103.P10948901139618803750

`A358104(n+1)/A358105(n+1)`
-/

namespace A358103.P10948901139618803750
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A358104 (n + 1) : ℚ) / (A358105 (n + 1) : ℚ)

end

end A358103.P10948901139618803750

/-! ## A358103.P1530609087905734111

`A316431(A318990(n+1))`
-/

namespace A358103.P1530609087905734111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316431 (A318990 (n + 1)).toNat

end

end A358103.P1530609087905734111

/-! ## A358103.P5487082223431530716

`A358104(n+1)/A289508(A318990(n+1))`
-/

namespace A358103.P5487082223431530716
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A358104 (n + 1) : ℚ) / (A289508 (A318990 (n + 1)).toNat : ℚ)

end

end A358103.P5487082223431530716

/-! ## A358103.P6144410349787202505

`A326839(A318990(n+1))-A204160(2*(n+2))`
-/

namespace A358103.P6144410349787202505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326839 (A318990 (n + 1)).toNat - A204160 (2 * (n + 2))

end

end A358103.P6144410349787202505

/-! ## A358103.P11634797684440972860

`A326839(A318990(n+1))-A326057(3*n+2)`
-/

namespace A358103.P11634797684440972860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326839 (A318990 (n + 1)).toNat - A326057 (3 * n + 2)

end

end A358103.P11634797684440972860

/-!
# A358104: Unreduced numerator of the n-th divisible pair, where pairs are ordered by Heinz number. Greater prime index of A318990(n).

The programs for A358104, there is no canonical definition to state claims against.
-/

/-! ## A358104.P17981968945586996834

`A061395(A318990(n+1))`
-/

namespace A358104.P17981968945586996834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A318990 (n + 1)).toNat

end

end A358104.P17981968945586996834

/-! ## A358104.P4007251514128767336

`A290103(2*A318990(n+1))`
-/

namespace A358104.P4007251514128767336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290103 (2 * A318990 (n + 1)).toNat

end

end A358104.P4007251514128767336

/-! ## A358104.P11858655254830040568

`A316431(2*A318990(n+1))`
-/

namespace A358104.P11858655254830040568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316431 (2 * A318990 (n + 1)).toNat

end

end A358104.P11858655254830040568

/-! ## A358104.P7693948296054758526

`A065770(∏{p}[A318990(n+1), #])`
-/

namespace A358104.P7693948296054758526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318990 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065770 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A358104.P7693948296054758526

/-! ## A358104.P6213677782733271836

`A358103(n+1)*A358105(n+1)`
-/

namespace A358104.P6213677782733271836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358103 (n + 1) * A358105 (n + 1)

end

end A358104.P6213677782733271836

/-! ## A358104.P10150348582625853361

`A316431(A318990(n+1)+A318990(n+1))`
-/

namespace A358104.P10150348582625853361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316431 (A318990 (n + 1) + A318990 (n + 1)).toNat

end

end A358104.P10150348582625853361

/-! ## A358104.P17480899829738120253

`A056239(A318990(n+1))-A358105(n+1)`
-/

namespace A358104.P17480899829738120253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A318990 (n + 1)).toNat - A358105 (n + 1)

end

end A358104.P17480899829738120253

/-! ## A358104.P12817051766681357458

`A289508(A318990(n+1))*A358103(n+1)`
-/

namespace A358104.P12817051766681357458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289508 (A318990 (n + 1)).toNat * A358103 (n + 1)

end

end A358104.P12817051766681357458

/-!
# A358105: Unreduced denominator of the n-th divisible pair, where pairs are ordered by Heinz number. Lesser prime index of A318990(n).

The programs for A358105, there is no canonical definition to state claims against.
-/

/-! ## A358105.P3283453696653724382

`A055396(A318990(n+1))`
-/

namespace A358105.P3283453696653724382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A318990 (n + 1)).toNat

end

end A358105.P3283453696653724382

/-! ## A358105.P8769184039199890324

`A289508(∏{p}[A318990(n+1), #])`
-/

namespace A358105.P8769184039199890324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318990 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289508 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A358105.P8769184039199890324

/-! ## A358105.P6321625510641589773

`A289508(and(-1, A318990(n+1)))`
-/

namespace A358105.P6321625510641589773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289508 (Int.land (-1) (A318990 (n + 1))).toNat

end

end A358105.P6321625510641589773

/-! ## A358105.P13678206502255555105

`A289508(ceil(acot(n))*A318990(n+1))`
-/

namespace A358105.P13678206502255555105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289508 (⌈SequenceMachineLib.acot (n : ℝ)⌉ * A318990 (n + 1)).toNat

end

end A358105.P13678206502255555105

/-! ## A358105.P16298341933194116077

`A289508(A318990(n+1)/ceil(acot(n)))`
-/

namespace A358105.P16298341933194116077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289508 (SequenceMachineLib.roundAway ((A318990 (n + 1) : ℚ) / (⌈SequenceMachineLib.acot (n : ℝ)⌉ : ℚ))).toNat

end

end A358105.P16298341933194116077

/-! ## A358105.P12573682103265582156

`A289508(A318990(n+1)^ceil(acot(n)))`
-/

namespace A358105.P12573682103265582156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289508 (SequenceMachineLib.roundAway ((A318990 (n + 1) : ℚ) ^ (⌈SequenceMachineLib.acot (n : ℝ)⌉ : ℤ))).toNat

end

end A358105.P12573682103265582156

/-! ## A358105.P11274058062630288839

`A358104(n+1)/A358103(n+1)`
-/

namespace A358105.P11274058062630288839
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A358104 (n + 1) : ℚ) / (A358103 (n + 1) : ℚ)

end

end A358105.P11274058062630288839

/-!
# A358106: Quotient of the n-th divisible pair, where pairs are ordered first by sum and then by denominator.

The programs for A358106, there is no canonical definition to state claims against.
-/

/-! ## A358106.P16987585187024519225

`A208460(n+2)/A027751(n+2)`
-/

namespace A358106.P16987585187024519225
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208460 (n + 2) : ℚ) / (A027751 (n + 2) : ℚ)

end

end A358106.P16987585187024519225

/-! ## A358106.P1344130577806404669

`A025581(eq[0, A307079(n)])`
-/

namespace A358106.P1344130577806404669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A358106.P1344130577806404669

/-! ## A358106.P5195720836972233377

`A025581(eq[1, A051126(n+1)])`
-/

namespace A358106.P5195720836972233377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051126 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A358106.P5195720836972233377

/-! ## A358106.P18320811506782483907

`A004736(lt[1, A127094(n+1)]+1)-1`
-/

namespace A358106.P18320811506782483907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127094 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1) - 1

end

end A358106.P18320811506782483907

/-! ## A358106.P6616379135946216906

`A113881(eq[n+1, A286101(n+1)]+1)`
-/

namespace A358106.P6616379135946216906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286101 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113881 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A358106.P6616379135946216906

/-! ## A358106.P1438774534309676422

`A208460(n+2)/gcd(A136181(n+2), A208460(n+2))`
-/

namespace A358106.P1438774534309676422
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208460 (n + 2) : ℚ) / (Int.gcd (A136181 (n + 2)) (A208460 (n + 2)) : ℚ)

end

end A358106.P1438774534309676422

/-!
# A358107: Number of unlabeled trees covering 2n nodes, n+1 of which are leaves.

The programs for A358107, there is no canonical definition to state claims against.
-/

/-! ## A358107.P8035833016654281629

`A055290(∑[4*n]+2)`
-/

namespace A358107.P8035833016654281629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055290 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A358107.P8035833016654281629

/-! ## A358107.P5200494396705383560

`A165489(n+1)+A052123(A261919(n))`
-/

namespace A358107.P5200494396705383560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165489 (n + 1) + A052123 (A261919 n).toNat

end

end A358107.P5200494396705383560

/-!
# A358110: Indices of the harmonic numbers in the Stern-Brocot sequence (A002487).

The programs for A358110, there is no canonical definition to state claims against.
-/

/-! ## A358110.P2103076213679281198

`A002050(n)*A018426(A001349(n))`
-/

namespace A358110.P2103076213679281198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002050 n * A018426 (A001349 n).toNat

end

end A358110.P2103076213679281198

/-!
# A358113: a(n) = 16^n * Sum_{k=0..n} (-1)^k * binomial(1/2, k)^2 * binomial(n, k).

The programs for A358113, there is no canonical definition to state claims against.
-/

/-! ## A358113.P12611417196614609537

`A102376(n)*A358695(n)`
-/

namespace A358113.P12611417196614609537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102376 n * A358695 n

end

end A358113.P12611417196614609537

/-! ## A358113.P13987923023304957974

`A001316(n)²*A358695(n)`
-/

namespace A358113.P13987923023304957974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n ^ 2 * A358695 n

end

end A358113.P13987923023304957974

/-! ## A358113.P16406221459251928291

`A000302(A000120(n))*A358695(n)`
-/

namespace A358113.P16406221459251928291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 (A000120 n).toNat * A358695 n

end

end A358113.P16406221459251928291

/-!
# A358114: a(n) = [x^n] (16*x*(32*x - 3) + 1)^(-1/2).

The programs for A358114, the canonical program `A358114.P14032801722010541418` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A358114 has offset 0).

The definition of A358114 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A358114.P14289098302012034097

`4^n*A098410(n)`
-/

namespace A358114.P14289098302012034097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) * A098410 n

end

end A358114.P14289098302012034097

namespace A358114

/-- `4^n*A098410(n)` -/
def P14289098302012034097.Spec : Prop :=
  ∀ n, P14289098302012034097.a n = A358114 n

end A358114

/-! ## A358114.P14032801722010541418

`(24*(2*n-1)*a(n-1)-512*(n-1)*a(n-2))/n` with `a(0)=1, a(1)=24`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A358114

/-- `(24*(2*n-1)*a(n-1)-512*(n-1)*a(n-2))/n` -/
def P14032801722010541418.Spec : Prop :=
  ∀ n, P14032801722010541418.a n = (A358114 n : ℚ)

end A358114

/-! ## A358114.P8740170909320543128

`A098410(n)*A213173(2*n)`
-/

namespace A358114.P8740170909320543128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098410 n * A213173 (2 * n)

end

end A358114.P8740170909320543128

namespace A358114

/-- `A098410(n)*A213173(2*n)` -/
def P8740170909320543128.Spec : Prop :=
  ∀ n, P8740170909320543128.a n = A358114 n

end A358114

/-! ## A358114.P13419447938103331981

`A098410(n)*A141531(n+2)²`
-/

namespace A358114.P13419447938103331981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098410 n * A141531 (n + 2) ^ 2

end

end A358114.P13419447938103331981

namespace A358114

/-- `A098410(n)*A141531(n+2)²` -/
def P13419447938103331981.Spec : Prop :=
  ∀ n, P13419447938103331981.a n = A358114 n

end A358114

/-! ## A358114.P6384120357299024462

`A000079(n)²*A292627(A161680(n+8)-7)`
-/

namespace A358114.P6384120357299024462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n ^ 2 * A292627 (A161680 (n + 8) - 7).toNat

end

end A358114.P6384120357299024462

namespace A358114

/-- `A000079(n)²*A292627(A161680(n+8)-7)` -/
def P6384120357299024462.Spec : Prop :=
  ∀ n, P6384120357299024462.a n = A358114 n

end A358114

/-! ## A358114.P2483111874443508101

`A000079(2*n)*A292627(A161680(n+8)-7)`
-/

namespace A358114.P2483111874443508101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (2 * n) * A292627 (A161680 (n + 8) - 7).toNat

end

end A358114.P2483111874443508101

namespace A358114

/-- `A000079(2*n)*A292627(A161680(n+8)-7)` -/
def P2483111874443508101.Spec : Prop :=
  ∀ n, P2483111874443508101.a n = A358114 n

end A358114

/-!
# A358118: a(n) = Sum_{j=0..n} (-1)^j*binomial(2*n - j, j)*c(n - j + 1)^2, where c(n) is the n-th Catalan number.

The programs for A358118, there is no canonical definition to state claims against.
-/

/-! ## A358118.P4348222773002276179

`A358119(n)-A187254(n)`
-/

namespace A358118.P4348222773002276179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358119 n - A187254 n

end

end A358118.P4348222773002276179

/-! ## A358118.P11656798281046489277

`A358119(n)-A187253(n*Δ[n²])`
-/

namespace A358118.P11656798281046489277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358119 n - A187253 ((n : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A358118.P11656798281046489277

/-!
# A358119: a(n) = Sum_{j=0..n} (-1)^j*binomial(2*n - j, j)*c(n - j)*c(n - j + 2), where c(n) is the n-th Catalan number.

The programs for A358119, there is no canonical definition to state claims against.
-/

/-! ## A358119.P6537245837213834641

`A358118(n)+A187254(n)`
-/

namespace A358119.P6537245837213834641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358118 n + A187254 n

end

end A358119.P6537245837213834641

/-! ## A358119.P951262026464747620

`A358118(n)+A187253(C(Δ[n²], 2))`
-/

namespace A358119.P951262026464747620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358118 n + A187253 (Nat.choose ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat 2)

end

end A358119.P951262026464747620

/-! ## A358119.P1973557565160001836

`A358118(n)+A187253(n*Δ[n²])`
-/

namespace A358119.P1973557565160001836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358118 n + A187253 ((n : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A358119.P1973557565160001836

/-!
# A358120: Partial inventory of positions as an irregular table; rows 1 and 2 contain 1, for n > 2, row n contains the 1-based positions of 1's, followed by the positions of 2's, 3's, etc. in rows n-1 and n-2 flattened.

The programs for A358120, there is no canonical definition to state claims against.
-/

/-! ## A358120.P1094257508922651534

`A358143(n+2)-A087172(n+1)`
-/

namespace A358120.P1094257508922651534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358143 (n + 2) - A087172 (n + 1)

end

end A358120.P1094257508922651534

/-! ## A358120.P6251332846516305080

`A358143(n+2)-A000045(∑[A010056(n+1)]+1)`
-/

namespace A358120.P6251332846516305080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010056 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358143 (n + 2) - A000045 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A358120.P6251332846516305080

/-! ## A358120.P13908122713086833762

`A358143(n+2)-A000045(A131234(n+2))`
-/

namespace A358120.P13908122713086833762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358143 (n + 2) - A000045 (A131234 (n + 2)).toNat

end

end A358120.P13908122713086833762

/-! ## A358120.P739927515847901638

`∏{e}[A375127(A358377(n+1)), #]`
-/

namespace A358120.P739927515847901638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375127 (A358377 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A358120.P739927515847901638

/-! ## A358120.P17060904335888922442

`A250007(A048704(n+3)²)`
-/

namespace A358120.P17060904335888922442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250007 (A048704 (n + 3) ^ 2).toNat

end

end A358120.P17060904335888922442

/-!
# A358122: Distinct values of A358086, in order of appearance.

The programs for A358122, there is no canonical definition to state claims against.
-/

/-! ## A358122.P11653816651829144255

`A215366(n)-A086078(A296776(n))`
-/

namespace A358122.P11653816651829144255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215366 n - A086078 (A296776 n).toNat

end

end A358122.P11653816651829144255

/-! ## A358122.P2639773016857376447

`A334433(n)-A102683(A367462(n))`
-/

namespace A358122.P2639773016857376447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334433 n - A102683 (A367462 n).toNat

end

end A358122.P2639773016857376447

/-!
# A358125: Triangle read by rows: T(n, k) = 2^n - 2^(n-k-1) - 2^k, 0 <= k <= n-1.

The programs for A358125, there is no canonical definition to state claims against.
-/

/-! ## A358125.P873135518278599766

`floor(A143088(n)/2)`
-/

namespace A358125.P873135518278599766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A143088 n : ℚ) / 2⌋

end

end A358125.P873135518278599766

/-! ## A358125.P8711841212618983494

`∏[char[∑[n]]+1]-(A131816(n)+1)`
-/

namespace A358125.P8711841212618983494
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (A131816 n + 1)

end

end A358125.P8711841212618983494

/-! ## A358125.P9104003776989090443

`∏[char[∑[n+1]]+1]-A176224(n)`
-/

namespace A358125.P9104003776989090443
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A176224 n

end

end A358125.P9104003776989090443

/-! ## A358125.P15670332057334499982

`2^(comp[C(n, 2)]-(n+1))-A271709(n)`
-/

namespace A358125.P15670332057334499982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n + 1 : ℤ) : ℤ) - (A271709 n : ℚ)

end

end A358125.P15670332057334499982

/-! ## A358125.P13794673929579127159

`A130328(n)-2^(C(comp[∑[n]]-n, 2)-(n+1))`
-/

namespace A358125.P13794673929579127159
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130328 n : ℚ) - (2 : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ) : ℤ)

end

end A358125.P13794673929579127159

/-! ## A358125.P3596063520303445046

`A004524(A143088(n))`
-/

namespace A358125.P3596063520303445046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A143088 n).toNat

end

end A358125.P3596063520303445046

/-! ## A358125.P15645607603445594877

`A264596(A089633(n))`
-/

namespace A358125.P15645607603445594877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264596 (A089633 n).toNat

end

end A358125.P15645607603445594877

/-! ## A358125.P18245719568514644029

`A130328(n)-A130321(n)`
-/

namespace A358125.P18245719568514644029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130328 n - A130321 n

end

end A358125.P18245719568514644029

/-! ## A358125.P11347862724879786283

`A140513(n)-A271709(n)`
-/

namespace A358125.P11347862724879786283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140513 n - A271709 n

end

end A358125.P11347862724879786283

/-! ## A358125.P13187099136919562593

`A130328(n)-sqrt(A262616(n))`
-/

namespace A358125.P13187099136919562593
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A130328 n : ℝ) - Real.sqrt (A262616 n : ℝ)

end

end A358125.P13187099136919562593

/-!
# A358126: Replace 2^k in binary expansion of n with 2^(2^k).

The programs for A358126, the canonical program `A358126.P18184850716581158338` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A358126 has offset 0).

The definition of A358126 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A358126.P18184850716581158338

`2*A253317(n+1)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A358126

/-- `2*A253317(n+1)` -/
def P18184850716581158338.Spec : Prop :=
  ∀ n, P18184850716581158338.a n = A358126 n

theorem P18184850716581158338.correct : P18184850716581158338.Spec := by
  intro n
  simp only [A358126]

end A358126

/-! ## A358126.P17964151258977989381

`a(n-A053644(n))+2^A053644(n)` with `a(0)=0`
-/

namespace A358126.P17964151258977989381
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  a ((n : ℤ) - A053644 n).toNat + (2 : ℚ) ^ (A053644 n : ℤ)

end

end A358126.P17964151258977989381

namespace A358126

/-- `a(n-A053644(n))+2^A053644(n)` -/
def P17964151258977989381.Spec : Prop :=
  ∀ n, P17964151258977989381.a n = (A358126 n : ℚ)

end A358126

/-! ## A358126.P10898297725859518706

`A253317(A000027(n+1))+A253317(n+1)`
-/

namespace A358126.P10898297725859518706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253317 (A000027 (n + 1)).toNat + A253317 (n + 1)

end

end A358126.P10898297725859518706

namespace A358126

/-- `A253317(A000027(n+1))+A253317(n+1)` -/
def P10898297725859518706.Spec : Prop :=
  ∀ n, P10898297725859518706.a n = A358126 n

end A358126

/-! ## A358126.P9207159645950545602

`∑{p}[A019565(n), A225546(#)]`
-/

namespace A358126.P9207159645950545602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A225546 p

end

end A358126.P9207159645950545602

namespace A358126

/-- `∑{p}[A019565(n), A225546(#)]` -/
def P9207159645950545602.Spec : Prop :=
  ∀ n, P9207159645950545602.a n = A358126 n

end A358126

/-! ## A358126.P7512933536705072272

`2*∑{p}[A019565(n), A059884(#)]`
-/

namespace A358126.P7512933536705072272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ p ∈ Nat.primeFactors (f1 n).natAbs, A059884 p)

end

end A358126.P7512933536705072272

namespace A358126

/-- `2*∑{p}[A019565(n), A059884(#)]` -/
def P7512933536705072272.Spec : Prop :=
  ∀ n, P7512933536705072272.a n = A358126 n

end A358126

/-! ## A358126.P413917657635329345

`2*∑{p}[A019565(n), A331312(#)]`
-/

namespace A358126.P413917657635329345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ p ∈ Nat.primeFactors (f1 n).natAbs, A331312 p)

end

end A358126.P413917657635329345

namespace A358126

/-- `2*∑{p}[A019565(n), A331312(#)]` -/
def P413917657635329345.Spec : Prop :=
  ∀ n, P413917657635329345.a n = A358126 n

end A358126

/-! ## A358126.P6842086823666894551

`2*∑{p}[A325094(n), A048675(#)]`
-/

namespace A358126.P6842086823666894551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325094 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ p ∈ Nat.primeFactors (f1 n).natAbs, A048675 p)

end

end A358126.P6842086823666894551

namespace A358126

/-- `2*∑{p}[A325094(n), A048675(#)]` -/
def P6842086823666894551.Spec : Prop :=
  ∀ n, P6842086823666894551.a n = A358126 n

end A358126

/-! ## A358126.P12309684080114874525

`2*∑{p}[A325094(n), A285330(#)]`
-/

namespace A358126.P12309684080114874525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325094 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ p ∈ Nat.primeFactors (f1 n).natAbs, A285330 p)

end

end A358126.P12309684080114874525

namespace A358126

/-- `2*∑{p}[A325094(n), A285330(#)]` -/
def P12309684080114874525.Spec : Prop :=
  ∀ n, P12309684080114874525.a n = A358126 n

end A358126

/-!
# A358130: Indices k such that A358128(k) is a square.

The programs for A358130, there is no canonical definition to state claims against.
-/

/-! ## A358130.P3659545867642071821

`eq[A219311(n), A259776(A003961(n+4))]`
-/

namespace A358130.P3659545867642071821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219311 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259776 (A003961 (n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A358130.P3659545867642071821

/-! ## A358130.P2512467234123073349

`eq[A124766(2*(n+1)), A124770(A056239(n+1))]`
-/

namespace A358130.P2512467234123073349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124766 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124770 (A056239 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A358130.P2512467234123073349

/-!
# A358134: Triangle read by rows whose n-th row lists the partial sums of the n-th composition in standard order (row n of A066099).

The programs for A358134, there is no canonical definition to state claims against.
-/

/-! ## A358134.P3072925771646597452

`A097848(A272919(n+1)+A062383(n))`
-/

namespace A358134.P3072925771646597452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097848 (A272919 (n + 1) + A062383 n).toNat

end

end A358134.P3072925771646597452

/-! ## A358134.P17473897404972866980

`A064547(A212143(n+1)+A000837(2*n+3))`
-/

namespace A358134.P17473897404972866980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064547 (A212143 (n + 1) + A000837 (2 * n + 3)).toNat

end

end A358134.P17473897404972866980

/-! ## A358134.P13886081833696855724

`A001221(A243539(n+2)+A000079(n+3))`
-/

namespace A358134.P13886081833696855724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A243539 (n + 2) + A000079 (n + 3)).toNat

end

end A358134.P13886081833696855724

/-! ## A358134.P10666071241551199683

`A361477(A375024(3*(n+1))+A258712(n))`
-/

namespace A358134.P10666071241551199683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361477 (A375024 (3 * (n + 1)) + A258712 n).toNat

end

end A358134.P10666071241551199683

/-! ## A358134.P13511835354995238256

`A105551(A105551(3*(n+1))+A068443(n+1))`
-/

namespace A358134.P13511835354995238256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105551 (A105551 (3 * (n + 1)) + A068443 (n + 1)).toNat

end

end A358134.P13511835354995238256

/-!
# A358135: Difference of first and last parts of the n-th composition in standard order.

The programs for A358135, the canonical program `A358135.P163929003100023159` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A358135 has offset 1).

The definition of A358135 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065120, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A358135.P163929003100023159

`A001511(n+1)-A065120(n+1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A358135

/-- `A001511(n+1)-A065120(n+1)` -/
def P163929003100023159.Spec : Prop :=
  ∀ n, P163929003100023159.a n = A358135 (n + 1)

theorem P163929003100023159.correct : P163929003100023159.Spec := by
  intro n
  simp only [A358135, Nat.add_sub_cancel]

end A358135

/-! ## A358135.P7118374584011746424

`val(n+1, 2)-A290255(n+1)`
-/

namespace A358135.P7118374584011746424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (n + 1) 2 : ℤ) - A290255 (n + 1)

end

end A358135.P7118374584011746424

namespace A358135

/-- `val(n+1, 2)-A290255(n+1)` -/
def P7118374584011746424.Spec : Prop :=
  ∀ n, P7118374584011746424.a n = A358135 (n + 1)

end A358135

/-! ## A358135.P3321318319563872816

`A007814(n+1)-A290255(n+1)`
-/

namespace A358135.P3321318319563872816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1) - A290255 (n + 1)

end

end A358135.P3321318319563872816

namespace A358135

/-- `A007814(n+1)-A290255(n+1)` -/
def P3321318319563872816.Spec : Prop :=
  ∀ n, P3321318319563872816.a n = A358135 (n + 1)

end A358135

/-! ## A358135.P10048748177059654801

`A001222(or(n, n+1)-n)-A290255(n+1)`
-/

namespace A358135.P10048748177059654801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Nat.lor n (n + 1) - n) - A290255 (n + 1)

end

end A358135.P10048748177059654801

namespace A358135

/-- `A001222(or(n, n+1)-n)-A290255(n+1)` -/
def P10048748177059654801.Spec : Prop :=
  ∀ n, P10048748177059654801.a n = A358135 (n + 1)

end A358135

/-! ## A358135.P15250418091933522191

`A007814(n+1)-A007814(A304624(n+1))`
-/

namespace A358135.P15250418091933522191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1) - A007814 (A304624 (n + 1)).toNat

end

end A358135.P15250418091933522191

namespace A358135

/-- `A007814(n+1)-A007814(A304624(n+1))` -/
def P15250418091933522191.Spec : Prop :=
  ∀ n, P15250418091933522191.a n = A358135 (n + 1)

end A358135

/-! ## A358135.P13463440270171590683

`A135523(n+1)-A135523(A059893(n+1))`
-/

namespace A358135.P13463440270171590683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135523 (n + 1) - A135523 (A059893 (n + 1)).toNat

end

end A358135.P13463440270171590683

namespace A358135

/-- `A135523(n+1)-A135523(A059893(n+1))` -/
def P13463440270171590683.Spec : Prop :=
  ∀ n, P13463440270171590683.a n = A358135 (n + 1)

end A358135

/-! ## A358135.P3658767513107114198

`A135523(n+1)-A135523(A139708(n+1))`
-/

namespace A358135.P3658767513107114198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135523 (n + 1) - A135523 (A139708 (n + 1)).toNat

end

end A358135.P3658767513107114198

namespace A358135

/-- `A135523(n+1)-A135523(A139708(n+1))` -/
def P3658767513107114198.Spec : Prop :=
  ∀ n, P3658767513107114198.a n = A358135 (n + 1)

end A358135

/-! ## A358135.P7962988828916638856

`A007814(n+1)+1-A065120(n+1)`
-/

namespace A358135.P7962988828916638856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1) + 1 - A065120 (n + 1)

end

end A358135.P7962988828916638856

namespace A358135

/-- `A007814(n+1)+1-A065120(n+1)` -/
def P7962988828916638856.Spec : Prop :=
  ∀ n, P7962988828916638856.a n = A358135 (n + 1)

end A358135

/-! ## A358135.P18332682698007796941

`A005187(n+1)-(A065120(n+1)+A005187(n))`
-/

namespace A358135.P18332682698007796941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (n + 1) - (A065120 (n + 1) + A005187 n)

end

end A358135.P18332682698007796941

namespace A358135

/-- `A005187(n+1)-(A065120(n+1)+A005187(n))` -/
def P18332682698007796941.Spec : Prop :=
  ∀ n, P18332682698007796941.a n = A358135 (n + 1)

end A358135

/-! ## A358135.P1476698976487821256

`A228367(n+1)-(A065120(n+1)+A006519(n+1))`
-/

namespace A358135.P1476698976487821256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228367 (n + 1) - (A065120 (n + 1) + A006519 (n + 1))

end

end A358135.P1476698976487821256

namespace A358135

/-- `A228367(n+1)-(A065120(n+1)+A006519(n+1))` -/
def P1476698976487821256.Spec : Prop :=
  ∀ n, P1476698976487821256.a n = A358135 (n + 1)

end A358135

/-! ## A358135.P17227411268767580830

`A001511(n+1)-A001511(A059893(n+1))`
-/

namespace A358135.P17227411268767580830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1) - A001511 (A059893 (n + 1)).toNat

end

end A358135.P17227411268767580830

namespace A358135

/-- `A001511(n+1)-A001511(A059893(n+1))` -/
def P17227411268767580830.Spec : Prop :=
  ∀ n, P17227411268767580830.a n = A358135 (n + 1)

end A358135

/-! ## A358135.P5659526368741838397

`A007814(n+1)-A007814(A059893(n+1))`
-/

namespace A358135.P5659526368741838397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1) - A007814 (A059893 (n + 1)).toNat

end

end A358135.P5659526368741838397

namespace A358135

/-- `A007814(n+1)-A007814(A059893(n+1))` -/
def P5659526368741838397.Spec : Prop :=
  ∀ n, P5659526368741838397.a n = A358135 (n + 1)

end A358135

/-! ## A358135.P14620130099626067191

`A290255(A059893(n+1))-A290255(n+1)`
-/

namespace A358135.P14620130099626067191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290255 (A059893 (n + 1)).toNat - A290255 (n + 1)

end

end A358135.P14620130099626067191

namespace A358135

/-- `A290255(A059893(n+1))-A290255(n+1)` -/
def P14620130099626067191.Spec : Prop :=
  ∀ n, P14620130099626067191.a n = A358135 (n + 1)

end A358135

/-! ## A358135.P15688636421387865665

`A136480(2*n+1)-A136480(A341916(n+1))`
-/

namespace A358135.P15688636421387865665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136480 (2 * n + 1) - A136480 (A341916 (n + 1)).toNat

end

end A358135.P15688636421387865665

namespace A358135

/-- `A136480(2*n+1)-A136480(A341916(n+1))` -/
def P15688636421387865665.Spec : Prop :=
  ∀ n, P15688636421387865665.a n = A358135 (n + 1)

end A358135

/-! ## A358135.P16390166050996448554

`A065120(A341915(2*n+1))-A065120(n+1)`
-/

namespace A358135.P16390166050996448554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065120 (A341915 (2 * n + 1)).toNat - A065120 (n + 1)

end

end A358135.P16390166050996448554

namespace A358135

/-- `A065120(A341915(2*n+1))-A065120(n+1)` -/
def P16390166050996448554.Spec : Prop :=
  ∀ n, P16390166050996448554.a n = A358135 (n + 1)

end A358135

/-!
# A358136: Irregular triangle read by rows whose n-th row lists the partial sums of the prime indices of n (row n of A112798).

The programs for A358136, there is no canonical definition to state claims against.
-/

/-! ## A358136.P6632196949696082589

`A056239(A265110(n+2))`
-/

namespace A358136.P6632196949696082589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A265110 (n + 2)).toNat

end

end A358136.P6632196949696082589

/-! ## A358136.P16056663271122092442

`A346698(A265110(n+2)²)`
-/

namespace A358136.P16056663271122092442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346698 (A265110 (n + 2) ^ 2).toNat

end

end A358136.P16056663271122092442

/-!
# A358137: Heinz number of the partial sums of the prime indices of n.

The programs for A358137, there is no canonical definition to state claims against.
-/

/-! ## A358137.P4256795527344345981

`A329607(A181821(n+1))`
-/

namespace A358137.P4256795527344345981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329607 (A181821 (n + 1)).toNat

end

end A358137.P4256795527344345981

/-! ## A358137.P11283250101271049371

`A019565(A233249(n+1))`
-/

namespace A358137.P11283250101271049371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (A233249 (n + 1)).toNat

end

end A358137.P11283250101271049371

/-! ## A358137.P8866361786699783984

`A339809(A233249(n+1))-A057428(3*n+4)`
-/

namespace A358137.P8866361786699783984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339809 (A233249 (n + 1)).toNat - A057428 (3 * n + 4)

end

end A358137.P8866361786699783984

/-! ## A358137.P867231259317771103

`A243073(A181821(n+1)%A000043(n+1))`
-/

namespace A358137.P867231259317771103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243073 (Int.tmod (A181821 (n + 1)) (A000043 (n + 1))).toNat

end

end A358137.P867231259317771103

/-! ## A358137.P6064541816649685027

`A243073(A181821(n+1))%A004816(n+1)`
-/

namespace A358137.P6064541816649685027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A243073 (A181821 (n + 1)).toNat) (A004816 (n + 1))

end

end A358137.P6064541816649685027

/-!
# A358138: Difference between maximum and minimum part in the n-th composition in standard order.

The programs for A358138, there is no canonical definition to state claims against.
-/

/-! ## A358138.P10884977046135151837

`A333766(n+1)-A333768(n+1)`
-/

namespace A358138.P10884977046135151837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333766 (n + 1) - A333768 (n + 1)

end

end A358138.P10884977046135151837

/-! ## A358138.P4509875230899850481

`A062977(A057335(n+1))`
-/

namespace A358138.P4509875230899850481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062977 (A057335 (n + 1)).toNat

end

end A358138.P4509875230899850481

/-! ## A358138.P6507244278046848460

`A358135(A233569(n+1))`
-/

namespace A358138.P6507244278046848460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358135 (A233569 (n + 1)).toNat

end

end A358138.P6507244278046848460

/-! ## A358138.P6296584568155670771

`A243055(A333219(n+2))`
-/

namespace A358138.P6296584568155670771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243055 (A333219 (n + 2)).toNat

end

end A358138.P6296584568155670771

/-! ## A358138.P3907000638767125396

`A243055(A358506(n+2))`
-/

namespace A358138.P3907000638767125396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243055 (A358506 (n + 2)).toNat

end

end A358138.P3907000638767125396

/-! ## A358138.P14879569868477414141

`A243056(A333219(n+2)^2)`
-/

namespace A358138.P14879569868477414141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243056 (A333219 (n + 2) ^ 2).toNat

end

end A358138.P14879569868477414141

/-! ## A358138.P12655254787379480034

`A087117(n+1)-A333767(n+1)`
-/

namespace A358138.P12655254787379480034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 (n + 1) - A333767 (n + 1)

end

end A358138.P12655254787379480034

/-! ## A358138.P12323004413744857366

`A062977(A334031(n+1))`
-/

namespace A358138.P12323004413744857366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062977 (A334031 (n + 1)).toNat

end

end A358138.P12323004413744857366

/-! ## A358138.P11526031419495391261

`A175599(A006068(n+1))`
-/

namespace A358138.P11526031419495391261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175599 (A006068 (n + 1)).toNat

end

end A358138.P11526031419495391261

/-! ## A358138.P12751483729278660878

`A175599(A341916(n+1))`
-/

namespace A358138.P12751483729278660878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175599 (A341916 (n + 1)).toNat

end

end A358138.P12751483729278660878

/-!
# A358144: Number of strict closure operators on a set of n elements such that all pairs of distinct points can be separated by clopen sets.

The programs for A358144, there is no canonical definition to state claims against.
-/

/-! ## A358144.P18381378190163500632

`A206244(n!²)`
-/

namespace A358144.P18381378190163500632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206244 (Nat.factorial n ^ 2)

end

end A358144.P18381378190163500632

/-!
# A358145: a(n) = Sum_{k=0..n} binomial(n*k,k) * binomial(n*(n-k),n-k).

The programs for A358145, there is no canonical definition to state claims against.
-/

/-! ## A358145.P15182982111833059483

`A358050(∑[4*n])`
-/

namespace A358145.P15182982111833059483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358050 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A358145.P15182982111833059483

/-! ## A358145.P3544043225355464680

`record[A003982(n)*A358050(n)]`
-/

namespace A358145.P3544043225355464680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A358050 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A358145.P3544043225355464680

/-!
# A358146: Square array T(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where T(n,k) = Sum_{j=0..n} binomial(k*j,j).

The programs for A358146, there is no canonical definition to state claims against.
-/

/-! ## A358146.P9875322558797065446

`A099597(n)+A056847(A185284(2*n))`
-/

namespace A358146.P9875322558797065446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099597 n + A056847 (A185284 (2 * n)).toNat

end

end A358146.P9875322558797065446

/-!
# A358150: Squares visited by a knight moving on a square-spiral numbered board where the knight moves to the smallest numbered unvisited square and where the square number is more than the number of currently visited squares.

The programs for A358150, there is no canonical definition to state claims against.
-/

/-! ## A358150.P16388779701269993716

`lcm(A054390(A149323(n)), A362027(n+1))`
-/

namespace A358150.P16388779701269993716
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A054390 (A149323 n).toNat) (A362027 (n + 1))

end

end A358150.P16388779701269993716

/-! ## A358150.P9841901959638842591

`C(A362027(n+1), A247306(A324407(n+1)))`
-/

namespace A358150.P9841901959638842591
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A362027 (n + 1)).toNat (A247306 (A324407 (n + 1)).toNat).toNat

end

end A358150.P9841901959638842591

/-!
# A358152: Number of strict closure operators on a set of n elements such that every point and every closed set not containing that point can be separated by clopen sets.

The programs for A358152, there is no canonical definition to state claims against.
-/

/-! ## A358152.P16453804504359978712

`A332577(n!+n)`
-/

namespace A358152.P16453804504359978712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332577 (Nat.factorial n + n)

end

end A358152.P16453804504359978712

/-!
# A358157: a(n) is the permanent of the n X n matrix M(n) that is defined by M[i,j] = floor(i*j/3).

The programs for A358157, there is no canonical definition to state claims against.
-/

/-! ## A358157.P17766342240797667493

`A303783(A305844(n))-Δ[A000041(n)]`
-/

namespace A358157.P17766342240797667493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303783 (A305844 n).toNat - (f1 (n + 1) - f1 n)

end

end A358157.P17766342240797667493

/-!
# A358159: a(n) is the permanent of the n X n matrix M(n) that is defined by M[i,j] = i*j - floor(i*j/3).

The programs for A358159, there is no canonical definition to state claims against.
-/

/-! ## A358159.P17460338859447217630

`A233276(A000108(n)*A156907(n))`
-/

namespace A358159.P17460338859447217630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233276 (A000108 n * A156907 n).toNat

end

end A358159.P17460338859447217630

/-!
# A358161: a(n) is the permanent of the n X n matrix M(n) that is defined by M[i,j] = ceiling(i*j/3).

The programs for A358161, there is no canonical definition to state claims against.
-/

/-! ## A358161.P10898752401726519252

`A282443(n!²)`
-/

namespace A358161.P10898752401726519252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282443 (Nat.factorial n ^ 2)

end

end A358161.P10898752401726519252

/-!
# A358163: a(n) is the permanent of the n X n matrix M(n) that is defined by M[i,j] = i*j - ceiling(i*j/3).

The programs for A358163, there is no canonical definition to state claims against.
-/

/-! ## A358163.P8071370518444810887

`A246970(A325851(n))-n%2`
-/

namespace A358163.P8071370518444810887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246970 (A325851 n).toNat - ((n % 2 : ℕ) : ℤ)

end

end A358163.P8071370518444810887

/-!
# A358165: Irregular triangular array read by rows. T(n,k) is the number of direct sum decompositions V_1 + V_2 + ... + V_m = GF(2)^n with the dimensions of the V_i corresponding to the k-th partition of n in canonical ordering, n >= 0, 1 <= k <= A000041(n).

The programs for A358165, there is no canonical definition to state claims against.
-/

/-! ## A358165.P2747334873902032464

`A081978(A027907(2*n+1)^A000700(n))`
-/

namespace A358165.P2747334873902032464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081978 (SequenceMachineLib.roundAway ((A027907 (2 * n + 1) : ℚ) ^ (A000700 n : ℤ))).toNat

end

end A358165.P2747334873902032464

/-!
# A358168: First n-digit number to occur in Van Eck's Sequence (A181391).

The programs for A358168, there is no canonical definition to state claims against.
-/

/-! ## A358168.P16062892341638951890

`A181391(A358180(n+1))`
-/

namespace A358168.P16062892341638951890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181391 (A358180 (n + 1)).toNat

end

end A358168.P16062892341638951890

/-!
# A358169: Row n lists the first differences plus one of the prime indices of n with 1 prepended.

The programs for A358169, there is no canonical definition to state claims against.
-/

/-! ## A358169.P16654236204704290943

`A112798(n+2)+A112798(n+2)-A390308(n+2)`
-/

namespace A358169.P16654236204704290943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112798 (n + 2) + (A112798 (n + 2) - A390308 (n + 2))

end

end A358169.P16654236204704290943

/-! ## A358169.P3465963258722061647

`A112798(n+2)-A010054(A345808(2*(n+2)))`
-/

namespace A358169.P3465963258722061647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112798 (n + 2) - A010054 (A345808 (2 * (n + 2))).toNat

end

end A358169.P3465963258722061647

/-! ## A358169.P4715326213006277682

`A112798(n+2)+A010815(A267510(2*n+1))`
-/

namespace A358169.P4715326213006277682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112798 (n + 2) + A010815 (A267510 (2 * n + 1)).toNat

end

end A358169.P4715326213006277682

/-! ## A358169.P11647667251888152677

`A112798(n+2)+A030201(A122203(3*(n+1)))`
-/

namespace A358169.P11647667251888152677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112798 (n + 2) + A030201 (A122203 (3 * (n + 1))).toNat

end

end A358169.P11647667251888152677

/-!
# A358170: Heinz number of the partial sums of the n-th composition in standard order (A066099).

The programs for A358170, there is no canonical definition to state claims against.
-/

/-! ## A358170.P2967818930590113005

`A242415(A019565(n))`
-/

namespace A358170.P2967818930590113005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242415 (A019565 n).toNat

end

end A358170.P2967818930590113005

/-! ## A358170.P10227861100213753639

`A332462(A253565(n))`
-/

namespace A358170.P10227861100213753639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332462 (A253565 n).toNat

end

end A358170.P10227861100213753639

/-! ## A358170.P667626899905312859

`A302033(A341916(n))`
-/

namespace A358170.P667626899905312859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302033 (A341916 n).toNat

end

end A358170.P667626899905312859

/-! ## A358170.P12743662637600555925

`A329607(A334031(n))`
-/

namespace A358170.P12743662637600555925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329607 (A334031 n).toNat

end

end A358170.P12743662637600555925

/-! ## A358170.P7034020673809528511

`A242415(sqrt(A334110(n)))`
-/

namespace A358170.P7034020673809528511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242415 (SequenceMachineLib.roundAway (Real.sqrt (A334110 n : ℝ))).toNat

end

end A358170.P7034020673809528511

/-! ## A358170.P13201661877294234878

`A243057(A339809(n)+1)`
-/

namespace A358170.P13201661877294234878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243057 (A339809 n + 1).toNat

end

end A358170.P13201661877294234878

/-! ## A358170.P4977339006411042156

`A019565(A030109(Δ[n²]))`
-/

namespace A358170.P4977339006411042156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (A030109 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A358170.P4977339006411042156

/-! ## A358170.P10375465988650020326

`A242419(∏{p}[A019565(n), #])`
-/

namespace A358170.P10375465988650020326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242419 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A358170.P10375465988650020326

/-! ## A358170.P2741949205525830524

`A019565(A253566(A005940(n+1)))`
-/

namespace A358170.P2741949205525830524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (A253566 (A005940 (n + 1)).toNat).toNat

end

end A358170.P2741949205525830524

/-! ## A358170.P16502566827414288367

`A243057(A019565(n)/A107453(2*n+5))`
-/

namespace A358170.P16502566827414288367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243057 (SequenceMachineLib.roundAway ((A019565 n : ℚ) / (A107453 (2 * n + 5) : ℚ))).toNat

end

end A358170.P16502566827414288367

/-!
# A358171: The a(n)-th composition in standard order (A066099) is the first differences plus one of the prime indices of n (A112798).

The programs for A358171, there is no canonical definition to state claims against.
-/

/-! ## A358171.P3603291872794869719

`A156552(A358195(n+1))`
-/

namespace A358171.P3603291872794869719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (A358195 (n + 1)).toNat

end

end A358171.P3603291872794869719

/-! ## A358171.P13085620291903943279

`A030109(A322993(n+1)+A000007(n))`
-/

namespace A358171.P13085620291903943279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030109 (A322993 (n + 1) + A000007 n).toNat

end

end A358171.P13085620291903943279

/-! ## A358171.P10391681379309987634

`A030109(A322993(n+1)+A000038(n))`
-/

namespace A358171.P10391681379309987634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030109 (A322993 (n + 1) + A000038 n).toNat

end

end A358171.P10391681379309987634

/-! ## A358171.P13794590695306723761

`A253566(A305897(n+1)+A057428(n))`
-/

namespace A358171.P13794590695306723761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253566 (A305897 (n + 1) + A057428 n).toNat

end

end A358171.P13794590695306723761

/-! ## A358171.P6473755213065300075

`and(A253566(A003961(n+1)), A253566(n+1))`
-/

namespace A358171.P6473755213065300075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A253566 (A003961 (n + 1)).toNat) (A253566 (n + 1))

end

end A358171.P6473755213065300075

/-! ## A358171.P2450357700040471922

`and(A253566(A252463(n+1)), A253566(n+1))`
-/

namespace A358171.P2450357700040471922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A253566 (A252463 (n + 1)).toNat) (A253566 (n + 1))

end

end A358171.P2450357700040471922

/-! ## A358171.P5825916278194853503

`and(A253566(A285727(((n+1)%2+2)*(n+1))), A253566(n+1))`
-/

namespace A358171.P5825916278194853503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A253566 (A285727 (((n + 1) % 2 + 2) * (n + 1))).toNat) (A253566 (n + 1))

end

end A358171.P5825916278194853503

/-! ## A358171.P18041539211064538438

`A253564(n+1)-A006257(A253564(n+1))`
-/

namespace A358171.P18041539211064538438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253564 (n + 1) - A006257 (A253564 (n + 1)).toNat

end

end A358171.P18041539211064538438

/-!
# A358172: Triangle read by rows: if n has weakly increasing prime indices (a,b,...,y,z) then row n is (z-a+1, z-b+1, ..., z-y+1).

The programs for A358172, there is no canonical definition to state claims against.
-/

/-! ## A358172.P9153365962540113744

`gcd(A209203(n+4), A258036(A003366(n+1)))`
-/

namespace A358172.P9153365962540113744
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A209203 (n + 4)) (A258036 (A003366 (n + 1)).toNat)

end

end A358172.P9153365962540113744

/-! ## A358172.P8851024089674224736

`A066099(A007658(n+1)-A097032(n+1))`
-/

namespace A358172.P8851024089674224736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066099 (A007658 (n + 1) - A097032 (n + 1)).toNat

end

end A358172.P8851024089674224736

/-! ## A358172.P9887809174496859215

`A355536(n+2)+A333254(A005133(n+1))`
-/

namespace A358172.P9887809174496859215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355536 (n + 2) + A333254 (A005133 (n + 1)).toNat

end

end A358172.P9887809174496859215

/-! ## A358172.P7325196700451935743

`A355536(n+2)+A118914(A159920(n+3))`
-/

namespace A358172.P7325196700451935743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355536 (n + 2) + A118914 (A159920 (n + 3)).toNat

end

end A358172.P7325196700451935743

/-!
# A358173: First differences of A286708.

The programs for A358173, there is no canonical definition to state claims against.
-/

/-! ## A358173.P4396022365542264034

`Δ[∪[A363216(n+1), A363217(n+1)]]`
-/

namespace A358173.P4396022365542264034
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363216 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363217 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A358173.P4396022365542264034

/-! ## A358173.P752471978336120823

`Δ[∪[A052486(n+1), A131605(n+2)]]`
-/

namespace A358173.P752471978336120823
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052486 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131605 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A358173.P752471978336120823

/-! ## A358173.P17300492119464386428

`Δ[A286708(n+1)]`
-/

namespace A358173.P17300492119464386428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286708 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A358173.P17300492119464386428

/-! ## A358173.P6584900869675092596

`Δ[sqrt(A378768(n+1))]`
-/

namespace A358173.P6584900869675092596
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A378768 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A358173.P6584900869675092596

/-! ## A358173.P12271234193000981263

`A286708(n+2)-A286708(n+1)`
-/

namespace A358173.P12271234193000981263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286708 (n + 2) - A286708 (n + 1)

end

end A358173.P12271234193000981263

/-! ## A358173.P5118050207598381150

`Δ[∩[A001694(n+1), A036785(n+1)]]`
-/

namespace A358173.P5118050207598381150
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036785 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A358173.P5118050207598381150

/-! ## A358173.P10234785849976066099

`Δ[∩[A001694(n+1), A126706(n+1)]]`
-/

namespace A358173.P10234785849976066099
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126706 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A358173.P10234785849976066099

/-! ## A358173.P9671103843973586508

`Δ[record[A057521(A320632(n+1))]]`
-/

namespace A358173.P9671103843973586508
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057521 (A320632 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A358173.P9671103843973586508

/-!
# A358174: Smaller of a pair of numbers (m, m+1) such that both are products P of composite prime powers with omega(P) > 1.

The programs for A358174, there is no canonical definition to state claims against.
-/

/-! ## A358174.P2743839639924283193

`A060355(A397405(n+1))`
-/

namespace A358174.P2743839639924283193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060355 (A397405 (n + 1)).toNat

end

end A358174.P2743839639924283193

/-! ## A358174.P17147679937015287946

`A060355(A346131(n+3)%A114290(2*n+5))`
-/

namespace A358174.P17147679937015287946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060355 (Int.tmod (A346131 (n + 3)) (A114290 (2 * n + 5))).toNat

end

end A358174.P17147679937015287946

/-! ## A358174.P17217810252002604416

`A060355(eq[A121373(n)², A237817(n+1)])`
-/

namespace A358174.P17217810252002604416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237817 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060355 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A358174.P17217810252002604416

/-!
# A358176: a(1) = 1, a(2) = 2; for n > 2, a(n) is the smallest positive number not occurring earlier that shares a factor with sigma(a(n-1)).

The programs for A358176, there is no canonical definition to state claims against.
-/

/-! ## A358176.P289306748750195110

`A358201(n+1)+A331282(A127820(3*(n+1)))`
-/

namespace A358176.P289306748750195110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358201 (n + 1) + A331282 (A127820 (3 * (n + 1))).toNat

end

end A358176.P289306748750195110

/-! ## A358176.P9716060220242308834

`A358201(A000005(2^n))`
-/

namespace A358176.P9716060220242308834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358201 (A000005 (2 ^ n)).toNat

end

end A358176.P9716060220242308834

/-! ## A358176.P5647768548032444548

`A358201(n+1)^A323022(2^n)`
-/

namespace A358176.P5647768548032444548
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A358201 (n + 1) : ℚ) ^ (A323022 (2 ^ n) : ℤ)

end

end A358176.P5647768548032444548

/-! ## A358176.P9338460978817835176

`A358201(n+1)%Δ[A358170(3*n+2)]`
-/

namespace A358176.P9338460978817835176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358170 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A358201 (n + 1)) (f1 (n + 1) - f1 n)

end

end A358176.P9338460978817835176

/-! ## A358176.P7456791016919551310

`A358201(n+1)+A008437(A022169(n))`
-/

namespace A358176.P7456791016919551310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358201 (n + 1) + A008437 (A022169 n).toNat

end

end A358176.P7456791016919551310

/-!
# A358179: Prime numbers with prime indices in A333244.

The programs for A358179, the canonical program `A358179.P5604913156474970621` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A358179 has offset 1).

The definition of A358179 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A038580, A262275, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A358179.P5604913156474970621

`A038580(A262275(n+1))`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A358179

/-- `A038580(A262275(n+1))` -/
def P5604913156474970621.Spec : Prop :=
  ∀ n, P5604913156474970621.a n = A358179 (n + 1)

theorem P5604913156474970621.correct : P5604913156474970621.Spec := by
  intro n
  simp only [A358179, Nat.add_sub_cancel]

end A358179

/-! ## A358179.P6202580784052151664

`A006450(A333243(n+1))`
-/

namespace A358179.P6202580784052151664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (A333243 (n + 1)).toNat

end

end A358179.P6202580784052151664

namespace A358179

/-- `A006450(A333243(n+1))` -/
def P6202580784052151664.Spec : Prop :=
  ∀ n, P6202580784052151664.a n = A358179 (n + 1)

end A358179

/-! ## A358179.P14511128235582246665

`A049090(A333242(n+1))`
-/

namespace A358179.P14511128235582246665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049090 (A333242 (n + 1)).toNat

end

end A358179.P14511128235582246665

namespace A358179

/-- `A049090(A333242(n+1))` -/
def P14511128235582246665.Spec : Prop :=
  ∀ n, P14511128235582246665.a n = A358179 (n + 1)

end A358179

/-! ## A358179.P1269880375134325768

`A049203(A121543(n+1))`
-/

namespace A358179.P1269880375134325768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049203 (A121543 (n + 1)).toNat

end

end A358179.P1269880375134325768

namespace A358179

/-- `A049203(A121543(n+1))` -/
def P1269880375134325768.Spec : Prop :=
  ∀ n, P1269880375134325768.a n = A358179 (n + 1)

end A358179

/-! ## A358179.P14657205333582045386

`∩[A049090(n+1), A333243(n+1)]`
-/

namespace A358179.P14657205333582045386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333243 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A358179.P14657205333582045386

namespace A358179

/-- `∩[A049090(n+1), A333243(n+1)]` -/
def P14657205333582045386.Spec : Prop :=
  ∀ n, (P14657205333582045386.a n : ℤ) = A358179 (n + 1)

end A358179

/-!
# A358185: Coefficients of x^n/n! in the expansion of (1 - x)*log(1 - x).

The programs for A358185, there is no canonical definition to state claims against.
-/

/-! ## A358185.P5432322023024925034

`floor(n-atan(n))!-C(2, n²)`
-/

namespace A358185.P5432322023024925034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial ⌊(n : ℝ) - Real.arctan (n : ℝ)⌋.toNat : ℤ) - (Nat.choose 2 (n ^ 2) : ℤ)

end

end A358185.P5432322023024925034

/-! ## A358185.P9810942347119483275

`(n-2)*a(n-1)` with `a(0)=0, a(1)=-1, a(2)=1`
-/

namespace A358185.P9810942347119483275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, -1, 1] fun n a =>
  ((n : ℤ) - 2) * a (n - 1)

end

end A358185.P9810942347119483275

/-! ## A358185.P2026600455073316962

`(n-2)!-a(n²%n)` with `a(0)=0, a(1)=-1`
-/

namespace A358185.P2026600455073316962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, -1] fun n a =>
  (Nat.factorial ((n : ℤ) - 2).toNat : ℤ) - a (n ^ 2 % n)

end

end A358185.P2026600455073316962

/-! ## A358185.P14737815431075571869

`∏[a(n-1)+1]-A130706(n)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`
-/

namespace A358185.P14737815431075571869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 1] fun n f1 =>
  f1 (n - 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A130706 n

end

end A358185.P14737815431075571869

/-! ## A358185.P5909111018729421533

`A289207(n)!-A130706(n)`
-/

namespace A358185.P5909111018729421533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A289207 n).toNat : ℤ) - A130706 n

end

end A358185.P5909111018729421533

/-! ## A358185.P17541380495831909765

`A104150(n)/(A184985(n+1)-2)`
-/

namespace A358185.P17541380495831909765
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104150 n : ℚ) / (A184985 (n + 1) - 2 : ℚ)

end

end A358185.P17541380495831909765

/-! ## A358185.P12643816291905525137

`-∏[a(n-1)+1]%A000142(n+1)` with `a(0)=1, a(1)=1, a(2)=-1, a(3)=1`
-/

namespace A358185.P12643816291905525137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, -1, 1] fun n f1 =>
  f1 (n - 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (-(∏ j ∈ Finset.range (n + 1), f1 j)) (A000142 (n + 1))

end

end A358185.P12643816291905525137

/-!
# A358192: Numerator of the quotient of the prime indices of the n-th semiprime.

The programs for A358192, there is no canonical definition to state claims against.
-/

/-! ## A358192.P16086457299425692721

`A338912(n+1)/A289508(A001358(n+1))`
-/

namespace A358192.P16086457299425692721
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A338912 (n + 1) : ℚ) / (A289508 (A001358 (n + 1)).toNat : ℚ)

end

end A358192.P16086457299425692721

/-! ## A358192.P4631392864038563723

`A338912(n+1)/gcd(A176506(n+1), A338912(n+1))`
-/

namespace A358192.P4631392864038563723
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A338912 (n + 1) : ℚ) / (Int.gcd (A176506 (n + 1)) (A338912 (n + 1)) : ℚ)

end

end A358192.P4631392864038563723

/-! ## A358192.P8479353699474425355

`gcd(A027427(A215245(n)), A228351(n+3))`
-/

namespace A358192.P8479353699474425355
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A027427 (A215245 n).toNat) (A228351 (n + 3))

end

end A358192.P8479353699474425355

/-! ## A358192.P8698853690200164595

`A272729(or(n, A060187(n+1)))`
-/

namespace A358192.P8698853690200164595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272729 (Int.lor (n : ℤ) (A060187 (n + 1))).toNat

end

end A358192.P8698853690200164595

/-! ## A358192.P3710296384778130292

`A300410(A067130(n+1)-A330725(n))`
-/

namespace A358192.P3710296384778130292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300410 (A067130 (n + 1) - A330725 n).toNat

end

end A358192.P3710296384778130292

/-!
# A358193: Denominator of the quotient of the prime indices of the n-th semiprime.

The programs for A358193, there is no canonical definition to state claims against.
-/

/-! ## A358193.P6005444109696587531

`A338913(n+1)/A289508(A001358(n+1))`
-/

namespace A358193.P6005444109696587531
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A338913 (n + 1) : ℚ) / (A289508 (A001358 (n + 1)).toNat : ℚ)

end

end A358193.P6005444109696587531

/-! ## A358193.P15385581708287453442

`A326840(A001358(n+1))`
-/

namespace A358193.P15385581708287453442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326840 (A001358 (n + 1)).toNat

end

end A358193.P15385581708287453442

/-! ## A358193.P10972262840039375266

`A326840(A176540(n+2))`
-/

namespace A358193.P10972262840039375266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326840 (A176540 (n + 2)).toNat

end

end A358193.P10972262840039375266

/-! ## A358193.P17859709449232790308

`A326840(eq[2, A342085(n+1)]+1)`
-/

namespace A358193.P17859709449232790308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342085 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326840 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A358193.P17859709449232790308

/-! ## A358193.P12639639767989369872

`A326840(A129336(n+1))`
-/

namespace A358193.P12639639767989369872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326840 (A129336 (n + 1)).toNat

end

end A358193.P12639639767989369872

/-!
# A358194: Irregular triangle read by rows where T(n,k) is the number of integer partitions of n with partial sums summing to k, where k ranges from n to n(n+1)/2.

The programs for A358194, there is no canonical definition to state claims against.
-/

/-! ## A358194.P17098565540933548481

`A318963(gcd(A001383(n), A109441(2*(n+1))))`
-/

namespace A358194.P17098565540933548481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318963 (Int.gcd (A001383 n) (A109441 (2 * (n + 1))))

end

end A358194.P17098565540933548481

/-! ## A358194.P5075229905516470361

`A337264(and(A000040(n+1), A116459(3*n+2)))`
-/

namespace A358194.P5075229905516470361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337264 (Int.land (A000040 (n + 1)) (A116459 (3 * n + 2))).toNat

end

end A358194.P5075229905516470361

/-! ## A358194.P1790992906497843420

`A262448(lcm(8, A256303(n)))`
-/

namespace A358194.P1790992906497843420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262448 (Int.lcm 8 (A256303 n))

end

end A358194.P1790992906497843420

/-! ## A358194.P14156132811677792437

`A127236(A127243(n+4)+A019538(n+1))`
-/

namespace A358194.P14156132811677792437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127236 (A127243 (n + 4) + A019538 (n + 1)).toNat

end

end A358194.P14156132811677792437

/-!
# A358195: Heinz number of the partial sums plus one of the reversed first differences of the prime indices of n.

The programs for A358195, there is no canonical definition to state claims against.
-/

/-! ## A358195.P16289939155737212239

`ceil(A137502(n+1)/2)`
-/

namespace A358195.P16289939155737212239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A137502 (n + 1) : ℚ) / 2⌉

end

end A358195.P16289939155737212239

/-! ## A358195.P593659350159064865

`A137502(abs(1-n)+2)/2`
-/

namespace A358195.P593659350159064865
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137502 (|1 - (n : ℤ)| + 2).toNat : ℚ) / 2

end

end A358195.P593659350159064865

/-! ## A358195.P15617117430580783807

`A004525(A137502(n+1))`
-/

namespace A358195.P15617117430580783807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A137502 (n + 1)).toNat

end

end A358195.P15617117430580783807

/-! ## A358195.P7068529098816942953

`A052126(A241916(n+1))`
-/

namespace A358195.P7068529098816942953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (A241916 (n + 1)).toNat

end

end A358195.P7068529098816942953

/-! ## A358195.P12008520710071172729

`A004526(A137502(n+1)+1)`
-/

namespace A358195.P12008520710071172729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A137502 (n + 1) + 1).toNat

end

end A358195.P12008520710071172729

/-! ## A358195.P501279838892243128

`A008619(A137502(n+1)-1)`
-/

namespace A358195.P501279838892243128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A137502 (n + 1) - 1).toNat

end

end A358195.P501279838892243128

/-! ## A358195.P18420398542203631034

`A241916(n+1)/A006530(n+1)`
-/

namespace A358195.P18420398542203631034
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A241916 (n + 1) : ℚ) / (A006530 (n + 1) : ℚ)

end

end A358195.P18420398542203631034

/-! ## A358195.P15980420557618543253

`A005940(A358171(n+1)+1)`
-/

namespace A358195.P15980420557618543253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (A358171 (n + 1) + 1).toNat

end

end A358195.P15980420557618543253

/-!
# A358197: Numbers k such that 2^k, 5^k and 8^k have the same first digit.

The programs for A358197, there is no canonical definition to state claims against.
-/

/-! ## A358197.P12206640923420028248

`∩[A088935(n+1), A358196(n+1)]`
-/

namespace A358197.P12206640923420028248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088935 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358196 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A358197.P12206640923420028248

/-! ## A358197.P7535938205527065125

`∩[A047218(n+1), A358196(n+1)]`
-/

namespace A358197.P7535938205527065125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047218 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358196 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A358197.P7535938205527065125

