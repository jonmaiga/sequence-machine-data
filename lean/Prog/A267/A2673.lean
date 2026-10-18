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
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B010.C000
import Seq.B012.C000
import Seq.B013.C000
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
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A267300: Earliest positive increasing sequence having no 5-term subsequence with constant second differences.

The programs for A267300, there is no canonical definition to state claims against.
-/

/-! ## A267300.P15508215980263902420

`A267301(n+1)-1`
-/

namespace A267300.P15508215980263902420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267301 (n + 1) - 1

end

end A267300.P15508215980263902420

/-! ## A267300.P5197622118625066336

`Δ[A267301(n)-(1-a(n-1))]` with `a(0)=6`
-/

namespace A267300.P5197622118625066336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [6] fun n f1 =>
  A267301 n - (1 - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A267300.P5197622118625066336

/-! ## A267300.P6589015171574372360

`A023443(A267301(n+1))`
-/

namespace A267300.P6589015171574372360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A267301 (n + 1)).toNat

end

end A267300.P6589015171574372360

/-! ## A267300.P7334255857749045440

`record[A267301(A133310(n))-1]`
-/

namespace A267300.P7334255857749045440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267301 (A133310 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267300.P7334255857749045440

/-! ## A267300.P5774688753383701312

`record[A267301(A134478(n))-1]`
-/

namespace A267300.P5774688753383701312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267301 (A134478 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267300.P5774688753383701312

/-! ## A267300.P12351342488194787691

`A023444(A267301(n+1)+1)`
-/

namespace A267300.P12351342488194787691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A267301 (n + 1) + 1).toNat

end

end A267300.P12351342488194787691

/-! ## A267300.P16689417784018767870

`A289207(A267301(n+1)+1)`
-/

namespace A267300.P16689417784018767870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A267301 (n + 1) + 1).toNat

end

end A267300.P16689417784018767870

/-! ## A267300.P1800897155686280962

`A023447(A267301(n+1)+4)`
-/

namespace A267300.P1800897155686280962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023447 (A267301 (n + 1) + 4).toNat

end

end A267300.P1800897155686280962

/-! ## A267300.P9069857226243298048

`A046667(2*A267301(n+1))`
-/

namespace A267300.P9069857226243298048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046667 (2 * A267301 (n + 1)).toNat

end

end A267300.P9069857226243298048

/-! ## A267300.P9602373318793618820

`A059169(4*A267301(n+1))`
-/

namespace A267300.P9602373318793618820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059169 (4 * A267301 (n + 1)).toNat

end

end A267300.P9602373318793618820

/-!
# A267301: Earliest positive increasing sequence having no 5-term subsequence with constant second differences.

The programs for A267301, there is no canonical definition to state claims against.
-/

/-! ## A267301.P293698263147858593

`A267300(n+1)+1`
-/

namespace A267301.P293698263147858593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267300 (n + 1) + 1

end

end A267301.P293698263147858593

/-!
# A267302: Earliest nonnegative increasing sequence having no 6-term subsequence with constant second differences.

The programs for A267302, there is no canonical definition to state claims against.
-/

/-! ## A267302.P609608223031659957

`A267303(n+1)-1`
-/

namespace A267302.P609608223031659957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267303 (n + 1) - 1

end

end A267302.P609608223031659957

/-! ## A267302.P11396498669711788231

`A023443(A267303(n+1))`
-/

namespace A267302.P11396498669711788231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A267303 (n + 1)).toNat

end

end A267302.P11396498669711788231

/-! ## A267302.P12943900522322893148

`record[Δ[A267303(A152271(n))]]`
-/

namespace A267302.P12943900522322893148
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267303 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267302.P12943900522322893148

/-! ## A267302.P5496596284929640679

`record[A267303(A126759(n))-1]`
-/

namespace A267302.P5496596284929640679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267303 (A126759 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267302.P5496596284929640679

/-! ## A267302.P11726591329632564930

`A023444(A267303(n+1)+1)`
-/

namespace A267302.P11726591329632564930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A267303 (n + 1) + 1).toNat

end

end A267302.P11726591329632564930

/-! ## A267302.P9936554442709167233

`A289207(A267303(n+1)+1)`
-/

namespace A267302.P9936554442709167233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A267303 (n + 1) + 1).toNat

end

end A267302.P9936554442709167233

/-! ## A267302.P9043613343355055593

`A046667(2*A267303(n+1))`
-/

namespace A267302.P9043613343355055593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046667 (2 * A267303 (n + 1)).toNat

end

end A267302.P9043613343355055593

/-! ## A267302.P9349496731668395242

`A023453(A267303(n+1)+10)`
-/

namespace A267302.P9349496731668395242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023453 (A267303 (n + 1) + 10).toNat

end

end A267302.P9349496731668395242

/-! ## A267302.P15665950263435594936

`A316441(A000040(n+1))+A267303(n+1)`
-/

namespace A267302.P15665950263435594936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316441 (A000040 (n + 1)).toNat + A267303 (n + 1)

end

end A267302.P15665950263435594936

/-! ## A267302.P14760486111944781136

`A316441(record[A006530(n+2)])+A267303(n+1)`
-/

namespace A267302.P14760486111944781136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316441 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + A267303 (n + 1)

end

end A267302.P14760486111944781136

/-!
# A267303: Earliest positive increasing sequence having no 6-term subsequence with constant second differences.

The programs for A267303, there is no canonical definition to state claims against.
-/

/-! ## A267303.P254452352891472817

`A267302(n+1)+1`
-/

namespace A267303.P254452352891472817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267302 (n + 1) + 1

end

end A267303.P254452352891472817

/-! ## A267303.P3268151838171999593

`A120835(∑[A028234(n+1)]+n)`
-/

namespace A267303.P3268151838171999593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028234 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120835 (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)).toNat

end

end A267303.P3268151838171999593

/-! ## A267303.P11668160739597306029

`eq[A124010(A274077(n)), A264857(n+1)]`
-/

namespace A267303.P11668160739597306029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124010 (A274077 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264857 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A267303.P11668160739597306029

/-! ## A267303.P3037728481908550610

`lt[A071090(n+1), A118943(A270339(n+1))]`
-/

namespace A267303.P3037728481908550610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118943 (A270339 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A267303.P3037728481908550610

/-! ## A267303.P10021489937950152654

`∑[A105202(A371994(n))]`
-/

namespace A267303.P10021489937950152654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105202 (A371994 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267303.P10021489937950152654

/-!
# A267304: Earliest nonnegative increasing sequence having no 7-term subsequence with constant second differences.

The programs for A267304, there is no canonical definition to state claims against.
-/

/-! ## A267304.P12893527015749507038

`A267305(n+1)-1`
-/

namespace A267304.P12893527015749507038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267305 (n + 1) - 1

end

end A267304.P12893527015749507038

/-! ## A267304.P10857796701632620218

`A023443(A267305(n+1))`
-/

namespace A267304.P10857796701632620218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A267305 (n + 1)).toNat

end

end A267304.P10857796701632620218

/-! ## A267304.P8005572467231346250

`A065423(2*A267305(n+1))`
-/

namespace A267304.P8005572467231346250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065423 (2 * A267305 (n + 1)).toNat

end

end A267304.P8005572467231346250

/-! ## A267304.P7493210037558176156

`A057428(n+1)+A267305(n+1)`
-/

namespace A267304.P7493210037558176156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A267305 (n + 1)

end

end A267304.P7493210037558176156

/-! ## A267304.P16265127539927168897

`A280193(2*n+1)+A267305(n+1)`
-/

namespace A267304.P16265127539927168897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 (2 * n + 1) + A267305 (n + 1)

end

end A267304.P16265127539927168897

/-!
# A267305: Earliest positive increasing sequence having no 7-term subsequence with constant second differences.

The programs for A267305, there is no canonical definition to state claims against.
-/

/-! ## A267305.P18229445589193022722

`A267304(n+1)+1`
-/

namespace A267305.P18229445589193022722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267304 (n + 1) + 1

end

end A267305.P18229445589193022722

/-!
# A267306: Earliest nonnegative increasing sequence having no 6-term subsequence with constant third differences.

The programs for A267306, there is no canonical definition to state claims against.
-/

/-! ## A267306.P13016062960218945205

`A267307(n+1)-1`
-/

namespace A267306.P13016062960218945205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267307 (n + 1) - 1

end

end A267306.P13016062960218945205

/-! ## A267306.P1221571619662832442

`abs(1-A267307(Δ[n²]-n))`
-/

namespace A267306.P1221571619662832442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A267307 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat|

end

end A267306.P1221571619662832442

/-! ## A267306.P11534515527221423538

`A023443(A267307(n+1))`
-/

namespace A267306.P11534515527221423538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A267307 (n + 1)).toNat

end

end A267306.P11534515527221423538

/-! ## A267306.P17253590106710080604

`A289207(A267307(n+1)+1)`
-/

namespace A267306.P17253590106710080604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A267307 (n + 1) + 1).toNat

end

end A267306.P17253590106710080604

/-! ## A267306.P11537760876411029590

`A023445(A267307(n+1)+2)`
-/

namespace A267306.P11537760876411029590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023445 (A267307 (n + 1) + 2).toNat

end

end A267306.P11537760876411029590

/-! ## A267306.P10203054838746423252

`A046667(2*A267307(n+1))`
-/

namespace A267306.P10203054838746423252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046667 (2 * A267307 (n + 1)).toNat

end

end A267306.P10203054838746423252

/-! ## A267306.P3710584964418343119

`A065423(2*A267307(n+1))`
-/

namespace A267306.P3710584964418343119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065423 (2 * A267307 (n + 1)).toNat

end

end A267306.P3710584964418343119

/-! ## A267306.P3126328089658219221

`A279119(2*A267307(n+1))`
-/

namespace A267306.P3126328089658219221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279119 (2 * A267307 (n + 1)).toNat

end

end A267306.P3126328089658219221

/-! ## A267306.P9965097058834345932

`A023453(A267307(n+1)+10)`
-/

namespace A267306.P9965097058834345932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023453 (A267307 (n + 1) + 10).toNat

end

end A267306.P9965097058834345932

/-! ## A267306.P16878530100517640568

`abs(A023443(A267307(Δ[n²]-n)))`
-/

namespace A267306.P16878530100517640568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A023443 (A267307 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat).toNat|

end

end A267306.P16878530100517640568

/-!
# A267307: Earliest positive increasing sequence having no 6-term subsequence with constant third differences.

The programs for A267307, there is no canonical definition to state claims against.
-/

/-! ## A267307.P6179368516326827530

`A267306(n+1)+1`
-/

namespace A267307.P6179368516326827530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267306 (n + 1) + 1

end

end A267307.P6179368516326827530

/-! ## A267307.P11555098315746187213

`∑[gcd(A293687(n+3), A293817(n))]`
-/

namespace A267307.P11555098315746187213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A293687 (n + 3)) (A293817 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267307.P11555098315746187213

/-!
# A267309: Number of discrete vectors with integral components and integral length <= n in a 3-dimensional vector space (Partial sums of A016725).

The programs for A267309, the canonical program `A267309.P7821699450119643871` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267309 has offset 1).

The definition of A267309 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A267309.P9295772992138902192

`∑[A016725(n+1)]`
-/

namespace A267309.P9295772992138902192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016725 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267309.P9295772992138902192

namespace A267309

/-- `∑[A016725(n+1)]` -/
def P9295772992138902192.Spec : Prop :=
  ∀ n, P9295772992138902192.a n = A267309 (n + 1)

end A267309

/-! ## A267309.P14584557115399968043

`∑[lcm(2, A016725(-xor(n, -1)))]`
-/

namespace A267309.P14584557115399968043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A016725 (-Int.xor (n : ℤ) (-1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267309.P14584557115399968043

namespace A267309

/-- `∑[lcm(2, A016725(-xor(n, -1)))]` -/
def P14584557115399968043.Spec : Prop :=
  ∀ n, (P14584557115399968043.a n : ℤ) = A267309 (n + 1)

end A267309

/-! ## A267309.P2268307588791517045

`∑[lcm(3, A016725(Δ[n²]-n))]`
-/

namespace A267309.P2268307588791517045
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A016725 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267309.P2268307588791517045

namespace A267309

/-- `∑[lcm(3, A016725(Δ[n²]-n))]` -/
def P2268307588791517045.Spec : Prop :=
  ∀ n, (P2268307588791517045.a n : ℤ) = A267309 (n + 1)

end A267309

/-! ## A267309.P7085363852573379931

`∑[A016725(-xor(n, -1))%(32*A005286(n))]`
-/

namespace A267309.P7085363852573379931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016725 (-Int.xor (n : ℤ) (-1)).toNat) (32 * A005286 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267309.P7085363852573379931

namespace A267309

/-- `∑[A016725(-xor(n, -1))%(32*A005286(n))]` -/
def P7085363852573379931.Spec : Prop :=
  ∀ n, P7085363852573379931.a n = A267309 (n + 1)

end A267309

/-! ## A267309.P7821699450119643871

`∑[2*∑{d}[2*(n+1), A086932(#)]]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A267309

/-- `∑[2*∑{d}[2*(n+1), A086932(#)]]` -/
def P7821699450119643871.Spec : Prop :=
  ∀ n, P7821699450119643871.a n = A267309 (n + 1)

theorem P7821699450119643871.correct : P7821699450119643871.Spec := by
  intro n
  simp only [A267309, Nat.add_sub_cancel]

end A267309

/-! ## A267309.P7846180587656152383

`A000027(∑[A016725(Δ[n²]-n)])`
-/

namespace A267309.P7846180587656152383
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016725 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A267309.P7846180587656152383

namespace A267309

/-- `A000027(∑[A016725(Δ[n²]-n)])` -/
def P7846180587656152383.Spec : Prop :=
  ∀ n, P7846180587656152383.a n = A267309 (n + 1)

end A267309

/-! ## A267309.P11325790881494886337

`∑[A267651(n+1)]`
-/

namespace A267309.P11325790881494886337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267651 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267309.P11325790881494886337

namespace A267309

/-- `∑[A267651(n+1)]` -/
def P11325790881494886337.Spec : Prop :=
  ∀ n, P11325790881494886337.a n = A267309 (n + 1)

end A267309

/-! ## A267309.P10193778121646489573

`∑[A005875((n+1)²)]`
-/

namespace A267309.P10193778121646489573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005875 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267309.P10193778121646489573

namespace A267309

/-- `∑[A005875((n+1)²)]` -/
def P10193778121646489573.Spec : Prop :=
  ∀ n, P10193778121646489573.a n = A267309 (n + 1)

end A267309

/-! ## A267309.P16741412897873321263

`∑[abs(A213384((n+1)²))]`
-/

namespace A267309.P16741412897873321263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A213384 ((n + 1) ^ 2)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267309.P16741412897873321263

namespace A267309

/-- `∑[abs(A213384((n+1)²))]` -/
def P16741412897873321263.Spec : Prop :=
  ∀ n, P16741412897873321263.a n = A267309 (n + 1)

end A267309

/-! ## A267309.P3365054657932549530

`∑[A004015(2*(n+1)²)]`
-/

namespace A267309.P3365054657932549530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004015 (2 * (n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267309.P3365054657932549530

namespace A267309

/-- `∑[A004015(2*(n+1)²)]` -/
def P3365054657932549530.Spec : Prop :=
  ∀ n, P3365054657932549530.a n = A267309 (n + 1)

end A267309

/-!
# A267310: a(n) is the numerator of Sum_{d|n} sigma(n/d)^d/d, where sigma is A000203.

The programs for A267310, there is no canonical definition to state claims against.
-/

/-! ## A267310.P608135986637550887

`or(A030494(n+1), A171429(A005893(n)))`
-/

namespace A267310.P608135986637550887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A030494 (n + 1)) (A171429 (A005893 n).toNat)

end

end A267310.P608135986637550887

/-!
# A267312: Integers n such that n^3 is the sum of 3 nonzero squares.

The programs for A267312, there is no canonical definition to state claims against.
-/

/-! ## A267312.P13995180400584643941

`∪[A000408(n+1), A001974(n+1)]`
-/

namespace A267312.P13995180400584643941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000408 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A267312.P13995180400584643941

/-! ## A267312.P4648811955634289476

`∪[A000408(n+1), A004431(n+1)]`
-/

namespace A267312.P4648811955634289476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000408 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004431 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A267312.P4648811955634289476

/-! ## A267312.P5820781048030001612

`∪[A001974(n+1), A154777(n+1)]`
-/

namespace A267312.P5820781048030001612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154777 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A267312.P5820781048030001612

/-! ## A267312.P9179006783031560834

`∪[A000408(n+1), A225836(n+1)]`
-/

namespace A267312.P9179006783031560834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000408 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225836 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A267312.P9179006783031560834

/-! ## A267312.P5854897202236288763

`∪[A000419(n+1), A225836(n+1)]`
-/

namespace A267312.P5854897202236288763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000419 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225836 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A267312.P5854897202236288763

/-! ## A267312.P14298617792817096629

`filter[A214329(n+1), A347523(#)]`
-/

namespace A267312.P14298617792817096629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214329 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347523 (f1 j).toNat = 1) n)

end

end A267312.P14298617792817096629

/-! ## A267312.P1543823145006848350

`filter[A000378(n+2), A347523(#)]`
-/

namespace A267312.P1543823145006848350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000378 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347523 (f1 j).toNat = 1) n)

end

end A267312.P1543823145006848350

/-! ## A267312.P3632196340534793370

`∩[A214329(n+1), A057716(n)]`
-/

namespace A267312.P3632196340534793370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214329 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057716 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A267312.P3632196340534793370

/-! ## A267312.P8932147836596989904

`∩[A138591(n+1), A214329(n+1)]`
-/

namespace A267312.P8932147836596989904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138591 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214329 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A267312.P8932147836596989904

/-! ## A267312.P2552123219903782945

`eq[A064873(n), A255738(n+1)]`
-/

namespace A267312.P2552123219903782945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064873 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255738 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A267312.P2552123219903782945

/-! ## A267312.P4491750581528059651

`eq[A072401(n), A255738(n+1)]`
-/

namespace A267312.P4491750581528059651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072401 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255738 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A267312.P4491750581528059651

/-! ## A267312.P11145351007091950790

`eq[A067018(A005875(n)), A209229(n)]`
-/

namespace A267312.P11145351007091950790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067018 (A005875 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A267312.P11145351007091950790

/-! ## A267312.P11870228683190922247

`eq[A048298(A005875(n)+1), A048298(n)]`
-/

namespace A267312.P11870228683190922247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048298 (A005875 n + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048298 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A267312.P11870228683190922247

/-! ## A267312.P6682053512009833870

`eq[A000007(A005875(n)), A255738(n+1)]`
-/

namespace A267312.P6682053512009833870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A005875 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255738 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A267312.P6682053512009833870

/-! ## A267312.P15589208816397007528

`eq[A209229(A005875(n)+1), A209229(n)]`
-/

namespace A267312.P15589208816397007528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (A005875 n + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A267312.P15589208816397007528

/-! ## A267312.P4987221636145214507

`eq[A293668(A005875(n)+1), A293668(n)]`
-/

namespace A267312.P4987221636145214507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293668 (A005875 n + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293668 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A267312.P4987221636145214507

/-! ## A267312.P17914929071549485188

`lt[A063725(n), A063691(n)+A063725(n)²]`
-/

namespace A267312.P17914929071549485188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063725 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063691 n + A063725 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A267312.P17914929071549485188

/-! ## A267312.P3328244577765732095

`filter[A057716(n+1), A071374(#)]`
-/

namespace A267312.P3328244577765732095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057716 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A071374 (f1 j).toNat = 1) n)

end

end A267312.P3328244577765732095

/-! ## A267312.P16846373489380416723

`filter[A214329(n+1), A267579(#)]`
-/

namespace A267312.P16846373489380416723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214329 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267579 (f1 j).toNat = 1) n)

end

end A267312.P16846373489380416723

/-! ## A267312.P12698110295320485246

`filter[A138591(n+2), A071374(#)]`
-/

namespace A267312.P12698110295320485246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138591 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A071374 (f1 j).toNat = 1) n)

end

end A267312.P12698110295320485246

/-!
# A267313: Expansion of x*(-1 + 2*x + 3*x^2 - 2*x^3 + x^4)/((1 - x)^3*(1 + x + x^2)^2).

The programs for A267313, the canonical program `A267313.P3715447381690930074` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267313 has offset 0).

The definition of A267313 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A267313.P2445540946074258820

`∑[n*(-1)^(n%3)]`
-/

namespace A267313.P2445540946074258820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (-1) ^ (n % 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267313.P2445540946074258820

namespace A267313

/-- `∑[n*(-1)^(n%3)]` -/
def P2445540946074258820.Spec : Prop :=
  ∀ n, P2445540946074258820.a n = A267313 n

end A267313

/-! ## A267313.P3715447381690930074

`∑[n*(gcd(3, ∑[n])-2)]`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A267313

/-- `∑[n*(gcd(3, ∑[n])-2)]` -/
def P3715447381690930074.Spec : Prop :=
  ∀ n, P3715447381690930074.a n = A267313 n

theorem P3715447381690930074.correct : P3715447381690930074.Spec := by
  intro n
  simp only [A267313]

end A267313

/-! ## A267313.P12849515263246646871

`∑[n*(1-(n²+n)%3)]`
-/

namespace A267313.P12849515263246646871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (1 - (((n ^ 2 + n) % 3 : ℕ) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267313.P12849515263246646871

namespace A267313

/-- `∑[n*(1-(n²+n)%3)]` -/
def P12849515263246646871.Spec : Prop :=
  ∀ n, P12849515263246646871.a n = A267313 n

end A267313

/-! ## A267313.P12141326278083489916

`∑[n*∑[floor(a(n-3))]]` with `a(0)=1, a(1)=-2, a(2)=2, a(3)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A267313.P12141326278083489916
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, -2, 2, 0] fun n f2 =>
  f2 (n - 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267313.P12141326278083489916

namespace A267313

/-- `∑[n*∑[floor(a(n-3))]]` -/
def P12141326278083489916.Spec : Prop :=
  ∀ n, P12141326278083489916.a n = A267313 n

end A267313

/-! ## A267313.P11970698677965901362

`∑[n/∑[floor(a(n-3))]]` with `a(0)=1, a(1)=-2, a(2)=2, a(3)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A267313.P11970698677965901362
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, -2, 2, 0] fun n f2 =>
  f2 (n - 3)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267313.P11970698677965901362

namespace A267313

/-- `∑[n/∑[floor(a(n-3))]]` -/
def P11970698677965901362.Spec : Prop :=
  ∀ n, P11970698677965901362.a n = (A267313 n : ℚ)

end A267313

/-! ## A267313.P8023480088632534249

`∑[n/(2-gcd(n+2, a(n-1)))]` with `a(0)=0`
-/

namespace A267313.P8023480088632534249
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [0] fun n f1 =>
  (n : ℚ) / (2 - (Int.gcd (n + 2 : ℤ) (SequenceMachineLib.roundAway (f1 (n - 1))) : ℤ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267313.P8023480088632534249

namespace A267313

/-- `∑[n/(2-gcd(n+2, a(n-1)))]` -/
def P8023480088632534249.Spec : Prop :=
  ∀ n, P8023480088632534249.a n = (A267313 n : ℚ)

end A267313

/-! ## A267313.P6147324266295485139

`∑[n*A257075(n)]`
-/

namespace A267313.P6147324266295485139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A257075 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267313.P6147324266295485139

namespace A267313

/-- `∑[n*A257075(n)]` -/
def P6147324266295485139.Spec : Prop :=
  ∀ n, P6147324266295485139.a n = A267313 n

end A267313

/-! ## A267313.P15855898185427140287

`∑[n*or(1, A163804(n))]`
-/

namespace A267313.P15855898185427140287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.lor 1 (A163804 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267313.P15855898185427140287

namespace A267313

/-- `∑[n*or(1, A163804(n))]` -/
def P15855898185427140287.Spec : Prop :=
  ∀ n, P15855898185427140287.a n = A267313 n

end A267313

/-! ## A267313.P17886950475605155163

`∑[n*(A061800(n)-n)]`
-/

namespace A267313.P17886950475605155163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A061800 n - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267313.P17886950475605155163

namespace A267313

/-- `∑[n*(A061800(n)-n)]` -/
def P17886950475605155163.Spec : Prop :=
  ∀ n, P17886950475605155163.a n = A267313 n

end A267313

/-! ## A267313.P12985533267020251157

`∑[n/A008683(gcd(n+2, 1-n))]`
-/

namespace A267313.P12985533267020251157
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A008683 (Int.gcd (n + 2 : ℤ) (1 - (n : ℤ))) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267313.P12985533267020251157

namespace A267313

/-- `∑[n/A008683(gcd(n+2, 1-n))]` -/
def P12985533267020251157.Spec : Prop :=
  ∀ n, P12985533267020251157.a n = (A267313 n : ℚ)

end A267313

/-! ## A267313.P5300796067838994280

`∑[n*A008683(gcd(3*n, 2*n+1))]`
-/

namespace A267313.P5300796067838994280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A008683 (Nat.gcd (3 * n) (2 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267313.P5300796067838994280

namespace A267313

/-- `∑[n*A008683(gcd(3*n, 2*n+1))]` -/
def P5300796067838994280.Spec : Prop :=
  ∀ n, P5300796067838994280.a n = A267313 n

end A267313

/-! ## A267313.P13903199133065822722

`∑[and(2*n, -(A004277(n)+1)%3)-n]`
-/

namespace A267313.P13903199133065822722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (2 * n : ℤ) (-Int.tmod (A004277 n + 1) 3) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267313.P13903199133065822722

namespace A267313

/-- `∑[and(2*n, -(A004277(n)+1)%3)-n]` -/
def P13903199133065822722.Spec : Prop :=
  ∀ n, P13903199133065822722.a n = A267313 n

end A267313

/-! ## A267313.P9132703142724485195

`∑[n*A033999(A289813(n))]`
-/

namespace A267313.P9132703142724485195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A033999 (A289813 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267313.P9132703142724485195

namespace A267313

/-- `∑[n*A033999(A289813(n))]` -/
def P9132703142724485195.Spec : Prop :=
  ∀ n, P9132703142724485195.a n = A267313 n

end A267313

/-! ## A267313.P9654022131012491397

`(n+1)*A008611(n)-∑[A008611(n)]`
-/

namespace A267313.P9654022131012491397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A008611 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267313.P9654022131012491397

namespace A267313

/-- `(n+1)*A008611(n)-∑[A008611(n)]` -/
def P9654022131012491397.Spec : Prop :=
  ∀ n, P9654022131012491397.a n = A267313 n

end A267313

/-! ## A267313.P9677388583589316874

`∑[n*A131561(n+1)]`
-/

namespace A267313.P9677388583589316874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A131561 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267313.P9677388583589316874

namespace A267313

/-- `∑[n*A131561(n+1)]` -/
def P9677388583589316874.Spec : Prop :=
  ∀ n, P9677388583589316874.a n = A267313 n

end A267313

/-! ## A267313.P5226852309592873888

`∑[n*Δ[A047878(n+1)]]`
-/

namespace A267313.P5226852309592873888
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047878 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267313.P5226852309592873888

namespace A267313

/-- `∑[n*Δ[A047878(n+1)]]` -/
def P5226852309592873888.Spec : Prop :=
  ∀ n, P5226852309592873888.a n = A267313 n

end A267313

/-! ## A267313.P15863010836322703221

`∑[n*Δ[A008611(n+2)]]`
-/

namespace A267313.P15863010836322703221
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267313.P15863010836322703221

namespace A267313

/-- `∑[n*Δ[A008611(n+2)]]` -/
def P15863010836322703221.Spec : Prop :=
  ∀ n, P15863010836322703221.a n = A267313 n

end A267313

/-! ## A267313.P12339171266434280833

`∑[n/A257075(n+3)]`
-/

namespace A267313.P12339171266434280833
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A257075 (n + 3) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267313.P12339171266434280833

namespace A267313

/-- `∑[n/A257075(n+3)]` -/
def P12339171266434280833.Spec : Prop :=
  ∀ n, P12339171266434280833.a n = (A267313 n : ℚ)

end A267313

/-! ## A267313.P765104549320846210

`∑[n*A131017(2*n+1)]`
-/

namespace A267313.P765104549320846210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A131017 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267313.P765104549320846210

namespace A267313

/-- `∑[n*A131017(2*n+1)]` -/
def P765104549320846210.Spec : Prop :=
  ∀ n, P765104549320846210.a n = A267313 n

end A267313

/-! ## A267313.P8437068800067400876

`∑[n*A195909(2*n+1)]`
-/

namespace A267313.P8437068800067400876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A195909 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267313.P8437068800067400876

namespace A267313

/-- `∑[n*A195909(2*n+1)]` -/
def P8437068800067400876.Spec : Prop :=
  ∀ n, P8437068800067400876.a n = A267313 n

end A267313

/-!
# A267314: Expansion of 2*x*(1 + 2*x - x^2)/((1 - x)*(1 + x^2)^2).

The programs for A267314, the canonical program `A267314.P16682269322428007227` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267314 has offset 0).

The definition of A267314 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A267314.P16682269322428007227

`∑[n*(and(4, 6*n)-2)]`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A267314

/-- `∑[n*(and(4, 6*n)-2)]` -/
def P16682269322428007227.Spec : Prop :=
  ∀ n, P16682269322428007227.a n = A267314 n

theorem P16682269322428007227.correct : P16682269322428007227.Spec := by
  intro n
  simp only [A267314]

end A267314

/-! ## A267314.P11668423091504505887

`∑[-2*n*(-1)^∑[n]]`
-/

namespace A267314.P11668423091504505887
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((2 * n : ℤ) * (-1) ^ (∑ j ∈ Finset.range (n + 1), f2 j))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267314.P11668423091504505887

namespace A267314

/-- `∑[-2*n*(-1)^∑[n]]` -/
def P11668423091504505887.Spec : Prop :=
  ∀ n, P11668423091504505887.a n = A267314 n

end A267314

/-! ## A267314.P11104152578244422104

`and(2, n)+2*A009531(n)`
-/

namespace A267314.P11104152578244422104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land 2 n : ℤ) + 2 * A009531 n

end

end A267314.P11104152578244422104

namespace A267314

/-- `and(2, n)+2*A009531(n)` -/
def P11104152578244422104.Spec : Prop :=
  ∀ n, P11104152578244422104.a n = A267314 n

end A267314

/-! ## A267314.P8986177995375577811

`2*A181983(A003815(n))`
-/

namespace A267314.P8986177995375577811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A181983 (A003815 n).toNat

end

end A267314.P8986177995375577811

namespace A267314

/-- `2*A181983(A003815(n))` -/
def P8986177995375577811.Spec : Prop :=
  ∀ n, P8986177995375577811.a n = A267314 n

end A267314

/-! ## A267314.P16750363556084338818

`n*Δ[A112652(n)]-A112652(n)`
-/

namespace A267314.P16750363556084338818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112652 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f1 (n + 1) - f1 n) - A112652 n

end

end A267314.P16750363556084338818

namespace A267314

/-- `n*Δ[A112652(n)]-A112652(n)` -/
def P16750363556084338818.Spec : Prop :=
  ∀ n, P16750363556084338818.a n = A267314 n

end A267314

/-! ## A267314.P17776715519970298587

`A009531(2*A003815(n))`
-/

namespace A267314.P17776715519970298587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 (2 * A003815 n).toNat

end

end A267314.P17776715519970298587

namespace A267314

/-- `A009531(2*A003815(n))` -/
def P17776715519970298587.Spec : Prop :=
  ∀ n, P17776715519970298587.a n = A267314 n

end A267314

/-!
# A267317: a(n) = final digit of 2^n-1.

The programs for A267317, the canonical program `A267317.P6329080606617605531` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267317 has offset 0).

The definition of A267317 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A267317.P6329080606617605531

`a(n-4)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=7, a(4)=5`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A267317

/-- `a(n-4)` -/
def P6329080606617605531.Spec : Prop :=
  ∀ n, (P6329080606617605531.a n : ℤ) = A267317 n

theorem P6329080606617605531.correct : P6329080606617605531.Spec := by
  intro n
  simp only [A267317]

end A267317

/-!
# A267318: Continued fraction expansion of e^(1/5).

The programs for A267318, the canonical program `A267318.P10768968845788239623` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267318 has offset 0).

The definition of A267318 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A267318.P10768968845788239623

`gcd(floor(10*n/3)+1, 1-n%3)`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A267318

/-- `gcd(floor(10*n/3)+1, 1-n%3)` -/
def P10768968845788239623.Spec : Prop :=
  ∀ n, (P10768968845788239623.a n : ℤ) = A267318 n

theorem P10768968845788239623.correct : P10768968845788239623.Spec := by
  intro n
  simp only [A267318]

end A267318

/-! ## A267318.P5050670273039555431

`a(n-3)+5*2%a(n-3)` with `a(0)=1, a(1)=4, a(2)=1`
-/

namespace A267318.P5050670273039555431
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 1] fun n a =>
  a (n - 3) + 5 * (2 % a (n - 3))

end

end A267318.P5050670273039555431

namespace A267318

/-- `a(n-3)+5*2%a(n-3)` -/
def P5050670273039555431.Spec : Prop :=
  ∀ n, (P5050670273039555431.a n : ℤ) = A267318 n

end A267318

/-! ## A267318.P11822090176616748682

`a(n-3)+10*and(a(n-1), a(n-2))` with `a(0)=1, a(1)=4, a(2)=1`
-/

namespace A267318.P11822090176616748682
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 1] fun n a =>
  a (n - 3) + 10 * Nat.land (a (n - 1)) (a (n - 2))

end

end A267318.P11822090176616748682

namespace A267318

/-- `a(n-3)+10*and(a(n-1), a(n-2))` -/
def P11822090176616748682.Spec : Prop :=
  ∀ n, (P11822090176616748682.a n : ℤ) = A267318 n

end A267318

/-! ## A267318.P8387184940065188718

`(2*A047212(n+1))^(∑[n]%3)`
-/

namespace A267318.P8387184940065188718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A047212 (n + 1)) ^ ((∑ j ∈ Finset.range (n + 1), f1 j) % 3)

end

end A267318.P8387184940065188718

namespace A267318

/-- `(2*A047212(n+1))^(∑[n]%3)` -/
def P8387184940065188718.Spec : Prop :=
  ∀ n, P8387184940065188718.a n = A267318 n

end A267318

/-! ## A267318.P17424801763177876121

`gcd(A260190(n), A298784(n))`
-/

namespace A267318.P17424801763177876121
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A260190 n) (A298784 n)

end

end A267318.P17424801763177876121

namespace A267318

/-- `gcd(A260190(n), A298784(n))` -/
def P17424801763177876121.Spec : Prop :=
  ∀ n, (P17424801763177876121.a n : ℤ) = A267318 n

end A267318

/-! ## A267318.P7588965260226001533

`2*A078688(n)-A078689(n)`
-/

namespace A267318.P7588965260226001533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A078688 n - A078689 n

end

end A267318.P7588965260226001533

namespace A267318

/-- `2*A078688(n)-A078689(n)` -/
def P7588965260226001533.Spec : Prop :=
  ∀ n, P7588965260226001533.a n = A267318 n

end A267318

/-! ## A267318.P964753181182381001

`gcd(A017293(n), A078309(n+1))`
-/

namespace A267318.P964753181182381001
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A017293 n) (A078309 (n + 1))

end

end A267318.P964753181182381001

namespace A267318

/-- `gcd(A017293(n), A078309(n+1))` -/
def P964753181182381001.Spec : Prop :=
  ∀ n, (P964753181182381001.a n : ℤ) = A267318 n

end A267318

/-! ## A267318.P9585673087398855736

`gcd(A063087(n+1), A260192(n))`
-/

namespace A267318.P9585673087398855736
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A063087 (n + 1)) (A260192 n)

end

end A267318.P9585673087398855736

namespace A267318

/-- `gcd(A063087(n+1), A260192(n))` -/
def P9585673087398855736.Spec : Prop :=
  ∀ n, (P9585673087398855736.a n : ℤ) = A267318 n

end A267318

/-! ## A267318.P16946530207299559248

`and(A063213(n+1), A131713(n))`
-/

namespace A267318.P16946530207299559248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A063213 (n + 1)) (A131713 n)

end

end A267318.P16946530207299559248

namespace A267318

/-- `and(A063213(n+1), A131713(n))` -/
def P16946530207299559248.Spec : Prop :=
  ∀ n, P16946530207299559248.a n = A267318 n

end A267318

/-! ## A267318.P660491095728106119

`and(A063241(n+1), A131713(n))`
-/

namespace A267318.P660491095728106119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A063241 (n + 1)) (A131713 n)

end

end A267318.P660491095728106119

namespace A267318

/-- `and(A063241(n+1), A131713(n))` -/
def P660491095728106119.Spec : Prop :=
  ∀ n, P660491095728106119.a n = A267318 n

end A267318

/-! ## A267318.P7428035241820008281

`and(A078309(n+1), A131713(n))`
-/

namespace A267318.P7428035241820008281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A078309 (n + 1)) (A131713 n)

end

end A267318.P7428035241820008281

namespace A267318

/-- `and(A078309(n+1), A131713(n))` -/
def P7428035241820008281.Spec : Prop :=
  ∀ n, P7428035241820008281.a n = A267318 n

end A267318

/-! ## A267318.P11481412314531150524

`and(A078309(n+1), A257075(n))`
-/

namespace A267318.P11481412314531150524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A078309 (n + 1)) (A257075 n)

end

end A267318.P11481412314531150524

namespace A267318

/-- `and(A078309(n+1), A257075(n))` -/
def P11481412314531150524.Spec : Prop :=
  ∀ n, P11481412314531150524.a n = A267318 n

end A267318

/-! ## A267318.P3462373979565200066

`A078688(n)+A078689(n)-A058281(n)`
-/

namespace A267318.P3462373979565200066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078688 n + (A078689 n - A058281 n)

end

end A267318.P3462373979565200066

namespace A267318

/-- `A078688(n)+A078689(n)-A058281(n)` -/
def P3462373979565200066.Spec : Prop :=
  ∀ n, P3462373979565200066.a n = A267318 n

end A267318

/-! ## A267318.P12257462243067634115

`A271508(A003417(n+1))`
-/

namespace A267318.P12257462243067634115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271508 (A003417 (n + 1)).toNat

end

end A267318.P12257462243067634115

namespace A267318

/-- `A271508(A003417(n+1))` -/
def P12257462243067634115.Spec : Prop :=
  ∀ n, P12257462243067634115.a n = A267318 n

end A267318

/-! ## A267318.P15870670699363461734

`A032793(n*ceil((A146325(n+1)-1)/2)+1)`
-/

namespace A267318.P15870670699363461734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032793 ((n : ℤ) * ⌈(A146325 (n + 1) - 1 : ℚ) / 2⌉ + 1).toNat

end

end A267318.P15870670699363461734

namespace A267318

/-- `A032793(n*ceil((A146325(n+1)-1)/2)+1)` -/
def P15870670699363461734.Spec : Prop :=
  ∀ n, P15870670699363461734.a n = A267318 n

end A267318

/-! ## A267318.P12042274471145895392

`A080427(A047261(n+1))`
-/

namespace A267318.P12042274471145895392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080427 (A047261 (n + 1)).toNat

end

end A267318.P12042274471145895392

namespace A267318

/-- `A080427(A047261(n+1))` -/
def P12042274471145895392.Spec : Prop :=
  ∀ n, P12042274471145895392.a n = A267318 n

end A267318

/-! ## A267318.P9367358620886498558

`A160186(A078688(n))`
-/

namespace A267318.P9367358620886498558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160186 (A078688 n).toNat

end

end A267318.P9367358620886498558

namespace A267318

/-- `A160186(A078688(n))` -/
def P9367358620886498558.Spec : Prop :=
  ∀ n, P9367358620886498558.a n = A267318 n

end A267318

/-! ## A267318.P9085567654136889023

`A005131(5*n+2)`
-/

namespace A267318.P9085567654136889023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005131 (5 * n + 2)

end

end A267318.P9085567654136889023

namespace A267318

/-- `A005131(5*n+2)` -/
def P9085567654136889023.Spec : Prop :=
  ∀ n, P9085567654136889023.a n = A267318 n

end A267318

/-! ## A267318.P12664825713209269588

`A003417(A008706(n))`
-/

namespace A267318.P12664825713209269588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003417 (A008706 n).toNat

end

end A267318.P12664825713209269588

namespace A267318

/-- `A003417(A008706(n))` -/
def P12664825713209269588.Spec : Prop :=
  ∀ n, P12664825713209269588.a n = A267318 n

end A267318

/-!
# A267320: Smallest m such that A267238(m) = n.

The programs for A267320, there is no canonical definition to state claims against.
-/

/-! ## A267320.P11484328390260058383

`∑{e}[A063805(n+3), A007088(#)]`
-/

namespace A267320.P11484328390260058383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063805 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A007088 (Nat.factorization (f1 n).natAbs p)

end

end A267320.P11484328390260058383

/-! ## A267320.P16596580769040492122

`A006577(ceil(2^(n-1))*A264781(2*n))`
-/

namespace A267320.P16596580769040492122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ * A264781 (2 * n)).toNat

end

end A267320.P16596580769040492122

/-!
# A267322: Expansion of (1 + x + x^2 + x^4 + 2*x^5)/(1 - x^3)^3.

The programs for A267322, the canonical program `A267322.P8704265324476968171` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267322 has offset 0).

The definition of A267322 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A267322.P8704265324476968171

`3*a(n-3)-3*a(n-6)+a(n-9)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=3, a(4)=4, a(5)=5, a(6)=6, a(7)=9, a(8)=12`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A267322

/-- `3*a(n-3)-3*a(n-6)+a(n-9)` -/
def P8704265324476968171.Spec : Prop :=
  ∀ n, P8704265324476968171.a n = A267322 n

theorem P8704265324476968171.correct : P8704265324476968171.Spec := by
  intro n
  simp only [A267322]

end A267322

/-!
# A267323: The number of permutations in S_n with strategic pile of size 3.

The programs for A267323, there is no canonical definition to state claims against.
-/

/-! ## A267323.P11810124530649742007

`n!-A083746(round(sqrt(n²+1)))`
-/

namespace A267323.P11810124530649742007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - A083746 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A267323.P11810124530649742007

/-! ## A267323.P17709619098851983455

`A000142(n)-A083746(A028310(n))`
-/

namespace A267323.P17709619098851983455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - A083746 (A028310 n).toNat

end

end A267323.P17709619098851983455

/-! ## A267323.P3866867519256752328

`A002266(A182859(n!))`
-/

namespace A267323.P3866867519256752328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A182859 (Nat.factorial n)).toNat

end

end A267323.P3866867519256752328

/-!
# A267324: Number of elements of S_n with strategic pile of size 4.

The programs for A267324, there is no canonical definition to state claims against.
-/

/-! ## A267324.P10923661331632250121

`and(A043437(A001349(n)), A045288(n+1))`
-/

namespace A267324.P10923661331632250121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043437 (A001349 n).toNat) (A045288 (n + 1))

end

end A267324.P10923661331632250121

/-! ## A267324.P9394806461596474546

`and(A006352(A202139(n)), A309743(n+1))`
-/

namespace A267324.P9394806461596474546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A006352 (A202139 n).toNat) (A309743 (n + 1))

end

end A267324.P9394806461596474546

/-!
# A267326: Number of ways writing n^2 as a sum of four squares: a(n) = A000118(n^2).

The programs for A267326, there is no canonical definition to state claims against.
-/

/-! ## A267326.P11275594930095075982

`A000118(n²)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A267326.P11275594930095075982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000118 (n ^ 2)

end

end A267326.P11275594930095075982

/-! ## A267326.P13263932376649035578

`A000118(A129194(n))%A077323(2*n+2)`
-/

namespace A267326.P13263932376649035578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000118 (A129194 n).toNat) (A077323 (2 * n + 2))

end

end A267326.P13263932376649035578

/-! ## A267326.P12128501158632322192

`and(-1, A000118(A000290(n)))`
-/

namespace A267326.P12128501158632322192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A000118 (A000290 n).toNat)

end

end A267326.P12128501158632322192

/-! ## A267326.P11194655807570366277

`A000118(A000290(n))%A001513(n)`
-/

namespace A267326.P11194655807570366277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000118 (A000290 n).toNat) (A001513 n)

end

end A267326.P11194655807570366277

/-! ## A267326.P12295729126483453817

`gcd(A000038(n), A000118(A000290(n)))`
-/

namespace A267326.P12295729126483453817
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A000118 (A000290 n).toNat)

end

end A267326.P12295729126483453817

/-! ## A267326.P17015075090318155220

`lcm(A000034(n), A000118(A000290(n)))`
-/

namespace A267326.P17015075090318155220
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A000118 (A000290 n).toNat)

end

end A267326.P17015075090318155220

/-! ## A267326.P1268310686843010997

`A000118(A000290(n))*A057427(n+4)`
-/

namespace A267326.P1268310686843010997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000118 (A000290 n).toNat * A057427 (n + 4)

end

end A267326.P1268310686843010997

/-! ## A267326.P8279864857819252788

`A000034(2*n+2)*A000118(A000290(n))`
-/

namespace A267326.P8279864857819252788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n + 2) * A000118 (A000290 n).toNat

end

end A267326.P8279864857819252788

/-! ## A267326.P5185244365684951096

`A000118(A000290(n))*A093178(2*n+4)`
-/

namespace A267326.P5185244365684951096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000118 (A000290 n).toNat * A093178 (2 * n + 4)

end

end A267326.P5185244365684951096

/-! ## A267326.P2558966637033218565

`A000118(A000290(n))+A000038(A000118(n))`
-/

namespace A267326.P2558966637033218565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000118 (A000290 n).toNat + A000038 (A000118 n).toNat

end

end A267326.P2558966637033218565

/-! ## A267326.P11644465759221285131

`A000118(A000290(n))*A014963(A004011(n))`
-/

namespace A267326.P11644465759221285131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000118 (A000290 n).toNat * A014963 (A004011 n).toNat

end

end A267326.P11644465759221285131

/-! ## A267326.P1955774731277086414

`abs(A096727(n²))`
-/

namespace A267326.P1955774731277086414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A096727 (n ^ 2)|

end

end A267326.P1955774731277086414

/-!
# A267327: a(n) = decimal expansion of (n-1) prepended n times to the decimal expansion of n (n > 0).

The programs for A267327, there is no canonical definition to state claims against.
-/

/-! ## A267327.P14908763130128761645

`n*A127303(2*n+3)+1`
-/

namespace A267327.P14908763130128761645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A127303 (2 * n + 3) + 1

end

end A267327.P14908763130128761645

/-! ## A267327.P13464152682222876522

`n*record[Δ[A120449(n+1)]]+n+1`
-/

namespace A267327.P13464152682222876522
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120449 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n + 1 : ℤ)

end

end A267327.P13464152682222876522

/-! ## A267327.P14489193202376090573

`n*A000042(A342952(n+1)+1)+1`
-/

namespace A267327.P14489193202376090573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000042 (A342952 (n + 1) + 1).toNat + 1

end

end A267327.P14489193202376090573

/-! ## A267327.P3208506693371110858

`n*A105279(A082217(n+1))+1+n`
-/

namespace A267327.P3208506693371110858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A105279 (A082217 (n + 1)).toNat + 1 + (n : ℤ)

end

end A267327.P3208506693371110858

/-! ## A267327.P3229514817701137195

`(9*n+n+1)*record[A127805(n)]+n-A105279(n)`
-/

namespace A267327.P3229514817701137195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127805 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (9 * n + (n + 1) : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n : ℤ) - A105279 n

end

end A267327.P3229514817701137195

/-!
# A267328: T(n,k)=Number of nXk arrays containing k copies of 0..n-1 with every element equal to or 1 greater than any southwest or northwest neighbors modulo n and the upper left element equal to 0.

The programs for A267328, there is no canonical definition to state claims against.
-/

/-! ## A267328.P9139171422752936214

`C(A072621(A267562(n+1)), A102480(n))`
-/

namespace A267328.P9139171422752936214
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A072621 (A267562 (n + 1)).toNat).toNat (A102480 n).toNat

end

end A267328.P9139171422752936214

/-! ## A267328.P12103277045854158399

`C(A267562(A077168(n)), A102480(n))`
-/

namespace A267328.P12103277045854158399
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A267562 (A077168 n).toNat).toNat (A102480 n).toNat

end

end A267328.P12103277045854158399

/-! ## A267328.P18041029752283808491

`∑{digits}[A077739(A267836(n+1)), #]`
-/

namespace A267328.P18041029752283808491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077739 (A267836 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A267328.P18041029752283808491

/-! ## A267328.P7042250721131835806

`A267019(n+1)-A119464(A156888(n))`
-/

namespace A267328.P7042250721131835806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267019 (n + 1) - A119464 (A156888 n).toNat

end

end A267328.P7042250721131835806

/-! ## A267328.P7042405761658725332

`A267278(n+1)-A119464(A156888(n))`
-/

namespace A267328.P7042405761658725332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267278 (n + 1) - A119464 (A156888 n).toNat

end

end A267328.P7042405761658725332

/-!
# A267329: Number of nX(n+1) arrays of permutations of n+1 copies of 0..n-1 with every element equal to or 1 greater than any southwest or northwest neighbors modulo n and the upper left element equal to 0.

The programs for A267329, there is no canonical definition to state claims against.
-/

/-! ## A267329.P3223699830246117655

`A223133(2*n)+A063196(A223133(2*n))`
-/

namespace A267329.P3223699830246117655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223133 (2 * n) + A063196 (A223133 (2 * n)).toNat

end

end A267329.P3223699830246117655

/-!
# A267330: Number of nX(n+2) arrays of permutations of n+2 copies of 0..n-1 with every element equal to or 1 greater than any southwest or northwest neighbors modulo n and the upper left element equal to 0.

The programs for A267330, there is no canonical definition to state claims against.
-/

/-! ## A267330.P9159047820977456187

`A267328(∑[4*(n+1)])`
-/

namespace A267330.P9159047820977456187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267328 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A267330.P9159047820977456187

/-! ## A267330.P1206955351757804543

`record[A267328(A156678(n+1))]`
-/

namespace A267330.P1206955351757804543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267328 (A156678 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267330.P1206955351757804543

/-! ## A267330.P2521794523936457339

`record[and(A115952(n), A267328(n+1))]`
-/

namespace A267330.P2521794523936457339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A115952 n) (A267328 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267330.P2521794523936457339

/-! ## A267330.P12219118534356048626

`record[A267328(A106232(∑{e}[n+1, #]+1))]`
-/

namespace A267330.P12219118534356048626
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267328 (A106232 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267330.P12219118534356048626

/-! ## A267330.P13013514312805133145

`A267328(A106232(n+2))+A185284(n)`
-/

namespace A267330.P13013514312805133145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267328 (A106232 (n + 2)).toNat + A185284 n

end

end A267330.P13013514312805133145

/-!
# A267331: Number of n X (n+3) arrays of permutations of n+3 copies of 0..n-1 with every element equal to or 1 greater than any southwest or northwest neighbors modulo n and the upper left element equal to 0.

The programs for A267331, there is no canonical definition to state claims against.
-/

/-! ## A267331.P12217566097969979144

`A267328(A056220(n+2))`
-/

namespace A267331.P12217566097969979144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267328 (A056220 (n + 2)).toNat

end

end A267331.P12217566097969979144

/-! ## A267331.P11420263995500272784

`A267328(A268581(n)+2)`
-/

namespace A267331.P11420263995500272784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267328 (A268581 n + 2).toNat

end

end A267331.P11420263995500272784

/-! ## A267331.P9257482608524239106

`A267328(A161532(n)+6)`
-/

namespace A267331.P9257482608524239106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267328 (A161532 n + 6).toNat

end

end A267331.P9257482608524239106

/-! ## A267331.P9181577806935330723

`record[A267328(record[A342354(n)])]`
-/

namespace A267331.P9181577806935330723
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342354 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267328 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267331.P9181577806935330723

/-! ## A267331.P9976772378485694836

`A267328(A054000(n+2)+1)`
-/

namespace A267331.P9976772378485694836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267328 (A054000 (n + 2) + 1).toNat

end

end A267331.P9976772378485694836

/-!
# A267332: Number of nX(n+4) arrays of permutations of n+4 copies of 0..n-1 with every element equal to or 1 greater than any southwest or northwest neighbors modulo n and the upper left element equal to 0.

The programs for A267332, there is no canonical definition to state claims against.
-/

/-! ## A267332.P7538141791065875741

`A267328(A142463(n+2))`
-/

namespace A267332.P7538141791065875741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267328 (A142463 (n + 2)).toNat

end

end A267332.P7538141791065875741

/-! ## A267332.P13860715174726117057

`A267328(A090288(n+1)+1)`
-/

namespace A267332.P13860715174726117057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267328 (A090288 (n + 1) + 1).toNat

end

end A267332.P13860715174726117057

/-! ## A267332.P632570018735781859

`record[A267328(A156678(n+1)-1)]`
-/

namespace A267332.P632570018735781859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267328 (A156678 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267332.P632570018735781859

/-! ## A267332.P5749350424942315588

`record[A267328(A142463(C(comp[∑[n]]-n, 2)-n))]`
-/

namespace A267332.P5749350424942315588
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267328 (A142463 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267332.P5749350424942315588

/-! ## A267332.P17822294489066891169

`record[and(A115952(2*n+1), A267328(2*n+1))]`
-/

namespace A267332.P17822294489066891169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A115952 (2 * n + 1)) (A267328 (2 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267332.P17822294489066891169

/-!
# A267333: Number of 4Xn arrays containing n copies of 0..4-1 with every element equal to or 1 greater than any southwest or northwest neighbors modulo 4 and the upper left element equal to 0.

The programs for A267333, there is no canonical definition to state claims against.
-/

/-! ## A267333.P9635640685852655220

`A267328(A141214(n)+7)`
-/

namespace A267333.P9635640685852655220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267328 (A141214 n + 7).toNat

end

end A267333.P9635640685852655220

/-! ## A267333.P7512226194026869776

`A267328(A052905(n)+9)`
-/

namespace A267333.P7512226194026869776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267328 (A052905 n + 9).toNat

end

end A267333.P7512226194026869776

/-! ## A267333.P6250836936328861

`A267328(A055999(n)+10)`
-/

namespace A267333.P6250836936328861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267328 (A055999 n + 10).toNat

end

end A267333.P6250836936328861

/-! ## A267333.P10851742409698258723

`A267328(A167614(n+2)+1)`
-/

namespace A267333.P10851742409698258723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267328 (A167614 (n + 2) + 1).toNat

end

end A267333.P10851742409698258723

/-! ## A267333.P5868657595539781510

`A267328(A133263(n+3)+2)`
-/

namespace A267333.P5868657595539781510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267328 (A133263 (n + 3) + 2).toNat

end

end A267333.P5868657595539781510

/-!
# A267334: Number of 5Xn arrays containing n copies of 0..5-1 with every element equal to or 1 greater than any southwest or northwest neighbors modulo 5 and the upper left element equal to 0.

The programs for A267334, there is no canonical definition to state claims against.
-/

/-! ## A267334.P13813712146463800184

`A267328(A167499(n+3))`
-/

namespace A267334.P13813712146463800184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267328 (A167499 (n + 3)).toNat

end

end A267334.P13813712146463800184

/-! ## A267334.P13500643937488839039

`A267328(A000124(n+4)+4)`
-/

namespace A267334.P13500643937488839039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267328 (A000124 (n + 4) + 4).toNat

end

end A267334.P13500643937488839039

/-! ## A267334.P2813126187346391719

`A267328(A141214(n+1)+8)`
-/

namespace A267334.P2813126187346391719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267328 (A141214 (n + 1) + 8).toNat

end

end A267334.P2813126187346391719

/-! ## A267334.P12390997849091641841

`A267328(n+7+A133263(n+3))`
-/

namespace A267334.P12390997849091641841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267328 ((n + 7 : ℤ) + A133263 (n + 3)).toNat

end

end A267334.P12390997849091641841

/-!
# A267335: Number of 6Xn arrays containing n copies of 0..6-1 with every element equal to or 1 greater than any southwest or northwest neighbors modulo 6 and the upper left element equal to 0.

The programs for A267335, there is no canonical definition to state claims against.
-/

/-! ## A267335.P12097708350666630225

`A267328(A167499(n+4)+1)`
-/

namespace A267335.P12097708350666630225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267328 (A167499 (n + 4) + 1).toNat

end

end A267335.P12097708350666630225

/-! ## A267335.P14407554331981858255

`A267328(A000217(n+5)+6)`
-/

namespace A267335.P14407554331981858255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267328 (A000217 (n + 5) + 6).toNat

end

end A267335.P14407554331981858255

/-! ## A267335.P11172907381651422007

`A267328(A152947(n+7)+5)`
-/

namespace A267335.P11172907381651422007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267328 (A152947 (n + 7) + 5).toNat

end

end A267335.P11172907381651422007

/-! ## A267335.P6472300671498053063

`A267328(A046691(n+3)+10)`
-/

namespace A267335.P6472300671498053063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267328 (A046691 (n + 3) + 10).toNat

end

end A267335.P6472300671498053063

/-! ## A267335.P7424685392868624424

`A267328(n+9+A133263(n+4))`
-/

namespace A267335.P7424685392868624424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267328 ((n + 9 : ℤ) + A133263 (n + 4)).toNat

end

end A267335.P7424685392868624424

/-!
# A267336: Number of 7Xn arrays containing n copies of 0..7-1 with every element equal to or 1 greater than any southwest or northwest neighbors modulo 7 and the upper left element equal to 0.

The programs for A267336, there is no canonical definition to state claims against.
-/

/-! ## A267336.P17103436926589253178

`A267328(n*(n+13)/2+28)`
-/

namespace A267336.P17103436926589253178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267328 (SequenceMachineLib.roundAway ((n * (n + 13) : ℚ) / 2 + 28)).toNat

end

end A267336.P17103436926589253178

/-!
# A267337: Number of n X n arrays containing n copies of 0..n-1 with every element equal to or 1 greater than any north, west or southwest neighbors modulo n and the upper left element equal to 0.

The programs for A267337, there is no canonical definition to state claims against.
-/

/-! ## A267337.P1906217247216460376

`A267338(∑[4*n]+1)`
-/

namespace A267337.P1906217247216460376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267338 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A267337.P1906217247216460376

/-! ## A267337.P14343485393919301183

`A267392(∑[4*n]+1)`
-/

namespace A267337.P14343485393919301183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267392 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A267337.P14343485393919301183

/-! ## A267337.P8476396510302778354

`record[A267338(A008619(n²))]`
-/

namespace A267337.P8476396510302778354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267338 (A008619 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267337.P8476396510302778354

/-! ## A267337.P15745878688504497643

`record[A267338(∑[A266981(n)])]`
-/

namespace A267337.P15745878688504497643
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266981 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267338 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267337.P15745878688504497643

/-! ## A267337.P4334736186779034875

`record[A267392(∑[A266981(n)])]`
-/

namespace A267337.P4334736186779034875
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266981 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267392 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267337.P4334736186779034875

/-!
# A267338: T(n,k)=Number of nXk arrays containing k copies of 0..n-1 with every element equal to or 1 greater than any north, west or southwest neighbors modulo n and the upper left element equal to 0.

The programs for A267338, there is no canonical definition to state claims against.
-/

/-! ## A267338.P16568729883044066511

`A267392(n+1)-A321312(A102480(n))`
-/

namespace A267338.P16568729883044066511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267392 (n + 1) - A321312 (A102480 n).toNat

end

end A267338.P16568729883044066511

/-! ## A267338.P5980239312135733932

`A267553(A326474(n)+n)`
-/

namespace A267338.P5980239312135733932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267553 (A326474 n + (n : ℤ)).toNat

end

end A267338.P5980239312135733932

/-! ## A267338.P17901516774305564523

`A268115(A326474(n)+n)`
-/

namespace A267338.P17901516774305564523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268115 (A326474 n + (n : ℤ)).toNat

end

end A267338.P17901516774305564523

/-! ## A267338.P17046302816533234431

`A267401(A346061(n)!+n)`
-/

namespace A267338.P17046302816533234431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267401 (Nat.factorial (A346061 n).toNat + n)

end

end A267338.P17046302816533234431

/-! ## A267338.P12575914133683085739

`A267553(A266886(n+2)+n)`
-/

namespace A267338.P12575914133683085739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267553 (A266886 (n + 2) + (n : ℤ)).toNat

end

end A267338.P12575914133683085739

/-!
# A267339: Number of (n+1)Xn arrays containing n copies of 0..n+1-1 with every element equal to or 1 greater than any north, west or southwest neighbors modulo n and the upper left element equal to 0.

The programs for A267339, there is no canonical definition to state claims against.
-/

/-! ## A267339.P18416359519663586752

`A267338(2*(n+1)²+1)`
-/

namespace A267339.P18416359519663586752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267338 (2 * (n + 1) ^ 2 + 1)

end

end A267339.P18416359519663586752

/-!
# A267340: Number of nX(n+1) arrays of permutations of n+1 copies of 0..n-1 with every element equal to or 1 greater than any north, west or southwest neighbors modulo n and the upper left element equal to 0.

The programs for A267340, there is no canonical definition to state claims against.
-/

/-! ## A267340.P12237731967776798650

`A267338(2*(n+1)²)`
-/

namespace A267340.P12237731967776798650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267338 (2 * (n + 1) ^ 2)

end

end A267340.P12237731967776798650

/-! ## A267340.P11245815865873636753

`record[A267338(A053439(n))]`
-/

namespace A267340.P11245815865873636753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267338 (A053439 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267340.P11245815865873636753

/-! ## A267340.P14985519251809733892

`record[A267338(A275009(n))]`
-/

namespace A267340.P14985519251809733892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267338 (A275009 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267340.P14985519251809733892

/-! ## A267340.P3809875504403945914

`record[A267338(∑[A266072(n)])]`
-/

namespace A267340.P3809875504403945914
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266072 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267338 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267340.P3809875504403945914

/-! ## A267340.P10961949348624871841

`record[A267338(A082155(n+1))]`
-/

namespace A267340.P10961949348624871841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267338 (A082155 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267340.P10961949348624871841

/-!
# A267341: Number of nX(n+2) arrays of permutations of n+2 copies of 0..n-1 with every element equal to or 1 greater than any north, west or southwest neighbors modulo n and the upper left element equal to 0.

The programs for A267341, there is no canonical definition to state claims against.
-/

/-! ## A267341.P16123696018460754021

`A267338(∑[4*(n+1)])`
-/

namespace A267341.P16123696018460754021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267338 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A267341.P16123696018460754021

/-! ## A267341.P15324465133912467484

`A267338(A055523(2*n+3))%A001228(n+3)`
-/

namespace A267341.P15324465133912467484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A267338 (A055523 (2 * n + 3)).toNat) (A001228 (n + 3))

end

end A267341.P15324465133912467484

/-!
# A267342: Number of nX(n+3) arrays of permutations of n+3 copies of 0..n-1 with every element equal to or 1 greater than any north, west or southwest neighbors modulo n and the upper left element equal to 0.

The programs for A267342, there is no canonical definition to state claims against.
-/

/-! ## A267342.P11957131354530964557

`A267338(A268581(n)+2)`
-/

namespace A267342.P11957131354530964557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267338 (A268581 n + 2).toNat

end

end A267342.P11957131354530964557

/-! ## A267342.P4032538550177081929

`A267338(A161532(n)+6)`
-/

namespace A267342.P4032538550177081929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267338 (A161532 n + 6).toNat

end

end A267342.P4032538550177081929

/-! ## A267342.P16360446784289490756

`A267338(eq[9, A249900(n)])`
-/

namespace A267342.P16360446784289490756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249900 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267338 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A267342.P16360446784289490756

/-! ## A267342.P16899814299738875893

`A267338(Δ[record[A146298(n)]])`
-/

namespace A267342.P16899814299738875893
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146298 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267338 (f1 (n + 1) - f1 n).toNat

end

end A267342.P16899814299738875893

/-!
# A267343: Number of nX(n+4) arrays of permutations of n+4 copies of 0..n-1 with every element equal to or 1 greater than any north, west or southwest neighbors modulo n and the upper left element equal to 0.

The programs for A267343, there is no canonical definition to state claims against.
-/

/-! ## A267343.P10237029552060977822

`A267338(eq[7, A249900(n)])`
-/

namespace A267343.P10237029552060977822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249900 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267338 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A267343.P10237029552060977822

/-! ## A267343.P3796315407361588508

`A267338(Δ[A143941(n+1)])`
-/

namespace A267343.P3796315407361588508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143941 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267338 (f1 (n + 1) - f1 n).toNat

end

end A267343.P3796315407361588508

/-! ## A267343.P13893890148690259727

`A267338(A090288(n+1)+1)`
-/

namespace A267343.P13893890148690259727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267338 (A090288 (n + 1) + 1).toNat

end

end A267343.P13893890148690259727

/-! ## A267343.P577531533605394964

`A267338(A046092(n+2)-1)`
-/

namespace A267343.P577531533605394964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267338 (A046092 (n + 2) - 1).toNat

end

end A267343.P577531533605394964

/-!
# A267344: Number of 4Xn arrays containing n copies of 0..4-1 with every element equal to or 1 greater than any north, west or southwest neighbors modulo 4 and the upper left element equal to 0.

The programs for A267344, there is no canonical definition to state claims against.
-/

/-! ## A267344.P8380008138026488674

`A267338(∑[n+3]+7)`
-/

namespace A267344.P8380008138026488674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267338 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A267344.P8380008138026488674

/-! ## A267344.P10171174542181574690

`A267338(A167614(n+2)+1)+char[19]`
-/

namespace A267344.P10171174542181574690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267338 (A167614 (n + 2) + 1).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A267344.P10171174542181574690

/-! ## A267344.P2322726234138208362

`or(char[1], A267338(A000096(n+2)+5))`
-/

namespace A267344.P2322726234138208362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A267338 (A000096 (n + 2) + 5).toNat)

end

end A267344.P2322726234138208362

/-! ## A267344.P3467439323366999689

`A267338(A052905(n)+9)%A305667(n+1)`
-/

namespace A267344.P3467439323366999689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A267338 (A052905 n + 9).toNat) (A305667 (n + 1))

end

end A267344.P3467439323366999689

/-! ## A267344.P16965745940497256344

`A267338(A167614(n+2)+1)^and(1, A000040(n+1))`
-/

namespace A267344.P16965745940497256344
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A267338 (A167614 (n + 2) + 1).toNat : ℚ) ^ (Int.land 1 (A000040 (n + 1)) : ℤ)

end

end A267344.P16965745940497256344

/-!
# A267345: Number of 5Xn arrays containing n copies of 0..5-1 with every element equal to or 1 greater than any north, west or southwest neighbors modulo 5 and the upper left element equal to 0.

The programs for A267345, there is no canonical definition to state claims against.
-/

/-! ## A267345.P11167811236246652542

`A267338(∑[n+4]+11)`
-/

namespace A267345.P11167811236246652542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267338 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A267345.P11167811236246652542

/-! ## A267345.P10720657619765641191

`3*A095275(a(n-1))` with `a(0)=1, a(1)=1, a(2)=2, a(3)=2`
-/

namespace A267345.P10720657619765641191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 2] fun n a =>
  3 * A095275 (a (n - 1)).toNat

end

end A267345.P10720657619765641191

/-!
# A267346: Number of 6Xn arrays containing n copies of 0..6-1 with every element equal to or 1 greater than any north, west or southwest neighbors modulo 6 and the upper left element equal to 0.

The programs for A267346, there is no canonical definition to state claims against.
-/

/-! ## A267346.P16640254065977267510

`A267338(A166136(n+4))`
-/

namespace A267346.P16640254065977267510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267338 (A166136 (n + 4)).toNat

end

end A267346.P16640254065977267510

/-! ## A267346.P11593469464823466416

`A267338(A056115(n)+21)`
-/

namespace A267346.P11593469464823466416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267338 (A056115 n + 21).toNat

end

end A267346.P11593469464823466416

/-! ## A267346.P15205594477583765617

`A267338(eq[6, A256910(n)])`
-/

namespace A267346.P15205594477583765617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256910 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267338 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A267346.P15205594477583765617

/-! ## A267346.P13137413719602183073

`A267338(A167499(n+4)+1)`
-/

namespace A267346.P13137413719602183073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267338 (A167499 (n + 4) + 1).toNat

end

end A267346.P13137413719602183073

/-! ## A267346.P15664632006253618984

`A267338(A000124(n+5)+5)`
-/

namespace A267346.P15664632006253618984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267338 (A000124 (n + 5) + 5).toNat

end

end A267346.P15664632006253618984

/-!
# A267347: Number of 7Xn arrays containing n copies of 0..7-1 with every element equal to or 1 greater than any north, west or southwest neighbors modulo 7 and the upper left element equal to 0.

The programs for A267347, there is no canonical definition to state claims against.
-/

/-! ## A267347.P3152189846306115562

`A267338(A056119(n)+28)`
-/

namespace A267347.P3152189846306115562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267338 (A056119 n + 28).toNat

end

end A267347.P3152189846306115562

/-! ## A267347.P17862707927045619012

`A267338(eq[11, A066657(n)])`
-/

namespace A267347.P17862707927045619012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267338 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A267347.P17862707927045619012

/-! ## A267347.P10923092466512820815

`A267338(A000217(n+6)+7)`
-/

namespace A267347.P10923092466512820815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267338 (A000217 (n + 6) + 7).toNat

end

end A267347.P10923092466512820815

/-! ## A267347.P10942655442350389712

`A267338(A141214(n+3)+10)`
-/

namespace A267347.P10942655442350389712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267338 (A141214 (n + 3) + 10).toNat

end

end A267347.P10942655442350389712

/-! ## A267347.P11402975656574149886

`A267338(A055999(n+3)+13)`
-/

namespace A267347.P11402975656574149886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267338 (A055999 (n + 3) + 13).toNat

end

end A267347.P11402975656574149886

/-!
# A267348: Decimal equivalents of terms of A266926 interpreted as binary numbers.

The programs for A267348, there is no canonical definition to state claims against.
-/

/-! ## A267348.P13530030686623355494

`A020336(a(n-1))` with `a(0)=0, a(1)=1, a(2)=2, a(3)=6`
-/

namespace A267348.P13530030686623355494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 6] fun n a =>
  A020336 (a (n - 1)).toNat

end

end A267348.P13530030686623355494

/-! ## A267348.P17746923656074696482

`record[A020330(a(n-1))]` with `a(0)=0, a(1)=1, a(2)=2, a(3)=-3, a(4)=0, a(5)=1, a(6)=6`
-/

namespace A267348.P17746923656074696482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, -3, 0, 1, 6] fun n f1 =>
  A020330 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267348.P17746923656074696482

/-!
# A267349: Triangle read by rows giving successive states of cellular automaton generated by "Rule 123" initiated with a single ON (black) cell.

The programs for A267349, the canonical program `A267349.P897274427643744679` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267349 has offset 0).

The definition of A267349 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A267349.P897274427643744679

`A266666(n*A267704(n))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A267349

/-- `A266666(n*A267704(n))` -/
def P897274427643744679.Spec : Prop :=
  ∀ n, P897274427643744679.a n = A267349 n

theorem P897274427643744679.correct : P897274427643744679.Spec := by
  intro n
  simp only [A267349]

end A267349

/-! ## A267349.P15088326066644542405

`or(char[A264754(n)], A266666(n))`
-/

namespace A267349.P15088326066644542405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264754 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A266666 n)

end

end A267349.P15088326066644542405

namespace A267349

/-- `or(char[A264754(n)], A266666(n))` -/
def P15088326066644542405.Spec : Prop :=
  ∀ n, P15088326066644542405.a n = A267349 n

end A267349

/-! ## A267349.P4518461749253003982

`and(1, A137735(n*A267704(n)))`
-/

namespace A267349.P4518461749253003982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A137735 ((n : ℤ) * A267704 n).toNat)

end

end A267349.P4518461749253003982

namespace A267349

/-- `and(1, A137735(n*A267704(n)))` -/
def P4518461749253003982.Spec : Prop :=
  ∀ n, P4518461749253003982.a n = A267349 n

end A267349

/-! ## A267349.P515994296294471464

`(1-(A267679(n)+A266174(n)))²`
-/

namespace A267349.P515994296294471464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (A267679 n + A266174 n)) ^ 2

end

end A267349.P515994296294471464

namespace A267349

/-- `(1-(A267679(n)+A266174(n)))²` -/
def P515994296294471464.Spec : Prop :=
  ∀ n, P515994296294471464.a n = A267349 n

end A267349

/-! ## A267349.P17295821591179587385

`A267704(and(1-A137735(n), A267704(n)))`
-/

namespace A267349.P17295821591179587385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267704 (Int.land (1 - A137735 n) (A267704 n)).toNat

end

end A267349.P17295821591179587385

namespace A267349

/-- `A267704(and(1-A137735(n), A267704(n)))` -/
def P17295821591179587385.Spec : Prop :=
  ∀ n, P17295821591179587385.a n = A267349 n

end A267349

/-!
# A267350: Binary representation of the n-th iteration of the "Rule 123" elementary cellular automaton starting with a single ON (black) cell.

The programs for A267350, there is no canonical definition to state claims against.
-/

/-! ## A267350.P3516581971107088120

`A007088(A267351(n))`
-/

namespace A267350.P3516581971107088120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A267351 n).toNat

end

end A267350.P3516581971107088120

/-! ## A267350.P126407167203793516

`A007088(or(A146523(n), A265721(n)))`
-/

namespace A267350.P126407167203793516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.lor (A146523 n) (A265721 n)).toNat

end

end A267350.P126407167203793516

/-! ## A267350.P14581374138709594743

`A007088(or(A146523(n), A266668(n)))`
-/

namespace A267350.P14581374138709594743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.lor (A146523 n) (A266668 n)).toNat

end

end A267350.P14581374138709594743

/-!
# A267351: Decimal representation of the n-th iteration of the "Rule 123" elementary cellular automaton starting with a single ON (black) cell.

The programs for A267351, the canonical program `A267351.P7254378362285730718` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267351 has offset 0).

The definition of A267351 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A267351.P5492941925747915347

`or(A146523(n), A265721(n))`
-/

namespace A267351.P5492941925747915347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A146523 n) (A265721 n)

end

end A267351.P5492941925747915347

namespace A267351

/-- `or(A146523(n), A265721(n))` -/
def P5492941925747915347.Spec : Prop :=
  ∀ n, P5492941925747915347.a n = A267351 n

end A267351

/-! ## A267351.P7254378362285730718

`or(A146523(n), A266668(n))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A267351

/-- `or(A146523(n), A266668(n))` -/
def P7254378362285730718.Spec : Prop :=
  ∀ n, P7254378362285730718.a n = A267351 n

theorem P7254378362285730718.correct : P7254378362285730718.Spec := by
  intro n
  simp only [A267351]

end A267351

/-! ## A267351.P33040971572181843

`or(A057427(n)+A052549(n), A266668(n))`
-/

namespace A267351.P33040971572181843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A057427 n + A052549 n) (A266668 n)

end

end A267351.P33040971572181843

namespace A267351

/-- `or(A057427(n)+A052549(n), A266668(n))` -/
def P33040971572181843.Spec : Prop :=
  ∀ n, P33040971572181843.a n = A267351 n

end A267351

/-! ## A267351.P7624125143989451379

`or(A265721(n), A276618(A055998(n)))`
-/

namespace A267351.P7624125143989451379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A265721 n) (A276618 (A055998 n).toNat)

end

end A267351.P7624125143989451379

namespace A267351

/-- `or(A265721(n), A276618(A055998(n)))` -/
def P7624125143989451379.Spec : Prop :=
  ∀ n, P7624125143989451379.a n = A267351 n

end A267351

/-! ## A267351.P3394178389081529471

`A265721(n)+A276618(A055998(n))%A100296(n+1)`
-/

namespace A267351.P3394178389081529471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265721 n + Int.tmod (A276618 (A055998 n).toNat) (A100296 (n + 1))

end

end A267351.P3394178389081529471

namespace A267351

/-- `A265721(n)+A276618(A055998(n))%A100296(n+1)` -/
def P3394178389081529471.Spec : Prop :=
  ∀ n, P3394178389081529471.a n = A267351 n

end A267351

/-!
# A267352: Number of ON (black) cells in the n-th iteration of the "Rule 123" elementary cellular automaton starting with a single ON (black) cell.

The programs for A267352, the canonical program `A267352.P7889508961147999032` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267352 has offset 0).

The definition of A267352 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A267352.P7889508961147999032

`2*a(n-2)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=6, a(4)=3`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A267352

/-- `2*a(n-2)-a(n-4)` -/
def P7889508961147999032.Spec : Prop :=
  ∀ n, P7889508961147999032.a n = A267352 n

theorem P7889508961147999032.correct : P7889508961147999032.Spec := by
  intro n
  simp only [A267352]

end A267352

/-! ## A267352.P4046588563164764797

`or(2, Δ[n²]-a(n-1))` with `a(0)=1`
-/

namespace A267352.P4046588563164764797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor 2 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - a (n - 1))

end

end A267352.P4046588563164764797

namespace A267352

/-- `or(2, Δ[n²]-a(n-1))` -/
def P4046588563164764797.Spec : Prop :=
  ∀ n, P4046588563164764797.a n = A267352 n

end A267352

/-! ## A267352.P15715980516763900467

`2*n-xor(3, a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A267352.P15715980516763900467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  (2 * n : ℤ) - Int.xor 3 (a (n - 1))

end

end A267352.P15715980516763900467

namespace A267352

/-- `2*n-xor(3, a(n-1))` -/
def P15715980516763900467.Spec : Prop :=
  ∀ n, P15715980516763900467.a n = A267352 n

end A267352

/-! ## A267352.P8204340312829191549

`1-or(-2*n, a(n-1))` with `a(0)=1`
-/

namespace A267352.P8204340312829191549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - Int.lor (-(2 * n : ℤ)) (a (n - 1))

end

end A267352.P8204340312829191549

namespace A267352

/-- `1-or(-2*n, a(n-1))` -/
def P8204340312829191549.Spec : Prop :=
  ∀ n, P8204340312829191549.a n = A267352 n

end A267352

/-! ## A267352.P10181097649536090872

`Δ[gcd(n-1, and(1, n))]+n+1`
-/

namespace A267352.P10181097649536090872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n : ℤ) - 1) (Nat.land 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + (n + 1 : ℤ)

end

end A267352.P10181097649536090872

namespace A267352

/-- `Δ[gcd(n-1, and(1, n))]+n+1` -/
def P10181097649536090872.Spec : Prop :=
  ∀ n, P10181097649536090872.a n = A267352 n

end A267352

/-! ## A267352.P5704879298346315250

`a(n-2)+4*n%2` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A267352.P5704879298346315250
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  a (n - 2) + 4 * (n % 2)

end

end A267352.P5704879298346315250

namespace A267352

/-- `a(n-2)+4*n%2` -/
def P5704879298346315250.Spec : Prop :=
  ∀ n, (P5704879298346315250.a n : ℤ) = A267352 n

end A267352

/-! ## A267352.P2011242270675560804

`xor(3, 2*n)%(2*n+1)+1`
-/

namespace A267352.P2011242270675560804
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 (2 * n) % (2 * n + 1) + 1

end

end A267352.P2011242270675560804

namespace A267352

/-- `xor(3, 2*n)%(2*n+1)+1` -/
def P2011242270675560804.Spec : Prop :=
  ∀ n, (P2011242270675560804.a n : ℤ) = A267352 n

end A267352

/-! ## A267352.P8141547200996171420

`or(2, 2*n+1-a(n-1))` with `a(0)=1`
-/

namespace A267352.P8141547200996171420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor 2 ((2 * n : ℤ) + (1 - a (n - 1)))

end

end A267352.P8141547200996171420

namespace A267352

/-- `or(2, 2*n+1-a(n-1))` -/
def P8141547200996171420.Spec : Prop :=
  ∀ n, P8141547200996171420.a n = A267352 n

end A267352

/-! ## A267352.P9566273059116086930

`or(2, 1-(a(n-1)-2*n))` with `a(0)=1`
-/

namespace A267352.P9566273059116086930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor 2 (1 - (a (n - 1) - (2 * n : ℤ)))

end

end A267352.P9566273059116086930

namespace A267352

/-- `or(2, 1-(a(n-1)-2*n))` -/
def P9566273059116086930.Spec : Prop :=
  ∀ n, P9566273059116086930.a n = A267352 n

end A267352

/-! ## A267352.P7567178773624596482

`or(2, n+1-a(n-1)+n)` with `a(0)=1`
-/

namespace A267352.P7567178773624596482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor 2 ((n + 1 : ℤ) - a (n - 1) + (n : ℤ))

end

end A267352.P7567178773624596482

namespace A267352

/-- `or(2, n+1-a(n-1)+n)` -/
def P7567178773624596482.Spec : Prop :=
  ∀ n, P7567178773624596482.a n = A267352 n

end A267352

/-! ## A267352.P15452233723995997962

`floor((a(n-2)+4)/gcd(2, n))` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A267352.P15452233723995997962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  ⌊(a (n - 2) + 4 : ℚ) / (Nat.gcd 2 n : ℚ)⌋

end

end A267352.P15452233723995997962

namespace A267352

/-- `floor((a(n-2)+4)/gcd(2, n))` -/
def P15452233723995997962.Spec : Prop :=
  ∀ n, P15452233723995997962.a n = A267352 n

end A267352

/-! ## A267352.P13037989067372209335

`a(n-2)+C(4, a(n-1))` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A267352.P13037989067372209335
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  a (n - 2) + Nat.choose 4 (a (n - 1))

end

end A267352.P13037989067372209335

namespace A267352

/-- `a(n-2)+C(4, a(n-1))` -/
def P13037989067372209335.Spec : Prop :=
  ∀ n, (P13037989067372209335.a n : ℤ) = A267352 n

end A267352

/-! ## A267352.P18128554434311038878

`gcd(a(n-2)+2, 3%a(n-1))+2` with `a(0)=1, a(1)=2`
-/

namespace A267352.P18128554434311038878
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  Nat.gcd (a (n - 2) + 2) (3 % a (n - 1)) + 2

end

end A267352.P18128554434311038878

namespace A267352

/-- `gcd(a(n-2)+2, 3%a(n-1))+2` -/
def P18128554434311038878.Spec : Prop :=
  ∀ n, (P18128554434311038878.a n : ℤ) = A267352 n

end A267352

/-! ## A267352.P8284242668831968142

`n+1-a(n-1)^((n+1)%2)+n` with `a(0)=1`
-/

namespace A267352.P8284242668831968142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1 : ℤ) - a (n - 1) ^ ((n + 1) % 2) + (n : ℤ)

end

end A267352.P8284242668831968142

namespace A267352

/-- `n+1-a(n-1)^((n+1)%2)+n` -/
def P8284242668831968142.Spec : Prop :=
  ∀ n, P8284242668831968142.a n = A267352 n

end A267352

/-! ## A267352.P5210548254685035490

`Δ[and(n-1, n-2-a(n-1))]+n+1` with `a(0)=0`
-/

namespace A267352.P5210548254685035490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  Int.land ((n : ℤ) - 1) ((n : ℤ) - 2 - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n + 1 : ℤ)

end

end A267352.P5210548254685035490

namespace A267352

/-- `Δ[and(n-1, n-2-a(n-1))]+n+1` -/
def P5210548254685035490.Spec : Prop :=
  ∀ n, P5210548254685035490.a n = A267352 n

end A267352

/-! ## A267352.P3926213653713845488

`Δ[n²]-A267354(n)`
-/

namespace A267352.P3926213653713845488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A267354 n

end

end A267352.P3926213653713845488

namespace A267352

/-- `Δ[n²]-A267354(n)` -/
def P3926213653713845488.Spec : Prop :=
  ∀ n, P3926213653713845488.a n = A267352 n

end A267352

/-! ## A267352.P7873007418782167415

`floor(A266662(n)+atan(n))`
-/

namespace A267352.P7873007418782167415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A266662 n : ℝ) + Real.arctan (n : ℝ)⌋

end

end A267352.P7873007418782167415

namespace A267352

/-- `floor(A266662(n)+atan(n))` -/
def P7873007418782167415.Spec : Prop :=
  ∀ n, P7873007418782167415.a n = A267352 n

end A267352

/-! ## A267352.P10094946376199045385

`A163980(n+1)-a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A267352.P10094946376199045385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A163980 (n + 1) - a (n - 1)

end

end A267352.P10094946376199045385

namespace A267352

/-- `A163980(n+1)-a(n-1)` -/
def P10094946376199045385.Spec : Prop :=
  ∀ n, P10094946376199045385.a n = A267352 n

end A267352

/-! ## A267352.P5264190912173110140

`A266256(n)+A057427(n)`
-/

namespace A267352.P5264190912173110140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266256 n + A057427 n

end

end A267352.P5264190912173110140

namespace A267352

/-- `A266256(n)+A057427(n)` -/
def P5264190912173110140.Spec : Prop :=
  ∀ n, P5264190912173110140.a n = A267352 n

end A267352

/-! ## A267352.P4134880159297400374

`A275365(n)+A124625(n)`
-/

namespace A267352.P4134880159297400374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275365 n + A124625 n

end

end A267352.P4134880159297400374

namespace A267352

/-- `A275365(n)+A124625(n)` -/
def P4134880159297400374.Spec : Prop :=
  ∀ n, P4134880159297400374.a n = A267352 n

end A267352

/-!
# A267353: Total number of ON (black) cells after n iterations of the "Rule 123" elementary cellular automaton starting with a single ON (black) cell.

The programs for A267353, the canonical program `A267353.P4122096172987062776` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267353 has offset 0).

The definition of A267353 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A267353.P14915885866857318352

`(n²+(4-(-1)^n)*n+(-1)^n+1)/2`
-/

namespace A267353.P14915885866857318352
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) + (4 - (-1) ^ n) * (n : ℤ) + (-1) ^ n + 1 : ℚ) / 2

end

end A267353.P14915885866857318352

namespace A267353

/-- `(n²+(4-(-1)^n)*n+(-1)^n+1)/2` -/
def P14915885866857318352.Spec : Prop :=
  ∀ n, P14915885866857318352.a n = (A267353 n : ℚ)

theorem P14915885866857318352.correct : P14915885866857318352.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A267353, Nat.add_sub_cancel, A267353.P14915885866857318352.a, A267353.P4122096172987062776.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A267353, Nat.add_sub_cancel, A267353.P14915885866857318352.a, A267353.P4122096172987062776.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A267353

/-! ## A267353.P4122096172987062776

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=1, a(1)=3, a(2)=6, a(3)=12, a(4)=15`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A267353

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P4122096172987062776.Spec : Prop :=
  ∀ n, P4122096172987062776.a n = A267353 n

theorem P4122096172987062776.correct : P4122096172987062776.Spec := by
  intro n
  simp only [A267353]

end A267353

/-! ## A267353.P4531933753211345711

`∑[xor(1, n)]+lcm(2, n)`
-/

namespace A267353.P4531933753211345711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.lcm 2 n

end

end A267353.P4531933753211345711

namespace A267353

/-- `∑[xor(1, n)]+lcm(2, n)` -/
def P4531933753211345711.Spec : Prop :=
  ∀ n, (P4531933753211345711.a n : ℤ) = A267353 n

end A267353

/-! ## A267353.P6456243840354679855

`n^(n%2)+∑[n]+n`
-/

namespace A267353.P6456243840354679855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ (n % 2) + (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A267353.P6456243840354679855

namespace A267353

/-- `n^(n%2)+∑[n]+n` -/
def P6456243840354679855.Spec : Prop :=
  ∀ n, (P6456243840354679855.a n : ℤ) = A267353 n

end A267353

/-! ## A267353.P1761575463434922054

`∑[n]+n^and(1, n)+n`
-/

namespace A267353.P1761575463434922054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n ^ Nat.land 1 n + n

end

end A267353.P1761575463434922054

namespace A267353

/-- `∑[n]+n^and(1, n)+n` -/
def P1761575463434922054.Spec : Prop :=
  ∀ n, (P1761575463434922054.a n : ℤ) = A267353 n

end A267353

/-! ## A267353.P4635730025885906997

`∑[n]+gcd(n, or(1, n))+n`
-/

namespace A267353.P4635730025885906997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.gcd n (Nat.lor 1 n) + n

end

end A267353.P4635730025885906997

namespace A267353

/-- `∑[n]+gcd(n, or(1, n))+n` -/
def P4635730025885906997.Spec : Prop :=
  ∀ n, (P4635730025885906997.a n : ℤ) = A267353 n

end A267353

/-! ## A267353.P17423794112575844462

`∑[n]+C(n, and(1, n))+n`
-/

namespace A267353.P17423794112575844462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.choose n (Nat.land 1 n) + n

end

end A267353.P17423794112575844462

namespace A267353

/-- `∑[n]+C(n, and(1, n))+n` -/
def P17423794112575844462.Spec : Prop :=
  ∀ n, (P17423794112575844462.a n : ℤ) = A267353 n

end A267353

/-! ## A267353.P2313427264362723819

`∑[n+1]+(n-1)*and(1, n)`
-/

namespace A267353.P2313427264362723819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ((n : ℤ) - 1) * (Nat.land 1 n : ℤ)

end

end A267353.P2313427264362723819

namespace A267353

/-- `∑[n+1]+(n-1)*and(1, n)` -/
def P2313427264362723819.Spec : Prop :=
  ∀ n, P2313427264362723819.a n = A267353 n

end A267353

/-! ## A267353.P11572246036942486725

`∑[n+1]+xor(1, n)%(n+1)`
-/

namespace A267353.P11572246036942486725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.xor 1 n % (n + 1)

end

end A267353.P11572246036942486725

namespace A267353

/-- `∑[n+1]+xor(1, n)%(n+1)` -/
def P11572246036942486725.Spec : Prop :=
  ∀ n, (P11572246036942486725.a n : ℤ) = A267353 n

end A267353

/-! ## A267353.P12615027545329326001

`∑[n+1]+lcm(n-1, and(1, n))`
-/

namespace A267353.P12615027545329326001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Int.lcm ((n : ℤ) - 1) (Nat.land 1 n : ℤ)

end

end A267353.P12615027545329326001

namespace A267353

/-- `∑[n+1]+lcm(n-1, and(1, n))` -/
def P12615027545329326001.Spec : Prop :=
  ∀ n, (P12615027545329326001.a n : ℤ) = A267353 n

end A267353

/-! ## A267353.P13893299727722878384

`∑[or(2, Δ[n²]-a(n-1))]` with `a(0)=1`
-/

namespace A267353.P13893299727722878384
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  Int.lor 2 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267353.P13893299727722878384

namespace A267353

/-- `∑[or(2, Δ[n²]-a(n-1))]` -/
def P13893299727722878384.Spec : Prop :=
  ∀ n, P13893299727722878384.a n = A267353 n

end A267353

/-! ## A267353.P2570982531309244207

`∑[2*n-xor(3, a(n-1))]` with `a(0)=1, a(1)=2`
-/

namespace A267353.P2570982531309244207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  (2 * n : ℤ) - Int.xor 3 (f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267353.P2570982531309244207

namespace A267353

/-- `∑[2*n-xor(3, a(n-1))]` -/
def P2570982531309244207.Spec : Prop :=
  ∀ n, P2570982531309244207.a n = A267353 n

end A267353

/-! ## A267353.P6341870971515098593

`2*n+C(n, and(1, n))+C(n, 2)`
-/

namespace A267353.P6341870971515098593
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + (Nat.choose n (Nat.land 1 n) + Nat.choose n 2)

end

end A267353.P6341870971515098593

namespace A267353

/-- `2*n+C(n, and(1, n))+C(n, 2)` -/
def P6341870971515098593.Spec : Prop :=
  ∀ n, (P6341870971515098593.a n : ℤ) = A267353 n

end A267353

/-! ## A267353.P8167211226626872472

`C(n, and(1, n))+C(n, 2)+n+n`
-/

namespace A267353.P8167211226626872472
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (Nat.land 1 n) + Nat.choose n 2 + n + n

end

end A267353.P8167211226626872472

namespace A267353

/-- `C(n, and(1, n))+C(n, 2)+n+n` -/
def P8167211226626872472.Spec : Prop :=
  ∀ n, (P8167211226626872472.a n : ℤ) = A267353 n

end A267353

/-! ## A267353.P9638909466215100934

`∑[2-a(n-1)]+a(n-2)+n` with `a(0)=1, a(1)=3`
-/

namespace A267353.P9638909466215100934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  2 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (a (n - 2) + (n : ℤ))

end

end A267353.P9638909466215100934

namespace A267353

/-- `∑[2-a(n-1)]+a(n-2)+n` -/
def P9638909466215100934.Spec : Prop :=
  ∀ n, P9638909466215100934.a n = A267353 n

end A267353

/-! ## A267353.P16485945044746733469

`∪[(2*n+1)*(n+1), (2*n+1)*(n+3)]`
-/

namespace A267353.P16485945044746733469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n

end

end A267353.P16485945044746733469

namespace A267353

/-- `∪[(2*n+1)*(n+1), (2*n+1)*(n+3)]` -/
def P16485945044746733469.Spec : Prop :=
  ∀ n, (P16485945044746733469.a n : ℤ) = A267353 n

end A267353

/-! ## A267353.P4821664720713542158

`∑[A267352(n)]`
-/

namespace A267353.P4821664720713542158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267352 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267353.P4821664720713542158

namespace A267353

/-- `∑[A267352(n)]` -/
def P4821664720713542158.Spec : Prop :=
  ∀ n, P4821664720713542158.a n = A267353 n

end A267353

/-! ## A267353.P17548033673690700718

`A266257(n)+n`
-/

namespace A267353.P17548033673690700718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266257 n + (n : ℤ)

end

end A267353.P17548033673690700718

namespace A267353

/-- `A266257(n)+n` -/
def P17548033673690700718.Spec : Prop :=
  ∀ n, P17548033673690700718.a n = A267353 n

end A267353

/-! ## A267353.P6040055483810189947

`∑[A266256(n)]+n`
-/

namespace A267353.P6040055483810189947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266256 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A267353.P6040055483810189947

namespace A267353

/-- `∑[A266256(n)]+n` -/
def P6040055483810189947.Spec : Prop :=
  ∀ n, P6040055483810189947.a n = A267353 n

end A267353

/-! ## A267353.P7644581745517992968

`A374084(n+1)-2`
-/

namespace A267353.P7644581745517992968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374084 (n + 1) - 2

end

end A267353.P7644581745517992968

namespace A267353

/-- `A374084(n+1)-2` -/
def P7644581745517992968.Spec : Prop :=
  ∀ n, P7644581745517992968.a n = A267353 n

end A267353

/-!
# A267354: Number of OFF (white) cells in the n-th iteration of the "Rule 123" elementary cellular automaton starting with a single ON (black) cell.

The programs for A267354, the canonical program `A267354.P15664287886456060179` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267354 has offset 0).

The definition of A267354 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A267354.P15664287886456060179

`2*a(n-2)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=1, a(4)=6`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A267354

/-- `2*a(n-2)-a(n-4)` -/
def P15664287886456060179.Spec : Prop :=
  ∀ n, P15664287886456060179.a n = A267354 n

theorem P15664287886456060179.correct : P15664287886456060179.Spec := by
  intro n
  simp only [A267354]

end A267354

/-! ## A267354.P1582902404195794501

`gcd(n%2, comp[2*n+3])`
-/

namespace A267354.P1582902404195794501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n % 2) (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A267354.P1582902404195794501

namespace A267354

/-- `gcd(n%2, comp[2*n+3])` -/
def P1582902404195794501.Spec : Prop :=
  ∀ n, (P1582902404195794501.a n : ℤ) = A267354 n

end A267354

/-! ## A267354.P7190448961709758717

`n-Δ[gcd(n-1, and(1, n))]`
-/

namespace A267354.P7190448961709758717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n : ℤ) - 1) (Nat.land 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A267354.P7190448961709758717

namespace A267354

/-- `n-Δ[gcd(n-1, and(1, n))]` -/
def P7190448961709758717.Spec : Prop :=
  ∀ n, P7190448961709758717.a n = A267354 n

end A267354

/-! ## A267354.P12767384129927978467

`xor(2, a(n-2)+2)` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A267354.P12767384129927978467
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  Nat.xor 2 (a (n - 2) + 2)

end

end A267354.P12767384129927978467

namespace A267354

/-- `xor(2, a(n-2)+2)` -/
def P12767384129927978467.Spec : Prop :=
  ∀ n, (P12767384129927978467.a n : ℤ) = A267354 n

end A267354

/-! ## A267354.P1383341691171605024

`comp[2*n+3]^log2(gcd(2, n))`
-/

namespace A267354.P1383341691171605024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℝ) ^ (Real.logb 2 (Nat.gcd 2 n : ℝ))

end

end A267354.P1383341691171605024

namespace A267354

/-- `comp[2*n+3]^log2(gcd(2, n))` -/
def P1383341691171605024.Spec : Prop :=
  ∀ n, P1383341691171605024.a n = (A267354 n : ℝ)

end A267354

/-! ## A267354.P11594951456718659575

`ceil(comp[2*n+3]^(-1)^n)`
-/

namespace A267354.P11594951456718659575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℚ) ^ ((-1) ^ n : ℤ)⌉

end

end A267354.P11594951456718659575

namespace A267354

/-- `ceil(comp[2*n+3]^(-1)^n)` -/
def P11594951456718659575.Spec : Prop :=
  ∀ n, P11594951456718659575.a n = A267354 n

end A267354

/-! ## A267354.P18133854986008880534

`C(comp[2*n+3], ∑[(-1)^n])`
-/

namespace A267354.P18133854986008880534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) (∑ j ∈ Finset.range (n + 1), f2 j).toNat

end

end A267354.P18133854986008880534

namespace A267354

/-- `C(comp[2*n+3], ∑[(-1)^n])` -/
def P18133854986008880534.Spec : Prop :=
  ∀ n, (P18133854986008880534.a n : ℤ) = A267354 n

end A267354

/-! ## A267354.P10922617065840088598

`abs(xor(3-2*n, a(n-1)))` with `a(0)=0`
-/

namespace A267354.P10922617065840088598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  |Int.xor (3 - (2 * n : ℤ)) (a (n - 1))|

end

end A267354.P10922617065840088598

namespace A267354

/-- `abs(xor(3-2*n, a(n-1)))` -/
def P10922617065840088598.Spec : Prop :=
  ∀ n, P10922617065840088598.a n = A267354 n

end A267354

/-! ## A267354.P794172632642700703

`xor(2, 6*n+2)%(2*n+1)`
-/

namespace A267354.P794172632642700703
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (6 * n + 2) % (2 * n + 1)

end

end A267354.P794172632642700703

namespace A267354

/-- `xor(2, 6*n+2)%(2*n+1)` -/
def P794172632642700703.Spec : Prop :=
  ∀ n, (P794172632642700703.a n : ℤ) = A267354 n

end A267354

/-! ## A267354.P1536152335666911845

`or(7, 4*(n-1))%(2*n+1)`
-/

namespace A267354.P1536152335666911845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.lor 7 (4 * ((n : ℤ) - 1))) (2 * n + 1 : ℤ)

end

end A267354.P1536152335666911845

namespace A267354

/-- `or(7, 4*(n-1))%(2*n+1)` -/
def P1536152335666911845.Spec : Prop :=
  ∀ n, P1536152335666911845.a n = A267354 n

end A267354

/-! ## A267354.P14767811972071447217

`(2*(n-1))^(a(n-1)%2)` with `a(0)=0`
-/

namespace A267354.P14767811972071447217
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (2 * ((n : ℤ) - 1) : ℚ) ^ (Int.tmod (SequenceMachineLib.roundAway (a (n - 1))) 2 : ℤ)

end

end A267354.P14767811972071447217

namespace A267354

/-- `(2*(n-1))^(a(n-1)%2)` -/
def P14767811972071447217.Spec : Prop :=
  ∀ n, P14767811972071447217.a n = (A267354 n : ℚ)

end A267354

/-! ## A267354.P8196571968833264691

`(2*(n-1))^and(1, a(n-1))` with `a(0)=0`
-/

namespace A267354.P8196571968833264691
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (2 * ((n : ℤ) - 1) : ℚ) ^ (Int.land 1 (SequenceMachineLib.roundAway (a (n - 1))) : ℤ)

end

end A267354.P8196571968833264691

namespace A267354

/-- `(2*(n-1))^and(1, a(n-1))` -/
def P8196571968833264691.Spec : Prop :=
  ∀ n, P8196571968833264691.a n = (A267354 n : ℚ)

end A267354

/-! ## A267354.P1778032374518719890

`-xor(3-2*n, a(n-1))` with `a(0)=0, a(1)=1`
-/

namespace A267354.P1778032374518719890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  -Int.xor (3 - (2 * n : ℤ)) (a (n - 1))

end

end A267354.P1778032374518719890

namespace A267354

/-- `-xor(3-2*n, a(n-1))` -/
def P1778032374518719890.Spec : Prop :=
  ∀ n, P1778032374518719890.a n = A267354 n

end A267354

/-! ## A267354.P14105981184025030371

`gcd(2*(1-n), a(n-2)%2)` with `a(0)=0, a(1)=1`
-/

namespace A267354.P14105981184025030371
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  Int.gcd (2 * (1 - (n : ℤ))) ((a (n - 2) % 2 : ℕ) : ℤ)

end

end A267354.P14105981184025030371

namespace A267354

/-- `gcd(2*(1-n), a(n-2)%2)` -/
def P14105981184025030371.Spec : Prop :=
  ∀ n, (P14105981184025030371.a n : ℤ) = A267354 n

end A267354

/-! ## A267354.P8688776386135126671

`gcd(2*(n-1), and(1, a(n-2)))` with `a(0)=0, a(1)=1`
-/

namespace A267354.P8688776386135126671
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  Int.gcd (2 * ((n : ℤ) - 1)) (Nat.land 1 (a (n - 2)) : ℤ)

end

end A267354.P8688776386135126671

namespace A267354

/-- `gcd(2*(n-1), and(1, a(n-2)))` -/
def P8688776386135126671.Spec : Prop :=
  ∀ n, (P8688776386135126671.a n : ℤ) = A267354 n

end A267354

/-! ## A267354.P2214894593857680275

`(abs(1-n)+n-1)^and(1, n+1)`
-/

namespace A267354.P2214894593857680275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (|1 - (n : ℤ)| + ((n : ℤ) - 1)) ^ Nat.land 1 (n + 1)

end

end A267354.P2214894593857680275

namespace A267354

/-- `(abs(1-n)+n-1)^and(1, n+1)` -/
def P2214894593857680275.Spec : Prop :=
  ∀ n, P2214894593857680275.a n = A267354 n

end A267354

/-! ## A267354.P17866316318721195822

`a(n-2)+4*(n+1)%2` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A267354.P17866316318721195822
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  a (n - 2) + 4 * ((n + 1) % 2)

end

end A267354.P17866316318721195822

namespace A267354

/-- `a(n-2)+4*(n+1)%2` -/
def P17866316318721195822.Spec : Prop :=
  ∀ n, (P17866316318721195822.a n : ℤ) = A267354 n

end A267354

/-! ## A267354.P705235981794953736

`floor(2*(n-1)/a(n-1))` with `a(0)=0, a(1)=1, a(2)=2, a(3)=1`
-/

namespace A267354.P705235981794953736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 1] fun n a =>
  ⌊2 * (((n : ℤ) - 1 : ℚ) / (a (n - 1) : ℚ))⌋

end

end A267354.P705235981794953736

namespace A267354

/-- `floor(2*(n-1)/a(n-1))` -/
def P705235981794953736.Spec : Prop :=
  ∀ n, P705235981794953736.a n = A267354 n

end A267354

/-! ## A267354.P1440294051013054746

`2*n+1-or(2, a(n-1)+2)` with `a(0)=0`
-/

namespace A267354.P1440294051013054746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (2 * n + 1 : ℤ) - Int.lor 2 (a (n - 1) + 2)

end

end A267354.P1440294051013054746

namespace A267354

/-- `2*n+1-or(2, a(n-1)+2)` -/
def P1440294051013054746.Spec : Prop :=
  ∀ n, P1440294051013054746.a n = A267354 n

end A267354

/-! ## A267354.P5275100402205654698

`floor((n-2+n)/a(n-1))` with `a(0)=0, a(1)=1, a(2)=2, a(3)=1`
-/

namespace A267354.P5275100402205654698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 1] fun n a =>
  ⌊((n : ℤ) - 2 + (n : ℤ) : ℚ) / (a (n - 1) : ℚ)⌋

end

end A267354.P5275100402205654698

namespace A267354

/-- `floor((n-2+n)/a(n-1))` -/
def P5275100402205654698.Spec : Prop :=
  ∀ n, P5275100402205654698.a n = A267354 n

end A267354

/-!
# A267355: Triangle read by rows giving successive states of cellular automaton generated by "Rule 124" initiated with a single ON (black) cell.

The programs for A267355, there is no canonical definition to state claims against.
-/

/-! ## A267355.P5180604300088410986

`A075437(A020703(n+1)-1)`
-/

namespace A267355.P5180604300088410986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075437 (A020703 (n + 1) - 1).toNat

end

end A267355.P5180604300088410986

/-! ## A267355.P8705350432507809338

`char[A061885(n)*A070887(A038722(n+1))]`
-/

namespace A267355.P8705350432507809338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061885 n * A070887 (A038722 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A267355.P8705350432507809338

/-! ## A267355.P4454569559137433793

`A075437(A020703(n+2))`
-/

namespace A267355.P4454569559137433793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075437 (A020703 (n + 2)).toNat

end

end A267355.P4454569559137433793

/-! ## A267355.P15182386846545602571

`A000035(A316355(n)+∑[A034867(n)])`
-/

namespace A267355.P15182386846545602571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034867 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A316355 n + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A267355.P15182386846545602571

/-! ## A267355.P12131101816501294465

`A000035(∑[A034867(n)]-A316355(n))`
-/

namespace A267355.P12131101816501294465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034867 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (∑ j ∈ Finset.range (n + 1), f1 j - A316355 n).toNat

end

end A267355.P12131101816501294465

/-! ## A267355.P13289358241080412737

`A000035(A049240(n+1)+∑[A034867(n)])`
-/

namespace A267355.P13289358241080412737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034867 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A049240 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A267355.P13289358241080412737

/-!
# A267356: Binary representation of the n-th iteration of the "Rule 124" elementary cellular automaton starting with a single ON (black) cell.

The programs for A267356, there is no canonical definition to state claims against.
-/

/-! ## A267356.P15961935655278273962

`A007088(A267357(n))`
-/

namespace A267356.P15961935655278273962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A267357 n).toNat

end

end A267356.P15961935655278273962

/-! ## A267356.P17940821098788345654

`A007088(xor(A110240(n), A328103(n)))`
-/

namespace A267356.P17940821098788345654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.xor (A110240 n) (A328103 n)).toNat

end

end A267356.P17940821098788345654

/-! ## A267356.P17651425564859547569

`A305989(A006978(n+1))`
-/

namespace A267356.P17651425564859547569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A006978 (n + 1)).toNat

end

end A267356.P17651425564859547569

/-! ## A267356.P3171944133691387699

`A185544(2*A267357(n))`
-/

namespace A267356.P3171944133691387699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A267357 n).toNat

end

end A267356.P3171944133691387699

/-! ## A267356.P8876036130872698617

`A185544(lcm(2, A267357(n)))`
-/

namespace A267356.P8876036130872698617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (Int.lcm 2 (A267357 n))

end

end A267356.P8876036130872698617

/-!
# A267357: Decimal representation of the n-th iteration of the "Rule 124" elementary cellular automaton starting with a single ON (black) cell.

The programs for A267357, the canonical program `A267357.P14963580651497646829` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267357 has offset 0).

The definition of A267357 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A269174, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A267357.P14963580651497646829

`A269174(a(n-1))` with `a(0)=1`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A267357

/-- `A269174(a(n-1))` -/
def P14963580651497646829.Spec : Prop :=
  ∀ n, P14963580651497646829.a n = A267357 n

theorem P14963580651497646829.correct : P14963580651497646829.Spec := by
  intro n
  simp only [A267357]

end A267357

/-! ## A267357.P17657856498253472752

`xor(A110240(n), A328103(n))`
-/

namespace A267357.P17657856498253472752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A110240 n) (A328103 n)

end

end A267357.P17657856498253472752

namespace A267357

/-- `xor(A110240(n), A328103(n))` -/
def P17657856498253472752.Spec : Prop :=
  ∀ n, P17657856498253472752.a n = A267357 n

end A267357

/-! ## A267357.P16206406349543581131

`xor(xor(A038184(n), A327972(n)), A328103(n))`
-/

namespace A267357.P16206406349543581131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Int.xor (A038184 n) (A327972 n)) (A328103 n)

end

end A267357.P16206406349543581131

namespace A267357

/-- `xor(xor(A038184(n), A327972(n)), A328103(n))` -/
def P16206406349543581131.Spec : Prop :=
  ∀ n, P16206406349543581131.a n = A267357 n

end A267357

/-! ## A267357.P16361749202318583296

`xor(xor(A265281(n), A327971(n)), A328103(n))`
-/

namespace A267357.P16361749202318583296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Int.xor (A265281 n) (A327971 n)) (A328103 n)

end

end A267357.P16361749202318583296

namespace A267357

/-- `xor(xor(A265281(n), A327971(n)), A328103(n))` -/
def P16361749202318583296.Spec : Prop :=
  ∀ n, P16361749202318583296.a n = A267357 n

end A267357

/-! ## A267357.P1821426286391302018

`A269174(abs(a(A023443(n))))` with `a(0)=1`
-/

namespace A267357.P1821426286391302018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A269174 |a (A023443 n).toNat|.toNat

end

end A267357.P1821426286391302018

namespace A267357

/-- `A269174(abs(a(A023443(n))))` -/
def P1821426286391302018.Spec : Prop :=
  ∀ n, P1821426286391302018.a n = A267357 n

end A267357

/-!
# A267358: Triangle read by rows giving successive states of cellular automaton generated by "Rule 125" initiated with a single ON (black) cell.

The programs for A267358, there is no canonical definition to state claims against.
-/

/-! ## A267358.P5461868240474431946

`A267253(A020703(n+1)-1)`
-/

namespace A267358.P5461868240474431946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267253 (A020703 (n + 1) - 1).toNat

end

end A267358.P5461868240474431946

/-! ## A267358.P11483259150598762238

`char[A020703(n+2)*A267253(n)]`
-/

namespace A267358.P11483259150598762238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020703 (n + 2) * A267253 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A267358.P11483259150598762238

/-! ## A267358.P13067962021504789394

`A267253(A153881(n+1)+A020703(n+1))`
-/

namespace A267358.P13067962021504789394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267253 (A153881 (n + 1) + A020703 (n + 1)).toNat

end

end A267358.P13067962021504789394

/-! ## A267358.P1501933105135714704

`A267253(A020703(n+2)%A016778(n))`
-/

namespace A267358.P1501933105135714704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267253 (Int.tmod (A020703 (n + 2)) (A016778 n)).toNat

end

end A267358.P1501933105135714704

/-! ## A267358.P11648626238169993972

`A267253(and(A000225(n+1), A020703(n+2)))`
-/

namespace A267358.P11648626238169993972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267253 (Int.land (A000225 (n + 1)) (A020703 (n + 2))).toNat

end

end A267358.P11648626238169993972

/-!
# A267359: Binary representation of the n-th iteration of the "Rule 125" elementary cellular automaton starting with a single ON (black) cell.

The programs for A267359, there is no canonical definition to state claims against.
-/

/-! ## A267359.P6814928883532163529

`A007088(A267360(n))`
-/

namespace A267359.P6814928883532163529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A267360 n).toNat

end

end A267359.P6814928883532163529

/-!
# A267360: Decimal representation of the n-th iteration of the "Rule 125" elementary cellular automaton starting with a single ON (black) cell.

The programs for A267360, there is no canonical definition to state claims against.
-/

/-! ## A267360.P7891394309141572638

`A033676(10^n)*A141310(n)-n`
-/

namespace A267360.P7891394309141572638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (10 ^ n) * A141310 n - (n : ℤ)

end

end A267360.P7891394309141572638

/-!
# A267362: Numbers n such that 5 consecutive numbers starting with n are products of 5 primes.

The programs for A267362, there is no canonical definition to state claims against.
-/

/-! ## A267362.P14051307045698125637

`∩[A124729(n+1)-1, A124729(n+1)]`
-/

namespace A267362.P14051307045698125637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124729 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124729 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A267362.P14051307045698125637

/-!
# A267364: Binary representation of the n-th iteration of the "Rule 126" elementary cellular automaton starting with a single ON (black) cell.

The programs for A267364, there is no canonical definition to state claims against.
-/

/-! ## A267364.P17248691187305765818

`A342040(A062878(n))`
-/

namespace A267364.P17248691187305765818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342040 (A062878 n).toNat

end

end A267364.P17248691187305765818

/-! ## A267364.P1831466937338487887

`A007088(A267365(n))`
-/

namespace A267364.P1831466937338487887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A267365 n).toNat

end

end A267364.P1831466937338487887

/-! ## A267364.P14243368192193056237

`A305989(or(1, A267365(n)))`
-/

namespace A267364.P14243368192193056237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (Int.lor 1 (A267365 n)).toNat

end

end A267364.P14243368192193056237

/-!
# A267365: Decimal representation of the n-th iteration of the "Rule 126" elementary cellular automaton starting with a single ON (black) cell.

The programs for A267365, there is no canonical definition to state claims against.
-/

/-! ## A267365.P10150624090667614100

`A052955(A008574(n))-A267441(n)`
-/

namespace A267365.P10150624090667614100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052955 (A008574 n).toNat - A267441 n

end

end A267365.P10150624090667614100

/-! ## A267365.P2302751132728637819

`A290682(A004277(n))-A267441(n)`
-/

namespace A267365.P2302751132728637819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290682 (A004277 n).toNat - A267441 n

end

end A267365.P2302751132728637819

/-! ## A267365.P16105499160810635800

`A000225(2*n+1)+A057428(n)*A267441(n)`
-/

namespace A267365.P16105499160810635800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (2 * n + 1) + A057428 n * A267441 n

end

end A267365.P16105499160810635800

/-! ## A267365.P4867407700474099466

`A055248(A134869(2*n+1))-A267441(n)`
-/

namespace A267365.P4867407700474099466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055248 (A134869 (2 * n + 1)).toNat - A267441 n

end

end A267365.P4867407700474099466

/-! ## A267365.P11105155842140671356

`A048700(A062878(n))`
-/

namespace A267365.P11105155842140671356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048700 (A062878 n).toNat

end

end A267365.P11105155842140671356

/-!
# A267366: Binary representation of the middle column of the "Rule 126" elementary cellular automaton starting with a single ON (black) cell.

The programs for A267366, the canonical program `A267366.P16052078199144211889` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267366 has offset 0).

The definition of A267366 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A267366.P16052078199144211889

`A036987(n)+10*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A267366

/-- `A036987(n)+10*a(n-1)` -/
def P16052078199144211889.Spec : Prop :=
  ∀ n, P16052078199144211889.a n = A267366 n

theorem P16052078199144211889.correct : P16052078199144211889.Spec := by
  intro n
  simp only [A267366]

end A267366

/-! ## A267366.P17049296551173507652

`A209229(n+1)+10*a(n-1)` with `a(0)=1`
-/

namespace A267366.P17049296551173507652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A209229 (n + 1) + 10 * a (n - 1)

end

end A267366.P17049296551173507652

namespace A267366

/-- `A209229(n+1)+10*a(n-1)` -/
def P17049296551173507652.Spec : Prop :=
  ∀ n, P17049296551173507652.a n = A267366 n

end A267366

/-! ## A267366.P5514300398827990699

`10*a(n-1)-A105523(A048896(n))` with `a(0)=1`
-/

namespace A267366.P5514300398827990699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  10 * a (n - 1) - A105523 (A048896 n).toNat

end

end A267366.P5514300398827990699

namespace A267366

/-- `10*a(n-1)-A105523(A048896(n))` -/
def P5514300398827990699.Spec : Prop :=
  ∀ n, P5514300398827990699.a n = A267366 n

end A267366

/-! ## A267366.P12138062765111269398

`or(10*a(n-1), A000007(A087117(n)))` with `a(0)=1`
-/

namespace A267366.P12138062765111269398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor (10 * a (n - 1)) (A000007 (A087117 n).toNat)

end

end A267366.P12138062765111269398

namespace A267366

/-- `or(10*a(n-1), A000007(A087117(n)))` -/
def P12138062765111269398.Spec : Prop :=
  ∀ n, P12138062765111269398.a n = A267366 n

end A267366

/-! ## A267366.P1123152878086486839

`xor(10*a(n-1), A240357(A005811(n)))` with `a(0)=1`
-/

namespace A267366.P1123152878086486839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor (10 * a (n - 1)) (A240357 (A005811 n).toNat)

end

end A267366.P1123152878086486839

namespace A267366

/-- `xor(10*a(n-1), A240357(A005811(n)))` -/
def P1123152878086486839.Spec : Prop :=
  ∀ n, P1123152878086486839.a n = A267366 n

end A267366

/-! ## A267366.P2932898257465720983

`or(10*a(n-1), A257531(A048250(n+1)))` with `a(0)=1`
-/

namespace A267366.P2932898257465720983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor (10 * a (n - 1)) (A257531 (A048250 (n + 1)).toNat)

end

end A267366.P2932898257465720983

namespace A267366

/-- `or(10*a(n-1), A257531(A048250(n+1)))` -/
def P2932898257465720983.Spec : Prop :=
  ∀ n, P2932898257465720983.a n = A267366 n

end A267366

/-!
# A267367: Decimal representation of the middle column of the "Rule 126" elementary cellular automaton starting with a single ON (black) cell.

The programs for A267367, the canonical program `A267367.P459713566228756321` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267367 has offset 0).

The definition of A267367 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A267367.P3745781408853366271

`Δ[ceil(log2(n+1))]+2*a(n-1)` with `a(0)=1`
-/

namespace A267367.P3745781408853366271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (n + 1 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  f1 (n + 1) - f1 n + 2 * a (n - 1)

end

end A267367.P3745781408853366271

namespace A267367

/-- `Δ[ceil(log2(n+1))]+2*a(n-1)` -/
def P3745781408853366271.Spec : Prop :=
  ∀ n, P3745781408853366271.a n = A267367 n

end A267367

/-! ## A267367.P459713566228756321

`a(n-1)+A036987(n)+a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A267367

/-- `a(n-1)+A036987(n)+a(n-1)` -/
def P459713566228756321.Spec : Prop :=
  ∀ n, P459713566228756321.a n = A267367 n

theorem P459713566228756321.correct : P459713566228756321.Spec := by
  intro n
  simp only [A267367]

end A267367

/-! ## A267367.P11008693313073960624

`xor(1, and(1, A014963(n+1))+2*a(n-1))` with `a(0)=1`
-/

namespace A267367.P11008693313073960624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor 1 (Int.land 1 (A014963 (n + 1)) + 2 * a (n - 1))

end

end A267367.P11008693313073960624

namespace A267367

/-- `xor(1, and(1, A014963(n+1))+2*a(n-1))` -/
def P11008693313073960624.Spec : Prop :=
  ∀ n, P11008693313073960624.a n = A267367 n

end A267367

/-! ## A267367.P7794604274549589277

`xor(A000225(n), A267444(n))`
-/

namespace A267367.P7794604274549589277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000225 n) (A267444 n)

end

end A267367.P7794604274549589277

namespace A267367

/-- `xor(A000225(n), A267444(n))` -/
def P7794604274549589277.Spec : Prop :=
  ∀ n, P7794604274549589277.a n = A267367 n

end A267367

/-! ## A267367.P11455721722008532901

`∑[A036987(n)/A000079(n)]*A000079(n)`
-/

namespace A267367.P11455721722008532901
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036987 n : ℚ) / (A000079 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (A000079 n : ℚ)

end

end A267367.P11455721722008532901

namespace A267367

/-- `∑[A036987(n)/A000079(n)]*A000079(n)` -/
def P11455721722008532901.Spec : Prop :=
  ∀ n, P11455721722008532901.a n = (A267367 n : ℚ)

end A267367

/-! ## A267367.P15137729074557135277

`A153893(n)-A267444(n)`
-/

namespace A267367.P15137729074557135277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153893 n - A267444 n

end

end A267367.P15137729074557135277

namespace A267367

/-- `A153893(n)-A267444(n)` -/
def P15137729074557135277.Spec : Prop :=
  ∀ n, P15137729074557135277.a n = A267367 n

end A267367

/-!
# A267368: Total number of ON (black) cells after n iterations of the "Rule 126" elementary cellular automaton starting with a single ON (black) cell.

The programs for A267368, the canonical program `A267368.P9350065740926405642` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267368 has offset 0).

The definition of A267368 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A267368.P9350065740926405642

`∑[A071051(n)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A267368

/-- `∑[A071051(n)]` -/
def P9350065740926405642.Spec : Prop :=
  ∀ n, P9350065740926405642.a n = A267368 n

theorem P9350065740926405642.correct : P9350065740926405642.Spec := by
  intro n
  simp only [A267368]

end A267368

/-! ## A267368.P12420391739416908035

`A267448(n)+1`
-/

namespace A267368.P12420391739416908035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267448 n + 1

end

end A267368.P12420391739416908035

namespace A267368

/-- `A267448(n)+1` -/
def P12420391739416908035.Spec : Prop :=
  ∀ n, P12420391739416908035.a n = A267368 n

end A267368

/-! ## A267368.P9525286868835655660

`∑[A267447(n)]+1`
-/

namespace A267368.P9525286868835655660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267447 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A267368.P9525286868835655660

namespace A267368

/-- `∑[A267447(n)]+1` -/
def P9525286868835655660.Spec : Prop :=
  ∀ n, P9525286868835655660.a n = A267368 n

end A267368

/-! ## A267368.P6750118309468205859

`(n+1)²-A267369(n)`
-/

namespace A267368.P6750118309468205859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A267369 n

end

end A267368.P6750118309468205859

namespace A267368

/-- `(n+1)²-A267369(n)` -/
def P6750118309468205859.Spec : Prop :=
  ∀ n, P6750118309468205859.a n = A267368 n

end A267368

/-! ## A267368.P6096263833748438444

`∑[Δ[n²]-A071050(n)]`
-/

namespace A267368.P6096263833748438444
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - A071050 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267368.P6096263833748438444

namespace A267368

/-- `∑[Δ[n²]-A071050(n)]` -/
def P6096263833748438444.Spec : Prop :=
  ∀ n, P6096263833748438444.a n = A267368 n

end A267368

/-! ## A267368.P14823693015647247003

`A005563(n)+1-A267369(n)`
-/

namespace A267368.P14823693015647247003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 n + (1 - A267369 n)

end

end A267368.P14823693015647247003

namespace A267368

/-- `A005563(n)+1-A267369(n)` -/
def P14823693015647247003.Spec : Prop :=
  ∀ n, P14823693015647247003.a n = A267368 n

end A267368

/-! ## A267368.P12002431131755765412

`∑[2*A001316(n)]-(A000523(n+1)+1)`
-/

namespace A267368.P12002431131755765412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001316 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A000523 (n + 1) + 1)

end

end A267368.P12002431131755765412

namespace A267368

/-- `∑[2*A001316(n)]-(A000523(n+1)+1)` -/
def P12002431131755765412.Spec : Prop :=
  ∀ n, P12002431131755765412.a n = A267368 n

end A267368

/-! ## A267368.P4299696614674743131

`∑[2*A001316(n)+A008683(A001316(n+1))]`
-/

namespace A267368.P4299696614674743131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001316 n + A008683 (A001316 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267368.P4299696614674743131

namespace A267368

/-- `∑[2*A001316(n)+A008683(A001316(n+1))]` -/
def P4299696614674743131.Spec : Prop :=
  ∀ n, P4299696614674743131.a n = A267368 n

end A267368

/-! ## A267368.P5535768489048988423

`∑[A159913(n)+A043545(n)]`
-/

namespace A267368.P5535768489048988423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159913 n + A043545 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267368.P5535768489048988423

namespace A267368

/-- `∑[A159913(n)+A043545(n)]` -/
def P5535768489048988423.Spec : Prop :=
  ∀ n, P5535768489048988423.a n = A267368 n

end A267368

/-! ## A267368.P11731067733171381840

`∑[A200322(A267447(n))]`
-/

namespace A267368.P11731067733171381840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200322 (A267447 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267368.P11731067733171381840

namespace A267368

/-- `∑[A200322(A267447(n))]` -/
def P11731067733171381840.Spec : Prop :=
  ∀ n, P11731067733171381840.a n = A267368 n

end A267368

/-!
# A267369: Total number of OFF (white) cells after n iterations of the "Rule 126" elementary cellular automaton starting with a single ON (black) cell.

The programs for A267369, the canonical program `A267369.P3092922467413671371` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267369 has offset 0).

The definition of A267369 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A267369.P1022778983755280678

`∑[A071050(n)]`
-/

namespace A267369.P1022778983755280678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071050 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267369.P1022778983755280678

namespace A267369

/-- `∑[A071050(n)]` -/
def P1022778983755280678.Spec : Prop :=
  ∀ n, P1022778983755280678.a n = A267369 n

end A267369

/-! ## A267369.P12078199691693870676

`A267446(n)-1`
-/

namespace A267369.P12078199691693870676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267446 n - 1

end

end A267369.P12078199691693870676

namespace A267369

/-- `A267446(n)-1` -/
def P12078199691693870676.Spec : Prop :=
  ∀ n, P12078199691693870676.a n = A267369 n

end A267369

/-! ## A267369.P3960722165760716994

`∑[A267445(n)]-1`
-/

namespace A267369.P3960722165760716994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267445 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A267369.P3960722165760716994

namespace A267369

/-- `∑[A267445(n)]-1` -/
def P3960722165760716994.Spec : Prop :=
  ∀ n, P3960722165760716994.a n = A267369 n

end A267369

/-! ## A267369.P3092922467413671371

`(n+1)²-A267368(n)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A267369

/-- `(n+1)²-A267368(n)` -/
def P3092922467413671371.Spec : Prop :=
  ∀ n, P3092922467413671371.a n = A267369 n

theorem P3092922467413671371.correct : P3092922467413671371.Spec := by
  intro n
  simp only [A267369]

end A267369

/-! ## A267369.P11503292381616419757

`∑[Δ[n²]-A071051(n)]`
-/

namespace A267369.P11503292381616419757
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - A071051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267369.P11503292381616419757

namespace A267369

/-- `∑[Δ[n²]-A071051(n)]` -/
def P11503292381616419757.Spec : Prop :=
  ∀ n, P11503292381616419757.a n = A267369 n

end A267369

/-! ## A267369.P17762113902830750000

`n*(n+2)-A267448(n)`
-/

namespace A267369.P17762113902830750000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * (n + 2) : ℤ) - A267448 n

end

end A267369.P17762113902830750000

namespace A267369

/-- `n*(n+2)-A267448(n)` -/
def P17762113902830750000.Spec : Prop :=
  ∀ n, P17762113902830750000.a n = A267369 n

end A267369

/-! ## A267369.P13198888829676213278

`∑[1-A267447(n)+n+n]-1`
-/

namespace A267369.P13198888829676213278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A267447 n + (n : ℤ) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A267369.P13198888829676213278

namespace A267369

/-- `∑[1-A267447(n)+n+n]-1` -/
def P13198888829676213278.Spec : Prop :=
  ∀ n, P13198888829676213278.a n = A267369 n

end A267369

/-! ## A267369.P2674047355147871700

`∑[A004273(A048967(n))]`
-/

namespace A267369.P2674047355147871700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A048967 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267369.P2674047355147871700

namespace A267369

/-- `∑[A004273(A048967(n))]` -/
def P2674047355147871700.Spec : Prop :=
  ∀ n, P2674047355147871700.a n = A267369 n

end A267369

/-! ## A267369.P14294136995884573647

`∑[A004273(n-A038573(n))]`
-/

namespace A267369.P14294136995884573647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 ((n : ℤ) - A038573 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267369.P14294136995884573647

namespace A267369

/-- `∑[A004273(n-A038573(n))]` -/
def P14294136995884573647.Spec : Prop :=
  ∀ n, P14294136995884573647.a n = A267369 n

end A267369

/-! ## A267369.P13305200003880560096

`∑[A267445(n)%A267452(n)]`
-/

namespace A267369.P13305200003880560096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A267445 n) (A267452 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267369.P13305200003880560096

namespace A267369

/-- `∑[A267445(n)%A267452(n)]` -/
def P13305200003880560096.Spec : Prop :=
  ∀ n, P13305200003880560096.a n = A267369 n

end A267369

/-! ## A267369.P2018344994967249320

`∑[A004277(n)-A071051(n)]+n`
-/

namespace A267369.P2018344994967249320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n - A071051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A267369.P2018344994967249320

namespace A267369

/-- `∑[A004277(n)-A071051(n)]+n` -/
def P2018344994967249320.Spec : Prop :=
  ∀ n, P2018344994967249320.a n = A267369 n

end A267369

/-! ## A267369.P9526915368779767281

`∑[A016777(n)-(A071051(n)+n)]`
-/

namespace A267369.P9526915368779767281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n - (A071051 n + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267369.P9526915368779767281

namespace A267369

/-- `∑[A016777(n)-(A071051(n)+n)]` -/
def P9526915368779767281.Spec : Prop :=
  ∀ n, P9526915368779767281.a n = A267369 n

end A267369

/-! ## A267369.P135559911300528788

`∑[A267445(A153151(n+1))]`
-/

namespace A267369.P135559911300528788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267445 (A153151 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267369.P135559911300528788

namespace A267369

/-- `∑[A267445(A153151(n+1))]` -/
def P135559911300528788.Spec : Prop :=
  ∀ n, P135559911300528788.a n = A267369 n

end A267369

/-! ## A267369.P6091827324861491117

`A023443(A267446(n))`
-/

namespace A267369.P6091827324861491117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A267446 n).toNat

end

end A267369.P6091827324861491117

namespace A267369

/-- `A023443(A267446(n))` -/
def P6091827324861491117.Spec : Prop :=
  ∀ n, P6091827324861491117.a n = A267369 n

end A267369

/-!
# A267370: Partial sums of A140091.

The programs for A267370, the canonical program `A267370.P17383826425187002967` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267370 has offset 0).

The definition of A267370 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A267370.P3414642525121947462

`n*(n+1)*(n+5)/2`
-/

namespace A267370.P3414642525121947462
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((n + 1 : ℚ) * ((n + 5 : ℚ) / 2))

end

end A267370.P3414642525121947462

namespace A267370

/-- `n*(n+1)*(n+5)/2` -/
def P3414642525121947462.Spec : Prop :=
  ∀ n, P3414642525121947462.a n = (A267370 n : ℚ)

end A267370

/-! ## A267370.P17383826425187002967

`A002411(n)+A028895(n)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A267370

/-- `A002411(n)+A028895(n)` -/
def P17383826425187002967.Spec : Prop :=
  ∀ n, P17383826425187002967.a n = A267370 n

theorem P17383826425187002967.correct : P17383826425187002967.Spec := by
  intro n
  simp only [A267370]

end A267370

/-! ## A267370.P15671313930107519554

`∑[3*record[C(n, 2)-n]]`
-/

namespace A267370.P15671313930107519554
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℤ) - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267370.P15671313930107519554

namespace A267370

/-- `∑[3*record[C(n, 2)-n]]` -/
def P15671313930107519554.Spec : Prop :=
  ∀ n, P15671313930107519554.a n = A267370 n

end A267370

/-! ## A267370.P15506379820705313294

`∑[3*xor(∑[xor(n, -1)], -1)]`
-/

namespace A267370.P15506379820705313294
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * Int.xor (∑ j ∈ Finset.range (n + 1), f2 j) (-1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267370.P15506379820705313294

namespace A267370

/-- `∑[3*xor(∑[xor(n, -1)], -1)]` -/
def P15506379820705313294.Spec : Prop :=
  ∀ n, P15506379820705313294.a n = A267370 n

end A267370

/-! ## A267370.P18153210191731408284

`∑[∑[a(n-1)+3]]` with `a(0)=0, a(1)=6`
-/

namespace A267370.P18153210191731408284
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 6] fun n f2 =>
  f2 (n - 1) + 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267370.P18153210191731408284

namespace A267370

/-- `∑[∑[a(n-1)+3]]` -/
def P18153210191731408284.Spec : Prop :=
  ∀ n, (P18153210191731408284.a n : ℤ) = A267370 n

end A267370

/-! ## A267370.P6649267243628893265

`C(n, 2)+n*C(n+3, 2)`
-/

namespace A267370.P6649267243628893265
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2 + n * Nat.choose (n + 3) 2

end

end A267370.P6649267243628893265

namespace A267370

/-- `C(n, 2)+n*C(n+3, 2)` -/
def P6649267243628893265.Spec : Prop :=
  ∀ n, (P6649267243628893265.a n : ℤ) = A267370 n

end A267370

/-! ## A267370.P11760319727455665276

`∑[3*(3-(n²-a(n-1)))]` with `a(0)=0`
-/

namespace A267370.P11760319727455665276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  3 * (3 - ((n ^ 2 : ℤ) - f1 (n - 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267370.P11760319727455665276

namespace A267370

/-- `∑[3*(3-(n²-a(n-1)))]` -/
def P11760319727455665276.Spec : Prop :=
  ∀ n, P11760319727455665276.a n = A267370 n

end A267370

/-! ## A267370.P8592422596662166229

`∑[3*(n-∑[a(n-1)-1])]` with `a(0)=0`
-/

namespace A267370.P8592422596662166229
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  f2 (n - 1) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ((n : ℤ) - ∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267370.P8592422596662166229

namespace A267370

/-- `∑[3*(n-∑[a(n-1)-1])]` -/
def P8592422596662166229.Spec : Prop :=
  ∀ n, P8592422596662166229.a n = A267370 n

end A267370

/-! ## A267370.P7178831809327236290

`∑[n-2-∑[a(n-1)-3]]` with `a(0)=-2`
-/

namespace A267370.P7178831809327236290
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [-2] fun n f2 =>
  f2 (n - 1) - 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2 - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267370.P7178831809327236290

namespace A267370

/-- `∑[n-2-∑[a(n-1)-3]]` -/
def P7178831809327236290.Spec : Prop :=
  ∀ n, P7178831809327236290.a n = A267370 n

end A267370

/-! ## A267370.P441276679974337983

`∑[(n+1)²+C(n+2, 2)+n-2]`
-/

namespace A267370.P441276679974337983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) + ((Nat.choose (n + 2) 2 : ℤ) + ((n : ℤ) - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267370.P441276679974337983

namespace A267370

/-- `∑[(n+1)²+C(n+2, 2)+n-2]` -/
def P441276679974337983.Spec : Prop :=
  ∀ n, P441276679974337983.a n = A267370 n

end A267370

/-! ## A267370.P3176834728925412765

`∑[A140091(n)]`
-/

namespace A267370.P3176834728925412765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140091 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267370.P3176834728925412765

namespace A267370

/-- `∑[A140091(n)]` -/
def P3176834728925412765.Spec : Prop :=
  ∀ n, P3176834728925412765.a n = A267370 n

end A267370

/-! ## A267370.P3602804373423446428

`∑[3*A000096(n)]`
-/

namespace A267370.P3602804373423446428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A000096 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267370.P3602804373423446428

namespace A267370

/-- `∑[3*A000096(n)]` -/
def P3602804373423446428.Spec : Prop :=
  ∀ n, P3602804373423446428.a n = A267370 n

end A267370

/-! ## A267370.P9902379988976311154

`∑[A277978(n)/2]`
-/

namespace A267370.P9902379988976311154
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277978 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267370.P9902379988976311154

namespace A267370

/-- `∑[A277978(n)/2]` -/
def P9902379988976311154.Spec : Prop :=
  ∀ n, P9902379988976311154.a n = (A267370 n : ℚ)

end A267370

/-! ## A267370.P10415487871232096838

`∑[A140090(n)+n]`
-/

namespace A267370.P10415487871232096838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140090 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267370.P10415487871232096838

namespace A267370

/-- `∑[A140090(n)+n]` -/
def P10415487871232096838.Spec : Prop :=
  ∀ n, P10415487871232096838.a n = A267370 n

end A267370

/-! ## A267370.P14107287512851850204

`∑[A059845(n)-n]`
-/

namespace A267370.P14107287512851850204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059845 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267370.P14107287512851850204

namespace A267370

/-- `∑[A059845(n)-n]` -/
def P14107287512851850204.Spec : Prop :=
  ∀ n, P14107287512851850204.a n = A267370 n

end A267370

/-! ## A267370.P14525649698786911492

`∑[A056000(n)+n²]`
-/

namespace A267370.P14525649698786911492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056000 n + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267370.P14525649698786911492

namespace A267370

/-- `∑[A056000(n)+n²]` -/
def P14525649698786911492.Spec : Prop :=
  ∀ n, P14525649698786911492.a n = A267370 n

end A267370

/-! ## A267370.P4322079683470959175

`A154560(n)-Δ[n²]`
-/

namespace A267370.P4322079683470959175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154560 n - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A267370.P4322079683470959175

namespace A267370

/-- `A154560(n)-Δ[n²]` -/
def P4322079683470959175.Spec : Prop :=
  ∀ n, P4322079683470959175.a n = A267370 n

end A267370

/-! ## A267370.P9994895027158673328

`∑[A133694(n+1)-1]`
-/

namespace A267370.P9994895027158673328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133694 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267370.P9994895027158673328

namespace A267370

/-- `∑[A133694(n+1)-1]` -/
def P9994895027158673328.Spec : Prop :=
  ∀ n, P9994895027158673328.a n = A267370 n

end A267370

/-!
# A267371: Limiting sequence formed by starting with 01 and iteratively concatenating existing string with the shortest prefix that appears only once.

The programs for A267371, there is no canonical definition to state claims against.
-/

/-! ## A267371.P15969167418401937966

`char[A267374(n+1)-1]`
-/

namespace A267371.P15969167418401937966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267374 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A267371.P15969167418401937966

/-! ## A267371.P15939400350087187618

`char[A023443(A267374(n+1))]`
-/

namespace A267371.P15939400350087187618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A267374 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A267371.P15939400350087187618

/-! ## A267371.P12403155577833784834

`char[record[A267374(A263131(n))]-1]`
-/

namespace A267371.P12403155577833784834
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267374 (A263131 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A267371.P12403155577833784834

/-! ## A267371.P12891800865968552756

`char[record[A267374(A324347(n))]-1]`
-/

namespace A267371.P12891800865968552756
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267374 (A324347 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A267371.P12891800865968552756

/-! ## A267371.P16879593171578674077

`A257000(A286421(n+3)^A090822(3*n+5))`
-/

namespace A267371.P16879593171578674077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257000 (SequenceMachineLib.roundAway ((A286421 (n + 3) : ℚ) ^ (A090822 (3 * n + 5) : ℤ))).toNat

end

end A267371.P16879593171578674077

/-!
# A267372: Lengths of iterates in A267371.

The programs for A267372, there is no canonical definition to state claims against.
-/

/-! ## A267372.P3527114939184941772

`A267373(n)+a(n-1)` with `a(0)=2`
-/

namespace A267372.P3527114939184941772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A267373 n + a (n - 1)

end

end A267372.P3527114939184941772

/-! ## A267372.P11615456928037641806

`∑[A267373(abs(1-n)+1)]`
-/

namespace A267372.P11615456928037641806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267373 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267372.P11615456928037641806

/-! ## A267372.P763160833704782329

`∑[A267373(round(sqrt(n²+1)))]+1`
-/

namespace A267372.P763160833704782329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267373 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A267372.P763160833704782329

/-! ## A267372.P14184864726269068947

`∑[A267373(A233583(n+1))-char[1]]`
-/

namespace A267372.P14184864726269068947
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267373 (A233583 (n + 1)).toNat - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267372.P14184864726269068947

/-! ## A267372.P14475450632187480999

`A057428(n)+∑[A267373(A233583(n+1))]`
-/

namespace A267372.P14475450632187480999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267373 (A233583 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267372.P14475450632187480999

/-!
# A267373: Lengths of prefixes occurring in the sequence of iterates defining A267371.

The programs for A267373, there is no canonical definition to state claims against.
-/

/-! ## A267373.P17896111185530835012

`Δ[A267372(n)]`
-/

namespace A267373.P17896111185530835012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267372 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A267373.P17896111185530835012

/-! ## A267373.P18145964960918980949

`A267372(n+1)-A267372(n)`
-/

namespace A267373.P18145964960918980949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267372 (n + 1) - A267372 n

end

end A267373.P18145964960918980949

/-! ## A267373.P12293772332914953069

`A267372(n-log2(1/2))%A267372(n)`
-/

namespace A267373.P12293772332914953069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A267372 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat) (A267372 n)

end

end A267373.P12293772332914953069

/-! ## A267373.P10945640738850018769

`record[A267372(A028242(n))]-A267372(n)`
-/

namespace A267373.P10945640738850018769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267372 (A028242 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A267372 n

end

end A267373.P10945640738850018769

/-! ## A267373.P9395600489707436951

`record[A267372(A123108(n))]-A267372(n)`
-/

namespace A267373.P9395600489707436951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267372 (A123108 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A267372 n

end

end A267373.P9395600489707436951

/-! ## A267373.P2770832416720198834

`record[A267372(A290094(n))]-A267372(n)`
-/

namespace A267373.P2770832416720198834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267372 (A290094 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A267372 n

end

end A267373.P2770832416720198834

/-! ## A267373.P16291458990334216453

`record[A267372(A000188(n+1))]%A267372(n)`
-/

namespace A267373.P16291458990334216453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267372 (A000188 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A267372 n)

end

end A267373.P16291458990334216453

/-!
# A267374: Positions of 1's in A267371.

The programs for A267374, there is no canonical definition to state claims against.
-/

/-! ## A267374.P9827278019255384329

`filter[n+1, A267371(#)]`
-/

namespace A267374.P9827278019255384329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267371 (f1 j) = 1) n)

end

end A267374.P9827278019255384329

/-! ## A267374.P1166316893708687644

`eq[1, A267371(n+1)]+1`
-/

namespace A267374.P1166316893708687644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267371 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A267374.P1166316893708687644

/-! ## A267374.P745008362827288594

`eq[1, A267371(A028310(n))]`
-/

namespace A267374.P745008362827288594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267371 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A267374.P745008362827288594

/-! ## A267374.P11105057653369169414

`lt[A267371(n+2), A267371(n+1)]+1`
-/

namespace A267374.P11105057653369169414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267371 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267371 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A267374.P11105057653369169414

/-! ## A267374.P5080897290083268447

`lt[A267371(n+1), A267371(A028310(n))]`
-/

namespace A267374.P5080897290083268447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267371 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267371 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A267374.P5080897290083268447

/-! ## A267374.P5548257710707909107

`A267376(n)+a(n-1)` with `a(0)=2`
-/

namespace A267374.P5548257710707909107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A267376 n + a (n - 1)

end

end A267374.P5548257710707909107

/-! ## A267374.P17434511087453062691

`∑[A267376(abs(1-n)+1)]`
-/

namespace A267374.P17434511087453062691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267376 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267374.P17434511087453062691

/-! ## A267374.P2345376006623553094

`∑[A267376(floor(acot(n)+n))]-1`
-/

namespace A267374.P2345376006623553094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267376 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A267374.P2345376006623553094

/-! ## A267374.P9329586109761981205

`∑[A267376(floor(sqrt(n²+1)))]-1`
-/

namespace A267374.P9329586109761981205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267376 (Nat.sqrt (n ^ 2 + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A267374.P9329586109761981205

/-! ## A267374.P2611772278356128949

`∑[xor(A000007(n), A267376(A028310(n)))]`
-/

namespace A267374.P2611772278356128949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000007 n) (A267376 (A028310 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267374.P2611772278356128949

/-!
# A267376: First differences of A267374.

The programs for A267376, there is no canonical definition to state claims against.
-/

/-! ## A267376.P1239151620926254709

`Δ[A267374(n+1)]`
-/

namespace A267376.P1239151620926254709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267374 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A267376.P1239151620926254709

/-! ## A267376.P2519819733635998027

`Δ[record[A267374(A117910(n))]]`
-/

namespace A267376.P2519819733635998027
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267374 (A117910 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A267376.P2519819733635998027

/-! ## A267376.P5952554351305226053

`Δ[record[A267374(A263131(n))]]`
-/

namespace A267376.P5952554351305226053
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267374 (A263131 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A267376.P5952554351305226053

/-! ## A267376.P259611186507044167

`Δ[record[A267374(A290094(n))]]`
-/

namespace A267376.P259611186507044167
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267374 (A290094 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A267376.P259611186507044167

/-! ## A267376.P2484790665095415898

`Δ[record[A267374(A324347(n))]]`
-/

namespace A267376.P2484790665095415898
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267374 (A324347 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A267376.P2484790665095415898

/-! ## A267376.P12378255104653681857

`A267374(n+2)-A267374(n+1)`
-/

namespace A267376.P12378255104653681857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267374 (n + 2) - A267374 (n + 1)

end

end A267376.P12378255104653681857

/-!
# A267377: First occurrence of 2,3, ... in A267376.

The programs for A267377, there is no canonical definition to state claims against.
-/

/-! ## A267377.P4315306143475956570

`A348438(a(n-1))` with `a(0)=2, a(1)=1, a(2)=4`
-/

namespace A267377.P4315306143475956570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1, 4] fun n a =>
  A348438 (a (n - 1)).toNat

end

end A267377.P4315306143475956570

/-!
# A267378: Primes of the form k^4 - k^2 + 7.

The programs for A267378, there is no canonical definition to state claims against.
-/

/-! ## A267378.P10884331686119599698

`p?[∑[∑[12*n²]]+7]`
-/

namespace A267378.P10884331686119599698
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A267378.P10884331686119599698

/-! ## A267378.P13052436078347067218

`record[A006530(n²²-n²+7)]`
-/

namespace A267378.P13052436078347067218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (((n ^ 2) ^ 2 : ℤ) - (n ^ 2 : ℤ) + 7).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267378.P13052436078347067218

/-! ## A267378.P13480871729542537557

`record[A020639(n*(n^3-n)+7)]`
-/

namespace A267378.P13480871729542537557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 ((n : ℤ) * ((n ^ 3 : ℤ) - (n : ℤ)) + 7).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267378.P13480871729542537557

/-!
# A267379: Positions of 1's in A094186.

The programs for A267379, there is no canonical definition to state claims against.
-/

/-! ## A267379.P12721060329408625084

`A267380(n)+a(n-1)` with `a(0)=2`
-/

namespace A267379.P12721060329408625084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A267380 n + a (n - 1)

end

end A267379.P12721060329408625084

/-! ## A267379.P18193907603949210320

`∑[A267380(A028310(n))]-1`
-/

namespace A267379.P18193907603949210320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267380 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A267379.P18193907603949210320

/-! ## A267379.P1473302329749698394

`∑[A267380(A000038(n)+n)]`
-/

namespace A267379.P1473302329749698394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267380 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267379.P1473302329749698394

/-! ## A267379.P2195809897039013486

`∑[A267380(xor(n, A000038(n)))]`
-/

namespace A267379.P2195809897039013486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267380 (Int.xor (n : ℤ) (A000038 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267379.P2195809897039013486

/-! ## A267379.P1415837060034881845

`∑[A267380(n+1)]+2-A267380(n+1)`
-/

namespace A267379.P1415837060034881845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267380 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (2 - A267380 (n + 1))

end

end A267379.P1415837060034881845

/-! ## A267379.P8573463583433214499

`∑[A267380(A064680(A004277(n)))]`
-/

namespace A267379.P8573463583433214499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267380 (A064680 (A004277 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267379.P8573463583433214499

/-! ## A267379.P795480076419973127

`filter[n+1, A094186(#)]`
-/

namespace A267379.P795480076419973127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A094186 (f1 j) = 1) n)

end

end A267379.P795480076419973127

/-! ## A267379.P1202007903920899491

`eq[1, A094186(n+1)]+1`
-/

namespace A267379.P1202007903920899491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094186 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A267379.P1202007903920899491

/-! ## A267379.P15617184684879497796

`record[(n+2)*A094186(n+2)]`
-/

namespace A267379.P15617184684879497796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A094186 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267379.P15617184684879497796

/-! ## A267379.P3321543703576166540

`A057427(n)+∑[A267380(A233583(n+1))]`
-/

namespace A267379.P3321543703576166540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267380 (A233583 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267379.P3321543703576166540

/-! ## A267379.P4700746797082291885

`∑[A267380(A233583(2*n+1)-n)]`
-/

namespace A267379.P4700746797082291885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267380 (A233583 (2 * n + 1) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267379.P4700746797082291885

/-! ## A267379.P4777021265691523707

`A233583(∑[A267380(A028310(n))])`
-/

namespace A267379.P4777021265691523707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267380 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A267379.P4777021265691523707

/-!
# A267380: First differences of A267379.

The programs for A267380, there is no canonical definition to state claims against.
-/

/-! ## A267380.P11839187756205257548

`Δ[A267379(n+1)]`
-/

namespace A267380.P11839187756205257548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267379 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A267380.P11839187756205257548

/-! ## A267380.P8121721369672755886

`A267379(n+2)-A267379(n+1)`
-/

namespace A267380.P8121721369672755886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267379 (n + 2) - A267379 (n + 1)

end

end A267380.P8121721369672755886

/-! ## A267380.P15380125523162296922

`A323404(A267379(n+2)%(A267379(n+1)+1)+1)`
-/

namespace A267380.P15380125523162296922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323404 (Int.tmod (A267379 (n + 2)) (A267379 (n + 1) + 1) + 1).toNat

end

end A267380.P15380125523162296922

/-! ## A267380.P7955462252839753596

`Δ[record[A267379(A152271(n))]]`
-/

namespace A267380.P7955462252839753596
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267379 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A267380.P7955462252839753596

/-! ## A267380.P5458831104916693911

`Δ[eq[1, A094186(n+1)]]`
-/

namespace A267380.P5458831104916693911
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094186 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A267380.P5458831104916693911

/-!
# A267381: Positions of first occurrence of 2,3,4, ... in A267380.

The programs for A267381, there is no canonical definition to state claims against.
-/

/-! ## A267381.P15542150938260967192

`A061579(A122891(n)+∑[char[∑[n+1]]])`
-/

namespace A267381.P15542150938260967192
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 (A122891 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A267381.P15542150938260967192

/-!
# A267383: Number A(n,k) of acyclic orientations of the Turán graph T(n,k); square array A(n,k), n>=0, k>=1, read by antidiagonals.

The programs for A267383, there is no canonical definition to state claims against.
-/

/-! ## A267383.P12513982017618794340

`A100144(A293669(n))`
-/

namespace A267383.P12513982017618794340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100144 (A293669 n).toNat

end

end A267383.P12513982017618794340

/-! ## A267383.P7552712541502773761

`A100144(ceil(A293718(n)/3))`
-/

namespace A267383.P7552712541502773761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100144 ⌈(A293718 n : ℚ) / 3⌉.toNat

end

end A267383.P7552712541502773761

/-! ## A267383.P9446055066454653584

`A347648(A293718(n))`
-/

namespace A267383.P9446055066454653584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347648 (A293718 n).toNat

end

end A267383.P9446055066454653584

/-! ## A267383.P10821817592385113019

`∏{e}[A213173(A265312(n)), #]`
-/

namespace A267383.P10821817592385113019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213173 (A265312 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A267383.P10821817592385113019

/-! ## A267383.P3463743291986050149

`A232065(A287216(n)%A097460(n+1))`
-/

namespace A267383.P3463743291986050149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232065 (Int.tmod (A287216 n) (A097460 (n + 1))).toNat

end

end A267383.P3463743291986050149

/-!
# A267384: Number of acyclic orientations of the Turán graph T(n,4).

The programs for A267384, there is no canonical definition to state claims against.
-/

/-! ## A267384.P4445847812835283058

`A267383(∑[n+3]+n+3)`
-/

namespace A267384.P4445847812835283058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267383 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A267384.P4445847812835283058

/-! ## A267384.P10831469275117827649

`A178334(n+1)*A267383(A046691(n+2))`
-/

namespace A267384.P10831469275117827649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 (n + 1) * A267383 (A046691 (n + 2)).toNat

end

end A267384.P10831469275117827649

/-! ## A267384.P7851429046869578667

`A267383(A046691(n+2))^(A036963(n+1)%2)`
-/

namespace A267384.P7851429046869578667
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A267383 (A046691 (n + 2)).toNat : ℚ) ^ (Int.tmod (A036963 (n + 1)) 2 : ℤ)

end

end A267384.P7851429046869578667

/-! ## A267384.P8051003347743608281

`A267383(A046691(n+2))+A182840(floor(n/(n+1)))`
-/

namespace A267384.P8051003347743608281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267383 (A046691 (n + 2)).toNat + A182840 ⌊(n : ℚ) / (n + 1 : ℚ)⌋.toNat

end

end A267384.P8051003347743608281

/-! ## A267384.P5590593303283997054

`A128708(A007491(n+2))*A267383(A046691(n+2))`
-/

namespace A267384.P5590593303283997054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128708 (A007491 (n + 2)).toNat * A267383 (A046691 (n + 2)).toNat

end

end A267384.P5590593303283997054

/-!
# A267385: Number of acyclic orientations of the Turán graph T(n,5).

The programs for A267385, there is no canonical definition to state claims against.
-/

/-! ## A267385.P2246078305416510361

`A267383(A052905(n+2))`
-/

namespace A267385.P2246078305416510361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267383 (A052905 (n + 2)).toNat

end

end A267385.P2246078305416510361

/-! ## A267385.P8258236634800224456

`A267383(A056115(n)+10)`
-/

namespace A267385.P8258236634800224456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267383 (A056115 n + 10).toNat

end

end A267385.P8258236634800224456

/-! ## A267385.P12669900926107731871

`A267383(eq[4, A025581(n)])`
-/

namespace A267385.P12669900926107731871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267383 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A267385.P12669900926107731871

/-! ## A267385.P1070309936920090670

`A267383(A000217(n+5)-5)`
-/

namespace A267385.P1070309936920090670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267383 (A000217 (n + 5) - 5).toNat

end

end A267385.P1070309936920090670

/-! ## A267385.P10067421316159563328

`A267383(A167614(n+1)+3*n+4)`
-/

namespace A267385.P10067421316159563328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267383 (A167614 (n + 1) + (3 * n + 4 : ℤ)).toNat

end

end A267385.P10067421316159563328

/-! ## A267385.P5339885212311128365

`A267383(A167499(n)+A059558(n+1))`
-/

namespace A267385.P5339885212311128365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267383 (A167499 n + A059558 (n + 1)).toNat

end

end A267385.P5339885212311128365

/-!
# A267386: Number of acyclic orientations of the Turán graph T(n,6).

The programs for A267386, there is no canonical definition to state claims against.
-/

/-! ## A267386.P17133376417203563015

`A267383(A055999(n+3))`
-/

namespace A267386.P17133376417203563015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267383 (A055999 (n + 3)).toNat

end

end A267386.P17133376417203563015

/-! ## A267386.P17926224741745779744

`A267383(Δ[A023551(n+1)])`
-/

namespace A267386.P17926224741745779744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267383 (f1 (n + 1) - f1 n).toNat

end

end A267386.P17926224741745779744

/-! ## A267386.P4000823047297321498

`A267383(A000217(n+6)-6)`
-/

namespace A267386.P4000823047297321498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267383 (A000217 (n + 6) - 6).toNat

end

end A267386.P4000823047297321498

/-! ## A267386.P12135660901537450465

`A267383(A161680(n+7)-6)`
-/

namespace A267386.P12135660901537450465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267383 (A161680 (n + 7) - 6).toNat

end

end A267386.P12135660901537450465

/-! ## A267386.P11064101433312511666

`A267383(eq[6, A004736(n+1)])`
-/

namespace A267386.P11064101433312511666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267383 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A267386.P11064101433312511666

/-!
# A267387: Number of acyclic orientations of the Turán graph T(n,7).

The programs for A267387, there is no canonical definition to state claims against.
-/

/-! ## A267387.P18218712827158420054

`A267383(eq[6, A025581(n)])`
-/

namespace A267387.P18218712827158420054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267383 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A267387.P18218712827158420054

/-! ## A267387.P9687335737817807887

`A267383(eq[13, A099375(n)])`
-/

namespace A267387.P9687335737817807887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267383 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A267387.P9687335737817807887

/-! ## A267387.P17460505233518360859

`A267383(A052905(n+4)-2)`
-/

namespace A267387.P17460505233518360859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267383 (A052905 (n + 4) - 2).toNat

end

end A267387.P17460505233518360859

/-! ## A267387.P6928503822829247064

`A267383(A000217(n+7)-7)`
-/

namespace A267387.P6928503822829247064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267383 (A000217 (n + 7) - 7).toNat

end

end A267387.P6928503822829247064

/-! ## A267387.P17232547267589615140

`A267383(eq[7, A004736(n+1)])`
-/

namespace A267387.P17232547267589615140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267383 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A267387.P17232547267589615140

/-! ## A267387.P14422779118877532489

`A267383(Δ[A023551(n+2)]-1)`
-/

namespace A267387.P14422779118877532489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267383 (f1 (n + 1) - f1 n - 1).toNat

end

end A267387.P14422779118877532489

/-! ## A267387.P1686753217821261881

`A267383(2*n+A133263(n+5)+4)`
-/

namespace A267387.P1686753217821261881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267383 ((2 * n : ℤ) + (A133263 (n + 5) + 4)).toNat

end

end A267387.P1686753217821261881

/-!
# A267388: Number of acyclic orientations of the Turán graph T(n,8).

The programs for A267388, there is no canonical definition to state claims against.
-/

/-! ## A267388.P16758274700403592108

`A267383(A155212(n+4))`
-/

namespace A267388.P16758274700403592108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267383 (A155212 (n + 4)).toNat

end

end A267388.P16758274700403592108

/-! ## A267388.P4978578457134811969

`A267383(eq[7, A025581(n)])`
-/

namespace A267388.P4978578457134811969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267383 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A267388.P4978578457134811969

/-! ## A267388.P15892351411634131071

`A267383(A000217(n+8)-8)`
-/

namespace A267388.P15892351411634131071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267383 (A000217 (n + 8) - 8).toNat

end

end A267388.P15892351411634131071

/-! ## A267388.P2357215915563740351

`A267383(eq[8, A004736(n+1)])`
-/

namespace A267388.P2357215915563740351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267383 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A267388.P2357215915563740351

/-! ## A267388.P2567488007517649691

`A267383(A052905(n+4)+n+5)`
-/

namespace A267388.P2567488007517649691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267383 (A052905 (n + 4) + (n + 5 : ℤ)).toNat

end

end A267388.P2567488007517649691

/-!
# A267389: Number of acyclic orientations of the Turán graph T(n,9).

The programs for A267389, there is no canonical definition to state claims against.
-/

/-! ## A267389.P8657193304041742888

`A267383(A000217(n+9)-9)`
-/

namespace A267389.P8657193304041742888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267383 (A000217 (n + 9) - 9).toNat

end

end A267389.P8657193304041742888

/-! ## A267389.P1761271867231778158

`A267383(eq[9, A004736(n+1)])`
-/

namespace A267389.P1761271867231778158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267383 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A267389.P1761271867231778158

/-! ## A267389.P879916761417737287

`A267383(A000096(n+7)+n+1)`
-/

namespace A267389.P879916761417737287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267383 (A000096 (n + 7) + (n + 1 : ℤ)).toNat

end

end A267389.P879916761417737287

/-! ## A267389.P13531507490530421359

`A267383(eq[7, A002262(n)]+2*n+1)`
-/

namespace A267389.P13531507490530421359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267383 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + (2 * n + 1))

end

end A267389.P13531507490530421359

/-! ## A267389.P9701886404414934154

`A267383(A253145(n+6)+n+n+8)`
-/

namespace A267389.P9701886404414934154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267383 (A253145 (n + 6) + (n : ℤ) + (n + 8 : ℤ)).toNat

end

end A267389.P9701886404414934154

/-!
# A267390: Number of acyclic orientations of the Turán graph T(n,10).

The programs for A267390, there is no canonical definition to state claims against.
-/

/-! ## A267390.P12274817567023012678

`A267383(eq[9, A025581(n)])`
-/

namespace A267390.P12274817567023012678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267383 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A267390.P12274817567023012678

/-! ## A267390.P5491770167960821987

`A267383(eq[10, A193739(n)])`
-/

namespace A267390.P5491770167960821987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267383 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A267390.P5491770167960821987

/-! ## A267390.P9632021904115542309

`A267383(eq[10, A195663(n)])`
-/

namespace A267390.P9632021904115542309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267383 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A267390.P9632021904115542309

/-! ## A267390.P11028509483096215647

`A267383(eq[19, A099375(n)])`
-/

namespace A267390.P11028509483096215647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267383 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A267390.P11028509483096215647

/-! ## A267390.P7114647563013914249

`A267383(A000217(n+10)-10)`
-/

namespace A267390.P7114647563013914249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267383 (A000217 (n + 10) - 10).toNat

end

end A267390.P7114647563013914249

/-! ## A267390.P15637068188626105765

`A267383(eq[10, A004736(n+1)])`
-/

namespace A267390.P15637068188626105765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267383 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A267390.P15637068188626105765

/-!
# A267391: Number of elements of S_n with strategic pile of size 5.

The programs for A267391, there is no canonical definition to state claims against.
-/

/-! ## A267391.P8421738257351344135

`A000749(n)*A177351(A111927(n))`
-/

namespace A267391.P8421738257351344135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000749 n * A177351 (A111927 n).toNat

end

end A267391.P8421738257351344135

/-! ## A267391.P11347927526558263356

`lcm(A069816(A262130(n)), A262078(n))`
-/

namespace A267391.P11347927526558263356
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A069816 (A262130 n).toNat) (A262078 n)

end

end A267391.P11347927526558263356

/-! ## A267391.P4363240131230449386

`A004247(A000695(n)*A138000(n+1))`
-/

namespace A267391.P4363240131230449386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004247 (A000695 n * A138000 (n + 1)).toNat

end

end A267391.P4363240131230449386

/-! ## A267391.P9987859143041823230

`A048720(A000695(n)*A138000(n+1))`
-/

namespace A267391.P9987859143041823230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048720 (A000695 n * A138000 (n + 1)).toNat

end

end A267391.P9987859143041823230

/-!
# A267392: T(n,k)=Number of nXk arrays containing k copies of 0..n-1 with every element equal to or 1 greater than any north, west or northeast neighbors modulo n and the upper left element equal to 0.

The programs for A267392, there is no canonical definition to state claims against.
-/

/-! ## A267392.P15770706204560980640

`A267553(n+1)-A186745(A306100(n)%A174919(2*n))`
-/

namespace A267392.P15770706204560980640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267553 (n + 1) - A186745 (Int.tmod (A306100 n) (A174919 (2 * n))).toNat

end

end A267392.P15770706204560980640

/-! ## A267392.P12949180338561685426

`A321312(A102480(n))+A267338(n+1)`
-/

namespace A267392.P12949180338561685426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321312 (A102480 n).toNat + A267338 (n + 1)

end

end A267392.P12949180338561685426

/-! ## A267392.P5253485235797612303

`A267553(n+1)-A186745(A306100(n))`
-/

namespace A267392.P5253485235797612303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267553 (n + 1) - A186745 (A306100 n).toNat

end

end A267392.P5253485235797612303

/-! ## A267392.P10316792465402672211

`A267553((n+1)^A004197(n))`
-/

namespace A267392.P10316792465402672211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267553 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (A004197 n : ℤ))).toNat

end

end A267392.P10316792465402672211

/-! ## A267392.P2503084256703033483

`A267553((n+1)^A052307(n))`
-/

namespace A267392.P2503084256703033483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267553 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (A052307 n : ℤ))).toNat

end

end A267392.P2503084256703033483

/-!
# A267393: Number of nX(n+1) arrays of permutations of n+1 copies of 0..n-1 with every element equal to or 1 greater than any north, west or northeast neighbors modulo n and the upper left element equal to 0.

The programs for A267393, there is no canonical definition to state claims against.
-/

/-! ## A267393.P12040460974261065936

`A267392(2*(n+1)²)`
-/

namespace A267393.P12040460974261065936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267392 (2 * (n + 1) ^ 2)

end

end A267393.P12040460974261065936

/-! ## A267393.P13687329353256927319

`record[A267392(∑[2*n^(n%2)-1])]`
-/

namespace A267393.P13687329353256927319
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n ^ (n % 2) : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267392 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267393.P13687329353256927319

/-! ## A267393.P8824515654141014936

`record[A267392(A053439(n))]`
-/

namespace A267393.P8824515654141014936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267392 (A053439 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267393.P8824515654141014936

/-! ## A267393.P17377579042913842842

`record[A267392(A275009(n))]`
-/

namespace A267393.P17377579042913842842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267392 (A275009 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267393.P17377579042913842842

/-! ## A267393.P2672285131341652315

`record[A267392(∑[A266072(n)])]`
-/

namespace A267393.P2672285131341652315
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266072 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267392 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267393.P2672285131341652315

/-!
# A267394: Number of n X (n+2) arrays of permutations of n+2 copies of 0..n-1 with every element equal to or 1 greater than any north, west or northeast neighbors modulo n and the upper left element equal to 0.

The programs for A267394, there is no canonical definition to state claims against.
-/

/-! ## A267394.P14952258600404997848

`A267392(∑[4*(n+1)])`
-/

namespace A267394.P14952258600404997848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267392 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A267394.P14952258600404997848

/-!
# A267395: Number of nX(n+3) arrays of permutations of n+3 copies of 0..n-1 with every element equal to or 1 greater than any north, west or northeast neighbors modulo n and the upper left element equal to 0.

The programs for A267395, there is no canonical definition to state claims against.
-/

/-! ## A267395.P3319838479547514401

`A267392(∑[4*n+6]+1)`
-/

namespace A267395.P3319838479547514401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267392 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A267395.P3319838479547514401

/-! ## A267395.P4969072210404814101

`A267392(A056220(n+2))%A125909(n+2)`
-/

namespace A267395.P4969072210404814101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A267392 (A056220 (n + 2)).toNat) (A125909 (n + 2))

end

end A267395.P4969072210404814101

/-! ## A267395.P7669177459453831594

`A267392(A056220(n+2))+A016331(2*n+3)`
-/

namespace A267395.P7669177459453831594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267392 (A056220 (n + 2)).toNat + A016331 (2 * n + 3)

end

end A267395.P7669177459453831594

/-! ## A267395.P15654970050744111654

`or(A267392(A056220(n+2)), A359456(2*(n+1)))`
-/

namespace A267395.P15654970050744111654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A267392 (A056220 (n + 2)).toNat) (A359456 (2 * (n + 1)))

end

end A267395.P15654970050744111654

/-!
# A267396: Number of nX(n+4) arrays of permutations of n+4 copies of 0..n-1 with every element equal to or 1 greater than any north, west or northeast neighbors modulo n and the upper left element equal to 0.

The programs for A267396, there is no canonical definition to state claims against.
-/

/-! ## A267396.P623251099074877128

`A267392(A142463(n+2))`
-/

namespace A267396.P623251099074877128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267392 (A142463 (n + 2)).toNat

end

end A267396.P623251099074877128

/-! ## A267396.P7308685488031163160

`A267392(eq[7, A249900(n)])`
-/

namespace A267396.P7308685488031163160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249900 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267392 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A267396.P7308685488031163160

/-! ## A267396.P13873430279906419250

`A267392(Δ[A143941(n+1)])`
-/

namespace A267396.P13873430279906419250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143941 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267392 (f1 (n + 1) - f1 n).toNat

end

end A267396.P13873430279906419250

/-! ## A267396.P14248916185116679059

`A267392(A090288(n+1)+1)`
-/

namespace A267396.P14248916185116679059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267392 (A090288 (n + 1) + 1).toNat

end

end A267396.P14248916185116679059

/-!
# A267397: Number of 4Xn arrays containing n copies of 0..4-1 with every element equal to or 1 greater than any north, west or northeast neighbors modulo 4 and the upper left element equal to 0.

The programs for A267397, there is no canonical definition to state claims against.
-/

/-! ## A267397.P7197991484403588072

`A267392(∑[n+3]+7)`
-/

namespace A267397.P7197991484403588072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267392 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A267397.P7197991484403588072

/-! ## A267397.P8041353764451397634

`record[gcd(A267392(n+2), A293293(n))]`
-/

namespace A267397.P8041353764451397634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A267392 (n + 2)) (A293293 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267397.P8041353764451397634

/-! ## A267397.P14982674258461172087

`A267392(A046691(n+1)+8)+char[19]`
-/

namespace A267397.P14982674258461172087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267392 (A046691 (n + 1) + 8).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A267397.P14982674258461172087

/-! ## A267397.P3698088154357564166

`or(A008683(4*(n+10)), A267392(A046691(n+1)+8))`
-/

namespace A267397.P3698088154357564166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008683 (4 * (n + 10))) (A267392 (A046691 (n + 1) + 8).toNat)

end

end A267397.P3698088154357564166

/-! ## A267397.P14151398489792566549

`A020639(gcd(n, n+1))*A267392(A046691(n+1)+8)`
-/

namespace A267397.P14151398489792566549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Nat.gcd n (n + 1)) * A267392 (A046691 (n + 1) + 8).toNat

end

end A267397.P14151398489792566549

/-!
# A267398: Number of 5Xn arrays containing n copies of 0..5-1 with every element equal to or 1 greater than any north, west or northeast neighbors modulo 5 and the upper left element equal to 0.

The programs for A267398, there is no canonical definition to state claims against.
-/

/-! ## A267398.P10946971093556716623

`A267392(∑[n+4]+11)`
-/

namespace A267398.P10946971093556716623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267392 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A267398.P10946971093556716623

/-! ## A267398.P5510980675386444174

`A002266(A109155(n))+A000079(n)`
-/

namespace A267398.P5510980675386444174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A109155 n).toNat + A000079 n

end

end A267398.P5510980675386444174

/-! ## A267398.P7118057909568166312

`A329562(n)+A002266(A109155(n))`
-/

namespace A267398.P7118057909568166312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329562 n + A002266 (A109155 n).toNat

end

end A267398.P7118057909568166312

/-!
# A267399: Number of 6Xn arrays containing n copies of 0..6-1 with every element equal to or 1 greater than any north, west or northeast neighbors modulo 6 and the upper left element equal to 0.

The programs for A267399, there is no canonical definition to state claims against.
-/

/-! ## A267399.P6774847705478637033

`A267392(C(n+7, 2)-n)`
-/

namespace A267399.P6774847705478637033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267392 (Nat.choose (n + 7) 2 - n)

end

end A267399.P6774847705478637033

/-! ## A267399.P1545428995436133561

`A267392(A166136(n+4))`
-/

namespace A267399.P1545428995436133561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267392 (A166136 (n + 4)).toNat

end

end A267399.P1545428995436133561

/-! ## A267399.P7720803913974279627

`A267392(A056115(n)+21)`
-/

namespace A267399.P7720803913974279627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267392 (A056115 n + 21).toNat

end

end A267399.P7720803913974279627

/-! ## A267399.P15161999203306181554

`A267392(eq[6, A256910(n)])`
-/

namespace A267399.P15161999203306181554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256910 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267392 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A267399.P15161999203306181554

/-! ## A267399.P3322278586776207846

`A267392(A167499(n+4)+1)`
-/

namespace A267399.P3322278586776207846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267392 (A167499 (n + 4) + 1).toNat

end

end A267399.P3322278586776207846

