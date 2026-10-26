import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
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
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C037
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
import Seq.Opaque.C011
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
import Seq.Opaque.C024

/-!
# A009100: Expansion of e.g.f. cos(x)*cos(tanh(x)), even powers only.

The programs for A009100, there is no canonical definition to state claims against.
-/

/-! ## A009100.P12241162414660729969

`(-1)^n*record[A009161(n)]`
-/

namespace A009100.P12241162414660729969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009161 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A009100.P12241162414660729969

/-! ## A009100.P9248493084875249450

`record[A009161(n)]*A033999(n)`
-/

namespace A009100.P9248493084875249450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009161 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A033999 n

end

end A009100.P9248493084875249450

/-! ## A009100.P15765408535109502670

`record[A009186(n)]*A033999(n)`
-/

namespace A009100.P15765408535109502670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009186 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A033999 n

end

end A009100.P15765408535109502670

/-! ## A009100.P3058272335190836247

`A009161(2*n)*A033999(n)`
-/

namespace A009100.P3058272335190836247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009161 (2 * n) * A033999 n

end

end A009100.P3058272335190836247

/-! ## A009100.P7694909987340311039

`A009186(2*n)*A033999(n)`
-/

namespace A009100.P7694909987340311039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009186 (2 * n) * A033999 n

end

end A009100.P7694909987340311039

/-!
# A009101: Fixed point when iterating the function f on n, where f(x) = x + product of digits of x.

The programs for A009101, there is no canonical definition to state claims against.
-/

/-! ## A009101.P13682310541747681165

`A285956(p?[Δ[A350313(n+1)]])`
-/

namespace A009101.P13682310541747681165
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350313 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285956 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A009101.P13682310541747681165

/-!
# A009102: Expansion of e.g.f. cos(x)/(1+x).

The programs for A009102, there is no canonical definition to state claims against.
-/

/-! ## A009102.P9488193133101553378

`∑[(-1)^∑[n]]-n*a(n-1)` with `a(0)=1`
-/

namespace A009102.P9488193133101553378
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ) * a (n - 1)

end

end A009102.P9488193133101553378

/-! ## A009102.P6481200689152896156

`2-n*a(n-1)-A068073(n)` with `a(0)=1`
-/

namespace A009102.P6481200689152896156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 - (n : ℤ) * a (n - 1) - A068073 n

end

end A009102.P6481200689152896156

/-! ## A009102.P16384399732823916957

`2*A009128(n)-A009001(n)`
-/

namespace A009102.P16384399732823916957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A009128 n - A009001 n

end

end A009102.P16384399732823916957

/-! ## A009102.P5604475191503954960

`A009001(n)-2*A009572(n)`
-/

namespace A009102.P5604475191503954960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 n - 2 * A009572 n

end

end A009102.P5604475191503954960

/-! ## A009102.P6531946633801302132

`(-1)^n*round(n!*cos(1))`
-/

namespace A009102.P6531946633801302132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * SequenceMachineLib.roundAway ((Nat.factorial n : ℝ) * Real.cos (1 : ℝ))

end

end A009102.P6531946633801302132

/-!
# A009103: Expansion of e.g.f. cos(x)/cos(log(1+x)).

The programs for A009103, there is no canonical definition to state claims against.
-/

/-! ## A009103.P15410012728500331126

`A008612(A162973(n+1))*A033999(n)`
-/

namespace A009103.P15410012728500331126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (A162973 (n + 1)).toNat * A033999 n

end

end A009103.P15410012728500331126

/-!
# A009104: Expansion of e.g.f. cos(x)/cos(sin(x)), even powers only.

The programs for A009104, there is no canonical definition to state claims against.
-/

/-! ## A009104.P13482785045070370550

`A009327(Δ[n²])`
-/

namespace A009104.P13482785045070370550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009327 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A009104.P13482785045070370550

/-! ## A009104.P7051024552906475860

`A009296(2*n)*A033999(n)`
-/

namespace A009104.P7051024552906475860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009296 (2 * n) * A033999 n

end

end A009104.P7051024552906475860

/-! ## A009104.P17120946777439027373

`A009296(2*n)*A062157(n+1)`
-/

namespace A009104.P17120946777439027373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009296 (2 * n) * A062157 (n + 1)

end

end A009104.P17120946777439027373

/-! ## A009104.P9367983605576183435

`A000010(Δ[floor(ϕ*(n+1))])*A009327(2*n+1)`
-/

namespace A009104.P9367983605576183435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n + 1 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (f1 (n + 1) - f1 n).toNat * A009327 (2 * n + 1)

end

end A009104.P9367983605576183435

/-!
# A009105: Expansion of e.g.f. cos(x)/cos(sinh(x)), even powers only.

The programs for A009105, there is no canonical definition to state claims against.
-/

/-! ## A009105.P5130402878977034120

`abs(A009295(2*n))`
-/

namespace A009105.P5130402878977034120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A009295 (2 * n)|

end

end A009105.P5130402878977034120

/-! ## A009105.P11489413196202745780

`A009295(2*n)*A033999(n)`
-/

namespace A009105.P11489413196202745780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009295 (2 * n) * A033999 n

end

end A009105.P11489413196202745780

/-! ## A009105.P5575696723777132402

`A009295(2*n)*A062157(n+1)`
-/

namespace A009105.P5575696723777132402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009295 (2 * n) * A062157 (n + 1)

end

end A009105.P5575696723777132402

/-! ## A009105.P5487810227840932983

`lcm(-A009295(2*n), A007318(C(n+2, 2)))`
-/

namespace A009105.P5487810227840932983
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (-A009295 (2 * n)) (A007318 (Nat.choose (n + 2) 2))

end

end A009105.P5487810227840932983

/-! ## A009105.P15123959516560647073

`gcd(A001221(n+2)*A009295(2*n), A009295(2*n))`
-/

namespace A009105.P15123959516560647073
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001221 (n + 2) * A009295 (2 * n)) (A009295 (2 * n))

end

end A009105.P15123959516560647073

/-!
# A009106: Expansion of e.g.f. cos(x)/cos(tan(x)), even powers only.

The programs for A009106, there is no canonical definition to state claims against.
-/

/-! ## A009106.P2870481488350004441

`abs(A009298(2*n))`
-/

namespace A009106.P2870481488350004441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A009298 (2 * n)|

end

end A009106.P2870481488350004441

/-! ## A009106.P14249887412287968461

`A009298(2*n)*A033999(n)`
-/

namespace A009106.P14249887412287968461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009298 (2 * n) * A033999 n

end

end A009106.P14249887412287968461

/-! ## A009106.P14012147058094464584

`gcd(A000038(n), A009298(2*n))`
-/

namespace A009106.P14012147058094464584
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A009298 (2 * n))

end

end A009106.P14012147058094464584

/-! ## A009106.P17752274762902009835

`lcm(A009298(2*n), A034947(n+1))`
-/

namespace A009106.P17752274762902009835
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A009298 (2 * n)) (A034947 (n + 1))

end

end A009106.P17752274762902009835

/-! ## A009106.P8347260203043586665

`A009298(2*n)*A034947(n²+5)`
-/

namespace A009106.P8347260203043586665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009298 (2 * n) * A034947 (n ^ 2 + 5)

end

end A009106.P8347260203043586665

/-!
# A009107: Expansion of e.g.f. cos(x)/cos(tanh(x)), even powers only.

The programs for A009107, there is no canonical definition to state claims against.
-/

/-! ## A009107.P11136009445798377761

`A009297(2*n)*A033999(n)`
-/

namespace A009107.P11136009445798377761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009297 (2 * n) * A033999 n

end

end A009107.P11136009445798377761

/-! ## A009107.P17436646354083490238

`A009297(2*n)*A087960(n²)`
-/

namespace A009107.P17436646354083490238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009297 (2 * n) * A087960 (n ^ 2)

end

end A009107.P17436646354083490238

/-! ## A009107.P15695912833474989130

`A009297(2*n)*A062157(n+1)`
-/

namespace A009107.P15695912833474989130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009297 (2 * n) * A062157 (n + 1)

end

end A009107.P15695912833474989130

/-! ## A009107.P16208447699036304970

`A009297(A004277(n))/A033999(n)`
-/

namespace A009107.P16208447699036304970
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009297 (A004277 n).toNat : ℚ) / (A033999 n : ℚ)

end

end A009107.P16208447699036304970

/-! ## A009107.P11253129689064226412

`A009297(A004277(n))/A087960(n²)`
-/

namespace A009107.P11253129689064226412
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009297 (A004277 n).toNat : ℚ) / (A087960 (n ^ 2) : ℚ)

end

end A009107.P11253129689064226412

/-!
# A009109: Expansion of e.g.f. cos(x)/cosh(sin(x)), even powers only.

The programs for A009109, there is no canonical definition to state claims against.
-/

/-! ## A009109.P3132999010135735762

`A009290(2*n)*A033999(n)`
-/

namespace A009109.P3132999010135735762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009290 (2 * n) * A033999 n

end

end A009109.P3132999010135735762

/-! ## A009109.P18207207345130859871

`A009290(2*n)*A009531(2*n+1)`
-/

namespace A009109.P18207207345130859871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009290 (2 * n) * A009531 (2 * n + 1)

end

end A009109.P18207207345130859871

/-! ## A009109.P7327818713533424307

`A009290(A004277(n))/A033999(n)`
-/

namespace A009109.P7327818713533424307
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009290 (A004277 n).toNat : ℚ) / (A033999 n : ℚ)

end

end A009109.P7327818713533424307

/-! ## A009109.P11367661070362017626

`A009290(A005843(n))/A033999(n)`
-/

namespace A009109.P11367661070362017626
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009290 (A005843 n).toNat : ℚ) / (A033999 n : ℚ)

end

end A009109.P11367661070362017626

/-! ## A009109.P12766727140129145973

`A009290(A028310(n)+n)/A033999(n)`
-/

namespace A009109.P12766727140129145973
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009290 (A028310 n + (n : ℤ)).toNat : ℚ) / (A033999 n : ℚ)

end

end A009109.P12766727140129145973

/-!
# A009110: Expansion of e.g.f. cos(x)/cosh(tan(x)), even powers only.

The programs for A009110, there is no canonical definition to state claims against.
-/

/-! ## A009110.P8111038383002534093

`(-1)^n*A009292(2*n)`
-/

namespace A009110.P8111038383002534093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A009292 (2 * n)

end

end A009110.P8111038383002534093

/-! ## A009110.P15040748063388560354

`A009292(2*n)*A033999(n)`
-/

namespace A009110.P15040748063388560354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009292 (2 * n) * A033999 n

end

end A009110.P15040748063388560354

/-! ## A009110.P8525786630706918108

`A009292(2*n)*A165326(n+1)`
-/

namespace A009110.P8525786630706918108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009292 (2 * n) * A165326 (n + 1)

end

end A009110.P8525786630706918108

/-! ## A009110.P13339817030659827423

`A009292(2*n)*A009531(2*n+1)`
-/

namespace A009110.P13339817030659827423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009292 (2 * n) * A009531 (2 * n + 1)

end

end A009110.P13339817030659827423

/-! ## A009110.P3450760393560467158

`A009292(gcd(n, C(2, n))+n)/(1-2*A000035(n))`
-/

namespace A009110.P3450760393560467158
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009292 (Nat.gcd n (Nat.choose 2 n) + n) : ℚ) / (1 - 2 * A000035 n : ℚ)

end

end A009110.P3450760393560467158

/-!
# A009111: List of ordered areas of Pythagorean triangles.

The programs for A009111, there is no canonical definition to state claims against.
-/

/-! ## A009111.P9813645116464114786

`A103251(n+1)/4`
-/

namespace A009111.P9813645116464114786
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103251 (n + 1) : ℚ) / 4

end

end A009111.P9813645116464114786

/-! ## A009111.P5104789954680341027

`A002265(A103251(n+1))`
-/

namespace A009111.P5104789954680341027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A103251 (n + 1)).toNat

end

end A009111.P5104789954680341027

/-! ## A009111.P5484539373499008678

`A008624(A103251(n+1)+1)`
-/

namespace A009111.P5484539373499008678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (A103251 (n + 1) + 1).toNat

end

end A009111.P5484539373499008678

/-! ## A009111.P6219884286957752338

`A025480(A103251(n+1)+1)`
-/

namespace A009111.P6219884286957752338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A103251 (n + 1) + 1).toNat

end

end A009111.P6219884286957752338

/-! ## A009111.P11154125689534383755

`A026922(A103251(n+1)+1)`
-/

namespace A009111.P11154125689534383755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026922 (A103251 (n + 1) + 1).toNat

end

end A009111.P11154125689534383755

/-!
# A009112: Areas of Pythagorean triangles: numbers which can be the area of a right triangle with integer sides.

The programs for A009112, there is no canonical definition to state claims against.
-/

/-! ## A009112.P13598542762222954070

`A118903(n+1)/2`
-/

namespace A009112.P13598542762222954070
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118903 (n + 1) : ℚ) / 2

end

end A009112.P13598542762222954070

/-! ## A009112.P18278201583916383090

`A256418(n+1)/4`
-/

namespace A009112.P18278201583916383090
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256418 (n + 1) : ℚ) / 4

end

end A009112.P18278201583916383090

/-! ## A009112.P11639924521043987276

`6*A177887(n+1)`
-/

namespace A009112.P11639924521043987276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A177887 (n + 1)

end

end A009112.P11639924521043987276

/-! ## A009112.P14521514036619576729

`record[A009111(A032742(n+1))]`
-/

namespace A009112.P14521514036619576729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009111 (A032742 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A009112.P14521514036619576729

/-! ## A009112.P6471147624527597276

`record[A009111(A054576(n+1))]`
-/

namespace A009112.P6471147624527597276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009111 (A054576 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A009112.P6471147624527597276

/-! ## A009112.P7453264808965972694

`record[A009111(n+1)%A009111(n+2)]`
-/

namespace A009112.P7453264808965972694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A009111 (n + 1)) (A009111 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A009112.P7453264808965972694

/-! ## A009112.P2696692297415346330

`A008458(A177887(n+1))`
-/

namespace A009112.P2696692297415346330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A177887 (n + 1)).toNat

end

end A009112.P2696692297415346330

/-! ## A009112.P14160613687778421352

`record[A009111(gcd(n+1, A248520(n+1)))]`
-/

namespace A009112.P14160613687778421352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009111 (Int.gcd (n + 1 : ℤ) (A248520 (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A009112.P14160613687778421352

/-! ## A009112.P17855084440556604132

`A001281(A118903(n+1))`
-/

namespace A009112.P17855084440556604132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A118903 (n + 1)).toNat

end

end A009112.P17855084440556604132

/-! ## A009112.P10866762701825166410

`A051724(A118903(n+1)+2)-1`
-/

namespace A009112.P10866762701825166410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051724 (A118903 (n + 1) + 2).toNat - 1

end

end A009112.P10866762701825166410

/-!
# A009116: Expansion of e.g.f. cos(x) / exp(x).

The programs for A009116, the canonical program `A009116.P721434042884447878` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A009116 has offset 0).

The definition of A009116 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A009116.P721434042884447878

`(-1)^n*A146559(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A009116

/-- `(-1)^n*A146559(n)` -/
def P721434042884447878.Spec : Prop :=
  ∀ n, P721434042884447878.a n = A009116 n

theorem P721434042884447878.correct : P721434042884447878.Spec := by
  intro n
  simp only [A009116]

end A009116

/-! ## A009116.P4911805147115805145

`A016116(n)*A075553(n+6)`
-/

namespace A009116.P4911805147115805145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 n * A075553 (n + 6)

end

end A009116.P4911805147115805145

namespace A009116

/-- `A016116(n)*A075553(n+6)` -/
def P4911805147115805145.Spec : Prop :=
  ∀ n, P4911805147115805145.a n = A009116 n

end A009116

/-! ## A009116.P15171714683301441932

`2*a(n-3)-a(n-1)` with `a(0)=1, a(1)=-1, a(2)=0`
-/

namespace A009116.P15171714683301441932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 0] fun n a =>
  2 * a (n - 3) - a (n - 1)

end

end A009116.P15171714683301441932

namespace A009116

/-- `2*a(n-3)-a(n-1)` -/
def P15171714683301441932.Spec : Prop :=
  ∀ n, P15171714683301441932.a n = A009116 n

end A009116

/-! ## A009116.P1713745260060063696

`a(n-3)+a(n-3)-a(n-1)` with `a(0)=1, a(1)=-1, a(2)=0`
-/

namespace A009116.P1713745260060063696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 0] fun n a =>
  a (n - 3) + (a (n - 3) - a (n - 1))

end

end A009116.P1713745260060063696

namespace A009116

/-- `a(n-3)+a(n-3)-a(n-1)` -/
def P1713745260060063696.Spec : Prop :=
  ∀ n, P1713745260060063696.a n = A009116 n

end A009116

/-! ## A009116.P8008085296224298630

`floor(a(n-3)-(a(n-1)-a(n-3)))` with `a(0)=1, a(1)=-1, a(2)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A009116.P8008085296224298630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 0] fun n a =>
  a (n - 3) - (a (n - 1) - a (n - 3))

end

end A009116.P8008085296224298630

namespace A009116

/-- `floor(a(n-3)-(a(n-1)-a(n-3)))` -/
def P8008085296224298630.Spec : Prop :=
  ∀ n, P8008085296224298630.a n = A009116 n

end A009116

/-! ## A009116.P12771031784693765346

`A146559(n)/A033999(n+2)`
-/

namespace A009116.P12771031784693765346
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A146559 n : ℚ) / (A033999 (n + 2) : ℚ)

end

end A009116.P12771031784693765346

namespace A009116

/-- `A146559(n)/A033999(n+2)` -/
def P12771031784693765346.Spec : Prop :=
  ∀ n, P12771031784693765346.a n = (A009116 n : ℚ)

end A009116

/-! ## A009116.P13844017153163367614

`A146559(n)*A158496(2*n)`
-/

namespace A009116.P13844017153163367614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146559 n * A158496 (2 * n)

end

end A009116.P13844017153163367614

namespace A009116

/-- `A146559(n)*A158496(2*n)` -/
def P13844017153163367614.Spec : Prop :=
  ∀ n, P13844017153163367614.a n = A009116 n

end A009116

/-! ## A009116.P11193943731295509676

`A146559(n)*A257196(2*n+1)`
-/

namespace A009116.P11193943731295509676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146559 n * A257196 (2 * n + 1)

end

end A009116.P11193943731295509676

namespace A009116

/-- `A146559(n)*A257196(2*n+1)` -/
def P11193943731295509676.Spec : Prop :=
  ∀ n, P11193943731295509676.a n = A009116 n

end A009116

/-! ## A009116.P18313409195488538803

`A146559(n)/A054354(A054353(n+1))`
-/

namespace A009116.P18313409195488538803
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A146559 n : ℚ) / (A054354 (A054353 (n + 1)).toNat : ℚ)

end

end A009116.P18313409195488538803

namespace A009116

/-- `A146559(n)/A054354(A054353(n+1))` -/
def P18313409195488538803.Spec : Prop :=
  ∀ n, P18313409195488538803.a n = (A009116 n : ℚ)

end A009116

/-! ## A009116.P13049958890488879020

`ogf((1+x)/(1+2x+2x^2))`
-/

namespace A009116.P13049958890488879020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, 2, 2] n

end

end A009116.P13049958890488879020

namespace A009116

/-- `ogf((1+x)/(1+2x+2x^2))` -/
def P13049958890488879020.Spec : Prop :=
  ∀ n, P13049958890488879020.a n = A009116 n

end A009116

/-! ## A009116.P14674822965862348520

`A321632(n+1)+A321632(n)`
-/

namespace A009116.P14674822965862348520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321632 (n + 1) + A321632 n

end

end A009116.P14674822965862348520

namespace A009116

/-- `A321632(n+1)+A321632(n)` -/
def P14674822965862348520.Spec : Prop :=
  ∀ n, P14674822965862348520.a n = A009116 n

end A009116

/-! ## A009116.P11158514434832983372

`A077973(n)+A137505(n)-1`
-/

namespace A009116.P11158514434832983372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077973 n + (A137505 n - 1)

end

end A009116.P11158514434832983372

namespace A009116

/-- `A077973(n)+A137505(n)-1` -/
def P11158514434832983372.Spec : Prop :=
  ∀ n, P11158514434832983372.a n = A009116 n

end A009116

/-! ## A009116.P11141695819393657934

`A137505(n)-A137505(n+2)`
-/

namespace A009116.P11141695819393657934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137505 n - A137505 (n + 2)

end

end A009116.P11141695819393657934

namespace A009116

/-- `A137505(n)-A137505(n+2)` -/
def P11141695819393657934.Spec : Prop :=
  ∀ n, P11141695819393657934.a n = A009116 n

end A009116

/-! ## A009116.P10814528646216442251

`A108520(n)+A108520(n)-A078069(n)`
-/

namespace A009116.P10814528646216442251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108520 n + (A108520 n - A078069 n)

end

end A009116.P10814528646216442251

namespace A009116

/-- `A108520(n)+A108520(n)-A078069(n)` -/
def P10814528646216442251.Spec : Prop :=
  ∀ n, P10814528646216442251.a n = A009116 n

end A009116

/-! ## A009116.P17841516627313945627

`A146559(n)-A010673(n)*A146559(n)`
-/

namespace A009116.P17841516627313945627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146559 n - A010673 n * A146559 n

end

end A009116.P17841516627313945627

namespace A009116

/-- `A146559(n)-A010673(n)*A146559(n)` -/
def P17841516627313945627.Spec : Prop :=
  ∀ n, P17841516627313945627.a n = A009116 n

end A009116

/-! ## A009116.P11263983078049436482

`A009545(n)+A009545(n+1)*A087960(n)`
-/

namespace A009116.P11263983078049436482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009545 n + A009545 (n + 1) * A087960 n

end

end A009116.P11263983078049436482

namespace A009116

/-- `A009545(n)+A009545(n+1)*A087960(n)` -/
def P11263983078049436482.Spec : Prop :=
  ∀ n, P11263983078049436482.a n = A009116 n

end A009116

/-! ## A009116.P4305752910800879197

`A009545(n)+A009545(n+1)*A057077(n+1)`
-/

namespace A009116.P4305752910800879197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009545 n + A009545 (n + 1) * A057077 (n + 1)

end

end A009116.P4305752910800879197

namespace A009116

/-- `A009545(n)+A009545(n+1)*A057077(n+1)` -/
def P4305752910800879197.Spec : Prop :=
  ∀ n, P4305752910800879197.a n = A009116 n

end A009116

/-! ## A009116.P13850091388493043316

`A009545(A215495(2*n))-A009545(A212831(2*n))`
-/

namespace A009116.P13850091388493043316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009545 (A215495 (2 * n)).toNat - A009545 (A212831 (2 * n)).toNat

end

end A009116.P13850091388493043316

namespace A009116

/-- `A009545(A215495(2*n))-A009545(A212831(2*n))` -/
def P13850091388493043316.Spec : Prop :=
  ∀ n, P13850091388493043316.a n = A009116 n

end A009116

/-! ## A009116.P4769988691172658775

`A084102(n+1)/2`
-/

namespace A009116.P4769988691172658775
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084102 (n + 1) : ℚ) / 2

end

end A009116.P4769988691172658775

namespace A009116

/-- `A084102(n+1)/2` -/
def P4769988691172658775.Spec : Prop :=
  ∀ n, P4769988691172658775.a n = (A009116 n : ℚ)

end A009116

/-! ## A009116.P12854570703861228764

`A118434(n)-A009545(n)`
-/

namespace A009116.P12854570703861228764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118434 n - A009545 n

end

end A009116.P12854570703861228764

namespace A009116

/-- `A118434(n)-A009545(n)` -/
def P12854570703861228764.Spec : Prop :=
  ∀ n, P12854570703861228764.a n = A009116 n

end A009116

/-!
# A009117: Expansion of e.g.f.: 1/2 + exp(-4*x)/2.

The programs for A009117, the canonical program `A009117.P9076829232289267854` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A009117 has offset 0).

The definition of A009117 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A009117.P9076829232289267854

`(-1)^n*A081294(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A009117

/-- `(-1)^n*A081294(n)` -/
def P9076829232289267854.Spec : Prop :=
  ∀ n, P9076829232289267854.a n = A009117 n

theorem P9076829232289267854.correct : P9076829232289267854.Spec := by
  intro n
  simp only [A009117]

end A009117

/-! ## A009117.P2949238670878955520

`ogf((1+2x)/(1+4x))`
-/

namespace A009117.P2949238670878955520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2] [1, 4] n

end

end A009117.P2949238670878955520

namespace A009117

/-- `ogf((1+2x)/(1+4x))` -/
def P2949238670878955520.Spec : Prop :=
  ∀ n, P2949238670878955520.a n = A009117 n

end A009117

/-! ## A009117.P1715510057763964253

`ceil((-4)^n/2)`
-/

namespace A009117.P1715510057763964253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((-4) ^ n : ℚ) / 2⌉

end

end A009117.P1715510057763964253

namespace A009117

/-- `ceil((-4)^n/2)` -/
def P1715510057763964253.Spec : Prop :=
  ∀ n, P1715510057763964253.a n = A009117 n

end A009117

/-! ## A009117.P17565484899478427883

`16*a(n-2)` with `a(0)=1, a(1)=-2, a(2)=8`
-/

namespace A009117.P17565484899478427883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -2, 8] fun n a =>
  16 * a (n - 2)

end

end A009117.P17565484899478427883

namespace A009117

/-- `16*a(n-2)` -/
def P17565484899478427883.Spec : Prop :=
  ∀ n, P17565484899478427883.a n = A009117 n

end A009117

/-! ## A009117.P7655540318441620253

`a(n-1)/(3/4-1)` with `a(0)=1, a(1)=-2`
-/

namespace A009117.P7655540318441620253
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, -2] fun n a =>
  a (n - 1) / ((3 : ℚ) / 4 - 1)

end

end A009117.P7655540318441620253

namespace A009117

/-- `a(n-1)/(3/4-1)` -/
def P7655540318441620253.Spec : Prop :=
  ∀ n, P7655540318441620253.a n = (A009117 n : ℚ)

end A009117

/-! ## A009117.P18125233037008291834

`(-2)^n*A011782(n)`
-/

namespace A009117.P18125233037008291834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ n * A011782 n

end

end A009117.P18125233037008291834

namespace A009117

/-- `(-2)^n*A011782(n)` -/
def P18125233037008291834.Spec : Prop :=
  ∀ n, P18125233037008291834.a n = A009117 n

end A009117

/-! ## A009117.P1155982345050709444

`A280560(n)^(2*n-1)`
-/

namespace A009117.P1155982345050709444
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A280560 n : ℚ) ^ ((2 * n : ℤ) - 1 : ℤ)

end

end A009117.P1155982345050709444

namespace A009117

/-- `A280560(n)^(2*n-1)` -/
def P1155982345050709444.Spec : Prop :=
  ∀ n, P1155982345050709444.a n = (A009117 n : ℚ)

end A009117

/-! ## A009117.P13658324537447039072

`A084102(A130824(n))`
-/

namespace A009117.P13658324537447039072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084102 (A130824 n).toNat

end

end A009117.P13658324537447039072

namespace A009117

/-- `A084102(A130824(n))` -/
def P13658324537447039072.Spec : Prop :=
  ∀ n, P13658324537447039072.a n = A009117 n

end A009117

/-! ## A009117.P488661455786768585

`A117575(A047470(n+1))`
-/

namespace A009117.P488661455786768585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117575 (A047470 (n + 1)).toNat

end

end A009117.P488661455786768585

namespace A009117

/-- `A117575(A047470(n+1))` -/
def P488661455786768585.Spec : Prop :=
  ∀ n, P488661455786768585.a n = A009117 n

end A009117

/-! ## A009117.P7895715456567516721

`A146559(A131098(n+1))`
-/

namespace A009117.P7895715456567516721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146559 (A131098 (n + 1)).toNat

end

end A009117.P7895715456567516721

namespace A009117

/-- `A146559(A131098(n+1))` -/
def P7895715456567516721.Spec : Prop :=
  ∀ n, P7895715456567516721.a n = A009117 n

end A009117

/-! ## A009117.P3444765353700600383

`A011782(n)*A122803(n)`
-/

namespace A009117.P3444765353700600383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n * A122803 n

end

end A009117.P3444765353700600383

namespace A009117

/-- `A011782(n)*A122803(n)` -/
def P3444765353700600383.Spec : Prop :=
  ∀ n, P3444765353700600383.a n = A009117 n

end A009117

/-! ## A009117.P9093726956393023349

`A000302(n)/A280560(n)`
-/

namespace A009117.P9093726956393023349
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000302 n : ℚ) / (A280560 n : ℚ)

end

end A009117.P9093726956393023349

namespace A009117

/-- `A000302(n)/A280560(n)` -/
def P9093726956393023349.Spec : Prop :=
  ∀ n, P9093726956393023349.a n = (A009117 n : ℚ)

end A009117

/-! ## A009117.P8991351185996482290

`Δ[A131577(n)]*A122803(n)`
-/

namespace A009117.P8991351185996482290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A122803 n

end

end A009117.P8991351185996482290

namespace A009117

/-- `Δ[A131577(n)]*A122803(n)` -/
def P8991351185996482290.Spec : Prop :=
  ∀ n, P8991351185996482290.a n = A009117 n

end A009117

/-! ## A009117.P647879403925956892

`A084102(2*(A004277(n)-1))`
-/

namespace A009117.P647879403925956892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084102 (2 * (A004277 n - 1)).toNat

end

end A009117.P647879403925956892

namespace A009117

/-- `A084102(2*(A004277(n)-1))` -/
def P647879403925956892.Spec : Prop :=
  ∀ n, P647879403925956892.a n = A009117 n

end A009117

/-! ## A009117.P10985107440526323281

`A099087(A004277(2*n))/2`
-/

namespace A009117.P10985107440526323281
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099087 (A004277 (2 * n)).toNat : ℚ) / 2

end

end A009117.P10985107440526323281

namespace A009117

/-- `A099087(A004277(2*n))/2` -/
def P10985107440526323281.Spec : Prop :=
  ∀ n, P10985107440526323281.a n = (A009117 n : ℚ)

end A009117

/-! ## A009117.P12322552657790320264

`A084102(lcm(2, 1-A004277(n)))`
-/

namespace A009117.P12322552657790320264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084102 (Int.lcm 2 (1 - A004277 n))

end

end A009117.P12322552657790320264

namespace A009117

/-- `A084102(lcm(2, 1-A004277(n)))` -/
def P12322552657790320264.Spec : Prop :=
  ∀ n, P12322552657790320264.a n = A009117 n

end A009117

/-! ## A009117.P7177638400555991952

`A011782(n)*A123344(n+1)`
-/

namespace A009117.P7177638400555991952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n * A123344 (n + 1)

end

end A009117.P7177638400555991952

namespace A009117

/-- `A011782(n)*A123344(n+1)` -/
def P7177638400555991952.Spec : Prop :=
  ∀ n, P7177638400555991952.a n = A009117 n

end A009117

/-! ## A009117.P12352518503863690398

`A011782(n)*A141531(n+2)`
-/

namespace A009117.P12352518503863690398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n * A141531 (n + 2)

end

end A009117.P12352518503863690398

namespace A009117

/-- `A011782(n)*A141531(n+2)` -/
def P12352518503863690398.Spec : Prop :=
  ∀ n, P12352518503863690398.a n = A009117 n

end A009117

/-! ## A009117.P4630786281104158659

`A262710(n)/A036453(n+1)`
-/

namespace A009117.P4630786281104158659
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262710 n : ℚ) / (A036453 (n + 1) : ℚ)

end

end A009117.P4630786281104158659

namespace A009117

/-- `A262710(n)/A036453(n+1)` -/
def P4630786281104158659.Spec : Prop :=
  ∀ n, P4630786281104158659.a n = (A009117 n : ℚ)

end A009117

/-!
# A009118: Expansion of e.g.f. cos(x/cos(x)) (even powers only).

The programs for A009118, there is no canonical definition to state claims against.
-/

/-! ## A009118.P16665965921670186067

`A009301(2*n)*A033999(n)`
-/

namespace A009118.P16665965921670186067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009301 (2 * n) * A033999 n

end

end A009118.P16665965921670186067

/-! ## A009118.P14563415654933599859

`A009301(A005843(n))/A033999(n)`
-/

namespace A009118.P14563415654933599859
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009301 (A005843 n).toNat : ℚ) / (A033999 n : ℚ)

end

end A009118.P14563415654933599859

/-!
# A009119: Expansion of e.g.f. cos(x/cosh(x)) (even powers only).

The programs for A009119, there is no canonical definition to state claims against.
-/

/-! ## A009119.P3913793767129500520

`(-1)^n*A009300(2*n)`
-/

namespace A009119.P3913793767129500520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A009300 (2 * n)

end

end A009119.P3913793767129500520

/-! ## A009119.P4993532399872993935

`A009300(2*n)*A033999(n)`
-/

namespace A009119.P4993532399872993935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009300 (2 * n) * A033999 n

end

end A009119.P4993532399872993935

/-!
# A009120: a(n) = (4*n)!/(2*n)!.

The programs for A009120, the canonical program `A009120.P1081582788580545597` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A009120 has offset 0).

The definition of A009120 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A009120.P1081582788580545597

`4*(4*n-1)*(4*n-3)*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A009120

/-- `4*(4*n-1)*(4*n-3)*a(n-1)` -/
def P1081582788580545597.Spec : Prop :=
  ∀ n, P1081582788580545597.a n = A009120 n

theorem P1081582788580545597.correct : P1081582788580545597.Spec := by
  intro n
  simp only [A009120]

end A009120

/-! ## A009120.P446450312168584973

`4^n*A101485(n)`
-/

namespace A009120.P446450312168584973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) * A101485 n

end

end A009120.P446450312168584973

namespace A009120

/-- `4^n*A101485(n)` -/
def P446450312168584973.Spec : Prop :=
  ∀ n, P446450312168584973.a n = A009120 n

end A009120

/-! ## A009120.P12415532121367050102

`(4*n)!/(2*n)!`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A009120.P12415532121367050102
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (4 * n) : ℚ) / (Nat.factorial (2 * n) : ℚ)

end

end A009120.P12415532121367050102

namespace A009120

/-- `(4*n)!/(2*n)!` -/
def P12415532121367050102.Spec : Prop :=
  ∀ n, P12415532121367050102.a n = (A009120 n : ℚ)

end A009120

/-! ## A009120.P18274601179393470492

`record[∏[a(n-1)-4]/2]` with `a(0)=2`
-/

namespace A009120.P18274601179393470492
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  f2 (n - 1) - 4

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A009120.P18274601179393470492

namespace A009120

/-- `record[∏[a(n-1)-4]/2]` -/
def P18274601179393470492.Spec : Prop :=
  ∀ n, P18274601179393470492.a n = (A009120 n : ℚ)

end A009120

/-! ## A009120.P952231060697929973

`record[(2-4*n)*a(n-1)]` with `a(0)=1`
-/

namespace A009120.P952231060697929973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (2 - (4 * n : ℤ)) * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A009120.P952231060697929973

namespace A009120

/-- `record[(2-4*n)*a(n-1)]` -/
def P952231060697929973.Spec : Prop :=
  ∀ n, P952231060697929973.a n = A009120 n

end A009120

/-!
# A009121: Expansion of e.g.f. cosh(exp(x)*x).

The programs for A009121, there is no canonical definition to state claims against.
-/

/-! ## A009121.P7393933609278060704

`A000248(n)-A009565(n)`
-/

namespace A009121.P7393933609278060704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000248 n - A009565 n

end

end A009121.P7393933609278060704

/-! ## A009121.P5186334901305668863

`(A292952(n)+A000248(n))/2`
-/

namespace A009121.P5186334901305668863
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292952 n + A000248 n : ℚ) / 2

end

end A009121.P5186334901305668863

/-! ## A009121.P8878994836781623484

`A235596(n+1)+1-A009565(n)`
-/

namespace A009121.P8878994836781623484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235596 (n + 1) + (1 - A009565 n)

end

end A009121.P8878994836781623484

/-! ## A009121.P13698321751784244058

`A145460(∑[n+2]-1)-A009565(n)`
-/

namespace A009121.P13698321751784244058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145460 (∑ j ∈ Finset.range (n + 1), f1 j - 1) - A009565 n

end

end A009121.P13698321751784244058

/-! ## A009121.P12203757937192385306

`A143398(A133263(n)-1)-A009565(n)`
-/

namespace A009121.P12203757937192385306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143398 (A133263 n - 1).toNat - A009565 n

end

end A009121.P12203757937192385306

/-! ## A009121.P15026767082860903115

`A052512(n+1)/(n+1)-A009565(n)`
-/

namespace A009121.P15026767082860903115
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052512 (n + 1) : ℚ) / (n + 1 : ℚ) - (A009565 n : ℚ)

end

end A009121.P15026767082860903115

/-! ## A009121.P2670014007293401770

`A292978(∑[n+2]-1)-A009565(n)`
-/

namespace A009121.P2670014007293401770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292978 (∑ j ∈ Finset.range (n + 1), f1 j - 1) - A009565 n

end

end A009121.P2670014007293401770

/-! ## A009121.P9987123531273825195

`A143397(A000096(n))-A009565(n)`
-/

namespace A009121.P9987123531273825195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143397 (A000096 n).toNat - A009565 n

end

end A009121.P9987123531273825195

/-!
# A009123: Expansion of e.g.f.: cosh(log(1+sin(x))).

The programs for A009123, there is no canonical definition to state claims against.
-/

/-! ## A009123.P5811986310457269552

`A117569(n)-A009567(n)`
-/

namespace A009123.P5811986310457269552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117569 n - A009567 n

end

end A009123.P5811986310457269552

/-! ## A009123.P15543775380459409479

`A009567(n)-A346838(n+1)`
-/

namespace A009123.P15543775380459409479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009567 n - A346838 (n + 1)

end

end A009123.P15543775380459409479

/-! ## A009123.P10124417243669652008

`A009567(n)-A247453(∑[n+1])`
-/

namespace A009123.P10124417243669652008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009567 n - A247453 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A009123.P10124417243669652008

/-! ## A009123.P10571889243135646051

`A155585(n)/A000111(n)-A009567(n)`
-/

namespace A009123.P10571889243135646051
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A155585 n : ℚ) / (A000111 n : ℚ) - (A009567 n : ℚ)

end

end A009123.P10571889243135646051

/-! ## A009123.P14966585635289312282

`A033999(n)*A110654(A029584(n+1))`
-/

namespace A009123.P14966585635289312282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A110654 (A029584 (n + 1)).toNat

end

end A009123.P14966585635289312282

/-!
# A009124: Expansion of e.g.f. cosh(log(1+sinh(x))).

The programs for A009124, there is no canonical definition to state claims against.
-/

/-! ## A009124.P5781070498075260937

`abs(A073097(n))-A009568(n)`
-/

namespace A009124.P5781070498075260937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A073097 n| - A009568 n

end

end A009124.P5781070498075260937

/-! ## A009124.P1289495116899243618

`abs(A163805(n))-A009568(n)`
-/

namespace A009124.P1289495116899243618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A163805 n| - A009568 n

end

end A009124.P1289495116899243618

/-! ## A009124.P14112003932401356030

`char[A004273(n)]-A009568(n)`
-/

namespace A009124.P14112003932401356030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - A009568 n

end

end A009124.P14112003932401356030

/-! ## A009124.P15943475213656724323

`A000035(A008486(n))-A009568(n)`
-/

namespace A009124.P15943475213656724323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A008486 n).toNat - A009568 n

end

end A009124.P15943475213656724323

/-! ## A009124.P17380174900823110431

`A000035(A008706(n))-A009568(n)`
-/

namespace A009124.P17380174900823110431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A008706 n).toNat - A009568 n

end

end A009124.P17380174900823110431

/-! ## A009124.P15574117039488567200

`A000035(A028310(n))-A009568(n)`
-/

namespace A009124.P15574117039488567200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A028310 n).toNat - A009568 n

end

end A009124.P15574117039488567200

/-!
# A009125: Expansion of e.g.f. cosh(log(1+tan(x))).

The programs for A009125, there is no canonical definition to state claims against.
-/

/-! ## A009125.P3226473150892885213

`A009006(n)-A009569(n)`
-/

namespace A009125.P3226473150892885213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009006 n - A009569 n

end

end A009125.P3226473150892885213

/-! ## A009125.P143131613940480947

`abs(A155585(n))-A009569(n)`
-/

namespace A009125.P143131613940480947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A155585 n| - A009569 n

end

end A009125.P143131613940480947

/-! ## A009125.P2951839581205029116

`A008280(∑[n]+n)-A009569(n)`
-/

namespace A009125.P2951839581205029116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008280 (∑ j ∈ Finset.range (n + 1), f1 j + n) - A009569 n

end

end A009125.P2951839581205029116

/-! ## A009125.P6743778917114158229

`A009006(n)+A009569(n)*A057428(n)`
-/

namespace A009125.P6743778917114158229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009006 n + A009569 n * A057428 n

end

end A009125.P6743778917114158229

/-! ## A009125.P14047716583284530727

`A008280(A000096(n))+A009569(n)*A057428(n)`
-/

namespace A009125.P14047716583284530727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008280 (A000096 n).toNat + A009569 n * A057428 n

end

end A009125.P14047716583284530727

/-!
# A009126: Expansion of e.g.f. cosh(log(1+tanh(x))).

The programs for A009126, there is no canonical definition to state claims against.
-/

/-! ## A009126.P6931029636843991734

`A155585(n)-A009570(n)`
-/

namespace A009126.P6931029636843991734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155585 n - A009570 n

end

end A009126.P6931029636843991734

/-! ## A009126.P13003507393351028757

`A117575(2*n)+A009570(n)`
-/

namespace A009126.P13003507393351028757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117575 (2 * n) + A009570 n

end

end A009126.P13003507393351028757

/-! ## A009126.P16261826565022438495

`A122045(n)-(A163747(n)+A009570(n))`
-/

namespace A009126.P16261826565022438495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122045 n - (A163747 n + A009570 n)

end

end A009126.P16261826565022438495

/-! ## A009126.P18143255234440922550

`A009006(n)*A057077(n)-A009570(n)`
-/

namespace A009126.P18143255234440922550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009006 n * A057077 n - A009570 n

end

end A009126.P18143255234440922550

/-! ## A009126.P14293650668216289320

`A323833(∑[n])+A122045(n)-A009570(n)`
-/

namespace A009126.P14293650668216289320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323833 (∑ j ∈ Finset.range (n + 1), f1 j) + A122045 n - A009570 n

end

end A009126.P14293650668216289320

/-! ## A009126.P11469679078668929230

`A084623(n+1)*A198631(n)-A009570(n)`
-/

namespace A009126.P11469679078668929230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084623 (n + 1) * A198631 n - A009570 n

end

end A009126.P11469679078668929230

/-!
# A009127: Area of more than one Pythagorean triangle.

The programs for A009127, there is no canonical definition to state claims against.
-/

/-! ## A009127.P2460067813776470033

`record[gcd(A009111(n+11), A009111(n+12))]`
-/

namespace A009127.P2460067813776470033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A009111 (n + 11)) (A009111 (n + 12))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A009127.P2460067813776470033

/-!
# A009128: Expansion of e.g.f. cosh(log(1+x))*cos(x).

The programs for A009128, there is no canonical definition to state claims against.
-/

/-! ## A009128.P9445720851092048206

`A009572(n)+A009102(n)`
-/

namespace A009128.P9445720851092048206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009572 n + A009102 n

end

end A009128.P9445720851092048206

/-! ## A009128.P5316646734665862279

`A009001(n)-A009572(n)`
-/

namespace A009128.P5316646734665862279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 n - A009572 n

end

end A009128.P5316646734665862279

/-! ## A009128.P11181451022421219122

`(A009102(n)+A009001(n))/2`
-/

namespace A009128.P11181451022421219122
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009102 n + A009001 n : ℚ) / 2

end

end A009128.P11181451022421219122

/-! ## A009128.P10385758737932641196

`A009001(n)+A009572(n)*A057428(n)`
-/

namespace A009128.P10385758737932641196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 n + A009572 n * A057428 n

end

end A009128.P10385758737932641196

/-! ## A009128.P15279601062671586628

`A009102(n)+(A009001(n)-A009102(n))*(2%A004771(n))^-1`
-/

namespace A009128.P15279601062671586628
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009102 n : ℚ) + (A009001 n - A009102 n : ℚ) * (Int.tmod 2 (A004771 n) : ℚ) ^ (-1 : ℤ)

end

end A009128.P15279601062671586628

/-!
# A009129: Perimeter of more than one Pythagorean triangle.

The programs for A009129, there is no canonical definition to state claims against.
-/

/-! ## A009129.P14671581923865680695

`2*eq[1, A010892(a(A270417(n)))]` with `a(0)=2, a(1)=2`
-/

namespace A009129.P14671581923865680695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n f2 =>
  A010892 (f2 (A270417 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A009129.P14671581923865680695

/-! ## A009129.P4769534460552895877

`2*eq[1, A052552(a(A270417(n)))]` with `a(0)=2, a(1)=2`
-/

namespace A009129.P4769534460552895877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n f2 =>
  A052552 (f2 (A270417 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A009129.P4769534460552895877

/-! ## A009129.P7024098391417777212

`2*eq[1, A345163(a(A270417(n)))]` with `a(0)=2, a(1)=2`
-/

namespace A009129.P7024098391417777212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n f2 =>
  A345163 (f2 (A270417 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A009129.P7024098391417777212

/-! ## A009129.P15251040746824121880

`lt[1, A024155(n+1)]+1`
-/

namespace A009129.P15251040746824121880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024155 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A009129.P15251040746824121880

/-! ## A009129.P16190062686973766027

`eq[2, A000005(a(A024155(n)))]` with `a(0)=4, a(1)=4`
-/

namespace A009129.P16190062686973766027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4, 4] fun n f2 =>
  A000005 (f2 (A024155 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A009129.P16190062686973766027

/-! ## A009129.P9751991555071397812

`eq[2, A000045(a(A024155(n)))]` with `a(0)=4, a(1)=4`
-/

namespace A009129.P9751991555071397812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4, 4] fun n f2 =>
  A000045 (f2 (A024155 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A009129.P9751991555071397812

/-! ## A009129.P12209926824067266177

`eq[2, a(A024155(n))-A157928(n)]` with `a(0)=4`
-/

namespace A009129.P12209926824067266177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f2 =>
  f2 (A024155 n).toNat - A157928 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A009129.P12209926824067266177

/-!
# A009130: Expansion of e.g.f. cosh(log(1+x))/cos(x).

The programs for A009130, there is no canonical definition to state claims against.
-/

/-! ## A009130.P12275927887176798952

`A009002(n)-A009576(n)`
-/

namespace A009130.P12275927887176798952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009002 n - A009576 n

end

end A009130.P12275927887176798952

/-!
# A009131: Expansion of e.g.f. cosh(log(1+x))/cosh(x).

The programs for A009131, there is no canonical definition to state claims against.
-/

/-! ## A009131.P14692439848681050439

`A048105(A118987(n+4))+A009128(n)`
-/

namespace A009131.P14692439848681050439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048105 (A118987 (n + 4)).toNat + A009128 n

end

end A009131.P14692439848681050439

/-! ## A009131.P2214079068184510849

`xor(A009128(n), A334045(A334063(n+1)))`
-/

namespace A009131.P2214079068184510849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A009128 n) (A334045 (A334063 (n + 1)).toNat)

end

end A009131.P2214079068184510849

/-!
# A009132: Expansion of e.g.f. cosh(log(1+x))/exp(x).

The programs for A009132, there is no canonical definition to state claims against.
-/

/-! ## A009132.P14259668859762016614

`(A038155(n)+1)*A033999(n)`
-/

namespace A009132.P14259668859762016614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A038155 n + 1) * A033999 n

end

end A009132.P14259668859762016614

/-! ## A009132.P12205725923385775875

`2*A009178(n)-A009281(n)`
-/

namespace A009132.P12205725923385775875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A009178 n - A009281 n

end

end A009132.P12205725923385775875

/-! ## A009132.P10760571640118148980

`(A038155(n)+1)/A033999(n+2)`
-/

namespace A009132.P10760571640118148980
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038155 n + 1 : ℚ) / (A033999 (n + 2) : ℚ)

end

end A009132.P10760571640118148980

/-! ## A009132.P15060872952357629707

`A009578(n)+A000522(n)*A209615(n²+1)`
-/

namespace A009132.P15060872952357629707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009578 n + A000522 n * A209615 (n ^ 2 + 1)

end

end A009132.P15060872952357629707

/-! ## A009132.P7992141513280210073

`A002747(n+1)/(n+1)-A000387(n)`
-/

namespace A009132.P7992141513280210073
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002747 (n + 1) : ℚ) / (n + 1 : ℚ) - (A000387 n : ℚ)

end

end A009132.P7992141513280210073

/-!
# A009133: Expansion of e.g.f. cosh(log(1+x)*cos(x)).

The programs for A009133, there is no canonical definition to state claims against.
-/

/-! ## A009133.P8167196145074200427

`A009192(n)-A009579(n)`
-/

namespace A009133.P8167196145074200427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009192 n - A009579 n

end

end A009133.P8167196145074200427

/-!
# A009134: Expansion of cosh(log(1+x)*cosh(x)).

The programs for A009134, there is no canonical definition to state claims against.
-/

/-! ## A009134.P15035133181403803843

`A009193(n)-A009580(n)`
-/

namespace A009134.P15035133181403803843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009193 n - A009580 n

end

end A009134.P15035133181403803843

/-! ## A009134.P17949937279576466095

`A126853(A126105(n+2))`
-/

namespace A009134.P17949937279576466095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126853 (A126105 (n + 2)).toNat

end

end A009134.P17949937279576466095

/-!
# A009135: Expansion of e.g.f. cosh(log(1+x)*exp(x)).

The programs for A009135, there is no canonical definition to state claims against.
-/

/-! ## A009135.P1884672340355416638

`A007116(n)-A009581(n)`
-/

namespace A009135.P1884672340355416638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007116 n - A009581 n

end

end A009135.P1884672340355416638

/-! ## A009135.P348138206154762418

`A002865(n)*A012265(A092566(n))`
-/

namespace A009135.P348138206154762418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n * A012265 (A092566 n).toNat

end

end A009135.P348138206154762418

/-!
# A009136: Expansion of e.g.f. cosh(x*log(1+x)).

The programs for A009136, there is no canonical definition to state claims against.
-/

/-! ## A009136.P13884735982715925144

`A000122(A000984(n))-A009031(n)`
-/

namespace A009136.P13884735982715925144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A000984 n).toNat - A009031 n

end

end A009136.P13884735982715925144

/-! ## A009136.P10400238605551461635

`A000122(A077410(n))-A009031(n)`
-/

namespace A009136.P10400238605551461635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A077410 n).toNat - A009031 n

end

end A009136.P10400238605551461635

/-! ## A009136.P7926086144928114053

`A009031(n)*A062157(A000142(n))`
-/

namespace A009136.P7926086144928114053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009031 n * A062157 (A000142 n).toNat

end

end A009136.P7926086144928114053

/-! ## A009136.P1217853438613374909

`A009031(n)*A062157(A055099(n))`
-/

namespace A009136.P1217853438613374909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009031 n * A062157 (A055099 n).toNat

end

end A009136.P1217853438613374909

/-!
# A009137: Expansion of e.g.f. cosh(log(1+x)/cos(x)).

The programs for A009137, there is no canonical definition to state claims against.
-/

/-! ## A009137.P763764912172173024

`A009196(n)-A009582(n)`
-/

namespace A009137.P763764912172173024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009196 n - A009582 n

end

end A009137.P763764912172173024

/-!
# A009138: Expansion of e.g.f.: cosh(log(1+x)/cosh(x)).

The programs for A009138, there is no canonical definition to state claims against.
-/

/-! ## A009138.P11528120134618519695

`A009197(n)-A009583(n)`
-/

namespace A009138.P11528120134618519695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009197 n - A009583 n

end

end A009138.P11528120134618519695

/-! ## A009138.P5123919821432966296

`A009197(n)+A009583(n)*A321800(A050603(n))`
-/

namespace A009138.P5123919821432966296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009197 n + A009583 n * A321800 (A050603 n).toNat

end

end A009138.P5123919821432966296

/-! ## A009138.P3312591074421272537

`A129334(A008816(∑[n]+1))`
-/

namespace A009138.P3312591074421272537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129334 (A008816 (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat

end

end A009138.P3312591074421272537

/-!
# A009139: Expansion of e.g.f. cosh(log(1+x)/exp(x)).

The programs for A009139, there is no canonical definition to state claims against.
-/

/-! ## A009139.P13540303630679266553

`A009198(n)-A009584(n)`
-/

namespace A009139.P13540303630679266553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009198 n - A009584 n

end

end A009139.P13540303630679266553

/-!
# A009140: Expansion of e.g.f. cosh(log(1+x)^2).

The programs for A009140, there is no canonical definition to state claims against.
-/

/-! ## A009140.P17958376738460891022

`A009199(n)-A009585(n)`
-/

namespace A009140.P17958376738460891022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009199 n - A009585 n

end

end A009140.P17958376738460891022

/-! ## A009140.P2277009047537325741

`A009199(n)+A009585(n)*A260196(n)`
-/

namespace A009140.P2277009047537325741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009199 n + A009585 n * A260196 n

end

end A009140.P2277009047537325741

/-! ## A009140.P17727897040458434427

`A202185(∑[n]+1)/(n+1)-A009585(n)`
-/

namespace A009140.P17727897040458434427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A202185 (∑ j ∈ Finset.range (n + 1), f1 j + 1) : ℚ) / (n + 1 : ℚ) - (A009585 n : ℚ)

end

end A009140.P17727897040458434427

/-! ## A009140.P3340487110989578829

`A012273(A001222(5^n))`
-/

namespace A009140.P3340487110989578829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012273 (A001222 (5 ^ n)).toNat

end

end A009140.P3340487110989578829

/-!
# A009141: Expansion of e.g.f. cosh(sin(log(1+x))).

The programs for A009141, there is no canonical definition to state claims against.
-/

/-! ## A009141.P1963947058704001736

`A009200(n)-A009586(n)`
-/

namespace A009141.P1963947058704001736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009200 n - A009586 n

end

end A009141.P1963947058704001736

/-!
# A009142: Expansion of e.g.f. cosh(sin(sin(x))), even powers only.

The programs for A009142, there is no canonical definition to state claims against.
-/

/-! ## A009142.P4612373722947671988

`A009201(2*n)`
-/

namespace A009142.P4612373722947671988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009201 (2 * n)

end

end A009142.P4612373722947671988

/-! ## A009142.P13981977427576016549

`or(1, A009201(A004277(n)))`
-/

namespace A009142.P13981977427576016549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A009201 (A004277 n).toNat)

end

end A009142.P13981977427576016549

/-! ## A009142.P12807024408230918868

`or(1, A009201(A005843(n)))`
-/

namespace A009142.P12807024408230918868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A009201 (A005843 n).toNat)

end

end A009142.P12807024408230918868

/-! ## A009142.P17338035379691291703

`A009201(A005843(n))/A007318(∑[n])`
-/

namespace A009142.P17338035379691291703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009201 (A005843 n).toNat : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A009142.P17338035379691291703

/-! ## A009142.P1448168330200247796

`A009201(A005843(n))/A007318(C(2, n))²`
-/

namespace A009142.P1448168330200247796
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009201 (A005843 n).toNat : ℚ) / (A007318 (Nat.choose 2 n) ^ 2 : ℚ)

end

end A009142.P1448168330200247796

/-!
# A009143: Expansion of e.g.f. cosh(sin(tan(x))), even powers only.

The programs for A009143, there is no canonical definition to state claims against.
-/

/-! ## A009143.P745039165701500638

`A009203(2*n)`
-/

namespace A009143.P745039165701500638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009203 (2 * n)

end

end A009143.P745039165701500638

/-! ## A009143.P9175518064260816992

`or(1, A009203(A004277(n)))`
-/

namespace A009143.P9175518064260816992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A009203 (A004277 n).toNat)

end

end A009143.P9175518064260816992

/-! ## A009143.P4986313079419503787

`or(1, A009203(A005843(n)))`
-/

namespace A009143.P4986313079419503787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A009203 (A005843 n).toNat)

end

end A009143.P4986313079419503787

/-! ## A009143.P3234811571581128893

`A009203(A005843(n))/A007318(C(2, n))`
-/

namespace A009143.P3234811571581128893
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009203 (A005843 n).toNat : ℚ) / (A007318 (Nat.choose 2 n) : ℚ)

end

end A009143.P3234811571581128893

/-! ## A009143.P50192309958445817

`A009203(A004277(n))/val(A005117(n+2), 3)!`
-/

namespace A009143.P50192309958445817
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009203 (A004277 n).toNat : ℚ) / (Nat.factorial (SequenceMachineLib.valuation (A005117 (n + 2)).toNat 3) : ℚ)

end

end A009143.P50192309958445817

/-!
# A009144: Expansion of cosh(sin(x))/cos(x).

The programs for A009144, there is no canonical definition to state claims against.
-/

/-! ## A009144.P5893271148201050545

`A009207(2*n)`
-/

namespace A009144.P5893271148201050545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009207 (2 * n)

end

end A009144.P5893271148201050545

/-! ## A009144.P9439749978894589463

`record[A009207(A006257(n)+1)]`
-/

namespace A009144.P9439749978894589463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009207 (A006257 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A009144.P9439749978894589463

/-! ## A009144.P17169330332385075583

`record[A009207(A026741(n)+1)]`
-/

namespace A009144.P17169330332385075583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009207 (A026741 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A009144.P17169330332385075583

/-! ## A009144.P2063443366794290739

`record[A009207(A093178(n)-1)]`
-/

namespace A009144.P2063443366794290739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009207 (A093178 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A009144.P2063443366794290739

/-! ## A009144.P10840356734711228275

`record[A009207(A099375(n)-1)]`
-/

namespace A009144.P10840356734711228275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009207 (A099375 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A009144.P10840356734711228275

/-!
# A009145: Expansion of e.g.f.: cosh(sin(x))/exp(x).

The programs for A009145, there is no canonical definition to state claims against.
-/

/-! ## A009145.P12678203990674273109

`(A009282(n)-A009590(n))*A033999(n)`
-/

namespace A009145.P12678203990674273109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A009282 n - A009590 n) * A033999 n

end

end A009145.P12678203990674273109

/-! ## A009145.P11665426773223162466

`A009209(n)+A009590(n)*A033999(n)`
-/

namespace A009145.P11665426773223162466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009209 n + A009590 n * A033999 n

end

end A009145.P11665426773223162466

/-! ## A009145.P12378961052924962995

`A009590(n)+(A009622(n)+A009209(n))*(-1)^n-A009622(n)`
-/

namespace A009145.P12378961052924962995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009590 n + ((A009622 n + A009209 n) * (-1) ^ n - A009622 n)

end

end A009145.P12378961052924962995

/-! ## A009145.P4665811957090259271

`A009184(n)+A009590(n)-A009622(n)`
-/

namespace A009145.P4665811957090259271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009184 n + (A009590 n - A009622 n)

end

end A009145.P4665811957090259271

/-! ## A009145.P17251884399052153337

`A009184(n)+A000035(n)*A009209(n)`
-/

namespace A009145.P17251884399052153337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009184 n + A000035 n * A009209 n

end

end A009145.P17251884399052153337

/-!
# A009146: Expansion of cosh(sin(x)*cos(x)).

The programs for A009146, there is no canonical definition to state claims against.
-/

/-! ## A009146.P1385022357232439782

`A009210(2*n)`
-/

namespace A009146.P1385022357232439782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009210 (2 * n)

end

end A009146.P1385022357232439782

/-! ## A009146.P16898527902954934002

`or(1, A009210(A004277(n)))`
-/

namespace A009146.P16898527902954934002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A009210 (A004277 n).toNat)

end

end A009146.P16898527902954934002

/-! ## A009146.P14549195851199419927

`or(1, A009210(A005843(n)))`
-/

namespace A009146.P14549195851199419927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A009210 (A005843 n).toNat)

end

end A009146.P14549195851199419927

/-! ## A009146.P10022396890438893047

`A009210(A005843(n))^A178334(n)`
-/

namespace A009146.P10022396890438893047
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009210 (A005843 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A009146.P10022396890438893047

/-! ## A009146.P15590659097923113987

`A009210(A005843(n))+A000007(n+1)`
-/

namespace A009146.P15590659097923113987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009210 (A005843 n).toNat + A000007 (n + 1)

end

end A009146.P15590659097923113987

/-!
# A009147: Expansion of e.g.f.: cosh(sin(x)*exp(x)).

The programs for A009147, there is no canonical definition to state claims against.
-/

/-! ## A009147.P9036397692549548280

`A009212(n)-A009594(n)`
-/

namespace A009147.P9036397692549548280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009212 n - A009594 n

end

end A009147.P9036397692549548280

/-!
# A009148: Expansion of cosh(sin(x)*log(1+x)).

The programs for A009148, there is no canonical definition to state claims against.
-/

/-! ## A009148.P11362049664619894074

`A007118(n)-A012284(n)`
-/

namespace A009148.P11362049664619894074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007118 n - A012284 n

end

end A009148.P11362049664619894074

/-! ## A009148.P3895874382901292028

`A007118(n)+A012284(n)*A321800(A050603(n))`
-/

namespace A009148.P3895874382901292028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007118 n + A012284 n * A321800 (A050603 n).toNat

end

end A009148.P3895874382901292028

/-! ## A009148.P3074920665018443234

`A012581(A073789(n))`
-/

namespace A009148.P3074920665018443234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012581 (A073789 n).toNat

end

end A009148.P3074920665018443234

/-! ## A009148.P2610645426280016063

`A012288(A004869(n+1))`
-/

namespace A009148.P2610645426280016063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012288 (A004869 (n + 1)).toNat

end

end A009148.P2610645426280016063

/-!
# A009149: Expansion of e.g.f. cosh(sin(x)*x), even powers only.

The programs for A009149, there is no canonical definition to state claims against.
-/

/-! ## A009149.P2317712595598655767

`A009214(n)-A009595(n)`
-/

namespace A009149.P2317712595598655767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009214 n - A009595 n

end

end A009149.P2317712595598655767

/-!
# A009150: Expansion of e.g.f. cosh(sin(x)^2) (even coefficients).

The programs for A009150, there is no canonical definition to state claims against.
-/

/-! ## A009150.P8241008719277242075

`A009217(n)-A009596(n)`
-/

namespace A009150.P8241008719277242075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009217 n - A009596 n

end

end A009150.P8241008719277242075

/-! ## A009150.P10735465251863239591

`A009217(n)-2*A024258(n)`
-/

namespace A009150.P10735465251863239591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009217 n - 2 * A024258 n

end

end A009150.P10735465251863239591

/-! ## A009150.P365784679160330424

`A009217(n)-(A024258(n)+A024258(n)%A013725(n))`
-/

namespace A009150.P365784679160330424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009217 n - (A024258 n + Int.tmod (A024258 n) (A013725 n))

end

end A009150.P365784679160330424

/-! ## A009150.P9499631912624966313

`A009217(n)-(A024258(n)+A024258(A055648(n)))`
-/

namespace A009150.P9499631912624966313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009217 n - (A024258 n + A024258 (A055648 n).toNat)

end

end A009150.P9499631912624966313

/-! ## A009150.P7301110867641060604

`A009217(n)-(A024258(n)+A024258(A062003(n)))`
-/

namespace A009150.P7301110867641060604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009217 n - (A024258 n + A024258 (A062003 n).toNat)

end

end A009150.P7301110867641060604

/-!
# A009151: Expansion of cosh(sinh(log(1+x))).

The programs for A009151, there is no canonical definition to state claims against.
-/

/-! ## A009151.P15684176899173465716

`A009218(n)-A009597(n)`
-/

namespace A009151.P15684176899173465716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009218 n - A009597 n

end

end A009151.P15684176899173465716

/-!
# A009152: Expansion of e.g.f. cosh(sinh(x))/exp(x).

The programs for A009152, there is no canonical definition to state claims against.
-/

/-! ## A009152.P6433072025327090396

`(-1)^n*A081443(n)`
-/

namespace A009152.P6433072025327090396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A081443 n

end

end A009152.P6433072025327090396

/-! ## A009152.P5995763996695012496

`A081443(n)/A033999(n)`
-/

namespace A009152.P5995763996695012496
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081443 n : ℚ) / (A033999 n : ℚ)

end

end A009152.P5995763996695012496

/-! ## A009152.P14965713916515501222

`A081443(n)/A062157(n+1)`
-/

namespace A009152.P14965713916515501222
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081443 n : ℚ) / (A062157 (n + 1) : ℚ)

end

end A009152.P14965713916515501222

/-! ## A009152.P13207352589628073166

`A081443(n)*A257196(n²+1)`
-/

namespace A009152.P13207352589628073166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081443 n * A257196 (n ^ 2 + 1)

end

end A009152.P13207352589628073166

/-! ## A009152.P14931881230704331056

`A081443(n)*A097807(A000217(n))`
-/

namespace A009152.P14931881230704331056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081443 n * A097807 (A000217 n).toNat

end

end A009152.P14931881230704331056

/-!
# A009153: Expansion of e.g.f. cosh(sinh(x)*exp(x)).

The programs for A009153, there is no canonical definition to state claims against.
-/

/-! ## A009153.P4517877501038600058

`A004211(n)-A009599(n)`
-/

namespace A009153.P4517877501038600058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004211 n - A009599 n

end

end A009153.P4517877501038600058

/-! ## A009153.P10779644139176248602

`A261275(∑[n]+n)-A009599(n)`
-/

namespace A009153.P10779644139176248602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261275 (∑ j ∈ Finset.range (n + 1), f1 j + n) - A009599 n

end

end A009153.P10779644139176248602

/-! ## A009153.P15383268227937040317

`or(1, A261275(A000096(n)))-A009599(n)`
-/

namespace A009153.P15383268227937040317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A261275 (A000096 n).toNat) - A009599 n

end

end A009153.P15383268227937040317

/-! ## A009153.P17993739034863977418

`or(1, A261275(Δ[A005581(n)]))-A009599(n)`
-/

namespace A009153.P17993739034863977418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A261275 (f1 (n + 1) - f1 n).toNat) - A009599 n

end

end A009153.P17993739034863977418

/-! ## A009153.P15189143314933628965

`A261275(Δ[A005581(n)])+A000007(n+1)-A009599(n)`
-/

namespace A009153.P15189143314933628965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261275 (f1 (n + 1) - f1 n).toNat + A000007 (n + 1) - A009599 n

end

end A009153.P15189143314933628965

/-!
# A009154: E.g.f.: Expansion of cosh(sinh(x)*log(1+x)).

The programs for A009154, there is no canonical definition to state claims against.
-/

/-! ## A009154.P12845315143949659591

`A009231(n)-A012514(n)`
-/

namespace A009154.P12845315143949659591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009231 n - A012514 n

end

end A009154.P12845315143949659591

/-! ## A009154.P5637722085161642000

`A012313(A004891(n+1))`
-/

namespace A009154.P5637722085161642000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012313 (A004891 (n + 1)).toNat

end

end A009154.P5637722085161642000

/-! ## A009154.P12264529295399178141

`A012313(A004902(n+1))`
-/

namespace A009154.P12264529295399178141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012313 (A004902 (n + 1)).toNat

end

end A009154.P12264529295399178141

/-! ## A009154.P8374659662350137288

`A012517(n*A290546(n))`
-/

namespace A009154.P8374659662350137288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012517 ((n : ℤ) * A290546 n).toNat

end

end A009154.P8374659662350137288

/-!
# A009155: Expansion of cosh(sinh(x)*sin(x)).

The programs for A009155, there is no canonical definition to state claims against.
-/

/-! ## A009155.P14821032057423410131

`A009232(2*n)`
-/

namespace A009155.P14821032057423410131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009232 (2 * n)

end

end A009155.P14821032057423410131

/-!
# A009156: Expansion of e.g.f.: cosh(tan(log(1+x))).

The programs for A009156, there is no canonical definition to state claims against.
-/

/-! ## A009156.P3310204063620455914

`A009237(n)-A009601(n)`
-/

namespace A009156.P3310204063620455914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009237 n - A009601 n

end

end A009156.P3310204063620455914

/-! ## A009156.P12452691004420368787

`A009125(n)-A260946(A057331(n))`
-/

namespace A009156.P12452691004420368787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009125 n - A260946 (A057331 n).toNat

end

end A009156.P12452691004420368787

/-!
# A009157: Expansion of cosh(tan(sin(x))).

The programs for A009157, there is no canonical definition to state claims against.
-/

/-! ## A009157.P17207160633411156976

`A009238(2*n)`
-/

namespace A009157.P17207160633411156976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009238 (2 * n)

end

end A009157.P17207160633411156976

/-! ## A009157.P6061526581560592732

`or(1, A009238(A004277(n)))`
-/

namespace A009157.P6061526581560592732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A009238 (A004277 n).toNat)

end

end A009157.P6061526581560592732

/-! ## A009157.P13754235087081041587

`or(1, A009238(A005843(n)))`
-/

namespace A009157.P13754235087081041587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A009238 (A005843 n).toNat)

end

end A009157.P13754235087081041587

/-! ## A009157.P15664171283667253428

`A034447(n+1)+A009238(A004277(n))`
-/

namespace A009157.P15664171283667253428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034447 (n + 1) + A009238 (A004277 n).toNat

end

end A009157.P15664171283667253428

/-! ## A009157.P6293299653059142690

`A009238(A005843(n))%A206897(n+1)`
-/

namespace A009157.P6293299653059142690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A009238 (A005843 n).toNat) (A206897 (n + 1))

end

end A009157.P6293299653059142690

/-!
# A009158: Expansion of cosh(tan(tan(x))).

The programs for A009158, there is no canonical definition to state claims against.
-/

/-! ## A009158.P4567188138053779594

`A009240(2*n)`
-/

namespace A009158.P4567188138053779594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009240 (2 * n)

end

end A009158.P4567188138053779594

/-! ## A009158.P8930278651108699496

`or(1, A009240(A005843(n)))`
-/

namespace A009158.P8930278651108699496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A009240 (A005843 n).toNat)

end

end A009158.P8930278651108699496

/-! ## A009158.P807559548692312376

`A009240(A005843(n))^-A057428(n)`
-/

namespace A009158.P807559548692312376
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009240 (A005843 n).toNat : ℚ) ^ (-A057428 n : ℤ)

end

end A009158.P807559548692312376

/-! ## A009158.P17193549177919544014

`A009240(A005843(n))^A014963(∑[n+1])`
-/

namespace A009158.P17193549177919544014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009240 (A005843 n).toNat : ℚ) ^ (A014963 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A009158.P17193549177919544014

/-! ## A009158.P9190124885077711081

`A009240(A005843(n))/A014963(A154267(n))`
-/

namespace A009158.P9190124885077711081
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009240 (A005843 n).toNat : ℚ) / (A014963 (A154267 n).toNat : ℚ)

end

end A009158.P9190124885077711081

/-!
# A009159: Expansion of cosh(tan(x))*cos(x).

The programs for A009159, there is no canonical definition to state claims against.
-/

/-! ## A009159.P6950822881474541824

`A009114(2*n)`
-/

namespace A009159.P6950822881474541824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009114 (2 * n)

end

end A009159.P6950822881474541824

/-! ## A009159.P1749041636635742001

`abs(A009090(2*n))`
-/

namespace A009159.P1749041636635742001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A009090 (2 * n)|

end

end A009159.P1749041636635742001

/-! ## A009159.P17827896406283418129

`abs(record[A009114(n+1)])`
-/

namespace A009159.P17827896406283418129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009114 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)|

end

end A009159.P17827896406283418129

/-! ## A009159.P9334008831488095873

`abs(A009114(A004277(n)))`
-/

namespace A009159.P9334008831488095873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A009114 (A004277 n).toNat|

end

end A009159.P9334008831488095873

/-! ## A009159.P3391978524763543770

`abs(A009114(A005843(n)))`
-/

namespace A009159.P3391978524763543770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A009114 (A005843 n).toNat|

end

end A009159.P3391978524763543770

/-!
# A009160: Expansion of cosh(tan(x))/cos(x).

The programs for A009160, there is no canonical definition to state claims against.
-/

/-! ## A009160.P4737206689366018562

`A009244(2*n)`
-/

namespace A009160.P4737206689366018562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009244 (2 * n)

end

end A009160.P4737206689366018562

/-! ## A009160.P9106290516188871149

`record[A009244(A014681(n))]`
-/

namespace A009160.P9106290516188871149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009244 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A009160.P9106290516188871149

/-! ## A009160.P8566443745273988534

`A009606(n)+A009604(n)`
-/

namespace A009160.P8566443745273988534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009606 n + A009604 n

end

end A009160.P8566443745273988534

/-! ## A009160.P11072078092831712551

`record[A009244(A006369(n)+1)]`
-/

namespace A009160.P11072078092831712551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009244 (A006369 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A009160.P11072078092831712551

/-! ## A009160.P4783262748376542347

`record[A009244(n)/A033999(n)]`
-/

namespace A009160.P4783262748376542347
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009244 n : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A009160.P4783262748376542347

/-!
# A009161: Expansion of cosh(tan(x))/exp(x).

The programs for A009161, there is no canonical definition to state claims against.
-/

/-! ## A009161.P6149749433674793513

`A028310(A009290(n))*A033999(n)`
-/

namespace A009161.P6149749433674793513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A009290 n).toNat * A033999 n

end

end A009161.P6149749433674793513

/-! ## A009161.P11699452041110189215

`A009290(n)*A009531(A093834(n))`
-/

namespace A009161.P11699452041110189215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009290 n * A009531 (A093834 n).toNat

end

end A009161.P11699452041110189215

/-! ## A009161.P7115777443037430009

`A009290(n)*A033999(A094618(n))`
-/

namespace A009161.P7115777443037430009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009290 n * A033999 (A094618 n).toNat

end

end A009161.P7115777443037430009

/-! ## A009161.P5631180563619367204

`A028310(A009290(n))/A033999(n+2)`
-/

namespace A009161.P5631180563619367204
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028310 (A009290 n).toNat : ℚ) / (A033999 (n + 2) : ℚ)

end

end A009161.P5631180563619367204

/-!
# A009162: Expansion of cosh(tan(x).exp(x)).

The programs for A009162, there is no canonical definition to state claims against.
-/

/-! ## A009162.P9012949670295178430

`A009248(n)-A009608(n)`
-/

namespace A009162.P9012949670295178430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009248 n - A009608 n

end

end A009162.P9012949670295178430

/-! ## A009162.P5070135965517550813

`A012718(n)-A275491(A351936(n))`
-/

namespace A009162.P5070135965517550813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012718 n - A275491 (A351936 n).toNat

end

end A009162.P5070135965517550813

/-!
# A009163: Expansion of e.g.f.: cosh(tan(x)*log(1+x)).

The programs for A009163, there is no canonical definition to state claims against.
-/

/-! ## A009163.P6744029383251699059

`A009249(n)-A012355(n)`
-/

namespace A009163.P6744029383251699059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009249 n - A012355 n

end

end A009163.P6744029383251699059

/-! ## A009163.P15592820640402955400

`A012359(A004869(n+1))`
-/

namespace A009163.P15592820640402955400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012359 (A004869 (n + 1)).toNat

end

end A009163.P15592820640402955400

/-! ## A009163.P18023971278212247031

`A012359(A004880(n+1))`
-/

namespace A009163.P18023971278212247031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012359 (A004880 (n + 1)).toNat

end

end A009163.P18023971278212247031

/-! ## A009163.P1285757503796043578

`A012359(A032551(n+1))`
-/

namespace A009163.P1285757503796043578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012359 (A032551 (n + 1)).toNat

end

end A009163.P1285757503796043578

/-!
# A009164: Expansion of cosh(tan(x)*sin(x)).

The programs for A009164, there is no canonical definition to state claims against.
-/

/-! ## A009164.P8364523023171032413

`A009250(n)-A009609(n)`
-/

namespace A009164.P8364523023171032413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009250 n - A009609 n

end

end A009164.P8364523023171032413

/-! ## A009164.P11335977237135959622

`A009250(n)-2*A024240(n)`
-/

namespace A009164.P11335977237135959622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009250 n - 2 * A024240 n

end

end A009164.P11335977237135959622

/-! ## A009164.P9331865540763251290

`A009250(n)-(A024240(n)+A024240(A055645(n)))`
-/

namespace A009164.P9331865540763251290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009250 n - (A024240 n + A024240 (A055645 n).toNat)

end

end A009164.P9331865540763251290

/-! ## A009164.P5142143491166713167

`A009250(n)-(A024240(A004884(n+1))+A024240(n))`
-/

namespace A009164.P5142143491166713167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009250 n - (A024240 (A004884 (n + 1)).toNat + A024240 n)

end

end A009164.P5142143491166713167

/-! ## A009164.P12270318149455514821

`A009250(n)-(A024240(n)+A024240(A062399(n)))`
-/

namespace A009164.P12270318149455514821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009250 n - (A024240 n + A024240 (A062399 n).toNat)

end

end A009164.P12270318149455514821

/-!
# A009165: Expansion of e.g.f. cosh(tan(x)*sinh(x)) (only even powers).

The programs for A009165, there is no canonical definition to state claims against.
-/

/-! ## A009165.P13297834629685854541

`A009251(n)-A009610(n)`
-/

namespace A009165.P13297834629685854541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009251 n - A009610 n

end

end A009165.P13297834629685854541

/-! ## A009165.P11890013755280544969

`A009251(n)-2*A024276(n)`
-/

namespace A009165.P11890013755280544969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009251 n - 2 * A024276 n

end

end A009165.P11890013755280544969

/-! ## A009165.P15040725364323958855

`A009251(n)-(A024276(n)+A024276(A292579(n)))`
-/

namespace A009165.P15040725364323958855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009251 n - (A024276 n + A024276 (A292579 n).toNat)

end

end A009165.P15040725364323958855

/-! ## A009165.P9744960182584488346

`A009251(n)-(A024276(n)+A024276(n)/A153881(n+1)²)`
-/

namespace A009165.P9744960182584488346
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009251 n : ℚ) - ((A024276 n : ℚ) + (A024276 n : ℚ) / (A153881 (n + 1) ^ 2 : ℚ))

end

end A009165.P9744960182584488346

/-!
# A009166: Expansion of cosh(tan(x)*x).

The programs for A009166, there is no canonical definition to state claims against.
-/

/-! ## A009166.P8960542420799034408

`A009252(n)-A009611(n)`
-/

namespace A009166.P8960542420799034408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009252 n - A009611 n

end

end A009166.P8960542420799034408

/-! ## A009166.P12166420815994849713

`A009252(n)-2*A024263(n)`
-/

namespace A009166.P12166420815994849713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009252 n - 2 * A024263 n

end

end A009166.P12166420815994849713

/-! ## A009166.P17639589619169102611

`A009252(n)-(A024263(n)+A024263(A292579(n)))`
-/

namespace A009166.P17639589619169102611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009252 n - (A024263 n + A024263 (A292579 n).toNat)

end

end A009166.P17639589619169102611

/-! ## A009166.P15431464801249924691

`A009252(n)-(A024263(A004907(n+1))+A024263(n))`
-/

namespace A009166.P15431464801249924691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009252 n - (A024263 (A004907 (n + 1)).toNat + A024263 n)

end

end A009166.P15431464801249924691

/-! ## A009166.P12022365041574814574

`A009252(n)-(A024263(n)+A024263(A351870(n)))`
-/

namespace A009166.P12022365041574814574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009252 n - (A024263 n + A024263 (A351870 n).toNat)

end

end A009166.P12022365041574814574

/-!
# A009167: Expansion of cosh(tan(x)/cos(x)).

The programs for A009167, there is no canonical definition to state claims against.
-/

/-! ## A009167.P8578489320499278289

`A009253(2*n)`
-/

namespace A009167.P8578489320499278289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009253 (2 * n)

end

end A009167.P8578489320499278289

/-! ## A009167.P4573728846645201366

`or(1, A009253(A005843(n)))`
-/

namespace A009167.P4573728846645201366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A009253 (A005843 n).toNat)

end

end A009167.P4573728846645201366

/-! ## A009167.P11519588149948241995

`A009253(A005843(n))^A057428(n)²`
-/

namespace A009167.P11519588149948241995
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009253 (A005843 n).toNat : ℚ) ^ (A057428 n ^ 2 : ℤ)

end

end A009167.P11519588149948241995

/-! ## A009167.P16455294700658663807

`A009253(A005843(n))/A064284(n+1)`
-/

namespace A009167.P16455294700658663807
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009253 (A005843 n).toNat : ℚ) / (A064284 (n + 1) : ℚ)

end

end A009167.P16455294700658663807

/-! ## A009167.P18329768243218246950

`A009253(A005843(n))/A000041(C(2, n+2))`
-/

namespace A009167.P18329768243218246950
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009253 (A005843 n).toNat : ℚ) / (A000041 (Nat.choose 2 (n + 2)) : ℚ)

end

end A009167.P18329768243218246950

/-!
# A009168: Expansion of cosh(tan(x)^2).

The programs for A009168, there is no canonical definition to state claims against.
-/

/-! ## A009168.P1661359269712380929

`A009256(n)-A009613(n)`
-/

namespace A009168.P1661359269712380929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009256 n - A009613 n

end

end A009168.P1661359269712380929

/-! ## A009168.P3152546250076389641

`A009256(n)-2*A024287(n)`
-/

namespace A009168.P3152546250076389641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009256 n - 2 * A024287 n

end

end A009168.P3152546250076389641

/-! ## A009168.P6598547533466383686

`A009256(n)-lcm(2^A093051(n), A024287(n))`
-/

namespace A009168.P6598547533466383686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009256 n - (Int.lcm (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A093051 n : ℤ))) (A024287 n) : ℤ)

end

end A009168.P6598547533466383686

/-!
# A009169: Expansion of cosh(tanh(log(1+x))).

The programs for A009169, there is no canonical definition to state claims against.
-/

/-! ## A009169.P5665935642106500704

`A009257(n)-A009614(n)`
-/

namespace A009169.P5665935642106500704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009257 n - A009614 n

end

end A009169.P5665935642106500704

/-! ## A009169.P13016102356227698050

`A009257(n)+A009614(n)*A057428(n)`
-/

namespace A009169.P13016102356227698050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009257 n + A009614 n * A057428 n

end

end A009169.P13016102356227698050

/-!
# A009171: Expansion of cosh(tanh(x)*exp(x)).

The programs for A009171, there is no canonical definition to state claims against.
-/

/-! ## A009171.P6606064993216803989

`A009268(n)-A009616(n)`
-/

namespace A009171.P6606064993216803989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009268 n - A009616 n

end

end A009171.P6606064993216803989

/-!
# A009172: Expansion of e.g.f.: cosh(tanh(x)*log(1+x)).

The programs for A009172, there is no canonical definition to state claims against.
-/

/-! ## A009172.P9992035169008853976

`A009269(n)-A012654(n)`
-/

namespace A009172.P9992035169008853976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009269 n - A012654 n

end

end A009172.P9992035169008853976

/-! ## A009172.P8937359538456864256

`∏{e}[7^n, A012657(#)]`
-/

namespace A009172.P8937359538456864256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A012657 (Nat.factorization (f1 n) p)

end

end A009172.P8937359538456864256

/-! ## A009172.P2520136787780390273

`A012405(A001222(5^n))`
-/

namespace A009172.P2520136787780390273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012405 (A001222 (5 ^ n)).toNat

end

end A009172.P2520136787780390273

/-!
# A009173: Expansion of cosh(tanh(x)*tan(x)).

The programs for A009173, there is no canonical definition to state claims against.
-/

/-! ## A009173.P14183535266584142115

`A009272(2*n)`
-/

namespace A009173.P14183535266584142115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009272 (2 * n)

end

end A009173.P14183535266584142115

/-!
# A009174: Expansion of e.g.f.: cosh(x)*cos(log(1+x)).

The programs for A009174, there is no canonical definition to state claims against.
-/

/-! ## A009174.P14166125302813791053

`(A009280(n)+A009027(n))/2`
-/

namespace A009174.P14166125302813791053
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009280 n + A009027 n : ℚ) / 2

end

end A009174.P14166125302813791053

/-! ## A009174.P2713679613158627789

`A009618(n)+A009027(n)`
-/

namespace A009174.P2713679613158627789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009618 n + A009027 n

end

end A009174.P2713679613158627789

/-! ## A009174.P754262545460162034

`A009280(n)-A009618(n)`
-/

namespace A009174.P754262545460162034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009280 n - A009618 n

end

end A009174.P754262545460162034

/-! ## A009174.P12688910531341411982

`A009280(n)+A009618(n)*A328310(A033216(n+1))`
-/

namespace A009174.P12688910531341411982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009280 n + A009618 n * A328310 (A033216 (n + 1)).toNat

end

end A009174.P12688910531341411982

/-!
# A009175: Expansion of cosh(x)*cos(sin(x)).

The programs for A009175, there is no canonical definition to state claims against.
-/

/-! ## A009175.P12973944175340680519

`A009045(2*n)`
-/

namespace A009175.P12973944175340680519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009045 (2 * n)

end

end A009175.P12973944175340680519

/-! ## A009175.P5944295513935980874

`A009045(A004277(n))+A000038(n)`
-/

namespace A009175.P5944295513935980874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009045 (A004277 n).toNat + A000038 n

end

end A009175.P5944295513935980874

/-! ## A009175.P4504761054394281390

`and(A009045(A004277(n)), A260196(n))`
-/

namespace A009175.P4504761054394281390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A009045 (A004277 n).toNat) (A260196 n)

end

end A009175.P4504761054394281390

/-! ## A009175.P8754495913214103826

`or(A000007(n), A009045(A005843(n)))`
-/

namespace A009175.P8754495913214103826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A009045 (A005843 n).toNat)

end

end A009175.P8754495913214103826

/-! ## A009175.P7202834693176084715

`A009045(A005843(n))^A007318(C(2, n))`
-/

namespace A009175.P7202834693176084715
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009045 (A005843 n).toNat : ℚ) ^ (A007318 (Nat.choose 2 n) : ℤ)

end

end A009175.P7202834693176084715

/-!
# A009176: Expansion of e.g.f.: cosh(x)*cos(tan(x)).

The programs for A009176, there is no canonical definition to state claims against.
-/

/-! ## A009176.P9409274884666869818

`A009074(2*n)`
-/

namespace A009176.P9409274884666869818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009074 (2 * n)

end

end A009176.P9409274884666869818

/-! ## A009176.P10999140340979678702

`A009074(A004277(n))+A000038(n)`
-/

namespace A009176.P10999140340979678702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009074 (A004277 n).toNat + A000038 n

end

end A009176.P10999140340979678702

/-! ## A009176.P13100134925083130778

`and(A009074(A004277(n)), A024000(n))`
-/

namespace A009176.P13100134925083130778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A009074 (A004277 n).toNat) (A024000 n)

end

end A009176.P13100134925083130778

/-! ## A009176.P18332010305581840406

`and(A009074(A005843(n)), A024000(n))`
-/

namespace A009176.P18332010305581840406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A009074 (A005843 n).toNat) (A024000 n)

end

end A009176.P18332010305581840406

/-! ## A009176.P6230988761237528092

`or(A000007(n), A009074(A005843(n)))`
-/

namespace A009176.P6230988761237528092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A009074 (A005843 n).toNat)

end

end A009176.P6230988761237528092

/-!
# A009177: Numbers that are the hypotenuses of more than one Pythagorean triangle.

The programs for A009177, the canonical program `A009177.P7792570887173754101` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A009177 has offset 1).

The definition of A009177 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3975 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A009177.P7792570887173754101

`lt[1, A046080(n+1)]+1`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A009177

/-- `lt[1, A046080(n+1)]+1` -/
def P7792570887173754101.Spec : Prop :=
  ∀ n, (P7792570887173754101.a n : ℤ) = A009177 (n + 1)

theorem P7792570887173754101.correct : P7792570887173754101.Spec := by
  intro n
  simp only [A009177, Nat.add_sub_cancel]

end A009177

/-! ## A009177.P13796895950548372020

`A065475(lt[1, A046080(n+1)])`
-/

namespace A009177.P13796895950548372020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046080 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A009177.P13796895950548372020

namespace A009177

/-- `A065475(lt[1, A046080(n+1)])` -/
def P13796895950548372020.Spec : Prop :=
  ∀ n, P13796895950548372020.a n = A009177 (n + 1)

end A009177

/-! ## A009177.P8129742654436673679

`lt[2, A063014(n)]`
-/

namespace A009177.P8129742654436673679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063014 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A009177.P8129742654436673679

namespace A009177

/-- `lt[2, A063014(n)]` -/
def P8129742654436673679.Spec : Prop :=
  ∀ n, (P8129742654436673679.a n : ℤ) = A009177 (n + 1)

end A009177

/-! ## A009177.P254942611300511507

`lt[3, A256452(n+1)]+1`
-/

namespace A009177.P254942611300511507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256452 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A009177.P254942611300511507

namespace A009177

/-- `lt[3, A256452(n+1)]+1` -/
def P254942611300511507.Spec : Prop :=
  ∀ n, (P254942611300511507.a n : ℤ) = A009177 (n + 1)

end A009177

/-! ## A009177.P6742834290132513499

`lt[1, A046080(A028310(n))]`
-/

namespace A009177.P6742834290132513499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046080 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A009177.P6742834290132513499

namespace A009177

/-- `lt[1, A046080(A028310(n))]` -/
def P6742834290132513499.Spec : Prop :=
  ∀ n, (P6742834290132513499.a n : ℤ) = A009177 (n + 1)

end A009177

/-! ## A009177.P5943754349773668326

`lt[12, A046109(n)]`
-/

namespace A009177.P5943754349773668326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046109 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A009177.P5943754349773668326

namespace A009177

/-- `lt[12, A046109(n)]` -/
def P5943754349773668326.Spec : Prop :=
  ∀ n, (P5943754349773668326.a n : ℤ) = A009177 (n + 1)

end A009177

/-! ## A009177.P16580765065973153028

`eq[A000007(n), A015885(A046109(n))]`
-/

namespace A009177.P16580765065973153028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015885 (A046109 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A009177.P16580765065973153028

namespace A009177

/-- `eq[A000007(n), A015885(A046109(n))]` -/
def P16580765065973153028.Spec : Prop :=
  ∀ n, (P16580765065973153028.a n : ℤ) = A009177 (n + 1)

end A009177

/-! ## A009177.P6144184450736728338

`record[gcd(A009000(n+7), A009000(n+8))]`
-/

namespace A009177.P6144184450736728338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A009000 (n + 7)) (A009000 (n + 8))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A009177.P6144184450736728338

namespace A009177

/-- `record[gcd(A009000(n+7), A009000(n+8))]` -/
def P6144184450736728338.Spec : Prop :=
  ∀ n, (P6144184450736728338.a n : ℤ) = A009177 (n + 1)

end A009177

/-! ## A009177.P6396809612491173348

`∪[A084646(n+1), A164282(n+1)]`
-/

namespace A009177.P6396809612491173348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084646 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164282 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A009177.P6396809612491173348

namespace A009177

/-- `∪[A084646(n+1), A164282(n+1)]` -/
def P6396809612491173348.Spec : Prop :=
  ∀ n, (P6396809612491173348.a n : ℤ) = A009177 (n + 1)

end A009177

/-! ## A009177.P13484204855103459564

`lt[1, A328712(2*(n+1))]+1`
-/

namespace A009177.P13484204855103459564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328712 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A009177.P13484204855103459564

namespace A009177

/-- `lt[1, A328712(2*(n+1))]+1` -/
def P13484204855103459564.Spec : Prop :=
  ∀ n, (P13484204855103459564.a n : ℤ) = A009177 (n + 1)

end A009177

/-! ## A009177.P18263655516485210815

`lt[1, A328712(A022144(n))]`
-/

namespace A009177.P18263655516485210815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328712 (A022144 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A009177.P18263655516485210815

namespace A009177

/-- `lt[1, A328712(A022144(n))]` -/
def P18263655516485210815.Spec : Prop :=
  ∀ n, (P18263655516485210815.a n : ℤ) = A009177 (n + 1)

end A009177

/-! ## A009177.P17779129558835539737

`eq[1, A278647(A046109(n)²)]`
-/

namespace A009177.P17779129558835539737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278647 (A046109 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A009177.P17779129558835539737

namespace A009177

/-- `eq[1, A278647(A046109(n)²)]` -/
def P17779129558835539737.Spec : Prop :=
  ∀ n, (P17779129558835539737.a n : ℤ) = A009177 (n + 1)

end A009177

/-! ## A009177.P12857936460772189271

`∪[A007692(n+1), A270385(n+1)]`
-/

namespace A009177.P12857936460772189271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007692 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270385 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A009177.P12857936460772189271

namespace A009177

/-- `∪[A007692(n+1), A270385(n+1)]` -/
def P12857936460772189271.Spec : Prop :=
  ∀ n, (P12857936460772189271.a n : ℤ) = A009177 (n + 1)

end A009177

/-! ## A009177.P5405158948635151163

`∪[A118882(n+1), A270385(n+1)]`
-/

namespace A009177.P5405158948635151163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118882 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270385 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A009177.P5405158948635151163

namespace A009177

/-- `∪[A118882(n+1), A270385(n+1)]` -/
def P5405158948635151163.Spec : Prop :=
  ∀ n, (P5405158948635151163.a n : ℤ) = A009177 (n + 1)

end A009177

/-!
# A009178: Expansion of cosh(x)*cosh(log(1+x)).

The programs for A009178, there is no canonical definition to state claims against.
-/

/-! ## A009178.P16080621956911516069

`A093178(n)-A009573(n)`
-/

namespace A009178.P16080621956911516069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 n - A009573 n

end

end A009178.P16080621956911516069

/-! ## A009178.P10690770753869058506

`abs(A009001(n))-A009573(n)`
-/

namespace A009178.P10690770753869058506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A009001 n| - A009573 n

end

end A009178.P10690770753869058506

/-! ## A009178.P15051742781787388565

`A133265(n)-(A009573(n)+1)`
-/

namespace A009178.P15051742781787388565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133265 n - (A009573 n + 1)

end

end A009178.P15051742781787388565

/-! ## A009178.P17713799940751509120

`A023443(A133265(n))-A009573(n)`
-/

namespace A009178.P17713799940751509120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A133265 n).toNat - A009573 n

end

end A009178.P17713799940751509120

/-! ## A009178.P6177207216917012412

`A009573(n)+A009179(n)`
-/

namespace A009178.P6177207216917012412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009573 n + A009179 n

end

end A009178.P6177207216917012412

/-! ## A009178.P10791894992317810337

`A009621(n)+A009132(n)`
-/

namespace A009178.P10791894992317810337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009621 n + A009132 n

end

end A009178.P10791894992317810337

/-!
# A009179: E.g.f. cosh(x)/(1+x).

The programs for A009179, the canonical program `A009179.P18327122780340998552` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A009179 has offset 0).

The definition of A009179 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A009179.P18327122780340998552

`(-1)^n*floor(n!*cosh(1))`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A009179

/-- `(-1)^n*floor(n!*cosh(1))` -/
def P18327122780340998552.Spec : Prop :=
  ∀ n, P18327122780340998552.a n = A009179 n

theorem P18327122780340998552.correct : P18327122780340998552.Spec := by
  intro n
  simp only [A009179]

end A009179

/-! ## A009179.P10989637467108809856

`(1+(-1)^n)/2-n*a(n-1)` with `a(0)=1`
-/

namespace A009179.P10989637467108809856
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (1 + (-1) ^ n : ℚ) / 2 - (n : ℚ) * a (n - 1)

end

end A009179.P10989637467108809856

namespace A009179

/-- `(1+(-1)^n)/2-n*a(n-1)` -/
def P10989637467108809856.Spec : Prop :=
  ∀ n, P10989637467108809856.a n = (A009179 n : ℚ)

end A009179

/-! ## A009179.P9917458189674368457

`or(1, -(n*a(n-1)))` with `a(0)=1`
-/

namespace A009179.P9917458189674368457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor 1 (-((n : ℤ) * a (n - 1)))

end

end A009179.P9917458189674368457

namespace A009179

/-- `or(1, -(n*a(n-1)))` -/
def P9917458189674368457.Spec : Prop :=
  ∀ n, P9917458189674368457.a n = A009179 n

end A009179

/-! ## A009179.P802813501997279082

`or(1, -(a(n-1)/tan(acot(n))))` with `a(0)=1`
-/

namespace A009179.P802813501997279082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor 1 (SequenceMachineLib.roundAway (-((a (n - 1) : ℝ) / Real.tan (SequenceMachineLib.acot (n : ℝ)))))

end

end A009179.P802813501997279082

namespace A009179

/-- `or(1, -(a(n-1)/tan(acot(n))))` -/
def P802813501997279082.Spec : Prop :=
  ∀ n, P802813501997279082.a n = A009179 n

end A009179

/-! ## A009179.P5191502941381886540

`or(1, -(a(n-1)/cot(atan(n))))` with `a(0)=1`
-/

namespace A009179.P5191502941381886540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor 1 (SequenceMachineLib.roundAway (-((a (n - 1) : ℝ) / Real.cot (Real.arctan (n : ℝ)))))

end

end A009179.P5191502941381886540

namespace A009179

/-- `or(1, -(a(n-1)/cot(atan(n))))` -/
def P5191502941381886540.Spec : Prop :=
  ∀ n, P5191502941381886540.a n = A009179 n

end A009179

/-! ## A009179.P808911122113449049

`1-(n%2+n*a(n-1))` with `a(0)=1`
-/

namespace A009179.P808911122113449049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - (((n % 2 : ℕ) : ℤ) + (n : ℤ) * a (n - 1))

end

end A009179.P808911122113449049

namespace A009179

/-- `1-(n%2+n*a(n-1))` -/
def P808911122113449049.Spec : Prop :=
  ∀ n, P808911122113449049.a n = A009179 n

end A009179

/-! ## A009179.P7852386264865199489

`gcd(2, n)-(n*a(n-1)+1)` with `a(0)=1`
-/

namespace A009179.P7852386264865199489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (Nat.gcd 2 n : ℤ) - ((n : ℤ) * a (n - 1) + 1)

end

end A009179.P7852386264865199489

namespace A009179

/-- `gcd(2, n)-(n*a(n-1)+1)` -/
def P7852386264865199489.Spec : Prop :=
  ∀ n, P7852386264865199489.a n = A009179 n

end A009179

/-! ## A009179.P2845106759460796034

`or(1, (n-2*n)*a(n-1))` with `a(0)=1`
-/

namespace A009179.P2845106759460796034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor 1 (((n : ℤ) - (2 * n : ℤ)) * a (n - 1))

end

end A009179.P2845106759460796034

namespace A009179

/-- `or(1, (n-2*n)*a(n-1))` -/
def P2845106759460796034.Spec : Prop :=
  ∀ n, P2845106759460796034.a n = A009179 n

end A009179

/-! ## A009179.P414808325722146590

`floor((n-1)%2-n*a(n-1))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A009179.P414808325722146590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod ((n : ℤ) - 1) 2 - (n : ℤ) * a (n - 1)

end

end A009179.P414808325722146590

namespace A009179

/-- `floor((n-1)%2-n*a(n-1))` -/
def P414808325722146590.Spec : Prop :=
  ∀ n, P414808325722146590.a n = A009179 n

end A009179

/-! ## A009179.P2439109975581211446

`floor(and(1, n+1)-n*a(n-1))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A009179.P2439109975581211446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (Nat.land 1 (n + 1) : ℤ) - (n : ℤ) * a (n - 1)

end

end A009179.P2439109975581211446

namespace A009179

/-- `floor(and(1, n+1)-n*a(n-1))` -/
def P2439109975581211446.Spec : Prop :=
  ∀ n, P2439109975581211446.a n = A009179 n

end A009179

/-!
# A009180: Expansion of cosh(x)/cos(log(1+x)).

The programs for A009180, there is no canonical definition to state claims against.
-/

/-! ## A009180.P9926203845352714664

`A009288(n)-A009629(n)`
-/

namespace A009180.P9926203845352714664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009288 n - A009629 n

end

end A009180.P9926203845352714664

/-! ## A009180.P7621891151136935768

`A009288(n)+A009629(n)*A057428(n)`
-/

namespace A009180.P7621891151136935768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009288 n + A009629 n * A057428 n

end

end A009180.P7621891151136935768

/-! ## A009180.P8384523464650470663

`A009288(n)+A009629(n)*A280193(2*n+1)`
-/

namespace A009180.P8384523464650470663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009288 n + A009629 n * A280193 (2 * n + 1)

end

end A009180.P8384523464650470663

/-! ## A009180.P10298527077708456903

`A009288(n)+A009629(n)*A317939(A001358(n+1))`
-/

namespace A009180.P10298527077708456903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009288 n + A009629 n * A317939 (A001358 (n + 1)).toNat

end

end A009180.P10298527077708456903

/-!
# A009181: Expansion of cosh(x)/cos(sin(x)).

The programs for A009181, there is no canonical definition to state claims against.
-/

/-! ## A009181.P46769566225292192

`A009289(2*n)`
-/

namespace A009181.P46769566225292192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009289 (2 * n)

end

end A009181.P46769566225292192

/-! ## A009181.P987992213600349603

`or(A009289(A005843(n)), A130706(n))`
-/

namespace A009181.P987992213600349603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A009289 (A005843 n).toNat) (A130706 n)

end

end A009181.P987992213600349603

/-! ## A009181.P13112344671743879216

`A009289(A005843(n))+A000007(n+1)`
-/

namespace A009181.P13112344671743879216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009289 (A005843 n).toNat + A000007 (n + 1)

end

end A009181.P13112344671743879216

/-! ## A009181.P18108152059593744326

`A269175(A154576(n+1))+A009289(A005843(n))`
-/

namespace A009181.P18108152059593744326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269175 (A154576 (n + 1)).toNat + A009289 (A005843 n).toNat

end

end A009181.P18108152059593744326

/-! ## A009181.P2446482905805777674

`A009289(A005843(n))%A262715(n)`
-/

namespace A009181.P2446482905805777674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A009289 (A005843 n).toNat) (A262715 n)

end

end A009181.P2446482905805777674

/-!
# A009182: Expansion of cosh(x)/cos(tan(x)).

The programs for A009182, there is no canonical definition to state claims against.
-/

/-! ## A009182.P8771641905908863774

`A009291(2*n)`
-/

namespace A009182.P8771641905908863774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009291 (2 * n)

end

end A009182.P8771641905908863774

/-! ## A009182.P6890071733936888423

`record[A009291(A014681(n))]`
-/

namespace A009182.P6890071733936888423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009291 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A009182.P6890071733936888423

/-! ## A009182.P12629597535369678844

`record[A009291(A029578(n))]`
-/

namespace A009182.P12629597535369678844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009291 (A029578 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A009182.P12629597535369678844

/-! ## A009182.P5379719477684582358

`record[A009291(∑[A097140(n)])]`
-/

namespace A009182.P5379719477684582358
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097140 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009291 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A009182.P5379719477684582358

/-! ## A009182.P17974968251119601308

`record[A009291(A099375(n)-1)]`
-/

namespace A009182.P17974968251119601308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009291 (A099375 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A009182.P17974968251119601308

/-!
# A009183: Expansion of e.g.f.: cosh(x)/cosh(log(1+x)).

The programs for A009183, there is no canonical definition to state claims against.
-/

/-! ## A009183.P17915045864732105186

`A009294(n)-A009632(n)`
-/

namespace A009183.P17915045864732105186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009294 n - A009632 n

end

end A009183.P17915045864732105186

/-!
# A009184: Expansion of e.g.f.: cosh(x)/exp(sin(x)).

The programs for A009184, there is no canonical definition to state claims against.
-/

/-! ## A009184.P7078458000674219937

`(A009622(n)+A009209(n))*(-1)^n`
-/

namespace A009184.P7078458000674219937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A009622 n + A009209 n) * (-1) ^ n

end

end A009184.P7078458000674219937

/-! ## A009184.P14258822304651507205

`A009145(n)+A009622(n)-A009590(n)`
-/

namespace A009184.P14258822304651507205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009145 n + (A009622 n - A009590 n)

end

end A009184.P14258822304651507205

/-! ## A009184.P1473771122700666690

`A009145(n)-A000035(n)*A009209(n)`
-/

namespace A009184.P1473771122700666690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009145 n - A000035 n * A009209 n

end

end A009184.P1473771122700666690

/-! ## A009184.P18208807238879709297

`(A009282(n)-A009622(n))*A033999(n)`
-/

namespace A009184.P18208807238879709297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A009282 n - A009622 n) * A033999 n

end

end A009184.P18208807238879709297

/-!
# A009185: Long leg of more than one Pythagorean triangle.

The programs for A009185, there is no canonical definition to state claims against.
-/

/-! ## A009185.P7272894265174404074

`lt[1, A056137(n+1)]+1`
-/

namespace A009185.P7272894265174404074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056137 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A009185.P7272894265174404074

/-! ## A009185.P1193417033084396193

`record[gcd(A009012(n+3), A009012(n+4))]`
-/

namespace A009185.P1193417033084396193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A009012 (n + 3)) (A009012 (n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A009185.P1193417033084396193

/-! ## A009185.P11957370675551403607

`lt[2, A227481(n)]`
-/

namespace A009185.P11957370675551403607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227481 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A009185.P11957370675551403607

/-! ## A009185.P2686732040928883178

`eq[0, A092673(A227481(n)²)]`
-/

namespace A009185.P2686732040928883178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092673 (A227481 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A009185.P2686732040928883178

/-! ## A009185.P3563501338403415539

`eq[1, A072650(a(A227481(n)))]` with `a(0)=0, a(1)=5, a(2)=7`
-/

namespace A009185.P3563501338403415539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 5, 7] fun n f2 =>
  A072650 (f2 (A227481 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A009185.P3563501338403415539

/-! ## A009185.P2684623035360371334

`eq[1, A227481(a(A227481(n)))]` with `a(0)=0, a(1)=4, a(2)=56`
-/

namespace A009185.P2684623035360371334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 4, 56] fun n f2 =>
  A227481 (f2 (A227481 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A009185.P2684623035360371334

/-! ## A009185.P17747061800444087659

`eq[A000038(n), A094497(A227481(n))]`
-/

namespace A009185.P17747061800444087659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094497 (A227481 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A009185.P17747061800444087659

/-!
# A009186: Expansion of e.g.f.: cosh(x)/exp(tan(x)).

The programs for A009186, there is no canonical definition to state claims against.
-/

/-! ## A009186.P887017536126547633

`A009328(((n+1)/∏{p}[n+1, #^val(n+1, #²)])^((n+1)/∏{p}[n+1, #]))`
-/

namespace A009186.P887017536126547633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009328 (SequenceMachineLib.roundAway (((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2) : ℕ) : ℚ) : ℝ) ^ ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) : ℝ))).toNat

end

end A009186.P887017536126547633

/-! ## A009186.P3928327009006335769

`A009328(A331565(n+1))`
-/

namespace A009186.P3928327009006335769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009328 (A331565 (n + 1)).toNat

end

end A009186.P3928327009006335769

/-! ## A009186.P15829741358276939809

`A009328(A228050(n+1)+1)`
-/

namespace A009186.P15829741358276939809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009328 (A228050 (n + 1) + 1).toNat

end

end A009186.P15829741358276939809

/-!
# A009188: Short leg of more than one Pythagorean triangle.

The programs for A009188, the canonical program `A009188.P3584305010006713789` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A009188 has offset 1).

The definition of A009188 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A264828, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A009188.P3584305010006713789

`A264828(n+3)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A009188

/-- `A264828(n+3)` -/
def P3584305010006713789.Spec : Prop :=
  ∀ n, P3584305010006713789.a n = A009188 (n + 1)

theorem P3584305010006713789.correct : P3584305010006713789.Spec := by
  intro n
  simp only [A009188, Nat.add_sub_cancel]

end A009188

/-! ## A009188.P14756793131649564648

`A254671(n+1)+1`
-/

namespace A009188.P14756793131649564648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254671 (n + 1) + 1

end

end A009188.P14756793131649564648

namespace A009188

/-- `A254671(n+1)+1` -/
def P14756793131649564648.Spec : Prop :=
  ∀ n, P14756793131649564648.a n = A009188 (n + 1)

end A009188

/-! ## A009188.P543025666220225964

`lt[7, A077462(2*n)]`
-/

namespace A009188.P543025666220225964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077462 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A009188.P543025666220225964

namespace A009188

/-- `lt[7, A077462(2*n)]` -/
def P543025666220225964.Spec : Prop :=
  ∀ n, (P543025666220225964.a n : ℤ) = A009188 (n + 1)

end A009188

/-! ## A009188.P13434588317349737012

`lt[1, A318440(n+1)]+1`
-/

namespace A009188.P13434588317349737012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318440 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A009188.P13434588317349737012

namespace A009188

/-- `lt[1, A318440(n+1)]+1` -/
def P13434588317349737012.Spec : Prop :=
  ∀ n, (P13434588317349737012.a n : ℤ) = A009188 (n + 1)

end A009188

/-! ## A009188.P14646983524688097852

`lt[2, A299150(n+1)]+1`
-/

namespace A009188.P14646983524688097852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299150 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A009188.P14646983524688097852

namespace A009188

/-- `lt[2, A299150(n+1)]+1` -/
def P14646983524688097852.Spec : Prop :=
  ∀ n, (P14646983524688097852.a n : ℤ) = A009188 (n + 1)

end A009188

/-! ## A009188.P10782780398294650743

`lt[2, A345933(n+1)]+1`
-/

namespace A009188.P10782780398294650743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345933 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A009188.P10782780398294650743

namespace A009188

/-- `lt[2, A345933(n+1)]+1` -/
def P10782780398294650743.Spec : Prop :=
  ∀ n, (P10782780398294650743.a n : ℤ) = A009188 (n + 1)

end A009188

/-! ## A009188.P15800411813866954373

`lt[5, A329620(n+1)]+1`
-/

namespace A009188.P15800411813866954373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329620 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A009188.P15800411813866954373

namespace A009188

/-- `lt[5, A329620(n+1)]+1` -/
def P15800411813866954373.Spec : Prop :=
  ∀ n, (P15800411813866954373.a n : ℤ) = A009188 (n + 1)

end A009188

/-! ## A009188.P14152970582269692140

`lt[10, A319347(2*(n+1))]+1`
-/

namespace A009188.P14152970582269692140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319347 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A009188.P14152970582269692140

namespace A009188

/-- `lt[10, A319347(2*(n+1))]+1` -/
def P14152970582269692140.Spec : Prop :=
  ∀ n, (P14152970582269692140.a n : ℤ) = A009188 (n + 1)

end A009188

/-! ## A009188.P14664461816533693296

`lt[4, A000005((n+1)*gcd(2, n))]+1`
-/

namespace A009188.P14664461816533693296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((n + 1) * Nat.gcd 2 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A009188.P14664461816533693296

namespace A009188

/-- `lt[4, A000005((n+1)*gcd(2, n))]+1` -/
def P14664461816533693296.Spec : Prop :=
  ∀ n, (P14664461816533693296.a n : ℤ) = A009188 (n + 1)

end A009188

/-! ## A009188.P4982820700311815317

`∪[A061743(n+1), A001534(n)]+1`
-/

namespace A009188.P4982820700311815317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061743 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001534 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A009188.P4982820700311815317

namespace A009188

/-- `∪[A061743(n+1), A001534(n)]+1` -/
def P4982820700311815317.Spec : Prop :=
  ∀ n, (P4982820700311815317.a n : ℤ) = A009188 (n + 1)

end A009188

/-! ## A009188.P10353889070778323223

`∪[A061743(n+1), A001547(n)]+1`
-/

namespace A009188.P10353889070778323223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061743 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001547 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A009188.P10353889070778323223

namespace A009188

/-- `∪[A061743(n+1), A001547(n)]+1` -/
def P10353889070778323223.Spec : Prop :=
  ∀ n, (P10353889070778323223.a n : ℤ) = A009188 (n + 1)

end A009188

/-! ## A009188.P7134495884877643517

`∪[A007624(n+1), A058957(n+1)]`
-/

namespace A009188.P7134495884877643517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007624 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058957 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A009188.P7134495884877643517

namespace A009188

/-- `∪[A007624(n+1), A058957(n+1)]` -/
def P7134495884877643517.Spec : Prop :=
  ∀ n, (P7134495884877643517.a n : ℤ) = A009188 (n + 1)

end A009188

/-! ## A009188.P5787399618023338001

`∪[A061743(n+1), A016791(n)]+1`
-/

namespace A009188.P5787399618023338001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061743 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016791 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A009188.P5787399618023338001

namespace A009188

/-- `∪[A061743(n+1), A016791(n)]+1` -/
def P5787399618023338001.Spec : Prop :=
  ∀ n, (P5787399618023338001.a n : ℤ) = A009188 (n + 1)

end A009188

/-! ## A009188.P10498963466033419794

`∪[A061743(n+1), A016827(n)]+1`
-/

namespace A009188.P10498963466033419794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061743 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016827 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A009188.P10498963466033419794

namespace A009188

/-- `∪[A061743(n+1), A016827(n)]+1` -/
def P10498963466033419794.Spec : Prop :=
  ∀ n, (P10498963466033419794.a n : ℤ) = A009188 (n + 1)

end A009188

/-! ## A009188.P15262923352275398845

`∪[A061743(n+1), A016875(n)]+1`
-/

namespace A009188.P15262923352275398845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061743 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016875 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A009188.P15262923352275398845

namespace A009188

/-- `∪[A061743(n+1), A016875(n)]+1` -/
def P15262923352275398845.Spec : Prop :=
  ∀ n, (P15262923352275398845.a n : ℤ) = A009188 (n + 1)

end A009188

/-! ## A009188.P18065568554065548996

`∪[A061743(n+1), A016935(n)]+1`
-/

namespace A009188.P18065568554065548996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061743 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016935 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A009188.P18065568554065548996

namespace A009188

/-- `∪[A061743(n+1), A016935(n)]+1` -/
def P18065568554065548996.Spec : Prop :=
  ∀ n, (P18065568554065548996.a n : ℤ) = A009188 (n + 1)

end A009188

/-! ## A009188.P4848935788591479547

`∪[A061743(n+1), A017007(n)]+1`
-/

namespace A009188.P4848935788591479547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061743 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017007 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A009188.P4848935788591479547

namespace A009188

/-- `∪[A061743(n+1), A017007(n)]+1` -/
def P4848935788591479547.Spec : Prop :=
  ∀ n, (P4848935788591479547.a n : ℤ) = A009188 (n + 1)

end A009188

/-! ## A009188.P15567461932073595376

`∪[A061743(n+1), A017091(n)]+1`
-/

namespace A009188.P15567461932073595376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061743 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017091 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A009188.P15567461932073595376

namespace A009188

/-- `∪[A061743(n+1), A017091(n)]+1` -/
def P15567461932073595376.Spec : Prop :=
  ∀ n, (P15567461932073595376.a n : ℤ) = A009188 (n + 1)

end A009188

/-! ## A009188.P8550812889624619731

`∪[A061743(n+1), A017187(n)]+1`
-/

namespace A009188.P8550812889624619731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061743 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017187 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A009188.P8550812889624619731

namespace A009188

/-- `∪[A061743(n+1), A017187(n)]+1` -/
def P8550812889624619731.Spec : Prop :=
  ∀ n, (P8550812889624619731.a n : ℤ) = A009188 (n + 1)

end A009188

/-! ## A009188.P12272763220892910047

`∪[A061743(n+1), A017257(n)]+1`
-/

namespace A009188.P12272763220892910047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061743 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017257 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A009188.P12272763220892910047

namespace A009188

/-- `∪[A061743(n+1), A017257(n)]+1` -/
def P12272763220892910047.Spec : Prop :=
  ∀ n, (P12272763220892910047.a n : ℤ) = A009188 (n + 1)

end A009188

/-!
# A009191: a(n) = gcd(n, d(n)), where d(n) is the number of divisors of n (A000005).

The programs for A009191, the canonical program `A009191.P6662661648928745988` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A009191 has offset 1).

The definition of A009191 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A009191.P6662661648928745988

`gcd(n+1, A000005(n+1))`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A009191

/-- `gcd(n+1, A000005(n+1))` -/
def P6662661648928745988.Spec : Prop :=
  ∀ n, (P6662661648928745988.a n : ℤ) = A009191 (n + 1)

theorem P6662661648928745988.correct : P6662661648928745988.Spec := by
  intro n
  simp only [A009191, Nat.add_sub_cancel]

end A009191

/-! ## A009191.P7308489875716519593

`A303781(n+1)+char[1]`
-/

namespace A009191.P7308489875716519593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303781 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A009191.P7308489875716519593

namespace A009191

/-- `A303781(n+1)+char[1]` -/
def P7308489875716519593.Spec : Prop :=
  ∀ n, P7308489875716519593.a n = A009191 (n + 1)

end A009191

/-! ## A009191.P13228214948490398716

`gcd(n+1, Δ[A006218(n)])`
-/

namespace A009191.P13228214948490398716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (f1 (n + 1) - f1 n)

end

end A009191.P13228214948490398716

namespace A009191

/-- `gcd(n+1, Δ[A006218(n)])` -/
def P13228214948490398716.Spec : Prop :=
  ∀ n, (P13228214948490398716.a n : ℤ) = A009191 (n + 1)

end A009191

/-! ## A009191.P2939402778776826356

`(n+1)/A090395(n+1)`
-/

namespace A009191.P2939402778776826356
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A090395 (n + 1) : ℚ)

end

end A009191.P2939402778776826356

namespace A009191

/-- `(n+1)/A090395(n+1)` -/
def P2939402778776826356.Spec : Prop :=
  ∀ n, P2939402778776826356.a n = (A009191 (n + 1) : ℚ)

end A009191

/-! ## A009191.P9857440604164159928

`gcd(n²+n, A306671(n+1))`
-/

namespace A009191.P9857440604164159928
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n ^ 2 + n : ℤ) (A306671 (n + 1))

end

end A009191.P9857440604164159928

namespace A009191

/-- `gcd(n²+n, A306671(n+1))` -/
def P9857440604164159928.Spec : Prop :=
  ∀ n, (P9857440604164159928.a n : ℤ) = A009191 (n + 1)

end A009191

/-! ## A009191.P9107482303465510764

`A303781(n+1)*A373565(n)`
-/

namespace A009191.P9107482303465510764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303781 (n + 1) * A373565 n

end

end A009191.P9107482303465510764

namespace A009191

/-- `A303781(n+1)*A373565(n)` -/
def P9107482303465510764.Spec : Prop :=
  ∀ n, P9107482303465510764.a n = A009191 (n + 1)

end A009191

/-! ## A009191.P1574435833122300398

`gcd(A000005(n+1), A131738(n))`
-/

namespace A009191.P1574435833122300398
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000005 (n + 1)) (A131738 n)

end

end A009191.P1574435833122300398

namespace A009191

/-- `gcd(A000005(n+1), A131738(n))` -/
def P1574435833122300398.Spec : Prop :=
  ∀ n, (P1574435833122300398.a n : ℤ) = A009191 (n + 1)

end A009191

/-! ## A009191.P14107699999352308096

`gcd(A011379(n), A345741(n+1))`
-/

namespace A009191.P14107699999352308096
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A011379 n) (A345741 (n + 1))

end

end A009191.P14107699999352308096

namespace A009191

/-- `gcd(A011379(n), A345741(n+1))` -/
def P14107699999352308096.Spec : Prop :=
  ∀ n, (P14107699999352308096.a n : ℤ) = A009191 (n + 1)

end A009191

/-! ## A009191.P6119068373894402593

`lcm(A062557(n), A303781(n+1))`
-/

namespace A009191.P6119068373894402593
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A062557 n) (A303781 (n + 1))

end

end A009191.P6119068373894402593

namespace A009191

/-- `lcm(A062557(n), A303781(n+1))` -/
def P6119068373894402593.Spec : Prop :=
  ∀ n, (P6119068373894402593.a n : ℤ) = A009191 (n + 1)

end A009191

/-! ## A009191.P3228460483597922192

`gcd(Δ[A054519(n)], A000027(n+1))`
-/

namespace A009191.P3228460483597922192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A000027 (n + 1))

end

end A009191.P3228460483597922192

namespace A009191

/-- `gcd(Δ[A054519(n)], A000027(n+1))` -/
def P3228460483597922192.Spec : Prop :=
  ∀ n, (P3228460483597922192.a n : ℤ) = A009191 (n + 1)

end A009191

/-! ## A009191.P14998556527505175529

`(A063524(n)+1)*A303781(n+1)`
-/

namespace A009191.P14998556527505175529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A063524 n + 1) * A303781 (n + 1)

end

end A009191.P14998556527505175529

namespace A009191

/-- `(A063524(n)+1)*A303781(n+1)` -/
def P14998556527505175529.Spec : Prop :=
  ∀ n, P14998556527505175529.a n = A009191 (n + 1)

end A009191

/-! ## A009191.P11271327897199170316

`A038040(n+1)/A009230(n+1)`
-/

namespace A009191.P11271327897199170316
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038040 (n + 1) : ℚ) / (A009230 (n + 1) : ℚ)

end

end A009191.P11271327897199170316

namespace A009191

/-- `A038040(n+1)/A009230(n+1)` -/
def P11271327897199170316.Spec : Prop :=
  ∀ n, P11271327897199170316.a n = (A009191 (n + 1) : ℚ)

end A009191

/-! ## A009191.P6973405205099111558

`A000005(n+1)/A090387(n+1)`
-/

namespace A009191.P6973405205099111558
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) : ℚ) / (A090387 (n + 1) : ℚ)

end

end A009191.P6973405205099111558

namespace A009191

/-- `A000005(n+1)/A090387(n+1)` -/
def P6973405205099111558.Spec : Prop :=
  ∀ n, P6973405205099111558.a n = (A009191 (n + 1) : ℚ)

end A009191

/-! ## A009191.P8375421859896339932

`A009230(n+1)/A378930(n+1)`
-/

namespace A009191.P8375421859896339932
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009230 (n + 1) : ℚ) / (A378930 (n + 1) : ℚ)

end

end A009191.P8375421859896339932

namespace A009191

/-- `A009230(n+1)/A378930(n+1)` -/
def P8375421859896339932.Spec : Prop :=
  ∀ n, P8375421859896339932.a n = (A009191 (n + 1) : ℚ)

end A009191

/-! ## A009191.P12501383242915163199

`gcd(A009230(n+1), A049820(n+1))`
-/

namespace A009191.P12501383242915163199
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A009230 (n + 1)) (A049820 (n + 1))

end

end A009191.P12501383242915163199

namespace A009191

/-- `gcd(A009230(n+1), A049820(n+1))` -/
def P12501383242915163199.Spec : Prop :=
  ∀ n, (P12501383242915163199.a n : ℤ) = A009191 (n + 1)

end A009191

/-! ## A009191.P18329856076478984070

`gcd(A061019(n+1), A125518(n+1))`
-/

namespace A009191.P18329856076478984070
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A061019 (n + 1)) (A125518 (n + 1))

end

end A009191.P18329856076478984070

namespace A009191

/-- `gcd(A061019(n+1), A125518(n+1))` -/
def P18329856076478984070.Spec : Prop :=
  ∀ n, (P18329856076478984070.a n : ℤ) = A009191 (n + 1)

end A009191

/-! ## A009191.P1144724725538543510

`gcd(A033286(n+1), A286002(n+1))`
-/

namespace A009191.P1144724725538543510
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A033286 (n + 1)) (A286002 (n + 1))

end

end A009191.P1144724725538543510

namespace A009191

/-- `gcd(A033286(n+1), A286002(n+1))` -/
def P1144724725538543510.Spec : Prop :=
  ∀ n, (P1144724725538543510.a n : ℤ) = A009191 (n + 1)

end A009191

/-! ## A009191.P12210941451550581881

`gcd(n*A286002(n+1), A064505(n+1))`
-/

namespace A009191.P12210941451550581881
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n : ℤ) * A286002 (n + 1)) (A064505 (n + 1))

end

end A009191.P12210941451550581881

namespace A009191

/-- `gcd(n*A286002(n+1), A064505(n+1))` -/
def P12210941451550581881.Spec : Prop :=
  ∀ n, (P12210941451550581881.a n : ℤ) = A009191 (n + 1)

end A009191

/-! ## A009191.P15645314680293323049

`∑{d}[n+1, A008683(#)*A322979((n+1)/#)]`
-/

namespace A009191.P15645314680293323049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A322979 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A009191.P15645314680293323049

namespace A009191

/-- `∑{d}[n+1, A008683(#)*A322979((n+1)/#)]` -/
def P15645314680293323049.Spec : Prop :=
  ∀ n, P15645314680293323049.a n = A009191 (n + 1)

end A009191

/-! ## A009191.P9278193379802540012

`A002260(A286591(n+1))`
-/

namespace A009191.P9278193379802540012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A286591 (n + 1)).toNat

end

end A009191.P9278193379802540012

namespace A009191

/-- `A002260(A286591(n+1))` -/
def P9278193379802540012.Spec : Prop :=
  ∀ n, P9278193379802540012.a n = A009191 (n + 1)

end A009191

/-!
# A009192: E.g.f. exp(log(1+x)*cos(x)).

The programs for A009192, there is no canonical definition to state claims against.
-/

/-! ## A009192.P8121422761194478757

`A009579(n)+A009133(n)`
-/

namespace A009192.P8121422761194478757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009579 n + A009133 n

end

end A009192.P8121422761194478757

/-!
# A009193: Expansion of e.g.f.: exp(log(1+x)*cosh(x)).

The programs for A009193, there is no canonical definition to state claims against.
-/

/-! ## A009193.P17764943529968284972

`A009580(n)+A009134(n)`
-/

namespace A009193.P17764943529968284972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009580 n + A009134 n

end

end A009193.P17764943529968284972

/-! ## A009193.P4507246841461275714

`xor(A000837(n), A247498(A087640(n)))`
-/

namespace A009193.P4507246841461275714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000837 n) (A247498 (A087640 n).toNat)

end

end A009193.P4507246841461275714

/-!
# A009194: a(n) = gcd(n, sigma(n)).

The programs for A009194, the canonical program `A009194.P14144043731484759061` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A009194 has offset 1).

The definition of A009194 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(n+1, A000203(n+1))` (program `A009194.P14144043731484759061`, by `A009194.P14144043731484759061.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A009194.P8274270202395757303

`(n+1)/A017666(n+1)`
-/

namespace A009194.P8274270202395757303
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A017666 (n + 1) : ℚ)

end

end A009194.P8274270202395757303

namespace A009194

/-- `(n+1)/A017666(n+1)` -/
def P8274270202395757303.Spec : Prop :=
  ∀ n, P8274270202395757303.a n = (A009194 (n + 1) : ℚ)

end A009194

/-! ## A009194.P14144043731484759061

`gcd(n+1, A000203(n+1))`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A009194

/-- `gcd(n+1, A000203(n+1))` -/
def P14144043731484759061.Spec : Prop :=
  ∀ n, (P14144043731484759061.a n : ℤ) = A009194 (n + 1)

theorem P14144043731484759061.correct : P14144043731484759061.Spec := by
  intro n
  simp only [A009194, Nat.add_sub_cancel]

end A009194

/-! ## A009194.P6593566903416780004

`gcd(n+1, Δ[A160664(n)])`
-/

namespace A009194.P6593566903416780004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (f1 (n + 1) - f1 n)

end

end A009194.P6593566903416780004

namespace A009194

/-- `gcd(n+1, Δ[A160664(n)])` -/
def P6593566903416780004.Spec : Prop :=
  ∀ n, (P6593566903416780004.a n : ℤ) = A009194 (n + 1)

end A009194

/-! ## A009194.P15759090815699661165

`n%A325636(n+1)+1`
-/

namespace A009194.P15759090815699661165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A325636 (n + 1)) + 1

end

end A009194.P15759090815699661165

namespace A009194

/-- `n%A325636(n+1)+1` -/
def P15759090815699661165.Spec : Prop :=
  ∀ n, P15759090815699661165.a n = A009194 (n + 1)

end A009194

/-! ## A009194.P10072067855761281634

`gcd(n²+n, A306682(n+1))`
-/

namespace A009194.P10072067855761281634
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n ^ 2 + n : ℤ) (A306682 (n + 1))

end

end A009194.P10072067855761281634

namespace A009194

/-- `gcd(n²+n, A306682(n+1))` -/
def P10072067855761281634.Spec : Prop :=
  ∀ n, (P10072067855761281634.a n : ℤ) = A009194 (n + 1)

end A009194

/-! ## A009194.P6888951496189932827

`gcd(2*n+1-n, A155085(n+1))`
-/

namespace A009194.P6888951496189932827
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((2 * n + 1 : ℤ) - (n : ℤ)) (A155085 (n + 1))

end

end A009194.P6888951496189932827

namespace A009194

/-- `gcd(2*n+1-n, A155085(n+1))` -/
def P6888951496189932827.Spec : Prop :=
  ∀ n, (P6888951496189932827.a n : ℤ) = A009194 (n + 1)

end A009194

/-! ## A009194.P12289808579535647442

`gcd(A000203(n+1), A131738(n))`
-/

namespace A009194.P12289808579535647442
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000203 (n + 1)) (A131738 n)

end

end A009194.P12289808579535647442

namespace A009194

/-- `gcd(A000203(n+1), A131738(n))` -/
def P12289808579535647442.Spec : Prop :=
  ∀ n, (P12289808579535647442.a n : ℤ) = A009194 (n + 1)

end A009194

/-! ## A009194.P640397172793718520

`gcd(A033879(n+1), A153152(n))`
-/

namespace A009194.P640397172793718520
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A033879 (n + 1)) (A153152 n)

end

end A009194.P640397172793718520

namespace A009194

/-- `gcd(A033879(n+1), A153152(n))` -/
def P640397172793718520.Spec : Prop :=
  ∀ n, (P640397172793718520.a n : ℤ) = A009194 (n + 1)

end A009194

/-! ## A009194.P17484661935433215506

`gcd(A071262(n), A173455(n+1))`
-/

namespace A009194.P17484661935433215506
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A071262 n) (A173455 (n + 1))

end

end A009194.P17484661935433215506

namespace A009194

/-- `gcd(A071262(n), A173455(n+1))` -/
def P17484661935433215506.Spec : Prop :=
  ∀ n, (P17484661935433215506.a n : ℤ) = A009194 (n + 1)

end A009194

/-! ## A009194.P11583630599059975438

`gcd(A085926(n), A186170(n+1))`
-/

namespace A009194.P11583630599059975438
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A085926 n) (A186170 (n + 1))

end

end A009194.P11583630599059975438

namespace A009194

/-- `gcd(A085926(n), A186170(n+1))` -/
def P11583630599059975438.Spec : Prop :=
  ∀ n, (P11583630599059975438.a n : ℤ) = A009194 (n + 1)

end A009194

/-! ## A009194.P12072709081619143814

`gcd(A079588(n), A325636(n+1))`
-/

namespace A009194.P12072709081619143814
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A079588 n) (A325636 (n + 1))

end

end A009194.P12072709081619143814

namespace A009194

/-- `gcd(A079588(n), A325636(n+1))` -/
def P12072709081619143814.Spec : Prop :=
  ∀ n, (P12072709081619143814.a n : ℤ) = A009194 (n + 1)

end A009194

/-! ## A009194.P7104777647493460580

`A000203(n+1)/A017665(n+1)`
-/

namespace A009194.P7104777647493460580
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A017665 (n + 1) : ℚ)

end

end A009194.P7104777647493460580

namespace A009194

/-- `A000203(n+1)/A017665(n+1)` -/
def P7104777647493460580.Spec : Prop :=
  ∀ n, P7104777647493460580.a n = (A009194 (n + 1) : ℚ)

end A009194

/-! ## A009194.P7304256831209753721

`A064987(n+1)/A009242(n+1)`
-/

namespace A009194.P7304256831209753721
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064987 (n + 1) : ℚ) / (A009242 (n + 1) : ℚ)

end

end A009194.P7304256831209753721

namespace A009194

/-- `A064987(n+1)/A009242(n+1)` -/
def P7304256831209753721.Spec : Prop :=
  ∀ n, P7304256831209753721.a n = (A009194 (n + 1) : ℚ)

end A009194

/-! ## A009194.P11503803808454558807

`A009242(n+1)/A249670(n+1)`
-/

namespace A009194.P11503803808454558807
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009242 (n + 1) : ℚ) / (A249670 (n + 1) : ℚ)

end

end A009194.P11503803808454558807

namespace A009194

/-- `A009242(n+1)/A249670(n+1)` -/
def P11503803808454558807.Spec : Prop :=
  ∀ n, P11503803808454558807.a n = (A009194 (n + 1) : ℚ)

end A009194

/-! ## A009194.P11975127118605215186

`A388270(n+1)/A000005(n+1)`
-/

namespace A009194.P11975127118605215186
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A388270 (n + 1) : ℚ) / (A000005 (n + 1) : ℚ)

end

end A009194.P11975127118605215186

namespace A009194

/-- `A388270(n+1)/A000005(n+1)` -/
def P11975127118605215186.Spec : Prop :=
  ∀ n, P11975127118605215186.a n = (A009194 (n + 1) : ℚ)

end A009194

/-! ## A009194.P15906324421143333036

`gcd(A000027(n+1), A001065(n+1))`
-/

namespace A009194.P15906324421143333036
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (n + 1)) (A001065 (n + 1))

end

end A009194.P15906324421143333036

namespace A009194

/-- `gcd(A000027(n+1), A001065(n+1))` -/
def P15906324421143333036.Spec : Prop :=
  ∀ n, (P15906324421143333036.a n : ℤ) = A009194 (n + 1)

end A009194

/-! ## A009194.P11984942627222927448

`gcd(A014684(n+1), A033885(n+1))`
-/

namespace A009194.P11984942627222927448
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A014684 (n + 1)) (A033885 (n + 1))

end

end A009194.P11984942627222927448

namespace A009194

/-- `gcd(A014684(n+1), A033885(n+1))` -/
def P11984942627222927448.Spec : Prop :=
  ∀ n, (P11984942627222927448.a n : ℤ) = A009194 (n + 1)

end A009194

/-! ## A009194.P13249908281194946043

`gcd(A014683(n+1), A054024(n+1))`
-/

namespace A009194.P13249908281194946043
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A014683 (n + 1)) (A054024 (n + 1))

end

end A009194.P13249908281194946043

namespace A009194

/-- `gcd(A014683(n+1), A054024(n+1))` -/
def P13249908281194946043.Spec : Prop :=
  ∀ n, (P13249908281194946043.a n : ℤ) = A009194 (n + 1)

end A009194

/-! ## A009194.P16418245872723785235

`gcd(A014685(n+1), A082901(n+1))`
-/

namespace A009194.P16418245872723785235
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A014685 (n + 1)) (A082901 (n + 1))

end

end A009194.P16418245872723785235

namespace A009194

/-- `gcd(A014685(n+1), A082901(n+1))` -/
def P16418245872723785235.Spec : Prop :=
  ∀ n, (P16418245872723785235.a n : ℤ) = A009194 (n + 1)

end A009194

/-!
# A009195: a(n) = gcd(n, phi(n)).

The programs for A009195, the canonical program `A009195.P8643188117801140969` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A009195 has offset 1).

The definition of A009195 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A009195.P16188757937244872995

`(n+1)/A109395(n+1)`
-/

namespace A009195.P16188757937244872995
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A109395 (n + 1) : ℚ)

end

end A009195.P16188757937244872995

namespace A009195

/-- `(n+1)/A109395(n+1)` -/
def P16188757937244872995.Spec : Prop :=
  ∀ n, P16188757937244872995.a n = (A009195 (n + 1) : ℚ)

end A009195

/-! ## A009195.P8643188117801140969

`gcd(n+1, A000010(n+1))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A009195

/-- `gcd(n+1, A000010(n+1))` -/
def P8643188117801140969.Spec : Prop :=
  ∀ n, (P8643188117801140969.a n : ℤ) = A009195 (n + 1)

theorem P8643188117801140969.correct : P8643188117801140969.Spec := by
  intro n
  simp only [A009195, Nat.add_sub_cancel]

end A009195

/-! ## A009195.P5129670038266114739

`gcd(n+1, Δ[A002088(n)])`
-/

namespace A009195.P5129670038266114739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (f1 (n + 1) - f1 n)

end

end A009195.P5129670038266114739

namespace A009195

/-- `gcd(n+1, Δ[A002088(n)])` -/
def P5129670038266114739.Spec : Prop :=
  ∀ n, (P5129670038266114739.a n : ℤ) = A009195 (n + 1)

end A009195

/-! ## A009195.P7632255926838203142

`(n+1)²/A050399(n+1)`
-/

namespace A009195.P7632255926838203142
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) / (A050399 (n + 1) : ℚ)

end

end A009195.P7632255926838203142

namespace A009195

/-- `(n+1)²/A050399(n+1)` -/
def P7632255926838203142.Spec : Prop :=
  ∀ n, P7632255926838203142.a n = (A009195 (n + 1) : ℚ)

end A009195

/-! ## A009195.P16478649395487830702

`gcd(n²+n, A072994(n+1))`
-/

namespace A009195.P16478649395487830702
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n ^ 2 + n : ℤ) (A072994 (n + 1))

end

end A009195.P16478649395487830702

namespace A009195

/-- `gcd(n²+n, A072994(n+1))` -/
def P16478649395487830702.Spec : Prop :=
  ∀ n, (P16478649395487830702.a n : ℤ) = A009195 (n + 1)

end A009195

/-! ## A009195.P8629031218072834354

`(n+1)/(n+1-A331176(n+1))`
-/

namespace A009195.P8629031218072834354
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((n + 1 : ℤ) - A331176 (n + 1) : ℚ)

end

end A009195.P8629031218072834354

namespace A009195

/-- `(n+1)/(n+1-A331176(n+1))` -/
def P8629031218072834354.Spec : Prop :=
  ∀ n, P8629031218072834354.a n = (A009195 (n + 1) : ℚ)

end A009195

/-! ## A009195.P12052599324048176962

`gcd(A000010(n+1), A131738(n))`
-/

namespace A009195.P12052599324048176962
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000010 (n + 1)) (A131738 n)

end

end A009195.P12052599324048176962

namespace A009195

/-- `gcd(A000010(n+1), A131738(n))` -/
def P12052599324048176962.Spec : Prop :=
  ∀ n, (P12052599324048176962.a n : ℤ) = A009195 (n + 1)

end A009195

/-! ## A009195.P8927369979819393872

`gcd(A053196(n+1), A153152(n))`
-/

namespace A009195.P8927369979819393872
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A053196 (n + 1)) (A153152 n)

end

end A009195.P8927369979819393872

namespace A009195

/-- `gcd(A053196(n+1), A153152(n))` -/
def P8927369979819393872.Spec : Prop :=
  ∀ n, (P8927369979819393872.a n : ℤ) = A009195 (n + 1)

end A009195

/-! ## A009195.P15824134899046023059

`gcd(A071262(n), A160595(n+1))`
-/

namespace A009195.P15824134899046023059
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A071262 n) (A160595 (n + 1))

end

end A009195.P15824134899046023059

namespace A009195

/-- `gcd(A071262(n), A160595(n+1))` -/
def P15824134899046023059.Spec : Prop :=
  ∀ n, (P15824134899046023059.a n : ℤ) = A009195 (n + 1)

end A009195

/-! ## A009195.P12413466716263528724

`gcd(A085926(n), A247074(n+1))`
-/

namespace A009195.P12413466716263528724
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A085926 n) (A247074 (n + 1))

end

end A009195.P12413466716263528724

namespace A009195

/-- `gcd(A085926(n), A247074(n+1))` -/
def P12413466716263528724.Spec : Prop :=
  ∀ n, (P12413466716263528724.a n : ℤ) = A009195 (n + 1)

end A009195

/-! ## A009195.P16576461862880544020

`gcd(A011379(n), A345891(n+1))`
-/

namespace A009195.P16576461862880544020
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A011379 n) (A345891 (n + 1))

end

end A009195.P16576461862880544020

namespace A009195

/-- `gcd(A011379(n), A345891(n+1))` -/
def P16576461862880544020.Spec : Prop :=
  ∀ n, (P16576461862880544020.a n : ℤ) = A009195 (n + 1)

end A009195

/-! ## A009195.P6936371666602990711

`gcd(A101362(n), A345892(n+1))`
-/

namespace A009195.P6936371666602990711
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A101362 n) (A345892 (n + 1))

end

end A009195.P6936371666602990711

namespace A009195

/-- `gcd(A101362(n), A345892(n+1))` -/
def P6936371666602990711.Spec : Prop :=
  ∀ n, (P6936371666602990711.a n : ℤ) = A009195 (n + 1)

end A009195

/-! ## A009195.P1129548141777987081

`Δ[A002088(n)]/A076512(n+1)`
-/

namespace A009195.P1129548141777987081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A076512 (n + 1) : ℚ)

end

end A009195.P1129548141777987081

namespace A009195

/-- `Δ[A002088(n)]/A076512(n+1)` -/
def P1129548141777987081.Spec : Prop :=
  ∀ n, P1129548141777987081.a n = (A009195 (n + 1) : ℚ)

end A009195

/-! ## A009195.P9189523760555311359

`A002618(n+1)/A009262(n+1)`
-/

namespace A009195.P9189523760555311359
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002618 (n + 1) : ℚ) / (A009262 (n + 1) : ℚ)

end

end A009195.P9189523760555311359

namespace A009195

/-- `A002618(n+1)/A009262(n+1)` -/
def P9189523760555311359.Spec : Prop :=
  ∀ n, P9189523760555311359.a n = (A009195 (n + 1) : ℚ)

end A009195

/-! ## A009195.P4074234406891498351

`A000010(n+1)/A076512(n+1)`
-/

namespace A009195.P4074234406891498351
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A076512 (n + 1) : ℚ)

end

end A009195.P4074234406891498351

namespace A009195

/-- `A000010(n+1)/A076512(n+1)` -/
def P4074234406891498351.Spec : Prop :=
  ∀ n, P4074234406891498351.a n = (A009195 (n + 1) : ℚ)

end A009195

/-! ## A009195.P13799769696873757395

`A121048(n+1)/A107473(n+1)`
-/

namespace A009195.P13799769696873757395
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121048 (n + 1) : ℚ) / (A107473 (n + 1) : ℚ)

end

end A009195.P13799769696873757395

namespace A009195

/-- `A121048(n+1)/A107473(n+1)` -/
def P13799769696873757395.Spec : Prop :=
  ∀ n, P13799769696873757395.a n = (A009195 (n + 1) : ℚ)

end A009195

/-! ## A009195.P18133913454560201898

`(n+1)/A294650(A007947(n+1))`
-/

namespace A009195.P18133913454560201898
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A294650 (A007947 (n + 1)).toNat : ℚ)

end

end A009195.P18133913454560201898

namespace A009195

/-- `(n+1)/A294650(A007947(n+1))` -/
def P18133913454560201898.Spec : Prop :=
  ∀ n, P18133913454560201898.a n = (A009195 (n + 1) : ℚ)

end A009195

/-! ## A009195.P7145905339182495425

`(n+1)/A225680(A322590(n+1))`
-/

namespace A009195.P7145905339182495425
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A225680 (A322590 (n + 1)).toNat : ℚ)

end

end A009195.P7145905339182495425

namespace A009195

/-- `(n+1)/A225680(A322590(n+1))` -/
def P7145905339182495425.Spec : Prop :=
  ∀ n, P7145905339182495425.a n = (A009195 (n + 1) : ℚ)

end A009195

/-! ## A009195.P10818168887597374124

`gcd(A002246(n+1), A048671(n+1))`
-/

namespace A009195.P10818168887597374124
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002246 (n + 1)) (A048671 (n + 1))

end

end A009195.P10818168887597374124

namespace A009195

/-- `gcd(A002246(n+1), A048671(n+1))` -/
def P10818168887597374124.Spec : Prop :=
  ∀ n, (P10818168887597374124.a n : ℤ) = A009195 (n + 1)

end A009195

/-!
# A009196: Expansion of e.g.f. exp(log(1+x)/cos(x)).

The programs for A009196, there is no canonical definition to state claims against.
-/

/-! ## A009196.P14522646071317009386

`A009582(n)+A009137(n)`
-/

namespace A009196.P14522646071317009386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009582 n + A009137 n

end

end A009196.P14522646071317009386

/-! ## A009196.P6133627884761292655

`3*A292200(a(n-1)+1)` with `a(0)=1, a(1)=1, a(2)=0`
-/

namespace A009196.P6133627884761292655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 0] fun n a =>
  3 * A292200 (a (n - 1) + 1).toNat

end

end A009196.P6133627884761292655

/-! ## A009196.P15073396443800196618

`A382343(A360569(n+1))`
-/

namespace A009196.P15073396443800196618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382343 (A360569 (n + 1)).toNat

end

end A009196.P15073396443800196618

/-!
# A009197: Expansion of exp(log(1+x)/cosh(x)).

The programs for A009197, there is no canonical definition to state claims against.
-/

/-! ## A009197.P9693221510868014219

`A009583(n)+A009138(n)`
-/

namespace A009197.P9693221510868014219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009583 n + A009138 n

end

end A009197.P9693221510868014219

/-! ## A009197.P9030106722831962414

`A129334(A008816(∑[n]+1))+A009583(n)`
-/

namespace A009197.P9030106722831962414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129334 (A008816 (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat + A009583 n

end

end A009197.P9030106722831962414

/-!
# A009198: E.g.f. exp(log(1+x)/exp(x)).

The programs for A009198, there is no canonical definition to state claims against.
-/

/-! ## A009198.P272698151563051909

`A009584(n)+A009139(n)`
-/

namespace A009198.P272698151563051909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009584 n + A009139 n

end

end A009198.P272698151563051909

/-!
# A009199: Expansion of e.g.f. exp(log(1+x)^2).

The programs for A009199, there is no canonical definition to state claims against.
-/

/-! ## A009199.P18159280103619560827

`A189423(n)-n*a(n-1)` with `a(0)=1`
-/

namespace A009199.P18159280103619560827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A189423 n - (n : ℤ) * a (n - 1)

end

end A009199.P18159280103619560827

/-! ## A009199.P321462543994613703

`A009585(n)+A009140(n)`
-/

namespace A009199.P321462543994613703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009585 n + A009140 n

end

end A009199.P321462543994613703

/-! ## A009199.P11661927473268303110

`A202185(∑[n]+1)/(n+1)`
-/

namespace A009199.P11661927473268303110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A202185 (∑ j ∈ Finset.range (n + 1), f1 j + 1) : ℚ) / (n + 1 : ℚ)

end

end A009199.P11661927473268303110

/-! ## A009199.P11235085763434102500

`A012273(A001222(5^n))+A009585(n)`
-/

namespace A009199.P11235085763434102500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012273 (A001222 (5 ^ n)).toNat + A009585 n

end

end A009199.P11235085763434102500

