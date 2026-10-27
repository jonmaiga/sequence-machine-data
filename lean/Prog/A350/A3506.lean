import SequenceMachineLib
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
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A350600: Color of the first occurrence of a monochromatic arithmetic progression of difference n and length b(n) in the Thue-Morse sequence (A010060), where b(n) = A342818(n).

The programs for A350600, there is no canonical definition to state claims against.
-/

/-! ## A350600.P11196640730691020046

`A010060(A342827(n+1))`
-/

namespace A350600.P11196640730691020046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A342827 (n + 1)).toNat

end

end A350600.P11196640730691020046

/-! ## A350600.P3759999732810860255

`A254379(A342827(2*(n+1)))`
-/

namespace A350600.P3759999732810860255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254379 (A342827 (2 * (n + 1))).toNat

end

end A350600.P3759999732810860255

/-! ## A350600.P6476524744348727825

`A316828(2*A342827(n+1))`
-/

namespace A350600.P6476524744348727825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316828 (2 * A342827 (n + 1)).toNat

end

end A350600.P6476524744348727825

/-! ## A350600.P15991997100668126940

`A254379(lcm(2, A342827(n+1)))`
-/

namespace A350600.P15991997100668126940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254379 (Int.lcm 2 (A342827 (n + 1)))

end

end A350600.P15991997100668126940

/-! ## A350600.P15992769920694486422

`A316828(A342827(Δ[n²]+1))`
-/

namespace A350600.P15992769920694486422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316828 (A342827 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1).toNat).toNat

end

end A350600.P15992769920694486422

/-! ## A350600.P5925650975054211472

`A254377(A342827(2*(n+1))+1)`
-/

namespace A350600.P5925650975054211472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254377 (A342827 (2 * (n + 1)) + 1).toNat

end

end A350600.P5925650975054211472

/-! ## A350600.P14135038930058522534

`A001316(2*A342827(n+1))%3-1`
-/

namespace A350600.P14135038930058522534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001316 (2 * A342827 (n + 1)).toNat) 3 - 1

end

end A350600.P14135038930058522534

/-!
# A350601: Array read by antidiagonals: row n lists even numbers that are "generated" (in Kaprekar's sense) in all bases 2, 4, 6, ..., 2n.

The programs for A350601, there is no canonical definition to state claims against.
-/

/-! ## A350601.P5583629756039630268

`A236325(4^A145111(n))`
-/

namespace A350601.P5583629756039630268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236325 (SequenceMachineLib.roundAway ((4 : ℚ) ^ (A145111 n : ℤ))).toNat

end

end A350601.P5583629756039630268

/-! ## A350601.P1641824616401995089

`A276604(A139600(n)^6)`
-/

namespace A350601.P1641824616401995089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276604 (A139600 n ^ 6).toNat

end

end A350601.P1641824616401995089

/-! ## A350601.P9140096309082650244

`and(10, A003024(A249026(n)))`
-/

namespace A350601.P9140096309082650244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 10 (A003024 (A249026 n).toNat)

end

end A350601.P9140096309082650244

/-! ## A350601.P10402323192343453095

`and(10, A239946(A094439(n)))`
-/

namespace A350601.P10402323192343453095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 10 (A239946 (A094439 n).toNat)

end

end A350601.P10402323192343453095

/-!
# A350606: a(n) is the number of elements in row n of A350605.

The programs for A350606, there is no canonical definition to state claims against.
-/

/-! ## A350606.P13623597894443177262

`Δ[eq[1, A350605(n+1)]]`
-/

namespace A350606.P13623597894443177262
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350605 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A350606.P13623597894443177262

/-! ## A350606.P1949150713266052709

`A157271(A125180(n+1)+n)`
-/

namespace A350606.P1949150713266052709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A125180 (n + 1) + (n : ℤ)).toNat

end

end A350606.P1949150713266052709

/-! ## A350606.P2459425284482284870

`∑[2^n]-A135661(A148422(n))`
-/

namespace A350606.P2459425284482284870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A135661 (A148422 n).toNat

end

end A350606.P2459425284482284870

/-! ## A350606.P7340380292475279216

`A357849(A329161(3*n+1))+A052997(n)`
-/

namespace A350606.P7340380292475279216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357849 (A329161 (3 * n + 1)).toNat + A052997 n

end

end A350606.P7340380292475279216

/-!
# A350607: a(n) = (A230624(n)-2)/4.

The programs for A350607, there is no canonical definition to state claims against.
-/

/-! ## A350607.P5484496213156552243

`floor(A230624(n+2)/4)`
-/

namespace A350607.P5484496213156552243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A230624 (n + 2) : ℚ) / 4⌋

end

end A350607.P5484496213156552243

/-! ## A350607.P5084759382664603577

`∑[floor(A349823(n+1)/4)]`
-/

namespace A350607.P5084759382664603577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A349823 (n + 1) : ℚ) / 4⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350607.P5084759382664603577

/-! ## A350607.P8906215707965782005

`∑[A349823(n+1)/4*A057427(n)]`
-/

namespace A350607.P8906215707965782005
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A349823 (n + 1) : ℚ) / 4 * (A057427 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350607.P8906215707965782005

/-! ## A350607.P13199567148510811645

`round(A230624(n+2)/4)-A005408(n)%2`
-/

namespace A350607.P13199567148510811645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A230624 (n + 2) : ℚ) / 4) - Int.tmod (A005408 n) 2

end

end A350607.P13199567148510811645

/-! ## A350607.P11031244136190375232

`round(A230624(n+2)/4)-A001221(A020483(n))`
-/

namespace A350607.P11031244136190375232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A230624 (n + 2) : ℚ) / 4) - A001221 (A020483 n).toNat

end

end A350607.P11031244136190375232

/-! ## A350607.P18055519586204852146

`round(A230624(n+2)/4)-A014963(A017137(n))`
-/

namespace A350607.P18055519586204852146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A230624 (n + 2) : ℚ) / 4) - A014963 (A017137 n).toNat

end

end A350607.P18055519586204852146

/-! ## A350607.P3601622327268632521

`round(A230624(n+2)/4)-A000265(A130321(n))`
-/

namespace A350607.P3601622327268632521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A230624 (n + 2) : ℚ) / 4) - A000265 (A130321 n).toNat

end

end A350607.P3601622327268632521

/-! ## A350607.P13443085511138296558

`round(A230624(n+2)/4)-A109814(A059268(n))`
-/

namespace A350607.P13443085511138296558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A230624 (n + 2) : ℚ) / 4) - A109814 (A059268 n).toNat

end

end A350607.P13443085511138296558

/-! ## A350607.P13956400894148150032

`A000027(round(A230624(n+2)/4))-1`
-/

namespace A350607.P13956400894148150032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A230624 (n + 2) : ℚ) / 4)).toNat - 1

end

end A350607.P13956400894148150032

/-! ## A350607.P4202968905043211901

`(A349821(n+2)-1)/2`
-/

namespace A350607.P4202968905043211901
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A349821 (n + 2) - 1 : ℚ) / 2

end

end A350607.P4202968905043211901

/-!
# A350608: Number of weakly connected subgraphs of the transitive tournament on {1,...,n}.

The programs for A350608, there is no canonical definition to state claims against.
-/

/-! ## A350608.P17453886751731346317

`A350609(∑[n]+1)`
-/

namespace A350608.P17453886751731346317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350609 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A350608.P17453886751731346317

/-! ## A350608.P8566070646991351854

`gcd(A130706(n), A350609(A000124(n)))`
-/

namespace A350608.P8566070646991351854
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A130706 n) (A350609 (A000124 n).toNat)

end

end A350608.P8566070646991351854

/-! ## A350608.P16222190447134035267

`lcm(A057077(n), A350609(A000124(n)))`
-/

namespace A350608.P16222190447134035267
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A057077 n) (A350609 (A000124 n).toNat)

end

end A350608.P16222190447134035267

/-! ## A350608.P7621599544267189321

`or(A004530(n), A350609(A000124(n)))`
-/

namespace A350608.P7621599544267189321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A004530 n) (A350609 (A000124 n).toNat)

end

end A350608.P7621599544267189321

/-! ## A350608.P806427178921117241

`A350609(A000124(n))^A001221(A000079(n))`
-/

namespace A350608.P806427178921117241
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A350609 (A000124 n).toNat : ℚ) ^ (A001221 (A000079 n).toNat : ℤ)

end

end A350608.P806427178921117241

/-!
# A350615: Indices of 1's in A350877.

The programs for A350615, there is no canonical definition to state claims against.
-/

/-! ## A350615.P16968894423534223102

`A362108(n+1)+A362107(n+1)`
-/

namespace A350615.P16968894423534223102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362108 (n + 1) + A362107 (n + 1)

end

end A350615.P16968894423534223102

/-!
# A350616: Indices of odd terms in A350877.

The programs for A350616, there is no canonical definition to state claims against.
-/

/-! ## A350616.P8533786389102276259

`∑[A350833(n^floor(atan(n)))+1]`
-/

namespace A350616.P8533786389102276259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350833 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ))).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350616.P8533786389102276259

/-! ## A350616.P12855055767196003115

`a(n-1)+A350833(n)+1` with `a(0)=1`
-/

namespace A350616.P12855055767196003115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A350833 n + 1)

end

end A350616.P12855055767196003115

/-! ## A350616.P8449571599863746248

`∑[A350833(abs(1-n)+1)]+n`
-/

namespace A350616.P8449571599863746248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350833 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A350616.P8449571599863746248

/-! ## A350616.P1497463441026898031

`∑[A350833(round(sqrt(n²+1)))+1]`
-/

namespace A350616.P1497463441026898031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350833 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350616.P1497463441026898031

/-! ## A350616.P7955957676327172415

`A291769(A350833(n))+a(n-1)` with `a(0)=1`
-/

namespace A350616.P7955957676327172415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A291769 (A350833 n).toNat + a (n - 1)

end

end A350616.P7955957676327172415

/-! ## A350616.P8134302812593517423

`∑[A350833(n+1)+1]-A350833(n+1)`
-/

namespace A350616.P8134302812593517423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350833 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A350833 (n + 1)

end

end A350616.P8134302812593517423

/-! ## A350616.P15150782630665127197

`∑[A291769(A350833(n+1))]-A350833(n+1)`
-/

namespace A350616.P15150782630665127197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291769 (A350833 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A350833 (n + 1)

end

end A350616.P15150782630665127197

/-! ## A350616.P12567035225227350331

`lt[A350877(A028310(n)), A350877(n+1)]`
-/

namespace A350616.P12567035225227350331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350877 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350877 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A350616.P12567035225227350331

/-!
# A350617: Odd-valued terms in A350877.

The programs for A350617, there is no canonical definition to state claims against.
-/

/-! ## A350617.P2004917554516973278

`A350618(n+1)-A000040(n+1)`
-/

namespace A350617.P2004917554516973278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350618 (n + 1) - A000040 (n + 1)

end

end A350617.P2004917554516973278

/-! ## A350617.P500995507890188892

`A350618(n+1)-p?[A015919(n+1)]`
-/

namespace A350617.P500995507890188892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350618 (n + 1) - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A350617.P500995507890188892

/-! ## A350617.P6105053513566785502

`A350618(n+1)-A008578(n+2)`
-/

namespace A350617.P6105053513566785502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350618 (n + 1) - A008578 (n + 2)

end

end A350617.P6105053513566785502

/-! ## A350617.P15097300752426967283

`A350877(A350616(n+1))`
-/

namespace A350617.P15097300752426967283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350877 (A350616 (n + 1)).toNat

end

end A350617.P15097300752426967283

/-! ## A350617.P9423867046317477678

`A350618(n+1)-record[Δ[A350877(n+1)]]`
-/

namespace A350617.P9423867046317477678
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350877 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350618 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A350617.P9423867046317477678

/-! ## A350617.P14093576744234023157

`filter[A350877(n+1), A000035(#)]`
-/

namespace A350617.P14093576744234023157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350877 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A350617.P14093576744234023157

/-!
# A350618: Terms in A350877 that immediately follow an odd term.

The programs for A350618, there is no canonical definition to state claims against.
-/

/-! ## A350618.P4082055765697917966

`A350617(n+1)+A000040(n+1)`
-/

namespace A350618.P4082055765697917966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350617 (n + 1) + A000040 (n + 1)

end

end A350618.P4082055765697917966

/-! ## A350618.P9133039859035650450

`A350617(n+1)+p?[A015919(n+1)]`
-/

namespace A350618.P9133039859035650450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350617 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A350618.P9133039859035650450

/-! ## A350618.P15671924399309169629

`A350617(n+1)+A008578(n+2)`
-/

namespace A350618.P15671924399309169629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350617 (n + 1) + A008578 (n + 2)

end

end A350618.P15671924399309169629

/-! ## A350618.P7696316729407913214

`A350877(A350616(n+1)+1)`
-/

namespace A350618.P7696316729407913214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350877 (A350616 (n + 1) + 1).toNat

end

end A350618.P7696316729407913214

/-! ## A350618.P11609568339789966066

`A350617(n+1)+record[Δ[A350877(n+1)]]`
-/

namespace A350618.P11609568339789966066
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350877 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350617 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A350618.P11609568339789966066

/-!
# A350619: Record high values in A350877.

The programs for A350619, there is no canonical definition to state claims against.
-/

/-! ## A350619.P9954256673422408251

`record[A350877(n+1)]`
-/

namespace A350619.P9954256673422408251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350877 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A350619.P9954256673422408251

/-! ## A350619.P11565276428421205271

`record[A350877(A028310(n))]%(9*A145112(n))`
-/

namespace A350619.P11565276428421205271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350877 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (9 * A145112 n)

end

end A350619.P11565276428421205271

/-! ## A350619.P2756935503270627116

`record[A350877(A008619(n))-A000035(n)]`
-/

namespace A350619.P2756935503270627116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350877 (A008619 n).toNat - A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A350619.P2756935503270627116

/-! ## A350619.P16116086020559970239

`record[A350877(A008619(n))-A237420(n)]`
-/

namespace A350619.P16116086020559970239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350877 (A008619 n).toNat - A237420 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A350619.P16116086020559970239

/-! ## A350619.P6609836038363292819

`record[A350877(A008619(n))%A017005(n)]`
-/

namespace A350619.P6609836038363292819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A350877 (A008619 n).toNat) (A017005 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A350619.P6609836038363292819

/-!
# A350621: a(n) is the smallest k such that A350877(k) = prime(n), or -1 if prime(n) does not appear in A350877.

The programs for A350621, there is no canonical definition to state claims against.
-/

/-! ## A350621.P1846222735204587527

`A350620(p?[comp[n²]])`
-/

namespace A350621.P1846222735204587527
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350620 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A350621.P1846222735204587527

/-! ## A350621.P9783283731814702537

`A350620(∑{p}[p?[round(8*n/7)]², #])`
-/

namespace A350621.P9783283731814702537
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350620 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A350621.P9783283731814702537

/-!
# A350622: a(n) = numerator of the X-coordinate of n*P where P is the generator [0,0] for rational points on the curve y^2 + y = x^3 + x^2.

The programs for A350622, there is no canonical definition to state claims against.
-/

/-! ## A350622.P13410704787150101382

`-(A050512(n+2)*A050512(n))`
-/

namespace A350622.P13410704787150101382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A050512 (n + 2) * A050512 n)

end

end A350622.P13410704787150101382

/-! ## A350622.P15553549343344746830

`A000007(n+1)-A050512(n+2)*A050512(n)`
-/

namespace A350622.P15553549343344746830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) - A050512 (n + 2) * A050512 n

end

end A350622.P15553549343344746830

/-! ## A350622.P4274582886951268853

`char[48*A061901(n)]-A050512(n+2)*A050512(n)`
-/

namespace A350622.P4274582886951268853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  48 * A061901 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - A050512 (n + 2) * A050512 n

end

end A350622.P4274582886951268853

/-! ## A350622.P7687282529025400822

`A008683(8*(n+1))-A050512(n+2)*A050512(n)`
-/

namespace A350622.P7687282529025400822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (8 * (n + 1)) - A050512 (n + 2) * A050512 n

end

end A350622.P7687282529025400822

/-! ## A350622.P1427521327524611879

`A048146(p?[2*n+1])-A050512(n+2)*A050512(n)`
-/

namespace A350622.P1427521327524611879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048146 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) - A050512 (n + 2) * A050512 n

end

end A350622.P1427521327524611879

/-!
# A350623: a(n) = denominator of the X-coordinate of n*P where P is the generator [0,0] for rational points on the curve y^2 + y = x^3 + x^2.

The programs for A350623, there is no canonical definition to state claims against.
-/

/-! ## A350623.P6770660095972111095

`A050512(n+1)²`
-/

namespace A350623.P6770660095972111095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050512 (n + 1) ^ 2

end

end A350623.P6770660095972111095

/-! ## A350623.P5387532666837590544

`abs(A050512(A008619(2*n)))²`
-/

namespace A350623.P5387532666837590544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A050512 (A008619 (2 * n)).toNat| ^ 2

end

end A350623.P5387532666837590544

/-! ## A350623.P14250670576992304696

`A050512(n+1)^A006530(A060632(n))`
-/

namespace A350623.P14250670576992304696
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050512 (n + 1) : ℚ) ^ (A006530 (A060632 n).toNat : ℤ)

end

end A350623.P14250670576992304696

/-! ## A350623.P7091350733665694763

`A050512(n+1)^A000032(A296529(∑[n]))`
-/

namespace A350623.P7091350733665694763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050512 (n + 1) : ℚ) ^ (A000032 (A296529 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat : ℤ)

end

end A350623.P7091350733665694763

/-! ## A350623.P17261737217723430216

`A050512(A008619(2*n))*A050512(n+1)`
-/

namespace A350623.P17261737217723430216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050512 (A008619 (2 * n)).toNat * A050512 (n + 1)

end

end A350623.P17261737217723430216

/-!
# A350625: a(n) = denominator of the Y-coordinate of n*P where P is the generator [0,0] for rational points on the curve y^2 + y = x^3 + x^2.

The programs for A350625, there is no canonical definition to state claims against.
-/

/-! ## A350625.P7279406111533342161

`abs(A050512(n+1)^3)`
-/

namespace A350625.P7279406111533342161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A050512 (n + 1) ^ 3|

end

end A350625.P7279406111533342161

/-! ## A350625.P5905106850510320218

`sqrt(A350623(n+1)^3)`
-/

namespace A350625.P5905106850510320218
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A350623 (n + 1) ^ 3 : ℝ)

end

end A350625.P5905106850510320218

/-! ## A350625.P2137229212236962403

`abs(A050512(A008619(2*n)))^3`
-/

namespace A350625.P2137229212236962403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A050512 (A008619 (2 * n)).toNat| ^ 3

end

end A350625.P2137229212236962403

/-! ## A350625.P16461518227181835307

`gcd(A050512(n+1)^3, A063972(A000040(n+4)))`
-/

namespace A350625.P16461518227181835307
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A050512 (n + 1) ^ 3) (A063972 (A000040 (n + 4)).toNat)

end

end A350625.P16461518227181835307

/-! ## A350625.P15706301670660558258

`(A050512(n+1)^3)²^2^A008683(A142644(n+1))`
-/

namespace A350625.P15706301670660558258
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A050512 (n + 1) ^ 3) ^ 2 : ℝ) ^ ((2 : ℚ) ^ (A008683 (A142644 (n + 1)).toNat : ℤ) : ℝ)

end

end A350625.P15706301670660558258

/-!
# A350626: a(1)=1. For n>1, a(n)=A095848(n) divided by the smallest number in A095848 that is divisible by the largest prime divisor of A095848(n).

The programs for A350626, there is no canonical definition to state claims against.
-/

/-! ## A350626.P15778141782064451407

`A100820(p?[A307596(n)]²)`
-/

namespace A350626.P15778141782064451407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307596 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100820 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2).toNat

end

end A350626.P15778141782064451407

/-! ## A350626.P2042024744943010006

`gcd(A004654(n+1), A137824(n+1))`
-/

namespace A350626.P2042024744943010006
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004654 (n + 1)) (A137824 (n + 1))

end

end A350626.P2042024744943010006

/-! ## A350626.P5535124903032572607

`A330757(A109165(n+1))`
-/

namespace A350626.P5535124903032572607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330757 (A109165 (n + 1)).toNat

end

end A350626.P5535124903032572607

/-!
# A350628: Number of ways to write 2*n as 3^i (i >= 1) plus a prime.

The programs for A350628, there is no canonical definition to state claims against.
-/

/-! ## A350628.P13438294892267894153

`A282432(2*(n+1))-A101264(n)`
-/

namespace A350628.P13438294892267894153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282432 (2 * (n + 1)) - A101264 n

end

end A350628.P13438294892267894153

/-! ## A350628.P14068670988532004640

`A282432(2*(n+1))-char[A005097(n+1)]`
-/

namespace A350628.P14068670988532004640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282432 (2 * (n + 1)) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A350628.P14068670988532004640

/-! ## A350628.P8356210462294939767

`A282432(2*(n+1))-A010051(2*n+1)`
-/

namespace A350628.P8356210462294939767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282432 (2 * (n + 1)) - A010051 (2 * n + 1)

end

end A350628.P8356210462294939767

/-! ## A350628.P1757026336539552166

`A350957(n+1)-∑{p}[2*n+1, floor(#/(n+1))]`
-/

namespace A350628.P1757026336539552166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350957 (n + 1) - ∑ p ∈ Nat.primeFactors (f1 n), ⌊(p : ℚ) / (n + 1 : ℚ)⌋

end

end A350628.P1757026336539552166

/-! ## A350628.P6515168212922856162

`A350957(n+1)-A101264(n)`
-/

namespace A350628.P6515168212922856162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350957 (n + 1) - A101264 n

end

end A350628.P6515168212922856162

/-! ## A350628.P3253796183567847164

`A350957(n+1)-char[A005097(n+1)]`
-/

namespace A350628.P3253796183567847164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350957 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A350628.P3253796183567847164

/-! ## A350628.P12500586359518391786

`A350957(n+1)-A010051(2*n+1)`
-/

namespace A350628.P12500586359518391786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350957 (n + 1) - A010051 (2 * n + 1)

end

end A350628.P12500586359518391786

/-! ## A350628.P13092506785599317179

`A350957(n+1)-A121559(2*(n+1))`
-/

namespace A350628.P13092506785599317179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350957 (n + 1) - A121559 (2 * (n + 1))

end

end A350628.P13092506785599317179

/-! ## A350628.P13279462887251539523

`A350957(n+1)-A061358(A062545(n))`
-/

namespace A350628.P13279462887251539523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350957 (n + 1) - A061358 (A062545 n).toNat

end

end A350628.P13279462887251539523

/-!
# A350629: Positive even numbers that cannot be written as 3^i (i >= 1) plus a prime.

The programs for A350629, there is no canonical definition to state claims against.
-/

/-! ## A350629.P11867259732944260451

`2*A350630(n+1)`
-/

namespace A350629.P11867259732944260451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A350630 (n + 1)

end

end A350629.P11867259732944260451

/-! ## A350629.P16593629737303450602

`A004277(A350630(n+1))`
-/

namespace A350629.P16593629737303450602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A350630 (n + 1)).toNat

end

end A350629.P16593629737303450602

/-! ## A350629.P13204115746919998431

`A004275(A350630(n+1)+1)`
-/

namespace A350629.P13204115746919998431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A350630 (n + 1) + 1).toNat

end

end A350629.P13204115746919998431

/-! ## A350629.P5160745518381558964

`A004273(A350630(n+1)+1)-1`
-/

namespace A350629.P5160745518381558964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A350630 (n + 1) + 1).toNat - 1

end

end A350629.P5160745518381558964

/-! ## A350629.P15914943000946904101

`A005843(lcm((-1)^n, A350630(n+1)))`
-/

namespace A350629.P15914943000946904101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (Int.lcm ((-1) ^ n) (A350630 (n + 1)))

end

end A350629.P15914943000946904101

/-! ## A350629.P16388183115442343627

`A004525(4*A350630(ϕ²-(ϕ-n)))`
-/

namespace A350629.P16388183115442343627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (4 * A350630 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat).toNat

end

end A350629.P16388183115442343627

/-! ## A350629.P1428275685483182497

`A004526(4*A350630(ϕ²-(ϕ-n)))`
-/

namespace A350629.P1428275685483182497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (4 * A350630 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat).toNat

end

end A350629.P1428275685483182497

/-!
# A350630: Positive numbers k such that 2k cannot be written as 3^i (i >= 1) plus a prime.

The programs for A350630, there is no canonical definition to state claims against.
-/

/-! ## A350630.P17511847965746122221

`A350629(n+1)/2`
-/

namespace A350630.P17511847965746122221
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A350629 (n + 1) : ℚ) / 2

end

end A350630.P17511847965746122221

/-! ## A350630.P5081838481616321828

`A001281(A350629(n+1))`
-/

namespace A350630.P5081838481616321828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A350629 (n + 1)).toNat

end

end A350630.P5081838481616321828

/-! ## A350630.P6440309351440259353

`A004524(A350629(n+1)+1)`
-/

namespace A350630.P6440309351440259353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A350629 (n + 1) + 1).toNat

end

end A350630.P6440309351440259353

/-! ## A350630.P3270811893324510022

`A004526(A350629(n+1)+1)`
-/

namespace A350630.P3270811893324510022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A350629 (n + 1) + 1).toNat

end

end A350630.P3270811893324510022

/-! ## A350630.P4316749478340840380

`A028242(A350629(n+1)+1)`
-/

namespace A350630.P4316749478340840380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A350629 (n + 1) + 1).toNat

end

end A350630.P4316749478340840380

/-! ## A350630.P3995798158186976501

`A071045(A350629(n+1)+1)`
-/

namespace A350630.P3995798158186976501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071045 (A350629 (n + 1) + 1).toNat

end

end A350630.P3995798158186976501

/-! ## A350630.P17952257955130322540

`A123108(A350629(n+1)+1)`
-/

namespace A350630.P17952257955130322540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A350629 (n + 1) + 1).toNat

end

end A350630.P17952257955130322540

/-! ## A350630.P17190279792049555338

`A213633(A350629(n+1)+1)`
-/

namespace A350630.P17190279792049555338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213633 (A350629 (n + 1) + 1).toNat

end

end A350630.P17190279792049555338

/-! ## A350630.P17406995671710787880

`A000463(A350629(n+1)-1)`
-/

namespace A350630.P17406995671710787880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A350629 (n + 1) - 1).toNat

end

end A350630.P17406995671710787880

/-! ## A350630.P6028363065429635724

`A001057(A350629(n+1)-1)`
-/

namespace A350630.P6028363065429635724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A350629 (n + 1) - 1).toNat

end

end A350630.P6028363065429635724

/-!
# A350632: a(n) is the total number of ON cells at stage n of a cellular automaton where cells are turned ON when they have one or two neighbors ON (see Comments for precise definition).

The programs for A350632, there is no canonical definition to state claims against.
-/

/-! ## A350632.P2367603619490434821

`∑[A350633(n)]`
-/

namespace A350632.P2367603619490434821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350633 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350632.P2367603619490434821

/-! ## A350632.P7756224801257635791

`∑{d}[A000079(n), A350633(A001222(#))]`
-/

namespace A350632.P7756224801257635791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A350633 (A001222 d).toNat

end

end A350632.P7756224801257635791

/-!
# A350633: First differences of A350632.

The programs for A350633, there is no canonical definition to state claims against.
-/

/-! ## A350633.P15104397911395893735

`Δ[A350632(log2(ceil(2^(n-1))))]`
-/

namespace A350633.P15104397911395893735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350632 (SequenceMachineLib.roundAway (Real.logb 2 (⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A350633.P15104397911395893735

/-!
# A350634: Products of the parts s,t in each partition of k (= 2,3,...) into two parts, ordered by increasing k and then by increasing values of s*t (see example).

The programs for A350634, the canonical program `A350634.P17300309054725568699` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A350634 has offset 1).

The definition of A350634 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A350634.P5850932419268098071

`A122197(n+1)*A199474(n+1)`
-/

namespace A350634.P5850932419268098071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122197 (n + 1) * A199474 (n + 1)

end

end A350634.P5850932419268098071

namespace A350634

/-- `A122197(n+1)*A199474(n+1)` -/
def P5850932419268098071.Spec : Prop :=
  ∀ n, P5850932419268098071.a n = A350634 (n + 1)

end A350634

/-! ## A350634.P17300309054725568699

`(A027434(n+1)²-A082375(n)²)/4`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A350634

/-- `(A027434(n+1)²-A082375(n)²)/4` -/
def P17300309054725568699.Spec : Prop :=
  ∀ n, P17300309054725568699.a n = (A350634 (n + 1) : ℚ)

end A350634

/-! ## A350634.P5357085135572269253

`A339399(2*(n+1)-1)*A339399(2*(n+1))`
-/

namespace A350634.P5357085135572269253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339399 (2 * (n + 1) - 1) * A339399 (2 * (n + 1))

end

end A350634.P5357085135572269253

namespace A350634

/-- `A339399(2*(n+1)-1)*A339399(2*(n+1))` -/
def P5357085135572269253.Spec : Prop :=
  ∀ n, P5357085135572269253.a n = A350634 (n + 1)

end A350634

/-! ## A350634.P14627180746497363618

`A033829(n+1)%99`
-/

namespace A350634.P14627180746497363618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033829 (n + 1)) 99

end

end A350634.P14627180746497363618

namespace A350634

/-- `A033829(n+1)%99` -/
def P14627180746497363618.Spec : Prop :=
  ∀ n, P14627180746497363618.a n = A350634 (n + 1)

end A350634

/-! ## A350634.P10467072393237680834

`A003991(eq[1, floor(sqrt(8*n+1))%2]+1)`
-/

namespace A350634.P10467072393237680834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt (8 * n + 1) % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A350634.P10467072393237680834

namespace A350634

/-- `A003991(eq[1, floor(sqrt(8*n+1))%2]+1)` -/
def P10467072393237680834.Spec : Prop :=
  ∀ n, P10467072393237680834.a n = A350634 (n + 1)

end A350634

/-! ## A350634.P17441113906375321744

`A003991(floor(1/4*(floor(sqrt(4*n+1))-1)²)+1+n)`
-/

namespace A350634.P17441113906375321744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (⌊(1 : ℚ) / 4 * (((Nat.sqrt (4 * n + 1) : ℤ) - 1) ^ 2 : ℚ)⌋ + 1 + (n : ℤ)).toNat

end

end A350634.P17441113906375321744

namespace A350634

/-- `A003991(floor(1/4*(floor(sqrt(4*n+1))-1)²)+1+n)` -/
def P17441113906375321744.Spec : Prop :=
  ∀ n, P17441113906375321744.a n = A350634 (n + 1)

end A350634

/-! ## A350634.P8749494120986981578

`(abs(-n%round(sqrt(n+1)))+1)*(A274428(n+1)-2*(n+1))`
-/

namespace A350634.P8749494120986981578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (|Int.tmod (-(n : ℤ)) (SequenceMachineLib.roundAway (Real.sqrt (n + 1 : ℝ)))| + 1) * (A274428 (n + 1) - (2 * (n + 1) : ℤ))

end

end A350634.P8749494120986981578

namespace A350634

/-- `(abs(-n%round(sqrt(n+1)))+1)*(A274428(n+1)-2*(n+1))` -/
def P8749494120986981578.Spec : Prop :=
  ∀ n, P8749494120986981578.a n = A350634 (n + 1)

end A350634

/-! ## A350634.P5175003399328860213

`A075362(A056536(n+1))`
-/

namespace A350634.P5175003399328860213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075362 (A056536 (n + 1)).toNat

end

end A350634.P5175003399328860213

namespace A350634

/-- `A075362(A056536(n+1))` -/
def P5175003399328860213.Spec : Prop :=
  ∀ n, P5175003399328860213.a n = A350634 (n + 1)

end A350634

/-! ## A350634.P17029134396153227595

`A075362(A091018(n)+1)`
-/

namespace A350634.P17029134396153227595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075362 (A091018 n + 1).toNat

end

end A350634.P17029134396153227595

namespace A350634

/-- `A075362(A091018(n)+1)` -/
def P17029134396153227595.Spec : Prop :=
  ∀ n, P17029134396153227595.a n = A350634 (n + 1)

end A350634

/-! ## A350634.P4969658766072583870

`A004247(eq[0, A293024(n)])`
-/

namespace A350634.P4969658766072583870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293024 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004247 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A350634.P4969658766072583870

namespace A350634

/-- `A004247(eq[0, A293024(n)])` -/
def P4969658766072583870.Spec : Prop :=
  ∀ n, P4969658766072583870.a n = A350634 (n + 1)

end A350634

/-!
# A350635: Triangle read by rows: T(n,k) is the number of n-element unlabeled P-series with k connected components.

The programs for A350635, there is no canonical definition to state claims against.
-/

/-! ## A350635.P10767810853897338310

`A109433(n)-A352517(A369923(n+1))`
-/

namespace A350635.P10767810853897338310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109433 n - A352517 (A369923 (n + 1)).toNat

end

end A350635.P10767810853897338310

/-! ## A350635.P825062208175480645

`A179745(n+2)-A082543(A256268(n))`
-/

namespace A350635.P825062208175480645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179745 (n + 2) - A082543 (A256268 n).toNat

end

end A350635.P825062208175480645

/-! ## A350635.P17275476625649418277

`A203647(A278818(n))-A058716(A128749(n))`
-/

namespace A350635.P17275476625649418277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203647 (A278818 n).toNat - A058716 (A128749 n).toNat

end

end A350635.P17275476625649418277

/-! ## A350635.P8441378189013096783

`A203647(A278818(n))-A264620(A110510(n))`
-/

namespace A350635.P8441378189013096783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203647 (A278818 n).toNat - A264620 (A110510 n).toNat

end

end A350635.P8441378189013096783

/-!
# A350636: a(n) is the number of partitions of n in which no part is divisible by 3 minus the number of basis partitions of n.

The programs for A350636, there is no canonical definition to state claims against.
-/

/-! ## A350636.P1570513351782558297

`A000726(n)-A066447(n)`
-/

namespace A350636.P1570513351782558297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000726 n - A066447 n

end

end A350636.P1570513351782558297

/-! ## A350636.P5745848029817545692

`A339404(n)+A339405(n)-A066447(n)`
-/

namespace A350636.P5745848029817545692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339404 n + (A339405 n - A066447 n)

end

end A350636.P5745848029817545692

/-! ## A350636.P11564261672443276271

`A116634(n+3)-A116634(n)-A066447(n)`
-/

namespace A350636.P11564261672443276271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116634 (n + 3) - A116634 n - A066447 n

end

end A350636.P11564261672443276271

/-! ## A350636.P7653185200542947600

`A000041(n)-(A295341(n)+A066447(n))`
-/

namespace A350636.P7653185200542947600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - (A295341 n + A066447 n)

end

end A350636.P7653185200542947600

/-! ## A350636.P14104662716425860211

`A035385(2*n)-A066447(n)`
-/

namespace A350636.P14104662716425860211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035385 (2 * n) - A066447 n

end

end A350636.P14104662716425860211

/-! ## A350636.P11311784156296414976

`A116633(A001840(n))-A066447(n)`
-/

namespace A350636.P11311784156296414976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116633 (A001840 n).toNat - A066447 n

end

end A350636.P11311784156296414976

/-! ## A350636.P8332342306124813693

`A116633(A002264(∑[n+1]))-A066447(n)`
-/

namespace A350636.P8332342306124813693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116633 (A002264 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat - A066447 n

end

end A350636.P8332342306124813693

/-! ## A350636.P5843860385607530349

`A124094(∑[n+3])-A066447(n)`
-/

namespace A350636.P5843860385607530349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124094 (∑ j ∈ Finset.range (n + 1), f1 j) - A066447 n

end

end A350636.P5843860385607530349

/-! ## A350636.P15469173079087601615

`A286653(Δ[A006503(n)])-A066447(n)`
-/

namespace A350636.P15469173079087601615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006503 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286653 (f1 (n + 1) - f1 n).toNat - A066447 n

end

end A350636.P15469173079087601615

/-!
# A350637: Triangle read by rows: T(n,k) in which row n lists the first n terms of A024916 in reverse order, 1 <= k <= n.

The programs for A350637, the canonical program `A350637.P14576691412698149744` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A350637 has offset 1).

The definition of A350637 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A350637.P13381804805524511933

`A024916(row(n)+1-col(n))`
-/

namespace A350637.P13381804805524511933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024916 (SequenceMachineLib.triRow n + 1 - SequenceMachineLib.triCol n)

end

end A350637.P13381804805524511933

namespace A350637

/-- `A024916(row(n)+1-col(n))` -/
def P13381804805524511933.Spec : Prop :=
  ∀ n, P13381804805524511933.a n = A350637 (n + 1)

end A350637

/-! ## A350637.P14576691412698149744

`A024916(A004736(n+1))`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A350637

/-- `A024916(A004736(n+1))` -/
def P14576691412698149744.Spec : Prop :=
  ∀ n, P14576691412698149744.a n = A350637 (n + 1)

theorem P14576691412698149744.correct : P14576691412698149744.Spec := by
  intro n
  simp only [A350637, Nat.add_sub_cancel]

end A350637

/-! ## A350637.P7760647111923463027

`A024916(C(comp[∑[n]]-n, 2)-n)`
-/

namespace A350637.P7760647111923463027
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024916 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n)

end

end A350637.P7760647111923463027

namespace A350637

/-- `A024916(C(comp[∑[n]]-n, 2)-n)` -/
def P7760647111923463027.Spec : Prop :=
  ∀ n, P7760647111923463027.a n = A350637 (n + 1)

end A350637

/-! ## A350637.P11858797974185375204

`A160664(C(comp[∑[n]]-n, 2)-n)-1`
-/

namespace A350637.P11858797974185375204
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n) - 1

end

end A350637.P11858797974185375204

namespace A350637

/-- `A160664(C(comp[∑[n]]-n, 2)-n)-1` -/
def P11858797974185375204.Spec : Prop :=
  ∀ n, P11858797974185375204.a n = A350637 (n + 1)

end A350637

/-! ## A350637.P9267993504474129057

`A327329(C(comp[∑[n]]-n, 2)-n)/2`
-/

namespace A350637.P9267993504474129057
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327329 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n) : ℚ) / 2

end

end A350637.P9267993504474129057

namespace A350637

/-- `A327329(C(comp[∑[n]]-n, 2)-n)/2` -/
def P9267993504474129057.Spec : Prop :=
  ∀ n, P9267993504474129057.a n = (A350637 (n + 1) : ℚ)

end A350637

/-! ## A350637.P16856015790869079447

`A243980(C(comp[∑[n]]-n, 2)-n)/4`
-/

namespace A350637.P16856015790869079447
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A243980 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n) : ℚ) / 4

end

end A350637.P16856015790869079447

namespace A350637

/-- `A243980(C(comp[∑[n]]-n, 2)-n)/4` -/
def P16856015790869079447.Spec : Prop :=
  ∀ n, P16856015790869079447.a n = (A350637 (n + 1) : ℚ)

end A350637

/-! ## A350637.P996231715953310401

`A024916(A025581(n)+1)`
-/

namespace A350637.P996231715953310401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024916 (A025581 n + 1).toNat

end

end A350637.P996231715953310401

namespace A350637

/-- `A024916(A025581(n)+1)` -/
def P996231715953310401.Spec : Prop :=
  ∀ n, P996231715953310401.a n = A350637 (n + 1)

end A350637

/-! ## A350637.P11326979692369228771

`A024916(A057554(2*(n+1))+1)`
-/

namespace A350637.P11326979692369228771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024916 (A057554 (2 * (n + 1)) + 1).toNat

end

end A350637.P11326979692369228771

namespace A350637

/-- `A024916(A057554(2*(n+1))+1)` -/
def P11326979692369228771.Spec : Prop :=
  ∀ n, P11326979692369228771.a n = A350637 (n + 1)

end A350637

/-! ## A350637.P16686946480187252608

`∑{d}[A130321(n), A000203(A000005(#))]`
-/

namespace A350637.P16686946480187252608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000203 (A000005 d).toNat

end

end A350637.P16686946480187252608

namespace A350637

/-- `∑{d}[A130321(n), A000203(A000005(#))]` -/
def P16686946480187252608.Spec : Prop :=
  ∀ n, P16686946480187252608.a n = A350637 (n + 1)

end A350637

/-! ## A350637.P5858870454635382149

`A340527(n+1)/A140207(n)`
-/

namespace A350637.P5858870454635382149
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A340527 (n + 1) : ℚ) / (A140207 n : ℚ)

end

end A350637.P5858870454635382149

namespace A350637

/-- `A340527(n+1)/A140207(n)` -/
def P5858870454635382149.Spec : Prop :=
  ∀ n, P5858870454635382149.a n = (A350637 (n + 1) : ℚ)

end A350637

/-!
# A350638: Numbers of the form p^2*q, with odd primes p > q, such that q divides p-1.

The programs for A350638, there is no canonical definition to state claims against.
-/

/-! ## A350638.P9691902336379209847

`∩[A069236(n+1), A398421(n+1)]`
-/

namespace A350638.P9691902336379209847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069236 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398421 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350638.P9691902336379209847

/-!
# A350639: a(n) is the number of connected components in the set of cells added at stage n of the cellular automaton described in A350632.

The programs for A350639, there is no canonical definition to state claims against.
-/

/-! ## A350639.P13620391635835155979

`A151886((A151839(n)+1)*A030101(n))`
-/

namespace A350639.P13620391635835155979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151886 ((A151839 n + 1) * A030101 n).toNat

end

end A350639.P13620391635835155979

/-! ## A350639.P11950159348351740885

`A151886(A006257(n)^A345932(n+1))`
-/

namespace A350639.P11950159348351740885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151886 (SequenceMachineLib.roundAway ((A006257 n : ℚ) ^ (A345932 (n + 1) : ℤ))).toNat

end

end A350639.P11950159348351740885

/-! ## A350639.P12761071359426295053

`A151886(A030101(n)^A345932(n+1))`
-/

namespace A350639.P12761071359426295053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151886 (SequenceMachineLib.roundAway ((A030101 n : ℚ) ^ (A345932 (n + 1) : ℤ))).toNat

end

end A350639.P12761071359426295053

/-! ## A350639.P10275985088529910780

`A151839(A151839(n))*A151886(A030101(n))`
-/

namespace A350639.P10275985088529910780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151839 (A151839 n).toNat * A151886 (A030101 n).toNat

end

end A350639.P10275985088529910780

/-! ## A350639.P11197610389175697517

`A062799(A001317(n))`
-/

namespace A350639.P11197610389175697517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062799 (A001317 n).toNat

end

end A350639.P11197610389175697517

/-!
# A350640: a(n) is the minimum lcm of the part sizes of a partition of n into parts of size 3 or more.

The programs for A350640, there is no canonical definition to state claims against.
-/

/-! ## A350640.P334123784714381081

`A279317(A139044(n+1))`
-/

namespace A350640.P334123784714381081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279317 (A139044 (n + 1)).toNat

end

end A350640.P334123784714381081

/-! ## A350640.P9280449002134744360

`A279317(A020639(A000045(n+3)))`
-/

namespace A350640.P9280449002134744360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279317 (A020639 (A000045 (n + 3)).toNat).toNat

end

end A350640.P9280449002134744360

/-! ## A350640.P5244209607440453016

`A090370(n+4)-A000688(A014551(n))`
-/

namespace A350640.P5244209607440453016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090370 (n + 4) - A000688 (A014551 n).toNat

end

end A350640.P5244209607440453016

/-! ## A350640.P13957350830518114476

`A090370(n+4)-A111616(A225297(n+1))`
-/

namespace A350640.P13957350830518114476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090370 (n + 4) - A111616 (A225297 (n + 1)).toNat

end

end A350640.P13957350830518114476

/-! ## A350640.P18384621922219013391

`A090370(n+4)-A159335(A000079(n))`
-/

namespace A350640.P18384621922219013391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090370 (n + 4) - A159335 (A000079 n).toNat

end

end A350640.P18384621922219013391

/-!
# A350641: Numbers k such that the product of k and all terms < k in A050376 has more divisors than the product of all terms < k in A050376 and the smallest term > k in A050376.

The programs for A350641, there is no canonical definition to state claims against.
-/

/-! ## A350641.P16048479273428881551

`A292982(lt[A261517(n), A071569(n+1)])`
-/

namespace A350641.P16048479273428881551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261517 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071569 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292982 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A350641.P16048479273428881551

/-!
# A350642: Expansion of Product_{k>=1} (1-q^(2*k))/(1-q^k)^4.

The programs for A350642, there is no canonical definition to state claims against.
-/

/-! ## A350642.P14202458412647544075

`∑[∑[A003056(A089947(n))]]`
-/

namespace A350642.P14202458412647544075
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A089947 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350642.P14202458412647544075

/-! ## A350642.P2788031728020518695

`A023190(A233698(n))`
-/

namespace A350642.P2788031728020518695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023190 (A233698 n).toNat

end

end A350642.P2788031728020518695

/-!
# A350643: Expansion of Product_{k>=1} (1-q^(2*k))^2/(1-q^k)^7.

The programs for A350643, there is no canonical definition to state claims against.
-/

/-! ## A350643.P5467663254855835470

`A253638(A027768(n+7))`
-/

namespace A350643.P5467663254855835470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253638 (A027768 (n + 7)).toNat

end

end A350643.P5467663254855835470

/-!
# A350644: Expansion of Product_{k>=1} (1-q^(2*k))^3/(1-q^k)^10.

The programs for A350644, there is no canonical definition to state claims against.
-/

/-! ## A350644.P270325480810258707

`A087876(A060933(n))`
-/

namespace A350644.P270325480810258707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087876 (A060933 n).toNat

end

end A350644.P270325480810258707

/-!
# A350645: Number of permutations avoiding 132 of length 3n composed of only 3-cycles.

The programs for A350645, there is no canonical definition to state claims against.
-/

/-! ## A350645.P11210137020930338984

`record[A008611(A238112(n))]`
-/

namespace A350645.P11210137020930338984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A238112 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A350645.P11210137020930338984

/-! ## A350645.P14287771856542477153

`A060384(∑[A063865(n)^n+5^n+1]+n)`
-/

namespace A350645.P14287771856542477153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063865 n ^ n + (5 ^ n : ℤ) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060384 (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)).toNat

end

end A350645.P14287771856542477153

/-!
# A350646: Maximum number of inverses of an element in the full symmetric semigroup T_n.

The programs for A350646, there is no canonical definition to state claims against.
-/

/-! ## A350646.P6356760186806376299

`A010554(A149579(n))`
-/

namespace A350646.P6356760186806376299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010554 (A149579 n).toNat

end

end A350646.P6356760186806376299

/-! ## A350646.P13024772672302378697

`A000010((n²+1)*n!)/ceil(2^(n-1))`
-/

namespace A350646.P13024772672302378697
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 ((n ^ 2 + 1) * Nat.factorial n) : ℚ) / (⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ : ℚ)

end

end A350646.P13024772672302378697

/-! ## A350646.P313549790012560804

`A187448(A079967(n))`
-/

namespace A350646.P313549790012560804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187448 (A079967 n).toNat

end

end A350646.P313549790012560804

/-!
# A350648: Sum over all partitions of [n] of the number of blocks containing their own index when blocks are ordered with decreasing largest elements.

The programs for A350648, there is no canonical definition to state claims against.
-/

/-! ## A350648.P8578476890646597289

`A049639(4*A334811(n+1))`
-/

namespace A350648.P8578476890646597289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049639 (4 * A334811 (n + 1)).toNat

end

end A350648.P8578476890646597289

/-! ## A350648.P7324870957246463324

`A085856((∑[n*2^n]+1)*A006218(n))`
-/

namespace A350648.P7324870957246463324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * 2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085856 (((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ) * A006218 n).toNat

end

end A350648.P7324870957246463324

/-! ## A350648.P6953507920635344074

`A326534(A137199(n))-A327779(n)`
-/

namespace A350648.P6953507920635344074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326534 (A137199 n).toNat - A327779 n

end

end A350648.P6953507920635344074

/-!
# A350649: Number of partitions of [n] avoiding blocks containing their own index when blocks are ordered with decreasing largest elements.

The programs for A350649, there is no canonical definition to state claims against.
-/

/-! ## A350649.P13205257834410403164

`A350647(A024206(n+1))`
-/

namespace A350649.P13205257834410403164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350647 (A024206 (n + 1)).toNat

end

end A350649.P13205257834410403164

/-! ## A350649.P12179292566669126472

`A350647(A002620(n)+n)`
-/

namespace A350649.P12179292566669126472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350647 (A002620 n + (n : ℤ)).toNat

end

end A350649.P12179292566669126472

/-! ## A350649.P3381140788817451844

`A350647(∑[A008619(n)]-1)`
-/

namespace A350649.P3381140788817451844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350647 (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A350649.P3381140788817451844

/-! ## A350649.P11585306805488311230

`A350647(∑[A004526(n)]+n)`
-/

namespace A350649.P11585306805488311230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350647 (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)).toNat

end

end A350649.P11585306805488311230

/-! ## A350649.P8371697181455513420

`A350647(A087811(n+1)-1)`
-/

namespace A350649.P8371697181455513420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350647 (A087811 (n + 1) - 1).toNat

end

end A350649.P8371697181455513420

/-! ## A350649.P1310979191238023862

`A350647(A076921(n+2)-1)`
-/

namespace A350649.P1310979191238023862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350647 (A076921 (n + 2) - 1).toNat

end

end A350649.P1310979191238023862

/-! ## A350649.P12034366050614527673

`A350647(∑[A008619(n)*A057427(n)])`
-/

namespace A350649.P12034366050614527673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n * A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350647 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A350649.P12034366050614527673

/-!
# A350650: Number of partitions of [n] having exactly one block containing its own index when blocks are ordered with decreasing largest elements.

The programs for A350650, there is no canonical definition to state claims against.
-/

/-! ## A350650.P13310828492850298107

`A350647(∑[∑[char[2*n]]])`
-/

namespace A350650.P13310828492850298107
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350647 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A350650.P13310828492850298107

/-! ## A350650.P4564183060462597645

`A057427(n)*A350647(∑[A008619(n)])`
-/

namespace A350650.P4564183060462597645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A350647 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A350650.P4564183060462597645

/-! ## A350650.P14848228657788133168

`A057427(n)*A350647(A087811(n+1))`
-/

namespace A350650.P14848228657788133168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A350647 (A087811 (n + 1)).toNat

end

end A350650.P14848228657788133168

/-! ## A350650.P7023497071377700751

`A052553(∑[n])*A350647(A087811(n+1))`
-/

namespace A350650.P7023497071377700751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052553 (∑ j ∈ Finset.range (n + 1), f1 j) * A350647 (A087811 (n + 1)).toNat

end

end A350650.P7023497071377700751

/-! ## A350650.P2522090584228426007

`A060576(n+1)*A350647(A087811(n+1))`
-/

namespace A350650.P2522090584228426007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 (n + 1) * A350647 (A087811 (n + 1)).toNat

end

end A350650.P2522090584228426007

/-! ## A350650.P6482803600829934629

`A350647(A087811(n+1))+A063524(n+6)`
-/

namespace A350650.P6482803600829934629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350647 (A087811 (n + 1)).toNat + A063524 (n + 6)

end

end A350650.P6482803600829934629

/-! ## A350650.P13981828401052665411

`lcm(A008836(n+1), A350647(A087811(n+1)))`
-/

namespace A350650.P13981828401052665411
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008836 (n + 1)) (A350647 (A087811 (n + 1)).toNat)

end

end A350650.P13981828401052665411

/-! ## A350650.P5941892383626486851

`A350647(A087811(n+1))%record[A350649(n)]`
-/

namespace A350650.P5941892383626486851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350649 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A350647 (A087811 (n + 1)).toNat) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A350650.P5941892383626486851

/-! ## A350650.P12790864041413460375

`A014963(A089967(n+1))*A350647(A087811(n+1))`
-/

namespace A350650.P12790864041413460375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A089967 (n + 1)).toNat * A350647 (A087811 (n + 1)).toNat

end

end A350650.P12790864041413460375

/-!
# A350651: a(n) is the size of the orbit of n under repeated application of A350229 (the sum of a number and its balanced ternary digits).

The programs for A350651, there is no canonical definition to state claims against.
-/

/-! ## A350651.P5113412743435460776

`A001222(A125180(n+1)+A081572(n))`
-/

namespace A350651.P5113412743435460776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A125180 (n + 1) + A081572 n).toNat

end

end A350651.P5113412743435460776

/-! ## A350651.P17963840640801850873

`A226460(n+2)+A062329(A102377(n))`
-/

namespace A350651.P17963840640801850873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226460 (n + 2) + A062329 (A102377 n).toNat

end

end A350651.P17963840640801850873

/-! ## A350651.P13098206552014111093

`A248908(A000040(n+1))+A226460(n+2)`
-/

namespace A350651.P13098206552014111093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248908 (A000040 (n + 1)).toNat + A226460 (n + 2)

end

end A350651.P13098206552014111093

/-! ## A350651.P815306473988716342

`A374251(n+1)+A374248(A218568(n+7))`
-/

namespace A350651.P815306473988716342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374251 (n + 1) + A374248 (A218568 (n + 7)).toNat

end

end A350651.P815306473988716342

/-! ## A350651.P4824142816021871769

`or(A151758(A336957(2*n+5)), A374251(n+1))`
-/

namespace A350651.P4824142816021871769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A151758 (A336957 (2 * n + 5)).toNat) (A374251 (n + 1))

end

end A350651.P4824142816021871769

/-!
# A350652: a(n) is where the chosen card needs to be placed in a deck of 2n cards when performing "Persistimis Possessiamo" trick.

The programs for A350652, the canonical program `A350652.P653115194884085227` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A350652 has offset 1).

The definition of A350652 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A350652.P653115194884085227

`2*(n+2-a(floor((n+1)/2)-1))` with `a(0)=2`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A350652

/-- `2*(n+2-a(floor((n+1)/2)-1))` -/
def P653115194884085227.Spec : Prop :=
  ∀ n, P653115194884085227.a n = A350652 (n + 1)

theorem P653115194884085227.correct : P653115194884085227.Spec := by
  intro n
  simp only [A350652, Nat.add_sub_cancel]

end A350652

/-! ## A350652.P1392602858755557592

`2*(n-a(ceil(n/2)-1))+4` with `a(0)=2`
-/

namespace A350652.P1392602858755557592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  2 * ((n : ℤ) - a (⌈(n : ℚ) / 2⌉ - 1).toNat) + 4

end

end A350652.P1392602858755557592

namespace A350652

/-- `2*(n-a(ceil(n/2)-1))+4` -/
def P1392602858755557592.Spec : Prop :=
  ∀ n, P1392602858755557592.a n = A350652 (n + 1)

end A350652

/-! ## A350652.P17808132674521005967

`A347325(2*(n+1))`
-/

namespace A350652.P17808132674521005967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347325 (2 * (n + 1))

end

end A350652.P17808132674521005967

namespace A350652

/-- `A347325(2*(n+1))` -/
def P17808132674521005967.Spec : Prop :=
  ∀ n, P17808132674521005967.a n = A350652 (n + 1)

end A350652

/-! ## A350652.P229428187581229834

`lcm(2, A347325(Δ[(n+1)²]))`
-/

namespace A350652.P229428187581229834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A347325 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat)

end

end A350652.P229428187581229834

namespace A350652

/-- `lcm(2, A347325(Δ[(n+1)²]))` -/
def P229428187581229834.Spec : Prop :=
  ∀ n, (P229428187581229834.a n : ℤ) = A350652 (n + 1)

end A350652

/-! ## A350652.P3206008899706853402

`2*(n-a(A065033(n)-1)+2)` with `a(0)=2`
-/

namespace A350652.P3206008899706853402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  2 * ((n : ℤ) - a (A065033 n - 1).toNat + 2)

end

end A350652.P3206008899706853402

namespace A350652

/-- `2*(n-a(A065033(n)-1)+2)` -/
def P3206008899706853402.Spec : Prop :=
  ∀ n, P3206008899706853402.a n = A350652 (n + 1)

end A350652

/-! ## A350652.P17623894272709420928

`A000027(A347325(Δ[(n+1)²]))`
-/

namespace A350652.P17623894272709420928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A347325 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A350652.P17623894272709420928

namespace A350652

/-- `A000027(A347325(Δ[(n+1)²]))` -/
def P17623894272709420928.Spec : Prop :=
  ∀ n, P17623894272709420928.a n = A350652 (n + 1)

end A350652

/-! ## A350652.P393006068194591274

`n+2-A053985(A035327(n+1))`
-/

namespace A350652.P393006068194591274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A053985 (A035327 (n + 1)).toNat

end

end A350652.P393006068194591274

namespace A350652

/-- `n+2-A053985(A035327(n+1))` -/
def P393006068194591274.Spec : Prop :=
  ∀ n, P393006068194591274.a n = A350652 (n + 1)

end A350652

/-! ## A350652.P5261923625865951944

`A005843(2-A347325(n+1)+n)`
-/

namespace A350652.P5261923625865951944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (2 - A347325 (n + 1) + (n : ℤ)).toNat

end

end A350652.P5261923625865951944

namespace A350652

/-- `A005843(2-A347325(n+1)+n)` -/
def P5261923625865951944.Spec : Prop :=
  ∀ n, P5261923625865951944.a n = A350652 (n + 1)

end A350652

/-! ## A350652.P3897130516353437702

`A347325(Δ[(n+1)²])%A000040(n+1)²`
-/

namespace A350652.P3897130516353437702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A347325 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat) (A000040 (n + 1) ^ 2)

end

end A350652.P3897130516353437702

namespace A350652

/-- `A347325(Δ[(n+1)²])%A000040(n+1)²` -/
def P3897130516353437702.Spec : Prop :=
  ∀ n, P3897130516353437702.a n = A350652 (n + 1)

end A350652

/-!
# A350653: a(n) is the number of weak compositions of n into n-1 parts in which at least one part is zero.

The programs for A350653, the canonical program `A350653.P3315705364888745000` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A350653 has offset 2).

The definition of A350653 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A350653.P1833318708881669983

`A001791(n+1)-(n+2)+1`
-/

namespace A350653.P1833318708881669983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001791 (n + 1) - (n + 2 : ℤ) + 1

end

end A350653.P1833318708881669983

namespace A350653

/-- `A001791(n+1)-(n+2)+1` -/
def P1833318708881669983.Spec : Prop :=
  ∀ n, P1833318708881669983.a n = A350653 (n + 2)

end A350653

/-! ## A350653.P3315705364888745000

`C(2*(n+2)-2, n+2)-(n+1)`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A350653

/-- `C(2*(n+2)-2, n+2)-(n+1)` -/
def P3315705364888745000.Spec : Prop :=
  ∀ n, P3315705364888745000.a n = A350653 (n + 2)

theorem P3315705364888745000.correct : P3315705364888745000.Spec := by
  intro n
  simp only [A350653, Nat.add_sub_cancel]

end A350653

/-! ## A350653.P4552534748012863996

`A322938(n)-n`
-/

namespace A350653.P4552534748012863996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322938 n - (n : ℤ)

end

end A350653.P4552534748012863996

namespace A350653

/-- `A322938(n)-n` -/
def P4552534748012863996.Spec : Prop :=
  ∀ n, P4552534748012863996.a n = A350653 (n + 2)

end A350653

/-! ## A350653.P15301540699877035166

`∑[∑[A073663(n)]-1]`
-/

namespace A350653.P15301540699877035166
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073663 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350653.P15301540699877035166

namespace A350653

/-- `∑[∑[A073663(n)]-1]` -/
def P15301540699877035166.Spec : Prop :=
  ∀ n, P15301540699877035166.a n = A350653 (n + 2)

end A350653

/-! ## A350653.P924947226549275130

`∑[A076540(n+1)-1]`
-/

namespace A350653.P924947226549275130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076540 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350653.P924947226549275130

namespace A350653

/-- `∑[A076540(n+1)-1]` -/
def P924947226549275130.Spec : Prop :=
  ∀ n, P924947226549275130.a n = A350653 (n + 2)

end A350653

/-! ## A350653.P9401787756354520877

`(n+1)*∑[A000245(n)]`
-/

namespace A350653.P9401787756354520877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000245 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A350653.P9401787756354520877

namespace A350653

/-- `(n+1)*∑[A000245(n)]` -/
def P9401787756354520877.Spec : Prop :=
  ∀ n, P9401787756354520877.a n = A350653 (n + 2)

end A350653

/-! ## A350653.P10010377452821240634

`A001791(n+1)-(n+1)`
-/

namespace A350653.P10010377452821240634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001791 (n + 1) - (n + 1 : ℤ)

end

end A350653.P10010377452821240634

namespace A350653

/-- `A001791(n+1)-(n+1)` -/
def P10010377452821240634.Spec : Prop :=
  ∀ n, P10010377452821240634.a n = A350653 (n + 2)

end A350653

/-! ## A350653.P17988287037023092139

`(n+1)*A141364(n+1)`
-/

namespace A350653.P17988287037023092139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A141364 (n + 1)

end

end A350653.P17988287037023092139

namespace A350653

/-- `(n+1)*A141364(n+1)` -/
def P17988287037023092139.Spec : Prop :=
  ∀ n, P17988287037023092139.a n = A350653 (n + 2)

end A350653

/-! ## A350653.P10868740192456916980

`A323229(n+1)-(n+2)`
-/

namespace A350653.P10868740192456916980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323229 (n + 1) - (n + 2 : ℤ)

end

end A350653.P10868740192456916980

namespace A350653

/-- `A323229(n+1)-(n+2)` -/
def P10868740192456916980.Spec : Prop :=
  ∀ n, P10868740192456916980.a n = A350653 (n + 2)

end A350653

/-! ## A350653.P11189851961995257777

`A026023(2*n)-(n+1)`
-/

namespace A350653.P11189851961995257777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026023 (2 * n) - (n + 1 : ℤ)

end

end A350653.P11189851961995257777

namespace A350653

/-- `A026023(2*n)-(n+1)` -/
def P11189851961995257777.Spec : Prop :=
  ∀ n, P11189851961995257777.a n = A350653 (n + 2)

end A350653

/-! ## A350653.P12446598060248768929

`A047171(2*(n+1))-n`
-/

namespace A350653.P12446598060248768929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047171 (2 * (n + 1)) - (n : ℤ)

end

end A350653.P12446598060248768929

namespace A350653

/-- `A047171(2*(n+1))-n` -/
def P12446598060248768929.Spec : Prop :=
  ∀ n, P12446598060248768929.a n = A350653 (n + 2)

end A350653

/-! ## A350653.P7505152502921691994

`A047182(2*(n+1))-n`
-/

namespace A350653.P7505152502921691994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047182 (2 * (n + 1)) - (n : ℤ)

end

end A350653.P7505152502921691994

namespace A350653

/-- `A047182(2*(n+1))-n` -/
def P7505152502921691994.Spec : Prop :=
  ∀ n, P7505152502921691994.a n = A350653 (n + 2)

end A350653

/-! ## A350653.P16989081239151243660

`A117187(2*n)-(n+1)`
-/

namespace A350653.P16989081239151243660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117187 (2 * n) - (n + 1 : ℤ)

end

end A350653.P16989081239151243660

namespace A350653

/-- `A117187(2*n)-(n+1)` -/
def P16989081239151243660.Spec : Prop :=
  ∀ n, P16989081239151243660.a n = A350653 (n + 2)

end A350653

/-! ## A350653.P6126829828426838202

`∑[Δ[A037952(2*n)]-1]`
-/

namespace A350653.P6126829828426838202
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037952 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350653.P6126829828426838202

namespace A350653

/-- `∑[Δ[A037952(2*n)]-1]` -/
def P6126829828426838202.Spec : Prop :=
  ∀ n, P6126829828426838202.a n = A350653 (n + 2)

end A350653

/-! ## A350653.P10657656318907228752

`∑[Δ[A037955(2*n)]-1]`
-/

namespace A350653.P10657656318907228752
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037955 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350653.P10657656318907228752

namespace A350653

/-- `∑[Δ[A037955(2*n)]-1]` -/
def P10657656318907228752.Spec : Prop :=
  ∀ n, P10657656318907228752.a n = A350653 (n + 2)

end A350653

/-! ## A350653.P5154337008076522300

`Δ[A279561(n+1)]-(n+1)`
-/

namespace A350653.P5154337008076522300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279561 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (n + 1 : ℤ)

end

end A350653.P5154337008076522300

namespace A350653

/-- `Δ[A279561(n+1)]-(n+1)` -/
def P5154337008076522300.Spec : Prop :=
  ∀ n, P5154337008076522300.a n = A350653 (n + 2)

end A350653

/-! ## A350653.P7128571564329129509

`(n+1)*(A120304(n+1)+1)`
-/

namespace A350653.P7128571564329129509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A120304 (n + 1) + 1)

end

end A350653.P7128571564329129509

namespace A350653

/-- `(n+1)*(A120304(n+1)+1)` -/
def P7128571564329129509.Spec : Prop :=
  ∀ n, P7128571564329129509.a n = A350653 (n + 2)

end A350653

/-! ## A350653.P5152116329149967276

`(n+1)*(A000108(n+1)-1)`
-/

namespace A350653.P5152116329149967276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A000108 (n + 1) - 1)

end

end A350653.P5152116329149967276

namespace A350653

/-- `(n+1)*(A000108(n+1)-1)` -/
def P5152116329149967276.Spec : Prop :=
  ∀ n, P5152116329149967276.a n = A350653 (n + 2)

end A350653

/-! ## A350653.P2523410256615195842

`A007007(2*(n+1))-(n+1)`
-/

namespace A350653.P2523410256615195842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007007 (2 * (n + 1)) - (n + 1 : ℤ)

end

end A350653.P2523410256615195842

namespace A350653

/-- `A007007(2*(n+1))-(n+1)` -/
def P2523410256615195842.Spec : Prop :=
  ∀ n, P2523410256615195842.a n = A350653 (n + 2)

end A350653

/-! ## A350653.P9773778972890005879

`A037952(2*(n+1))-(n+1)`
-/

namespace A350653.P9773778972890005879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037952 (2 * (n + 1)) - (n + 1 : ℤ)

end

end A350653.P9773778972890005879

namespace A350653

/-- `A037952(2*(n+1))-(n+1)` -/
def P9773778972890005879.Spec : Prop :=
  ∀ n, P9773778972890005879.a n = A350653 (n + 2)

end A350653

/-!
# A350654: Smallest k such that A349949(k) = n, or -1 if no such k exists.

The programs for A350654, there is no canonical definition to state claims against.
-/

/-! ## A350654.P6911665562360788305

`A233583(record[A308479(n+1)²])`
-/

namespace A350654.P6911665562360788305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308479 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A350654.P6911665562360788305

/-! ## A350654.P1514202061602538625

`A328607(A062113(n+1))`
-/

namespace A350654.P1514202061602538625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328607 (A062113 (n + 1)).toNat

end

end A350654.P1514202061602538625

/-!
# A350658: a(n) is the minimal digit, expressed in base 10, in the base-n representation of 2^n.

The programs for A350658, there is no canonical definition to state claims against.
-/

/-! ## A350658.P12104215546376001922

`A083954(A000079(n))%A001113(n)`
-/

namespace A350658.P12104215546376001922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083954 (A000079 n).toNat) (A001113 (n + 1))

end

end A350658.P12104215546376001922

/-! ## A350658.P2345941748747047045

`A065033(A002940(n+1))%A052938(n)`
-/

namespace A350658.P2345941748747047045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065033 (A002940 (n + 1)).toNat) (A052938 n)

end

end A350658.P2345941748747047045

/-! ## A350658.P17064007246307139484

`A008908(A006877(2*n+1))%A078719(n+2)`
-/

namespace A350658.P17064007246307139484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008908 (A006877 (2 * n + 1)).toNat) (A078719 (n + 2))

end

end A350658.P17064007246307139484

/-! ## A350658.P15168799859875662878

`A007949(3*2^n-(n+2))+val(∑[gcd(2, n)], 3)`
-/

namespace A350658.P15168799859875662878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (3 * 2 ^ n - (n + 2)) + (SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j) 3 : ℤ)

end

end A350658.P15168799859875662878

/-! ## A350658.P968492421606292148

`A204423(A027849(n+1))`
-/

namespace A350658.P968492421606292148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204423 (A027849 (n + 1)).toNat

end

end A350658.P968492421606292148

/-!
# A350660: a(n) is the average number of key comparisons, rounded to the nearest integer, required to sort n records with distinct keys using bubble sort (Algorithm B in Don Knuth's TAOCP Vol. 3).

The programs for A350660, there is no canonical definition to state claims against.
-/

/-! ## A350660.P7005295522041920665

`A080827(n+1)-A008651(A157615(n+1))`
-/

namespace A350660.P7005295522041920665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080827 (n + 1) - A008651 (A157615 (n + 1)).toNat

end

end A350660.P7005295522041920665

/-! ## A350660.P12580856074734378948

`A003056(∑[A051462(n)+1])`
-/

namespace A350660.P12580856074734378948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051462 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A350660.P12580856074734378948

/-! ## A350660.P11174335011643102947

`A003056(∑[∑[A115285(n)]+1])`
-/

namespace A350660.P11174335011643102947
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115285 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A350660.P11174335011643102947

/-! ## A350660.P10388718544543983755

`A215781((2*(n+1)²-∑[A180122(n+1)])%A089030(3*n+4))`
-/

namespace A350660.P10388718544543983755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180122 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215781 (Int.tmod ((2 * (n + 1) ^ 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j) (A089030 (3 * n + 4))).toNat

end

end A350660.P10388718544543983755

/-! ## A350660.P18133916398916323664

`A195081(A342939(n+1))`
-/

namespace A350660.P18133916398916323664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195081 (A342939 (n + 1)).toNat

end

end A350660.P18133916398916323664

/-!
# A350661: a(1) = 1; a(n) = a(A007947(n) - 1) + n.

The programs for A350661, the canonical program `A350661.P17429360268206937407` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A350661 has offset 1).

The definition of A350661 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(A007947(n+1)-2)+n+1` (program `A350661.P17429360268206937407`, by `A350661.P17429360268206937407.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A350661.P16664389627293498165

`a(A075423(n+1)-1)+n+1` with `a(0)=1`
-/

namespace A350661.P16664389627293498165
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (A075423 (n + 1) - 1).toNat + (n + 1)

end

end A350661.P16664389627293498165

namespace A350661

/-- `a(A075423(n+1)-1)+n+1` -/
def P16664389627293498165.Spec : Prop :=
  ∀ n, (P16664389627293498165.a n : ℤ) = A350661 (n + 1)

theorem P16664389627293498165.correct : P16664389627293498165.Spec := by
  intro n
  simp only [A350661, Nat.add_sub_cancel, A350661.P16664389627293498165.a, A350661.P17429360268206937407.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A075423, A075423.P4628253282240293727.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A350661

/-! ## A350661.P17429360268206937407

`a(A007947(n+1)-2)+n+1` with `a(0)=1`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A350661

/-- `a(A007947(n+1)-2)+n+1` -/
def P17429360268206937407.Spec : Prop :=
  ∀ n, (P17429360268206937407.a n : ℤ) = A350661 (n + 1)

theorem P17429360268206937407.correct : P17429360268206937407.Spec := by
  intro n
  simp only [A350661, Nat.add_sub_cancel]

end A350661

/-! ## A350661.P194061227995630984

`a(∏{p}[n+1, #]-2)+1+n` with `a(0)=1`
-/

namespace A350661.P194061227995630984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (∏ p ∈ Nat.primeFactors (f1 n), p - 2) + 1 + n

end

end A350661.P194061227995630984

namespace A350661

/-- `a(∏{p}[n+1, #]-2)+1+n` -/
def P194061227995630984.Spec : Prop :=
  ∀ n, (P194061227995630984.a n : ℤ) = A350661 (n + 1)

end A350661

/-! ## A350661.P8094005909007553738

`a(A015053(n+1)-2)+1+n` with `a(0)=1`
-/

namespace A350661.P8094005909007553738
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (A015053 (n + 1) - 2).toNat + 1 + n

end

end A350661.P8094005909007553738

namespace A350661

/-- `a(A015053(n+1)-2)+1+n` -/
def P8094005909007553738.Spec : Prop :=
  ∀ n, (P8094005909007553738.a n : ℤ) = A350661 (n + 1)

end A350661

/-! ## A350661.P1000791633815824580

`a(n-1-A066503(n+1))+n+1` with `a(0)=1`
-/

namespace A350661.P1000791633815824580
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a ((n : ℤ) - 1 - A066503 (n + 1)).toNat + (n + 1)

end

end A350661.P1000791633815824580

namespace A350661

/-- `a(n-1-A066503(n+1))+n+1` -/
def P1000791633815824580.Spec : Prop :=
  ∀ n, (P1000791633815824580.a n : ℤ) = A350661 (n + 1)

theorem P1000791633815824580.correct : P1000791633815824580.Spec := by
  intro n
  simp only [A350661, Nat.add_sub_cancel, A350661.P1000791633815824580.a, A350661.P17429360268206937407.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A066503, A066503.P17588364347287804265.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A350661

/-! ## A350661.P10091723669245942300

`a(∏{d}[n+1, A089026(#)]-2)+1+n` with `a(0)=1`
-/

namespace A350661.P10091723669245942300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (∏ d ∈ Nat.divisors (f1 n), A089026 d - 2).toNat + 1 + n

end

end A350661.P10091723669245942300

namespace A350661

/-- `a(∏{d}[n+1, A089026(#)]-2)+1+n` -/
def P10091723669245942300.Spec : Prop :=
  ∀ n, (P10091723669245942300.a n : ℤ) = A350661 (n + 1)

end A350661

/-!
# A350665: Number of permutations avoiding 321 of length 3n composed of only 3-cycles.

The programs for A350665, there is no canonical definition to state claims against.
-/

/-! ## A350665.P10425667153289935611

`A214764(n)-A090975(A350649(n))`
-/

namespace A350665.P10425667153289935611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214764 n - A090975 (A350649 n).toNat

end

end A350665.P10425667153289935611

/-! ## A350665.P12415173790317594005

`A008620(xor(A190917(n+1), A278990(n)))`
-/

namespace A350665.P12415173790317594005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (Int.xor (A190917 (n + 1)) (A278990 n)).toNat

end

end A350665.P12415173790317594005

/-!
# A350666: Numbers congruent to 0, 5, and 7 modulo 9: positions of 0 in A159955.

The programs for A350666, the canonical program `A350666.P12227957440926608139` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A350666 has offset 0).

The definition of A350666 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A350666.P7833850491478893633

`1+3*n-2/sqrt(3)*sin(2*(n+1)*π/3)`
-/

namespace A350666.P7833850491478893633
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (1 + 3 * n : ℝ) - 2 / Real.sqrt (3 : ℝ) * Real.sin ((2 * (n + 1) : ℝ) * Real.pi / 3)

end

end A350666.P7833850491478893633

namespace A350666

/-- `1+3*n-2/sqrt(3)*sin(2*(n+1)*π/3)` -/
def P7833850491478893633.Spec : Prop :=
  ∀ n, P7833850491478893633.a n = (A350666 n : ℝ)

end A350666

/-! ## A350666.P12227957440926608139

`1+3*n-A049347(n)`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A350666

/-- `1+3*n-A049347(n)` -/
def P12227957440926608139.Spec : Prop :=
  ∀ n, P12227957440926608139.a n = A350666 n

theorem P12227957440926608139.correct : P12227957440926608139.Spec := by
  intro n
  simp only [A350666]

end A350666

/-! ## A350666.P7750587896923060519

`a(n-3)+9` with `a(0)=0, a(1)=5, a(2)=7`
-/

namespace A350666.P7750587896923060519
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 5, 7] fun n a =>
  a (n - 3) + 9

end

end A350666.P7750587896923060519

namespace A350666

/-- `a(n-3)+9` -/
def P7750587896923060519.Spec : Prop :=
  ∀ n, (P7750587896923060519.a n : ℤ) = A350666 n

end A350666

/-! ## A350666.P13256083344653408883

`(2*n)%3+3*n`
-/

namespace A350666.P13256083344653408883
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n % 3 + 3 * n

end

end A350666.P13256083344653408883

namespace A350666

/-- `(2*n)%3+3*n` -/
def P13256083344653408883.Spec : Prop :=
  ∀ n, (P13256083344653408883.a n : ℤ) = A350666 n

end A350666

/-! ## A350666.P9392043601080633564

`∑[and(5, dr(6*n))]+n`
-/

namespace A350666.P9392043601080633564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 5 (SequenceMachineLib.digitalRoot (6 * n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A350666.P9392043601080633564

namespace A350666

/-- `∑[and(5, dr(6*n))]+n` -/
def P9392043601080633564.Spec : Prop :=
  ∀ n, (P9392043601080633564.a n : ℤ) = A350666 n

end A350666

/-! ## A350666.P11354826177710045322

`∑[abs(a(n-3))]` with `a(0)=0, a(1)=5, a(2)=2, a(3)=2`
-/

namespace A350666.P11354826177710045322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 5, 2, 2] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350666.P11354826177710045322

namespace A350666

/-- `∑[abs(a(n-3))]` -/
def P11354826177710045322.Spec : Prop :=
  ∀ n, (P11354826177710045322.a n : ℤ) = A350666 n

end A350666

/-! ## A350666.P11483948687062407275

`∑[dr(a(n-3))]` with `a(0)=0, a(1)=5, a(2)=2, a(3)=2`
-/

namespace A350666.P11483948687062407275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 5, 2, 2] fun n f1 =>
  SequenceMachineLib.digitalRoot (f1 (n - 3) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350666.P11483948687062407275

namespace A350666

/-- `∑[dr(a(n-3))]` -/
def P11483948687062407275.Spec : Prop :=
  ∀ n, (P11483948687062407275.a n : ℤ) = A350666 n

end A350666

/-! ## A350666.P4421672643346461679

`∑[floor(a(n-3))]` with `a(0)=0, a(1)=5, a(2)=2, a(3)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A350666.P4421672643346461679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 5, 2, 2] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350666.P4421672643346461679

namespace A350666

/-- `∑[floor(a(n-3))]` -/
def P4421672643346461679.Spec : Prop :=
  ∀ n, (P4421672643346461679.a n : ℤ) = A350666 n

end A350666

/-! ## A350666.P10525562729237402117

`∑[ceil(a(n-3))]` with `a(0)=0, a(1)=5, a(2)=2, a(3)=2`

`ceil` is left out, it is the identity on integers.
-/

namespace A350666.P10525562729237402117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 5, 2, 2] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350666.P10525562729237402117

namespace A350666

/-- `∑[ceil(a(n-3))]` -/
def P10525562729237402117.Spec : Prop :=
  ∀ n, (P10525562729237402117.a n : ℤ) = A350666 n

end A350666

/-! ## A350666.P6609175732688173974

`∑[round(a(n-3))]` with `a(0)=0, a(1)=5, a(2)=2, a(3)=2`

`round` is left out, it is the identity on integers.
-/

namespace A350666.P6609175732688173974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 5, 2, 2] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350666.P6609175732688173974

namespace A350666

/-- `∑[round(a(n-3))]` -/
def P6609175732688173974.Spec : Prop :=
  ∀ n, (P6609175732688173974.a n : ℤ) = A350666 n

end A350666

/-! ## A350666.P2281680771752277736

`2*n+3*ceil(n/3)`
-/

namespace A350666.P2281680771752277736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + 3 * ⌈(n : ℚ) / 3⌉

end

end A350666.P2281680771752277736

namespace A350666

/-- `2*n+3*ceil(n/3)` -/
def P2281680771752277736.Spec : Prop :=
  ∀ n, P2281680771752277736.a n = A350666 n

end A350666

/-! ## A350666.P17753360976320227834

`ogf((5x+2x^2+2x^3)/(1-x-x^3+x^4))`
-/

namespace A350666.P17753360976320227834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 5, 2, 2] [1, -1, 0, -1, 1] n

end

end A350666.P17753360976320227834

namespace A350666

/-- `ogf((5x+2x^2+2x^3)/(1-x-x^3+x^4))` -/
def P17753360976320227834.Spec : Prop :=
  ∀ n, P17753360976320227834.a n = A350666 n

end A350666

/-! ## A350666.P16299633702814139211

`∑[2*a(n-3)-a(n-3)]` with `a(0)=0, a(1)=5, a(2)=2, a(3)=2`
-/

namespace A350666.P16299633702814139211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 5, 2, 2] fun n f1 =>
  2 * f1 (n - 3) - f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350666.P16299633702814139211

namespace A350666

/-- `∑[2*a(n-3)-a(n-3)]` -/
def P16299633702814139211.Spec : Prop :=
  ∀ n, P16299633702814139211.a n = A350666 n

end A350666

/-! ## A350666.P8981384595144383900

`lt[dr(2*n+2*n+1)+n-1, n+3]`
-/

namespace A350666.P8981384595144383900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.digitalRoot (2 * n + (2 * n + 1) : ℤ) : ℤ) + ((n : ℤ) - 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A350666.P8981384595144383900

namespace A350666

/-- `lt[dr(2*n+2*n+1)+n-1, n+3]` -/
def P8981384595144383900.Spec : Prop :=
  ∀ n, (P8981384595144383900.a n : ℤ) = A350666 n

end A350666

/-! ## A350666.P7761465957291271700

`A017041(n)%A263536(n+1)`
-/

namespace A350666.P7761465957291271700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017041 n) (A263536 (n + 1))

end

end A350666.P7761465957291271700

namespace A350666

/-- `A017041(n)%A263536(n+1)` -/
def P7761465957291271700.Spec : Prop :=
  ∀ n, P7761465957291271700.a n = A350666 n

end A350666

/-! ## A350666.P14588918949901763823

`∪[A130877(n+1), A017245(n)]`
-/

namespace A350666.P14588918949901763823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130877 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017245 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A350666.P14588918949901763823

namespace A350666

/-- `∪[A130877(n+1), A017245(n)]` -/
def P14588918949901763823.Spec : Prop :=
  ∀ n, (P14588918949901763823.a n : ℤ) = A350666 n

end A350666

/-! ## A350666.P14889585892443612744

`A187318(A047205(n+1))`
-/

namespace A350666.P14889585892443612744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187318 (A047205 (n + 1)).toNat

end

end A350666.P14889585892443612744

namespace A350666

/-- `A187318(A047205(n+1))` -/
def P14889585892443612744.Spec : Prop :=
  ∀ n, P14889585892443612744.a n = A350666 n

end A350666

/-! ## A350666.P14144309332829501026

`∑[A021199(2*n)]`
-/

namespace A350666.P14144309332829501026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021199 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350666.P14144309332829501026

namespace A350666

/-- `∑[A021199(2*n)]` -/
def P14144309332829501026.Spec : Prop :=
  ∀ n, P14144309332829501026.a n = A350666 n

end A350666

/-! ## A350666.P5375781470614793348

`A248375(A047477(n+1))`
-/

namespace A350666.P5375781470614793348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248375 (A047477 (n + 1)).toNat

end

end A350666.P5375781470614793348

namespace A350666

/-- `A248375(A047477(n+1))` -/
def P5375781470614793348.Spec : Prop :=
  ∀ n, P5375781470614793348.a n = A350666 n

end A350666

/-! ## A350666.P4424476387292051658

`eq[0, n*A060588(n)]`
-/

namespace A350666.P4424476387292051658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A060588 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A350666.P4424476387292051658

namespace A350666

/-- `eq[0, n*A060588(n)]` -/
def P4424476387292051658.Spec : Prop :=
  ∀ n, (P4424476387292051658.a n : ℤ) = A350666 n

end A350666

/-!
# A350667: Numbers congruent to 1, 3, and 8 modulo 9: positions of 1 in A159955.

The programs for A350667, the canonical program `A350667.P11391179228801268589` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A350667 has offset 0).

The definition of A350667 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A350667.P11391179228801268589

`1+3*n-2*sin(2*n*π/3)/sqrt(3)`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A350667

/-- `1+3*n-2*sin(2*n*π/3)/sqrt(3)` -/
def P11391179228801268589.Spec : Prop :=
  ∀ n, P11391179228801268589.a n = (A350667 n : ℝ)

end A350667

/-! ## A350667.P7384132574483089164

`∑[(n%3)!²]+n`
-/

namespace A350667.P7384132574483089164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n % 3) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A350667.P7384132574483089164

namespace A350667

/-- `∑[(n%3)!²]+n` -/
def P7384132574483089164.Spec : Prop :=
  ∀ n, (P7384132574483089164.a n : ℤ) = A350667 n

end A350667

/-! ## A350667.P1796880929421538078

`lt[n, sin(dr(n)²)+n]`
-/

namespace A350667.P1796880929421538078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (SequenceMachineLib.digitalRoot (n : ℤ) ^ 2 : ℝ) + (n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A350667.P1796880929421538078

namespace A350667

/-- `lt[n, sin(dr(n)²)+n]` -/
def P1796880929421538078.Spec : Prop :=
  ∀ n, (P1796880929421538078.a n : ℤ) = A350667 n

end A350667

/-! ## A350667.P10027328103157661124

`lt[n-sin(dr(n)²), n]`
-/

namespace A350667.P10027328103157661124
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) - Real.sin (SequenceMachineLib.digitalRoot (n : ℤ) ^ 2 : ℝ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A350667.P10027328103157661124

namespace A350667

/-- `lt[n-sin(dr(n)²), n]` -/
def P10027328103157661124.Spec : Prop :=
  ∀ n, (P10027328103157661124.a n : ℤ) = A350667 n

end A350667

/-! ## A350667.P168376574482854903

`comp[ceil(sin(dr(n)²)+n)]`
-/

namespace A350667.P168376574482854903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin (SequenceMachineLib.digitalRoot (n : ℤ) ^ 2 : ℝ) + (n : ℝ)⌉

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A350667.P168376574482854903

namespace A350667

/-- `comp[ceil(sin(dr(n)²)+n)]` -/
def P168376574482854903.Spec : Prop :=
  ∀ n, (P168376574482854903.a n : ℤ) = A350667 n

end A350667

/-! ## A350667.P5723475503537005522

`a(n-3)+9` with `a(0)=1, a(1)=3, a(2)=8`
-/

namespace A350667.P5723475503537005522
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 8] fun n a =>
  a (n - 3) + 9

end

end A350667.P5723475503537005522

namespace A350667

/-- `a(n-3)+9` -/
def P5723475503537005522.Spec : Prop :=
  ∀ n, (P5723475503537005522.a n : ℤ) = A350667 n

end A350667

/-! ## A350667.P12317097527361630875

`∑[and(5, dr(3*n))+1]`
-/

namespace A350667.P12317097527361630875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 5 (SequenceMachineLib.digitalRoot (3 * n : ℤ)) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350667.P12317097527361630875

namespace A350667

/-- `∑[and(5, dr(3*n))+1]` -/
def P12317097527361630875.Spec : Prop :=
  ∀ n, (P12317097527361630875.a n : ℤ) = A350667 n

end A350667

/-! ## A350667.P13491339585927946779

`∑[abs(a(n-3))]` with `a(0)=1, a(1)=2, a(2)=5, a(3)=2`
-/

namespace A350667.P13491339585927946779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 5, 2] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350667.P13491339585927946779

namespace A350667

/-- `∑[abs(a(n-3))]` -/
def P13491339585927946779.Spec : Prop :=
  ∀ n, (P13491339585927946779.a n : ℤ) = A350667 n

end A350667

/-! ## A350667.P18255567570902088894

`∑[dr(a(n-3))]` with `a(0)=1, a(1)=2, a(2)=5, a(3)=2`
-/

namespace A350667.P18255567570902088894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 5, 2] fun n f1 =>
  SequenceMachineLib.digitalRoot (f1 (n - 3) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350667.P18255567570902088894

namespace A350667

/-- `∑[dr(a(n-3))]` -/
def P18255567570902088894.Spec : Prop :=
  ∀ n, (P18255567570902088894.a n : ℤ) = A350667 n

end A350667

/-! ## A350667.P2385379989523541786

`∑[floor(a(n-3))]` with `a(0)=1, a(1)=2, a(2)=5, a(3)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A350667.P2385379989523541786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 5, 2] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350667.P2385379989523541786

namespace A350667

/-- `∑[floor(a(n-3))]` -/
def P2385379989523541786.Spec : Prop :=
  ∀ n, (P2385379989523541786.a n : ℤ) = A350667 n

end A350667

/-! ## A350667.P10809097964126490911

`3*n+2-(n+1)%3`
-/

namespace A350667.P10809097964126490911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) + (2 - (((n + 1) % 3 : ℕ) : ℤ))

end

end A350667.P10809097964126490911

namespace A350667

/-- `3*n+2-(n+1)%3` -/
def P10809097964126490911.Spec : Prop :=
  ∀ n, P10809097964126490911.a n = A350667 n

end A350667

/-! ## A350667.P15195150454703660737

`(2*n+1)%3+3*n`
-/

namespace A350667.P15195150454703660737
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) % 3 + 3 * n

end

end A350667.P15195150454703660737

namespace A350667

/-- `(2*n+1)%3+3*n` -/
def P15195150454703660737.Spec : Prop :=
  ∀ n, (P15195150454703660737.a n : ℤ) = A350667 n

end A350667

/-! ## A350667.P8030048512103260022

`ogf((1+2x+5x^2+x^3)/(1-x-x^3+x^4))`
-/

namespace A350667.P8030048512103260022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 5, 1] [1, -1, 0, -1, 1] n

end

end A350667.P8030048512103260022

namespace A350667

/-- `ogf((1+2x+5x^2+x^3)/(1-x-x^3+x^4))` -/
def P8030048512103260022.Spec : Prop :=
  ∀ n, P8030048512103260022.a n = A350667 n

end A350667

/-! ## A350667.P8676032272140354103

`eq[0, C(n, a(n-3)²)]` with `a(0)=2, a(1)=0, a(2)=1`
-/

namespace A350667.P8676032272140354103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2, 0, 1] fun n f2 =>
  Nat.choose n (f2 (n - 3) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A350667.P8676032272140354103

namespace A350667

/-- `eq[0, C(n, a(n-3)²)]` -/
def P8676032272140354103.Spec : Prop :=
  ∀ n, (P8676032272140354103.a n : ℤ) = A350667 n

end A350667

/-! ## A350667.P580554739224589765

`3*round(n/3)+2*n+1`
-/

namespace A350667.P580554739224589765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * SequenceMachineLib.roundAway ((n : ℚ) / 3) + (2 * n + 1 : ℤ)

end

end A350667.P580554739224589765

namespace A350667

/-- `3*round(n/3)+2*n+1` -/
def P580554739224589765.Spec : Prop :=
  ∀ n, P580554739224589765.a n = A350667 n

end A350667

/-! ## A350667.P14438848188290463671

`lt[dr(5*(n+3))+n-1, n+3]`
-/

namespace A350667.P14438848188290463671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.digitalRoot (5 * (n + 3) : ℤ) : ℤ) + ((n : ℤ) - 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A350667.P14438848188290463671

namespace A350667

/-- `lt[dr(5*(n+3))+n-1, n+3]` -/
def P14438848188290463671.Spec : Prop :=
  ∀ n, (P14438848188290463671.a n : ℤ) = A350667 n

end A350667

/-! ## A350667.P12702493655703476253

`∑[2*a(n-3)-a(n-3)]` with `a(0)=1, a(1)=2, a(2)=5, a(3)=2`
-/

namespace A350667.P12702493655703476253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 5, 2] fun n f1 =>
  2 * f1 (n - 3) - f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350667.P12702493655703476253

namespace A350667

/-- `∑[2*a(n-3)-a(n-3)]` -/
def P12702493655703476253.Spec : Prop :=
  ∀ n, P12702493655703476253.a n = A350667 n

end A350667

/-! ## A350667.P14977850591174335088

`∑[A101825(n)²+1]`
-/

namespace A350667.P14977850591174335088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101825 n ^ 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350667.P14977850591174335088

namespace A350667

/-- `∑[A101825(n)²+1]` -/
def P14977850591174335088.Spec : Prop :=
  ∀ n, P14977850591174335088.a n = A350667 n

end A350667

/-! ## A350667.P8754645557749502033

`∑[dr(A139482(n+1))]`
-/

namespace A350667.P8754645557749502033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A139482 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350667.P8754645557749502033

namespace A350667

/-- `∑[dr(A139482(n+1))]` -/
def P8754645557749502033.Spec : Prop :=
  ∀ n, (P8754645557749502033.a n : ℤ) = A350667 n

end A350667

/-! ## A350667.P6798690293106988510

`∪[A056020(n+1), A017197(n)]`
-/

namespace A350667.P6798690293106988510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056020 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017197 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A350667.P6798690293106988510

namespace A350667

/-- `∪[A056020(n+1), A017197(n)]` -/
def P6798690293106988510.Spec : Prop :=
  ∀ n, (P6798690293106988510.a n : ℤ) = A350667 n

end A350667

/-!
# A350668: Numbers congruent to 2, 4, and 6 modulo 9: positions of 2 in A159955.

The programs for A350668, the canonical program `A350668.P17305556624061499628` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A350668 has offset 0).

The definition of A350668 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A350668.P826328394742786290

`1+3*n+cos(2*n*π/3)+sin(2*n*π/3)/sqrt(3)`
-/

namespace A350668.P826328394742786290
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (1 + 3 * n : ℝ) + Real.cos ((2 * n : ℝ) * Real.pi / 3) + Real.sin ((2 * n : ℝ) * Real.pi / 3) / Real.sqrt (3 : ℝ)

end

end A350668.P826328394742786290

namespace A350668

/-- `1+3*n+cos(2*n*π/3)+sin(2*n*π/3)/sqrt(3)` -/
def P826328394742786290.Spec : Prop :=
  ∀ n, P826328394742786290.a n = (A350668 n : ℝ)

end A350668

/-! ## A350668.P17305556624061499628

`1+3*n+A057078(n)`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A350668

/-- `1+3*n+A057078(n)` -/
def P17305556624061499628.Spec : Prop :=
  ∀ n, P17305556624061499628.a n = A350668 n

theorem P17305556624061499628.correct : P17305556624061499628.Spec := by
  intro n
  simp only [A350668]

end A350668

/-! ## A350668.P14270635576828750439

`a(n-3)+9` with `a(0)=2, a(1)=4, a(2)=6`
-/

namespace A350668.P14270635576828750439
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 4, 6] fun n a =>
  a (n - 3) + 9

end

end A350668.P14270635576828750439

namespace A350668

/-- `a(n-3)+9` -/
def P14270635576828750439.Spec : Prop :=
  ∀ n, (P14270635576828750439.a n : ℤ) = A350668 n

end A350668

/-! ## A350668.P16902461099978788466

`3*n+2-n%3`
-/

namespace A350668.P16902461099978788466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) + (2 - ((n % 3 : ℕ) : ℤ))

end

end A350668.P16902461099978788466

namespace A350668

/-- `3*n+2-n%3` -/
def P16902461099978788466.Spec : Prop :=
  ∀ n, P16902461099978788466.a n = A350668 n

theorem P16902461099978788466.correct : P16902461099978788466.Spec := by
  intro n
  simp only [A350668, Nat.add_sub_cancel, A350668.P16902461099978788466.a, A350668.P17305556624061499628.a, A057078, A057078.P4951435475119423572.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A350668

/-! ## A350668.P6242197976792804502

`∑[xor(3, sqrt(dr(n^6))!)]`
-/

namespace A350668.P6242197976792804502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 (Nat.factorial (SequenceMachineLib.roundAway (Real.sqrt (SequenceMachineLib.digitalRoot (n ^ 6 : ℤ) : ℝ))).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350668.P6242197976792804502

namespace A350668

/-- `∑[xor(3, sqrt(dr(n^6))!)]` -/
def P6242197976792804502.Spec : Prop :=
  ∀ n, (P6242197976792804502.a n : ℤ) = A350668 n

end A350668

/-! ## A350668.P83877190507012797

`∑[abs(a(n-3))]` with `a(0)=2, a(1)=2, a(2)=2, a(3)=5`
-/

namespace A350668.P83877190507012797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 2, 2, 5] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350668.P83877190507012797

namespace A350668

/-- `∑[abs(a(n-3))]` -/
def P83877190507012797.Spec : Prop :=
  ∀ n, (P83877190507012797.a n : ℤ) = A350668 n

end A350668

/-! ## A350668.P6670494848645654704

`∑[floor(a(n-3))]` with `a(0)=2, a(1)=2, a(2)=2, a(3)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A350668.P6670494848645654704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 2, 2, 5] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350668.P6670494848645654704

namespace A350668

/-- `∑[floor(a(n-3))]` -/
def P6670494848645654704.Spec : Prop :=
  ∀ n, (P6670494848645654704.a n : ℤ) = A350668 n

end A350668

/-! ## A350668.P1482123129614603542

`lt[n², (-n)^dr(n+2)]`
-/

namespace A350668.P1482123129614603542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-(n : ℤ)) ^ SequenceMachineLib.digitalRoot (n + 2 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A350668.P1482123129614603542

namespace A350668

/-- `lt[n², (-n)^dr(n+2)]` -/
def P1482123129614603542.Spec : Prop :=
  ∀ n, (P1482123129614603542.a n : ℤ) = A350668 n

end A350668

/-! ## A350668.P14775726030356317553

`(2*(n+1))%3+3*n`
-/

namespace A350668.P14775726030356317553
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1) % 3 + 3 * n

end

end A350668.P14775726030356317553

namespace A350668

/-- `(2*(n+1))%3+3*n` -/
def P14775726030356317553.Spec : Prop :=
  ∀ n, (P14775726030356317553.a n : ℤ) = A350668 n

end A350668

/-! ## A350668.P1207753918535410957

`2-((4*n)%3-3*n)`
-/

namespace A350668.P1207753918535410957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (((4 * n % 3 : ℕ) : ℤ) - (3 * n : ℤ))

end

end A350668.P1207753918535410957

namespace A350668

/-- `2-((4*n)%3-3*n)` -/
def P1207753918535410957.Spec : Prop :=
  ∀ n, P1207753918535410957.a n = A350668 n

end A350668

/-! ## A350668.P3657520064007282102

`record[n+2-5%dr(n+1)]`
-/

namespace A350668.P3657520064007282102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - ((5 % SequenceMachineLib.digitalRoot (n + 1 : ℤ) : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A350668.P3657520064007282102

namespace A350668

/-- `record[n+2-5%dr(n+1)]` -/
def P3657520064007282102.Spec : Prop :=
  ∀ n, P3657520064007282102.a n = A350668 n

end A350668

/-! ## A350668.P7711966214036135935

`ogf((2+2x+2x^2+3x^3)/(1-x-x^3+x^4))`
-/

namespace A350668.P7711966214036135935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 2, 2, 3] [1, -1, 0, -1, 1] n

end

end A350668.P7711966214036135935

namespace A350668

/-- `ogf((2+2x+2x^2+3x^3)/(1-x-x^3+x^4))` -/
def P7711966214036135935.Spec : Prop :=
  ∀ n, P7711966214036135935.a n = A350668 n

end A350668

/-! ## A350668.P18412340590179461675

`eq[1, C(n, a(n-3)²)]` with `a(0)=2, a(1)=0, a(2)=1`
-/

namespace A350668.P18412340590179461675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2, 0, 1] fun n f2 =>
  Nat.choose n (f2 (n - 3) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A350668.P18412340590179461675

namespace A350668

/-- `eq[1, C(n, a(n-3)²)]` -/
def P18412340590179461675.Spec : Prop :=
  ∀ n, (P18412340590179461675.a n : ℤ) = A350668 n

end A350668

/-! ## A350668.P1390802155510406749

`2*(n+1)+3*floor(n/3)`
-/

namespace A350668.P1390802155510406749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) + 3 * ⌊(n : ℚ) / 3⌋

end

end A350668.P1390802155510406749

namespace A350668

/-- `2*(n+1)+3*floor(n/3)` -/
def P1390802155510406749.Spec : Prop :=
  ∀ n, P1390802155510406749.a n = A350668 n

end A350668

/-! ## A350668.P15732918487800816089

`lt[dr(4*(n+1))+n-1, n+3]`
-/

namespace A350668.P15732918487800816089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.digitalRoot (4 * (n + 1) : ℤ) : ℤ) + ((n : ℤ) - 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A350668.P15732918487800816089

namespace A350668

/-- `lt[dr(4*(n+1))+n-1, n+3]` -/
def P15732918487800816089.Spec : Prop :=
  ∀ n, (P15732918487800816089.a n : ℤ) = A350668 n

end A350668

/-! ## A350668.P737461966980524137

`∑[2*a(n-3)-a(n-3)]` with `a(0)=2, a(1)=2, a(2)=2, a(3)=5`
-/

namespace A350668.P737461966980524137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 2, 2, 5] fun n f1 =>
  2 * f1 (n - 3) - f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350668.P737461966980524137

namespace A350668

/-- `∑[2*a(n-3)-a(n-3)]` -/
def P737461966980524137.Spec : Prop :=
  ∀ n, P737461966980524137.a n = A350668 n

end A350668

/-! ## A350668.P6487781519512422810

`∑[A099837(n)²+1]`
-/

namespace A350668.P6487781519512422810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099837 n ^ 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350668.P6487781519512422810

namespace A350668

/-- `∑[A099837(n)²+1]` -/
def P6487781519512422810.Spec : Prop :=
  ∀ n, P6487781519512422810.a n = A350668 n

end A350668

/-! ## A350668.P8493897386632902349

`∑[A100051(n)²+1]`
-/

namespace A350668.P8493897386632902349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100051 n ^ 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350668.P8493897386632902349

namespace A350668

/-- `∑[A100051(n)²+1]` -/
def P8493897386632902349.Spec : Prop :=
  ∀ n, P8493897386632902349.a n = A350668 n

end A350668

/-! ## A350668.P4405139177243614806

`∑[A100063(n)²+1]`
-/

namespace A350668.P4405139177243614806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100063 n ^ 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350668.P4405139177243614806

namespace A350668

/-- `∑[A100063(n)²+1]` -/
def P4405139177243614806.Spec : Prop :=
  ∀ n, P4405139177243614806.a n = A350668 n

end A350668

/-! ## A350668.P9459866481307188105

`∑[A281727(n)²+1]`
-/

namespace A350668.P9459866481307188105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281727 n ^ 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350668.P9459866481307188105

namespace A350668

/-- `∑[A281727(n)²+1]` -/
def P9459866481307188105.Spec : Prop :=
  ∀ n, P9459866481307188105.a n = A350668 n

end A350668

/-!
# A350669: 

The programs for A350669, there is no canonical definition to state claims against.
-/

/-! ## A350669.P15869342787821751131

`A035048(Δ[n²])`
-/

namespace A350669.P15869342787821751131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035048 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A350669.P15869342787821751131

/-! ## A350669.P18203145485902371134

`xor(1, xor(1, A035048(2*n+1)))`
-/

namespace A350669.P18203145485902371134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A035048 (2 * n + 1)))

end

end A350669.P18203145485902371134

/-! ## A350669.P5763510905363763186

`(A028310(n+1)-n)*A035048(2*n+1)`
-/

namespace A350669.P5763510905363763186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A028310 (n + 1) - (n : ℤ)) * A035048 (2 * n + 1)

end

end A350669.P5763510905363763186

/-! ## A350669.P17130499850709152660

`gcd(2, A035048(2*n+2))*A035048(2*n+1)`
-/

namespace A350669.P17130499850709152660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A035048 (2 * n + 2)) : ℤ) * A035048 (2 * n + 1)

end

end A350669.P17130499850709152660

/-! ## A350669.P4290390664505932125

`floor(atan(A135681(2*n+2)))*A035048(2*n+1)`
-/

namespace A350669.P4290390664505932125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (A135681 (2 * n + 2) : ℝ)⌋ * A035048 (2 * n + 1)

end

end A350669.P4290390664505932125

/-! ## A350669.P12224700154778458214

`A035048(2*n+1)+A286685(2*n+1)*A286685(2*n+2)`
-/

namespace A350669.P12224700154778458214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035048 (2 * n + 1) + A286685 (2 * n + 1) * A286685 (2 * n + 2)

end

end A350669.P12224700154778458214

/-! ## A350669.P17659123696968688354

`A035048(A028310(2*n+1))²/A035048(2*n+1)`
-/

namespace A350669.P17659123696968688354
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035048 (A028310 (2 * n + 1)).toNat ^ 2 : ℚ) / (A035048 (2 * n + 1) : ℚ)

end

end A350669.P17659123696968688354

/-!
# A350670: 

The programs for A350670, there is no canonical definition to state claims against.
-/

/-! ## A350670.P13923250724432570715

`A035047(Δ[n²])`
-/

namespace A350670.P13923250724432570715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035047 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A350670.P13923250724432570715

/-! ## A350670.P16066630567228619998

`or(1, A035047(2*n+1))`
-/

namespace A350670.P16066630567228619998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A035047 (2 * n + 1))

end

end A350670.P16066630567228619998

/-! ## A350670.P16127198849176465780

`A035047(2*n+1)*A109613(2*n+1)/A109613(2*n)`
-/

namespace A350670.P16127198849176465780
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035047 (2 * n + 1) * A109613 (2 * n + 1) : ℚ) / (A109613 (2 * n) : ℚ)

end

end A350670.P16127198849176465780

/-! ## A350670.P3037832668303990530

`A035047(2*n+1)²/A035047(A109613(2*n))`
-/

namespace A350670.P3037832668303990530
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035047 (2 * n + 1) ^ 2 : ℚ) / (A035047 (A109613 (2 * n)).toNat : ℚ)

end

end A350670.P3037832668303990530

/-!
# A350672: a(n) is the smallest number larger than a(n-1) that has only two digits in common with a(n-1).

The programs for A350672, there is no canonical definition to state claims against.
-/

/-! ## A350672.P10678745314933464702

`lt[(11*floor(n/10)-n)^6, n%10+floor(n/10)+n%10]`
-/

namespace A350672.P10678745314933464702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (11 * ⌊(n : ℚ) / 10⌋ - (n : ℤ)) ^ 6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 10 : ℕ) : ℤ) + (⌊(n : ℚ) / 10⌋ + ((n % 10 : ℕ) : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A350672.P10678745314933464702

/-! ## A350672.P16219889380218203395

`lt[(11*floor(n/10)-n)^6, A336483(n)]`
-/

namespace A350672.P16219889380218203395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (11 * ⌊(n : ℚ) / 10⌋ - (n : ℤ)) ^ 6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336483 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A350672.P16219889380218203395

/-! ## A350672.P15914931304377827273

`eq[abs(A076313(n))!, A168184(n)]`
-/

namespace A350672.P15914931304377827273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial |A076313 n|.toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168184 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A350672.P15914931304377827273

/-! ## A350672.P18279886537977770561

`eq[A000041(A076313(n)²), A168184(n)]`
-/

namespace A350672.P18279886537977770561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A076313 n ^ 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168184 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A350672.P18279886537977770561

/-! ## A350672.P9302056864401405091

`eq[A008619(A076313(n)²), A168184(n)]`
-/

namespace A350672.P9302056864401405091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A076313 n ^ 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168184 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A350672.P9302056864401405091

/-!
# A350673: Square array read by antidiagonals T(n, k), n, k >= 0; T(n, k) is the sum of the elements of the intersection of the multisets of positive squares summing to n and k, respectively, obtained by the greedy algorithm.

The programs for A350673, there is no canonical definition to state claims against.
-/

/-! ## A350673.P17376947848665005217

`A004197(n)%A133823(A176204(n))`
-/

namespace A350673.P17376947848665005217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004197 n) (A133823 (A176204 n).toNat)

end

end A350673.P17376947848665005217

/-! ## A350673.P1228789982498640752

`A184419(A304718(n))%A087062(n+1)`
-/

namespace A350673.P1228789982498640752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184419 (A304718 n).toNat) (A087062 (n + 1))

end

end A350673.P1228789982498640752

/-! ## A350673.P11772883002121268087

`and(A004197(n), A340610(A201235(n+1)))`
-/

namespace A350673.P11772883002121268087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004197 n) (A340610 (A201235 (n + 1)).toNat)

end

end A350673.P11772883002121268087

/-! ## A350673.P5351390854958915973

`A063974(2*A124975(n+1))`
-/

namespace A350673.P5351390854958915973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063974 (2 * A124975 (n + 1)).toNat

end

end A350673.P5351390854958915973

/-! ## A350673.P8562133176753547167

`A010815(A260106(n+1))+A004198(n)`
-/

namespace A350673.P8562133176753547167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (A260106 (n + 1)).toNat + A004198 n

end

end A350673.P8562133176753547167

/-!
# A350674: Irregular table read by rows; the n-th row contains, in weakly decreasing order, the positive squares summing to n as obtained by the greedy algorithm.

The programs for A350674, there is no canonical definition to state claims against.
-/

/-! ## A350674.P7702258952893697719

`A392035(n+1)²`
-/

namespace A350674.P7702258952893697719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392035 (n + 1) ^ 2

end

end A350674.P7702258952893697719

/-!
# A350675: Numbers k such that tau(k) + tau(k+1) + tau(k+2) = 10, where tau is the number of divisors function A000005.

The programs for A350675, there is no canonical definition to state claims against.
-/

/-! ## A350675.P3150666831509959371

`A317670(n+1)-1`
-/

namespace A350675.P3150666831509959371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317670 (n + 1) - 1

end

end A350675.P3150666831509959371

/-! ## A350675.P5154931470464631467

`A317673(A065091(n+1))+A317670(n+1)`
-/

namespace A350675.P5154931470464631467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317673 (A065091 (n + 1)).toNat + A317670 (n + 1)

end

end A350675.P5154931470464631467

/-! ## A350675.P10561010157931185634

`A317673(record[A006530(n+3)])+A317670(n+1)`
-/

namespace A350675.P10561010157931185634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317673 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + A317670 (n + 1)

end

end A350675.P10561010157931185634

/-! ## A350675.P5143450378776307257

`A317673(A049591(n+1))+A317670(n+1)`
-/

namespace A350675.P5143450378776307257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317673 (A049591 (n + 1)).toNat + A317670 (n + 1)

end

end A350675.P5143450378776307257

/-! ## A350675.P8637133240542399601

`A317673(A040113(n+1))+A317670(n+1)`
-/

namespace A350675.P8637133240542399601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317673 (A040113 (n + 1)).toNat + A317670 (n + 1)

end

end A350675.P8637133240542399601

/-! ## A350675.P12157988071171581607

`A317673(A106115(n+1))+A317670(n+1)`
-/

namespace A350675.P12157988071171581607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317673 (A106115 (n + 1)).toNat + A317670 (n + 1)

end

end A350675.P12157988071171581607

/-! ## A350675.P9320061543325865956

`A317673(A027701(n+1))+A317670(n+1)`
-/

namespace A350675.P9320061543325865956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317673 (A027701 (n + 1)).toNat + A317670 (n + 1)

end

end A350675.P9320061543325865956

/-! ## A350675.P10785311280615120631

`A317673(p?[A030457(n+1)+1])+A317670(n+1)`
-/

namespace A350675.P10785311280615120631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030457 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317673 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat + A317670 (n + 1)

end

end A350675.P10785311280615120631

/-! ## A350675.P12405069201942176043

`A317673(A005383(n+1))+A317670(n+1)`
-/

namespace A350675.P12405069201942176043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317673 (A005383 (n + 1)).toNat + A317670 (n + 1)

end

end A350675.P12405069201942176043

/-! ## A350675.P6894591107556483656

`A023443(A317670(n+1))`
-/

namespace A350675.P6894591107556483656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A317670 (n + 1)).toNat

end

end A350675.P6894591107556483656

/-!
# A350676: Primes p such that p^2 + 2*p + 4 is prime.

The programs for A350676, there is no canonical definition to state claims against.
-/

/-! ## A350676.P6941621099052772148

`p?[A049422(n+1)-1]`
-/

namespace A350676.P6941621099052772148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049422 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A350676.P6941621099052772148

/-! ## A350676.P2153375924887479045

`p?[A057428(n)+A049422(n+1)]`
-/

namespace A350676.P2153375924887479045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + A049422 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A350676.P2153375924887479045

/-! ## A350676.P13836204963652110402

`p?[A260196(n)+A049422(n+1)]`
-/

namespace A350676.P13836204963652110402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 n + A049422 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A350676.P13836204963652110402

/-! ## A350676.P12073076362807603412

`p?[A134824(A088748(n))+A049422(n+1)]`
-/

namespace A350676.P12073076362807603412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (A088748 n).toNat + A049422 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A350676.P12073076362807603412

/-! ## A350676.P7334207252715097449

`p?[A000265(A244175(n+1))]`
-/

namespace A350676.P7334207252715097449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A244175 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A350676.P7334207252715097449

/-! ## A350676.P6687065057716041862

`p?[A004273(A049422(n+1)/2)]`
-/

namespace A350676.P6687065057716041862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (SequenceMachineLib.roundAway ((A049422 (n + 1) : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A350676.P6687065057716041862

/-! ## A350676.P6902314058718465487

`p?[lt[n, A089123(n+1)]]`
-/

namespace A350676.P6902314058718465487
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089123 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A350676.P6902314058718465487

/-! ## A350676.P11743764424283505055

`p?[A014681(A049422(n+1))]`
-/

namespace A350676.P11743764424283505055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A049422 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A350676.P11743764424283505055

/-! ## A350676.P6085673735477717696

`eq[A077462(n), A300817(A300817(n+1))]`
-/

namespace A350676.P6085673735477717696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077462 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300817 (A300817 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A350676.P6085673735477717696

/-! ## A350676.P15697774891898648139

`p?[A134824(A049422(2*(n+1)))+A049422(n+2)]`
-/

namespace A350676.P15697774891898648139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (A049422 (2 * (n + 1))).toNat + A049422 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A350676.P15697774891898648139

/-!
# A350678: Partial sums of A185381.

The programs for A350678, the canonical program `A350678.P4865955700587187956` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A350678 has offset 0).

The definition of A350678 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 297 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A350678.P4865955700587187956

`∑[A185381(n)]`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A350678

/-- `∑[A185381(n)]` -/
def P4865955700587187956.Spec : Prop :=
  ∀ n, P4865955700587187956.a n = A350678 n

theorem P4865955700587187956.correct : P4865955700587187956.Spec := by
  intro n
  simp only [A350678]

end A350678

/-! ## A350678.P9908574623088994898

`∑[A000045(floor(ϕ*n))]`
-/

namespace A350678.P9908574623088994898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ⌊Real.goldenRatio * (n : ℝ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350678.P9908574623088994898

namespace A350678

/-- `∑[A000045(floor(ϕ*n))]` -/
def P9908574623088994898.Spec : Prop :=
  ∀ n, P9908574623088994898.a n = A350678 n

end A350678

/-! ## A350678.P10896174553877145181

`∑[abs(A236191(floor(ϕ*n)))]`
-/

namespace A350678.P10896174553877145181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A236191 ⌊Real.goldenRatio * (n : ℝ)⌋.toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350678.P10896174553877145181

namespace A350678

/-- `∑[abs(A236191(floor(ϕ*n)))]` -/
def P10896174553877145181.Spec : Prop :=
  ∀ n, P10896174553877145181.a n = A350678 n

end A350678

/-! ## A350678.P6747480189078956596

`A000045(floor(n/ϕ)+n)+a(n-1)` with `a(0)=0`
-/

namespace A350678.P6747480189078956596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000045 (⌊(n : ℝ) / Real.goldenRatio⌋ + (n : ℤ)).toNat + a (n - 1)

end

end A350678.P6747480189078956596

namespace A350678

/-- `A000045(floor(n/ϕ)+n)+a(n-1)` -/
def P6747480189078956596.Spec : Prop :=
  ∀ n, P6747480189078956596.a n = A350678 n

end A350678

/-! ## A350678.P8714376643359624917

`∑[A212804(A026351(n))]`
-/

namespace A350678.P8714376643359624917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (A026351 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350678.P8714376643359624917

namespace A350678

/-- `∑[A212804(A026351(n))]` -/
def P8714376643359624917.Spec : Prop :=
  ∀ n, P8714376643359624917.a n = A350678 n

end A350678

/-!
# A350680: Number of hitomezashi loops of width 2n+1 and height 2n+1.

The programs for A350680, there is no canonical definition to state claims against.
-/

/-! ## A350680.P7501037390556987044

`Δ[round(sqrt((9-3/n)*a(n-1)))²]+n` with `a(0)=0, a(1)=1, a(2)=1, a(3)=1`
-/

namespace A350680.P7501037390556987044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1, 1] fun n f1 =>
  SequenceMachineLib.roundAway (Real.sqrt ((9 - 3 / (n : ℚ)) * (f1 (n - 1) : ℚ) : ℝ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A350680.P7501037390556987044

/-!
# A350681: Triangle read by rows. T(n,k) is the number of hitomezashi loops of width 2(n-k)+1 and height 2k+1 for 0 <= k <= n.

The programs for A350681, there is no canonical definition to state claims against.
-/

/-! ## A350681.P14251494147952548534

`A110855(n)-A102677(A185255(n))`
-/

namespace A350681.P14251494147952548534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110855 n - A102677 (A185255 n).toNat

end

end A350681.P14251494147952548534

/-! ## A350681.P16103170379410787241

`A110855(n)-A178798(A297328(n))`
-/

namespace A350681.P16103170379410787241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110855 n - A178798 (A297328 n).toNat

end

end A350681.P16103170379410787241

/-! ## A350681.P4685583493435191009

`and(A086839(n+1), A110855(n))`
-/

namespace A350681.P4685583493435191009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A086839 (n + 1)) (A110855 n)

end

end A350681.P4685583493435191009

/-! ## A350681.P4314899532485775840

`and(A110855(n), A140330(n+1))`
-/

namespace A350681.P4314899532485775840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A110855 n) (A140330 (n + 1))

end

end A350681.P4314899532485775840

/-! ## A350681.P7905538084471284531

`and(A110855(n), A300163(n+1))`
-/

namespace A350681.P7905538084471284531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A110855 n) (A300163 (n + 1))

end

end A350681.P7905538084471284531

/-!
# A350682: Möbius values of triangular numbers under divisibility relation.

The programs for A350682, there is no canonical definition to state claims against.
-/

/-! ## A350682.P7978935523728081403

`Δ[A351167(abs(1-n)+1)]`
-/

namespace A350682.P7978935523728081403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351167 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A350682.P7978935523728081403

/-! ## A350682.P8376014743589849772

`A351167(n+1)-A351167(abs(1-n)+1)`
-/

namespace A350682.P8376014743589849772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351167 (n + 1) - A351167 (|1 - (n : ℤ)| + 1).toNat

end

end A350682.P8376014743589849772

/-! ## A350682.P14881343266440378180

`A016360(∑[A103205(n)])-A144603(n)`
-/

namespace A350682.P14881343266440378180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103205 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016360 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A144603 n

end

end A350682.P14881343266440378180

/-! ## A350682.P13165878564456786548

`A361017(xor(A000120(n), A283007(n)))`
-/

namespace A350682.P13165878564456786548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361017 (Int.xor (A000120 n) (A283007 n)).toNat

end

end A350682.P13165878564456786548

/-! ## A350682.P6564842601579168332

`A008683(A083329(n+1)-A270929(n+1))`
-/

namespace A350682.P6564842601579168332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A083329 (n + 1) - A270929 (n + 1)).toNat

end

end A350682.P6564842601579168332

/-!
# A350683: Total sum over all partitions of [n] of elements i contained in block i when blocks are ordered with decreasing largest elements.

The programs for A350683, there is no canonical definition to state claims against.
-/

/-! ## A350683.P12397599023420071098

`A262487(n+1)%∑[A060725(n)]`
-/

namespace A350683.P12397599023420071098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060725 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A262487 (n + 1)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A350683.P12397599023420071098

/-! ## A350683.P17675683308788978696

`A071681(A000010(n+4)*A000142(n))`
-/

namespace A350683.P17675683308788978696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071681 (A000010 (n + 4) * A000142 n).toNat

end

end A350683.P17675683308788978696

/-!
# A350687: Primes of the form x^2 + (y^3 + z^3)^2 with x,y,z > 0.

The programs for A350687, there is no canonical definition to state claims against.
-/

/-! ## A350687.P8652885492783526559

`record[p?[A054703(A269453(n+1))]]`
-/

namespace A350687.P8652885492783526559
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054703 (A269453 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A350687.P8652885492783526559

/-! ## A350687.P4619378166522284392

`A118751(A007096(n))`
-/

namespace A350687.P4619378166522284392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118751 (A007096 n).toNat

end

end A350687.P4619378166522284392

/-!
# A350689: a(n) = n*(1 - (-1)^n - 2*(3 + (-1)^n)*n^2 + 2*n^4)/384.

The programs for A350689, the canonical program `A350689.P4856709123126009942` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A350689 has offset 0).

The definition of A350689 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A350689.P4856709123126009942

`n*(1-(-1)^n-2*(3+(-1)^n)*n²+2*n^4)/384`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A350689

/-- `n*(1-(-1)^n-2*(3+(-1)^n)*n²+2*n^4)/384` -/
def P4856709123126009942.Spec : Prop :=
  ∀ n, P4856709123126009942.a n = (A350689 n : ℚ)

end A350689

/-!
# A350690: Numbers k that divide the sum of divisors of Fibonacci(k).

The programs for A350690, the canonical program `A350690.P8053654287965355630` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A350690 has offset 1).

The definition of A350690 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 375 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A350690.P8053654287965355630

`record[gcd(n+1, A063477(n+1))]`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A350690

/-- `record[gcd(n+1, A063477(n+1))]` -/
def P8053654287965355630.Spec : Prop :=
  ∀ n, (P8053654287965355630.a n : ℤ) = A350690 (n + 1)

theorem P8053654287965355630.correct : P8053654287965355630.Spec := by
  intro n
  simp only [A350690, Nat.add_sub_cancel]

end A350690

/-! ## A350690.P12478155389614012469

`lt[∑{d}[A000045(n+1), #]%(n+1), 1]+1`
-/

namespace A350690.P12478155389614012469
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f2 n).natAbs, d) % (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n + 1

end

end A350690.P12478155389614012469

namespace A350690

/-- `lt[∑{d}[A000045(n+1), #]%(n+1), 1]+1` -/
def P12478155389614012469.Spec : Prop :=
  ∀ n, (P12478155389614012469.a n : ℤ) = A350690 (n + 1)

end A350690

/-! ## A350690.P17843260768683202997

`lt[A070404(A141279(n+1)), A070367(n)]`
-/

namespace A350690.P17843260768683202997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070404 (A141279 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070367 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A350690.P17843260768683202997

namespace A350690

/-- `lt[A070404(A141279(n+1)), A070367(n)]` -/
def P17843260768683202997.Spec : Prop :=
  ∀ n, (P17843260768683202997.a n : ℤ) = A350690 (n + 1)

end A350690

/-! ## A350690.P14990016588840496412

`record[gcd(n, A000203(A324969(n+1)))]`
-/

namespace A350690.P14990016588840496412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A000203 (A324969 (n + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A350690.P14990016588840496412

namespace A350690

/-- `record[gcd(n, A000203(A324969(n+1)))]` -/
def P14990016588840496412.Spec : Prop :=
  ∀ n, (P14990016588840496412.a n : ℤ) = A350690 (n + 1)

end A350690

/-! ## A350690.P13128817484676949303

`record[gcd(n+2, A000203(A000045(n+2)))]`
-/

namespace A350690.P13128817484676949303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 2 : ℤ) (A000203 (A000045 (n + 2)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A350690.P13128817484676949303

namespace A350690

/-- `record[gcd(n+2, A000203(A000045(n+2)))]` -/
def P13128817484676949303.Spec : Prop :=
  ∀ n, (P13128817484676949303.a n : ℤ) = A350690 (n + 1)

end A350690

/-!
# A350696: a(n) is the least nonnegative integer k such that 2^n + k is a safe prime.

The programs for A350696, there is no canonical definition to state claims against.
-/

/-! ## A350696.P9113452655161766727

`and(∑[2^n], A111671(n+1))`
-/

namespace A350696.P9113452655161766727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A111671 (n + 1))

end

end A350696.P9113452655161766727

/-! ## A350696.P2218697347073561097

`A111671(n+1)%A171497(n)`
-/

namespace A350696.P2218697347073561097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A111671 (n + 1)) (A171497 n)

end

end A350696.P2218697347073561097

/-! ## A350696.P4422112488970032298

`and(A111671(n+1), A126646(n))`
-/

namespace A350696.P4422112488970032298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A111671 (n + 1)) (A126646 n)

end

end A350696.P4422112488970032298

/-! ## A350696.P4259769832239552545

`and(A111671(n+1), A195460(n+1))`
-/

namespace A350696.P4259769832239552545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A111671 (n + 1)) (A195460 (n + 1))

end

end A350696.P4259769832239552545

/-! ## A350696.P11119567222014546258

`and(A111671(n+1), A220236(n+1))`
-/

namespace A350696.P11119567222014546258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A111671 (n + 1)) (A220236 (n + 1))

end

end A350696.P11119567222014546258

/-!
# A350697: Smallest number m > 1 such that n * m = A350538(n) contains only even digits.

The programs for A350697, there is no canonical definition to state claims against.
-/

/-! ## A350697.P15401888837728664133

`A350538(n+1)/(n+1)`
-/

namespace A350697.P15401888837728664133
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A350538 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A350697.P15401888837728664133

/-! ## A350697.P10636179578243519969

`A217618(10*(n+1))`
-/

namespace A350697.P10636179578243519969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217618 (10 * (n + 1))

end

end A350697.P10636179578243519969

/-! ## A350697.P13801566137215129944

`A217618(A008592(n+1))%86`
-/

namespace A350697.P13801566137215129944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A217618 (A008592 (n + 1)).toNat) 86

end

end A350697.P13801566137215129944

/-! ## A350697.P2669283997231451297

`A022144(A350538(n+1))%A004771(n)`
-/

namespace A350697.P2669283997231451297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022144 (A350538 (n + 1)).toNat) (A004771 n)

end

end A350697.P2669283997231451297

/-! ## A350697.P18137813657120567192

`lcm(A033999(n), A217618(A008592(n+1)))`
-/

namespace A350697.P18137813657120567192
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A217618 (A008592 (n + 1)).toNat)

end

end A350697.P18137813657120567192

/-! ## A350697.P11558749060378575886

`gcd(A217618(A008592(n+1)), A350538(n+1))`
-/

namespace A350697.P11558749060378575886
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A217618 (A008592 (n + 1)).toNat) (A350538 (n + 1))

end

end A350697.P11558749060378575886

/-! ## A350697.P15606482240856842146

`A217618(A008592(n+1))/gcd(n+1, A000040(n+1))`
-/

namespace A350697.P15606482240856842146
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A217618 (A008592 (n + 1)).toNat : ℚ) / (Int.gcd (n + 1 : ℤ) (A000040 (n + 1)) : ℚ)

end

end A350697.P15606482240856842146

/-! ## A350697.P10922109092544107270

`A061807(gcd(A193356(n+1), A217578(n+1)))/(n+1)`
-/

namespace A350697.P10922109092544107270
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061807 (Int.gcd (A193356 (n + 1)) (A217578 (n + 1))) : ℚ) / (n + 1 : ℚ)

end

end A350697.P10922109092544107270

/-! ## A350697.P14005199975914172340

`A217578(A008592(n+1))/10*A067044(n+1)/A061807(n+1)`
-/

namespace A350697.P14005199975914172340
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A217578 (A008592 (n + 1)).toNat : ℚ) / 10 * ((A067044 (n + 1) : ℚ) / (A061807 (n + 1) : ℚ))

end

end A350697.P14005199975914172340

/-!
# A350698: Consider the positive squares summing to n as obtained by the greedy algorithm; a(n) is the least of these squares.

The programs for A350698, there is no canonical definition to state claims against.
-/

/-! ## A350698.P4422798572807009288

`val(5*A007961(n+1), 5)²`
-/

namespace A350698.P4422798572807009288
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (5 * A007961 (n + 1)).toNat 5 ^ 2

end

end A350698.P4422798572807009288

/-! ## A350698.P3827975264546092601

`A350674(∑[A053610(n+1)])`
-/

namespace A350698.P3827975264546092601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053610 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350674 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A350698.P3827975264546092601

/-! ## A350698.P4758487804887932604

`A350674(∑[dr(A007961(n+1))])`
-/

namespace A350698.P4758487804887932604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007961 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350674 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A350698.P4758487804887932604

/-! ## A350698.P122506352452619445

`A350674(∑[A007961(n+1)%9])`
-/

namespace A350698.P122506352452619445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007961 (n + 1)) 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350674 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A350698.P122506352452619445

/-! ## A350698.P8869118516030799933

`A350674(∑[∑{digits}[A007961(n+1), #]])`
-/

namespace A350698.P8869118516030799933
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007961 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).sum

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350674 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A350698.P8869118516030799933

/-!
# A350699: Numbers k such that tau(k) + tau(k+1) + tau(k+2) + tau(k+3) + tau(k+4) = 20, where tau is the number of divisors function A000005.

The programs for A350699, there is no canonical definition to state claims against.
-/

/-! ## A350699.P6039960142686794998

`A000040(A080327(n+3)-A244657(3*n+4))`
-/

namespace A350699.P6039960142686794998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A080327 (n + 3) - A244657 (3 * n + 4)).toNat

end

end A350699.P6039960142686794998

