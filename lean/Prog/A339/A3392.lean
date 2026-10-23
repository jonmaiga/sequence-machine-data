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
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
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
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A339200: Number of (undirected) Hamiltonian cycles on the n X 3 king graph.

The programs for A339200, there is no canonical definition to state claims against.
-/

/-! ## A339200.P16480520094754548268

`A339190(C(n+3, 2))`
-/

namespace A339200.P16480520094754548268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339190 (Nat.choose (n + 3) 2)

end

end A339200.P16480520094754548268

/-! ## A339200.P8732750434015125617

`A339190(∑[n+2]+1)`
-/

namespace A339200.P8732750434015125617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339190 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A339200.P8732750434015125617

/-! ## A339200.P987288457685749519

`record[A339190(A333531(n+1))]`
-/

namespace A339200.P987288457685749519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339190 (A333531 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339200.P987288457685749519

/-! ## A339200.P13744823981771439433

`record[A339190(A135223(n+2))]`
-/

namespace A339200.P13744823981771439433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339190 (A135223 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339200.P13744823981771439433

/-! ## A339200.P13375082149600813578

`lcm(2, A339190(A000217(n+2)))`
-/

namespace A339200.P13375082149600813578
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A339190 (A000217 (n + 2)).toNat)

end

end A339200.P13375082149600813578

/-!
# A339201: Number of (undirected) Hamiltonian cycles on the n X 4 king graph.

The programs for A339201, there is no canonical definition to state claims against.
-/

/-! ## A339201.P16281826618183695376

`A339190(∑[n+3]+2)`
-/

namespace A339201.P16281826618183695376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339190 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A339201.P16281826618183695376

/-! ## A339201.P17696032227153543959

`record[A339190(A198455(n+2))]`
-/

namespace A339201.P17696032227153543959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339190 (A198455 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339201.P17696032227153543959

/-! ## A339201.P17601000206365598194

`lcm(2, A339190(A000096(n+2)))`
-/

namespace A339201.P17601000206365598194
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A339190 (A000096 (n + 2)).toNat)

end

end A339201.P17601000206365598194

/-! ## A339201.P17975370826658257453

`A303864(n)*A339190(A000096(n+2))`
-/

namespace A339201.P17975370826658257453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303864 n * A339190 (A000096 (n + 2)).toNat

end

end A339201.P17975370826658257453

/-! ## A339201.P3934623243673531948

`A336697(n+1)*A339190(A000096(n+2))`
-/

namespace A339201.P3934623243673531948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336697 (n + 1) * A339190 (A000096 (n + 2)).toNat

end

end A339201.P3934623243673531948

/-!
# A339202: Number of (undirected) Hamiltonian cycles on the n X 5 king graph.

The programs for A339202, there is no canonical definition to state claims against.
-/

/-! ## A339202.P17378658441646365812

`A339190((n+3)²-∑[n+1])`
-/

namespace A339202.P17378658441646365812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339190 ((n + 3) ^ 2 - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A339202.P17378658441646365812

/-! ## A339202.P17173452501824988865

`record[A339190(A280536(n+1)+A000217(n+3))]`
-/

namespace A339202.P17173452501824988865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339190 (A280536 (n + 1) + A000217 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339202.P17173452501824988865

/-!
# A339205: Number of 2-connected multigraphs with n edges rooted at two noninterchangeable vertices and have no decomposition into parallel components rooted at the two distinguished vertices.

The programs for A339205, there is no canonical definition to state claims against.
-/

/-! ## A339205.P13350321486720274935

`A130921(xor(n, A064526(A028310(n))))`
-/

namespace A339205.P13350321486720274935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130921 (Int.xor (n : ℤ) (A064526 (A028310 n).toNat)).toNat

end

end A339205.P13350321486720274935

/-! ## A339205.P832923805902246253

`A008651(xor(A074422(n+1), A141420(n+1)))`
-/

namespace A339205.P832923805902246253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008651 (Int.xor (A074422 (n + 1)) (A141420 (n + 1))).toNat

end

end A339205.P832923805902246253

/-!
# A339207: Triangle read by rows T(n, k) = Sum_{h>=0} Bernoulli(h)*binomial(k+h-1, h)*abs(Stirling1(n, h+k))*n^h for n>=0 and 0<=k<=n.

The programs for A339207, there is no canonical definition to state claims against.
-/

/-! ## A339207.P17949303307979070205

`A094392(A108625(n))*A339208(n+1)`
-/

namespace A339207.P17949303307979070205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094392 (A108625 n).toNat * A339208 (n + 1)

end

end A339207.P17949303307979070205

/-! ## A339207.P482190192591624043

`A008480(A283857(n+1))*A339208(n+1)`
-/

namespace A339207.P482190192591624043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (A283857 (n + 1)).toNat * A339208 (n + 1)

end

end A339207.P482190192591624043

/-! ## A339207.P2548515205377624037

`A265315(A132393(n))*A339208(n+1)`
-/

namespace A339207.P2548515205377624037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265315 (A132393 n).toNat * A339208 (n + 1)

end

end A339207.P2548515205377624037

/-! ## A339207.P5619344054037926776

`A114282(A008459(n))*A339208(n+1)`
-/

namespace A339207.P5619344054037926776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114282 (A008459 n).toNat * A339208 (n + 1)

end

end A339207.P5619344054037926776

/-! ## A339207.P10642413001633688044

`A001492(A000285(n+1))*A339208(n+1)`
-/

namespace A339207.P10642413001633688044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001492 (A000285 (n + 1)).toNat * A339208 (n + 1)

end

end A339207.P10642413001633688044

/-!
# A339208: Triangle read by rows T(n, k) = Sum_{h>=0} Bernoulli(h)*binomial(n, h)*Stirling2(n-h, k)*k^h for n>=1 and 1<=k<=n.

The programs for A339208, there is no canonical definition to state claims against.
-/

/-! ## A339208.P11620798653189154444

`A339207(n)%A134233(A085478(n))`
-/

namespace A339208.P11620798653189154444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A339207 n) (A134233 (A085478 n).toNat)

end

end A339208.P11620798653189154444

/-! ## A339208.P14012042513325110118

`A339207(n)/A265315(A132393(n))`
-/

namespace A339208.P14012042513325110118
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A339207 n : ℚ) / (A265315 (A132393 n).toNat : ℚ)

end

end A339208.P14012042513325110118

/-! ## A339208.P11565574908334878519

`A114327(A322549(n)^A249095(n))`
-/

namespace A339208.P11565574908334878519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114327 (SequenceMachineLib.roundAway ((A322549 n : ℚ) ^ (A249095 n : ℤ))).toNat

end

end A339208.P11565574908334878519

/-! ## A339208.P3135207358419337221

`A339207(A001222(2^n))%7`
-/

namespace A339208.P3135207358419337221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A339207 (A001222 (2 ^ n)).toNat) 7

end

end A339208.P3135207358419337221

/-!
# A339209: Triangle read by rows : inverse of triangle A339207.

The programs for A339209, there is no canonical definition to state claims against.
-/

/-! ## A339209.P16644432141066601766

`A322549(n)-A124790(A008277(n+1))`
-/

namespace A339209.P16644432141066601766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322549 n - A124790 (A008277 (n + 1)).toNat

end

end A339209.P16644432141066601766

/-! ## A339209.P5452437340143931339

`A097576(A256041(n))`
-/

namespace A339209.P5452437340143931339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097576 (A256041 n).toNat

end

end A339209.P5452437340143931339

/-! ## A339209.P16896268915026437636

`A124748(A111593(n)²)`
-/

namespace A339209.P16896268915026437636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124748 (A111593 n ^ 2).toNat

end

end A339209.P16896268915026437636

/-! ## A339209.P8086119173567965785

`A373953(A339207(n)²)`
-/

namespace A339209.P8086119173567965785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373953 (A339207 n ^ 2).toNat

end

end A339209.P8086119173567965785

/-! ## A339209.P9245501118840081355

`A344618(A385343(n)²)`
-/

namespace A339209.P9245501118840081355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344618 (A385343 n ^ 2).toNat

end

end A339209.P9245501118840081355

/-!
# A339210: a(n) = Sum_{k=0..(n+1)/2} A010815(n*k).

The programs for A339210, there is no canonical definition to state claims against.
-/

/-! ## A339210.P17887769295878767469

`A330375(n+1)%A051125(ceil((n+1)/∏{p}[n+1, (n+1)/#]))`
-/

namespace A339210.P17887769295878767469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A330375 (n + 1)) (A051125 ⌈(n + 1 : ℚ) / (∏ p ∈ Nat.primeFactors (f1 n), (n + 1 : ℚ) / (p : ℚ))⌉.toNat)

end

end A339210.P17887769295878767469

/-! ## A339210.P12663163846466348088

`and(A000196(A297109(n+1)), A192287(n+1))`
-/

namespace A339210.P12663163846466348088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000196 (A297109 (n + 1)).toNat) (A192287 (n + 1))

end

end A339210.P12663163846466348088

/-! ## A339210.P16165239264459067115

`A001221(A103315(n+1))*A010055(n+1)`
-/

namespace A339210.P16165239264459067115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A103315 (n + 1)).toNat * A010055 (n + 1)

end

end A339210.P16165239264459067115

/-! ## A339210.P14289462407288059174

`A325169(gcd(A003238(n+1), A243055(n+1)))`
-/

namespace A339210.P14289462407288059174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325169 (Int.gcd (A003238 (n + 1)) (A243055 (n + 1)))

end

end A339210.P14289462407288059174

/-! ## A339210.P13930184389597851451

`A351014(A237685(ceil((n+1)*∏{p}[n+1, #/(n+3)])))`
-/

namespace A339210.P13930184389597851451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351014 (A237685 ⌈(n + 1 : ℚ) * (∏ p ∈ Nat.primeFactors (f1 n), (p : ℚ) / (n + 3 : ℚ))⌉.toNat).toNat

end

end A339210.P13930184389597851451

/-!
# A339211: Zeckendorf self numbers: numbers not of the form k + A007895(k).

The programs for A339211, there is no canonical definition to state claims against.
-/

/-! ## A339211.P15085057750525596929

`lt[char[∑{digits}[A014417(n), #]+n], 1]`
-/

namespace A339211.P15085057750525596929
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014417 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f3 n).natAbs).map fun (x : ℕ) => x).sum + n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f4 j) n

end

end A339211.P15085057750525596929

/-!
# A339212: Dual-Zeckendorf self numbers: numbers not of the form k + A112310(k).

The programs for A339212, there is no canonical definition to state claims against.
-/

/-! ## A339212.P16364541034654561007

`A342626(A033472(n+1))+A020657(3*n+1)`
-/

namespace A339212.P16364541034654561007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342626 (A033472 (n + 1)).toNat + A020657 (3 * n + 1)

end

end A339212.P16364541034654561007

/-! ## A339212.P14512185387939542983

`A000720(A161911(8*n+12)+A140297(6*n+3))`
-/

namespace A339212.P14512185387939542983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A161911 (8 * n + 12) + A140297 (6 * n + 3)).toNat

end

end A339212.P14512185387939542983

/-!
# A339213: Phi-base self numbers: positive numbers not of the form k + A055778(k).

The programs for A339213, there is no canonical definition to state claims against.
-/

/-! ## A339213.P245333501878358167

`A118759(comp[A055778(n)+n])`
-/

namespace A339213.P245333501878358167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055778 n + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A339213.P245333501878358167

/-! ## A339213.P6457684803860942841

`A311689(A062399(n))-n`
-/

namespace A339213.P6457684803860942841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311689 (A062399 n).toNat - (n : ℤ)

end

end A339213.P6457684803860942841

/-! ## A339213.P10978093905830802213

`A311689(A120126(n))-n`
-/

namespace A339213.P10978093905830802213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311689 (A120126 n).toNat - (n : ℤ)

end

end A339213.P10978093905830802213

/-! ## A339213.P8705513230275148857

`A311689(A351870(n))-n`
-/

namespace A339213.P8705513230275148857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311689 (A351870 n).toNat - (n : ℤ)

end

end A339213.P8705513230275148857

/-! ## A339213.P698143508913651331

`record[A311690(n)-A055649(n)]`
-/

namespace A339213.P698143508913651331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311690 n - A055649 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339213.P698143508913651331

/-!
# A339215: Primorial-base self numbers: numbers not of the form k + A276150(k).

The programs for A339215, there is no canonical definition to state claims against.
-/

/-! ## A339215.P10539118006712886045

`A016825(A262770(n))-A086572(A086572(n+1))`
-/

namespace A339215.P10539118006712886045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 (A262770 n).toNat - A086572 (A086572 (n + 1)).toNat

end

end A339215.P10539118006712886045

/-! ## A339215.P9991306207672596416

`∑[A309600(A354777(10*n))]`
-/

namespace A339215.P9991306207672596416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309600 (A354777 (10 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339215.P9991306207672596416

/-! ## A339215.P5236154130467770139

`∑[A052025(a(A086251(n))+1)]` with `a(0)=1`
-/

namespace A339215.P5236154130467770139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A052025 (f1 (A086251 n).toNat + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339215.P5236154130467770139

/-! ## A339215.P3227040045883524289

`∑[A001222((A000045(n+3)+n+1)²)]+n-1`
-/

namespace A339215.P3227040045883524289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ((A000045 (n + 3) + (n + 1 : ℤ)) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((n : ℤ) - 1)

end

end A339215.P3227040045883524289

/-!
# A339216: Numbers k such that k and k+2 are both binary self numbers (A010061).

The programs for A339216, the canonical program `A339216.P9172300973887636102` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A339216 has offset 1).

The definition of A339216 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4022 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A339216.P5952906960631450589

`∩[A010061(n+1)-2, A010061(n+1)]`
-/

namespace A339216.P5952906960631450589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010061 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010061 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A339216.P5952906960631450589

namespace A339216

/-- `∩[A010061(n+1)-2, A010061(n+1)]` -/
def P5952906960631450589.Spec : Prop :=
  ∀ n, (P5952906960631450589.a n : ℤ) = A339216 (n + 1)

end A339216

/-! ## A339216.P9172300973887636102

`A010061(eq[2, A010061(n+2)-A010061(n+1)]+1)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A339216

/-- `A010061(eq[2, A010061(n+2)-A010061(n+1)]+1)` -/
def P9172300973887636102.Spec : Prop :=
  ∀ n, P9172300973887636102.a n = A339216 (n + 1)

theorem P9172300973887636102.correct : P9172300973887636102.Spec := by
  intro n
  simp only [A339216, Nat.add_sub_cancel]

end A339216

/-! ## A339216.P17221509414533662440

`eq[A228086(n+2), A228086(n)]`
-/

namespace A339216.P17221509414533662440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228086 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228086 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A339216.P17221509414533662440

namespace A339216

/-- `eq[A228086(n+2), A228086(n)]` -/
def P17221509414533662440.Spec : Prop :=
  ∀ n, (P17221509414533662440.a n : ℤ) = A339216 (n + 1)

end A339216

/-! ## A339216.P6165336253914644516

`eq[A228087(n+2), A228087(n)]`
-/

namespace A339216.P6165336253914644516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228087 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228087 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A339216.P6165336253914644516

namespace A339216

/-- `eq[A228087(n+2), A228087(n)]` -/
def P6165336253914644516.Spec : Prop :=
  ∀ n, (P6165336253914644516.a n : ℤ) = A339216 (n + 1)

end A339216

/-! ## A339216.P14720139875445739834

`eq[cos(A228085(n+2)), A227643(n)]`
-/

namespace A339216.P14720139875445739834
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (A228085 (n + 2) : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227643 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A339216.P14720139875445739834

namespace A339216

/-- `eq[cos(A228085(n+2)), A227643(n)]` -/
def P14720139875445739834.Spec : Prop :=
  ∀ n, (P14720139875445739834.a n : ℤ) = A339216 (n + 1)

end A339216

/-! ## A339216.P462055171748471804

`eq[atan(A228085(n+2)), A228085(n)]`
-/

namespace A339216.P462055171748471804
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A228085 (n + 2) : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228085 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A339216.P462055171748471804

namespace A339216

/-- `eq[atan(A228085(n+2)), A228085(n)]` -/
def P462055171748471804.Spec : Prop :=
  ∀ n, (P462055171748471804.a n : ℤ) = A339216 (n + 1)

end A339216

/-!
# A339217: a(n) = Sum_{k=1..n} floor((2*n-k)/k).

The programs for A339217, the canonical program `A339217.P11568586104941741007` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A339217 has offset 0).

The definition of A339217 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A339217.P17672174883431095894

`A062550(n)-2*n`
-/

namespace A339217.P17672174883431095894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062550 n - (2 * n : ℤ)

end

end A339217.P17672174883431095894

namespace A339217

/-- `A062550(n)-2*n` -/
def P17672174883431095894.Spec : Prop :=
  ∀ n, P17672174883431095894.a n = A339217 n

end A339217

/-! ## A339217.P11568586104941741007

`A099055(n)-Δ[n²]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A339217

/-- `A099055(n)-Δ[n²]` -/
def P11568586104941741007.Spec : Prop :=
  ∀ n, P11568586104941741007.a n = A339217 n

theorem P11568586104941741007.correct : P11568586104941741007.Spec := by
  intro n
  simp only [A339217]

end A339217

/-! ## A339217.P15964382647071446699

`record[A006218(n)-lcm(2, n)]`
-/

namespace A339217.P15964382647071446699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n - (Nat.lcm 2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339217.P15964382647071446699

namespace A339217

/-- `record[A006218(n)-lcm(2, n)]` -/
def P15964382647071446699.Spec : Prop :=
  ∀ n, P15964382647071446699.a n = A339217 n

end A339217

/-! ## A339217.P3584127651098385172

`A006218(2*n)-2*n`
-/

namespace A339217.P3584127651098385172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (2 * n) - (2 * n : ℤ)

end

end A339217.P3584127651098385172

namespace A339217

/-- `A006218(2*n)-2*n` -/
def P3584127651098385172.Spec : Prop :=
  ∀ n, P3584127651098385172.a n = A339217 n

end A339217

/-! ## A339217.P17391189246418297912

`∑[A274010(2*n)]`
-/

namespace A339217.P17391189246418297912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274010 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339217.P17391189246418297912

namespace A339217

/-- `∑[A274010(2*n)]` -/
def P17391189246418297912.Spec : Prop :=
  ∀ n, P17391189246418297912.a n = A339217 n

end A339217

/-! ## A339217.P6921831401185754872

`A054519(2*n)-Δ[n²]`
-/

namespace A339217.P6921831401185754872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 (2 * n) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A339217.P6921831401185754872

namespace A339217

/-- `A054519(2*n)-Δ[n²]` -/
def P6921831401185754872.Spec : Prop :=
  ∀ n, P6921831401185754872.a n = A339217 n

end A339217

/-! ## A339217.P4896754372521997735

`record[n%2*A002541(n+1)]`
-/

namespace A339217.P4896754372521997735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 2 : ℕ) : ℤ) * A002541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339217.P4896754372521997735

namespace A339217

/-- `record[n%2*A002541(n+1)]` -/
def P4896754372521997735.Spec : Prop :=
  ∀ n, P4896754372521997735.a n = A339217 n

end A339217

/-! ## A339217.P13227994472184710175

`A002541(A004277(n))`
-/

namespace A339217.P13227994472184710175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002541 (A004277 n).toNat

end

end A339217.P13227994472184710175

namespace A339217

/-- `A002541(A004277(n))` -/
def P13227994472184710175.Spec : Prop :=
  ∀ n, P13227994472184710175.a n = A339217 n

end A339217

/-! ## A339217.P2534826562397351326

`A002541(A004275(n+1))`
-/

namespace A339217.P2534826562397351326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002541 (A004275 (n + 1)).toNat

end

end A339217.P2534826562397351326

namespace A339217

/-- `A002541(A004275(n+1))` -/
def P2534826562397351326.Spec : Prop :=
  ∀ n, P2534826562397351326.a n = A339217 n

end A339217

/-! ## A339217.P4119155041132100267

`A002541(A028310(2*n))`
-/

namespace A339217.P4119155041132100267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002541 (A028310 (2 * n)).toNat

end

end A339217.P4119155041132100267

namespace A339217

/-- `A002541(A028310(2*n))` -/
def P4119155041132100267.Spec : Prop :=
  ∀ n, P4119155041132100267.a n = A339217 n

end A339217

/-! ## A339217.P16350548825730463131

`A002541(A028310(n)+n)`
-/

namespace A339217.P16350548825730463131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002541 (A028310 n + (n : ℤ)).toNat

end

end A339217.P16350548825730463131

namespace A339217

/-- `A002541(A028310(n)+n)` -/
def P16350548825730463131.Spec : Prop :=
  ∀ n, P16350548825730463131.a n = A339217 n

end A339217

/-! ## A339217.P4826123024742381210

`A002541(A008486(n)-n)`
-/

namespace A339217.P4826123024742381210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002541 (A008486 n - (n : ℤ)).toNat

end

end A339217.P4826123024742381210

namespace A339217

/-- `A002541(A008486(n)-n)` -/
def P4826123024742381210.Spec : Prop :=
  ∀ n, P4826123024742381210.a n = A339217 n

end A339217

/-! ## A339217.P12434637382680756142

`A248517(2*n)+A006218(n)`
-/

namespace A339217.P12434637382680756142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248517 (2 * n) + A006218 n

end

end A339217.P12434637382680756142

namespace A339217

/-- `A248517(2*n)+A006218(n)` -/
def P12434637382680756142.Spec : Prop :=
  ∀ n, P12434637382680756142.a n = A339217 n

end A339217

/-! ## A339217.P8343007039217875713

`A325459(2*n)+A004273(n)`
-/

namespace A339217.P8343007039217875713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325459 (2 * n) + A004273 n

end

end A339217.P8343007039217875713

namespace A339217

/-- `A325459(2*n)+A004273(n)` -/
def P8343007039217875713.Spec : Prop :=
  ∀ n, P8343007039217875713.a n = A339217 n

end A339217

/-! ## A339217.P397505662395888773

`A002541(A065033(2*n)+n)`
-/

namespace A339217.P397505662395888773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002541 (A065033 (2 * n) + (n : ℤ)).toNat

end

end A339217.P397505662395888773

namespace A339217

/-- `A002541(A065033(2*n)+n)` -/
def P397505662395888773.Spec : Prop :=
  ∀ n, P397505662395888773.a n = A339217 n

end A339217

/-! ## A339217.P5394335896027135271

`A327326(2*n)+A005187(n)`
-/

namespace A339217.P5394335896027135271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327326 (2 * n) + A005187 n

end

end A339217.P5394335896027135271

namespace A339217

/-- `A327326(2*n)+A005187(n)` -/
def P5394335896027135271.Spec : Prop :=
  ∀ n, P5394335896027135271.a n = A339217 n

end A339217

/-! ## A339217.P12276939007703539036

`A366968(A131055(2*n+1))+n`
-/

namespace A339217.P12276939007703539036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366968 (A131055 (2 * n + 1)).toNat + (n : ℤ)

end

end A339217.P12276939007703539036

namespace A339217

/-- `A366968(A131055(2*n+1))+n` -/
def P12276939007703539036.Spec : Prop :=
  ∀ n, P12276939007703539036.a n = A339217 n

end A339217

/-! ## A339217.P16420796981070599780

`A006590(2*n+1)-A016813(n)`
-/

namespace A339217.P16420796981070599780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006590 (2 * n + 1) - A016813 n

end

end A339217.P16420796981070599780

namespace A339217

/-- `A006590(2*n+1)-A016813(n)` -/
def P16420796981070599780.Spec : Prop :=
  ∀ n, P16420796981070599780.a n = A339217 n

end A339217

/-! ## A339217.P14810786117996446520

`A327326(2*n)+A011371(2*n)`
-/

namespace A339217.P14810786117996446520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327326 (2 * n) + A011371 (2 * n)

end

end A339217.P14810786117996446520

namespace A339217

/-- `A327326(2*n)+A011371(2*n)` -/
def P14810786117996446520.Spec : Prop :=
  ∀ n, P14810786117996446520.a n = A339217 n

end A339217

/-! ## A339217.P5728931878557404175

`A024000(2*n+1)+A006218(2*n)`
-/

namespace A339217.P5728931878557404175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (2 * n + 1) + A006218 (2 * n)

end

end A339217.P5728931878557404175

namespace A339217

/-- `A024000(2*n+1)+A006218(2*n)` -/
def P5728931878557404175.Spec : Prop :=
  ∀ n, P5728931878557404175.a n = A339217 n

end A339217

/-!
# A339218: Number of partitions of n into prime parts where every part appears at least 2 times.

The programs for A339218, there is no canonical definition to state claims against.
-/

/-! ## A339218.P10001249532267349545

`A007895(A339242(n)^A008621(n))`
-/

namespace A339218.P10001249532267349545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (SequenceMachineLib.roundAway ((A339242 n : ℚ) ^ (A008621 n : ℤ))).toNat

end

end A339218.P10001249532267349545

/-! ## A339218.P8513816070463192019

`A212217(n)+A070107(A187829(n+1))`
-/

namespace A339218.P8513816070463192019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212217 n + A070107 (A187829 (n + 1)).toNat

end

end A339218.P8513816070463192019

/-! ## A339218.P10987281776941704311

`A339661(A110159(n))`
-/

namespace A339218.P10987281776941704311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339661 (A110159 n).toNat

end

end A339218.P10987281776941704311

/-! ## A339218.P10257857026163478165

`A001222(sqrt(A339222(n)^n)+1)`
-/

namespace A339218.P10257857026163478165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway (Real.sqrt (A339222 n ^ n : ℝ) + 1)).toNat

end

end A339218.P10257857026163478165

/-! ## A339218.P12877060783926097329

`A211857(n)+A055641(A279880(n))`
-/

namespace A339218.P12877060783926097329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211857 n + A055641 (A279880 n).toNat

end

end A339218.P12877060783926097329

/-!
# A339219: Number of partitions of n into nonprime parts where every part appears at least 2 times.

The programs for A339219, there is no canonical definition to state claims against.
-/

/-! ## A339219.P3302960613904144558

`A216658(A052938(n+1))%A078943(n+3)`
-/

namespace A339219.P3302960613904144558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A216658 (A052938 (n + 1)).toNat) (A078943 (n + 3))

end

end A339219.P3302960613904144558

/-! ## A339219.P14896635782014237790

`A006466(30*30*(n+1))*A216658(A052938(n+1))`
-/

namespace A339219.P14896635782014237790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006466 (30 * (30 * (n + 1))) * A216658 (A052938 (n + 1)).toNat

end

end A339219.P14896635782014237790

/-! ## A339219.P4821184345624881538

`A216658(A052938(n+1))^A014963(A325246(n))`
-/

namespace A339219.P4821184345624881538
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A216658 (A052938 (n + 1)).toNat : ℚ) ^ (A014963 (A325246 n).toNat : ℤ)

end

end A339219.P4821184345624881538

/-!
# A339220: Number of partitions of n into squarefree parts where every part appears at least 2 times.

The programs for A339220, there is no canonical definition to state claims against.
-/

/-! ## A339220.P3267832494433041017

`A161293(n)-A185284(A316996(n+1))`
-/

namespace A339220.P3267832494433041017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161293 n - A185284 (A316996 (n + 1)).toNat

end

end A339220.P3267832494433041017

/-! ## A339220.P15784424793354338650

`A161293(n)-A185284(2*n+1)`
-/

namespace A339220.P15784424793354338650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161293 n - A185284 (2 * n + 1)

end

end A339220.P15784424793354338650

/-! ## A339220.P13277058523350558659

`A161293(n)-A340998(A264905(n))`
-/

namespace A339220.P13277058523350558659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161293 n - A340998 ((A264905 n).toNat + 140)

end

end A339220.P13277058523350558659

/-!
# A339221: Number of partitions of n into cubes where every part appears at least 2 times.

The programs for A339221, there is no canonical definition to state claims against.
-/

/-! ## A339221.P1714451627627586773

`A037827(A048578(A008624(n)))`
-/

namespace A339221.P1714451627627586773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037827 (A048578 (A008624 n).toNat).toNat

end

end A339221.P1714451627627586773

/-! ## A339221.P625786438846695844

`A001221(A150342(ceil(xor(1, n)/4)))`
-/

namespace A339221.P625786438846695844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A150342 ⌈(Nat.xor 1 n : ℚ) / 4⌉.toNat).toNat

end

end A339221.P625786438846695844

/-! ## A339221.P564085540094114596

`A004216(A274845(n)+9)`
-/

namespace A339221.P564085540094114596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004216 (A274845 n + 9).toNat

end

end A339221.P564085540094114596

/-! ## A339221.P8939356934482614991

`A028950(A029153(n)+A008615(n))`
-/

namespace A339221.P8939356934482614991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028950 (A029153 n + A008615 n).toNat

end

end A339221.P8939356934482614991

/-! ## A339221.P15706941070714078592

`A028950(A348522(n)+A029153(n))`
-/

namespace A339221.P15706941070714078592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028950 (A348522 n + A029153 n).toNat

end

end A339221.P15706941070714078592

/-!
# A339222: Number of partitions of n into parts >= 2 where every part appears at least 2 times.

The programs for A339222, there is no canonical definition to state claims against.
-/

/-! ## A339222.P2613413844688028364

`A264403(∑[n+1]+1)`
-/

namespace A339222.P2613413844688028364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264403 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A339222.P2613413844688028364

/-! ## A339222.P8741573539352616379

`floor(A264403(A134869(n+1))+acot(n))`
-/

namespace A339222.P8741573539352616379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A264403 (A134869 (n + 1)).toNat : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋

end

end A339222.P8741573539352616379

/-! ## A339222.P4347466067839881687

`A264403(A134869(n+1))+A000007(n)`
-/

namespace A339222.P4347466067839881687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264403 (A134869 (n + 1)).toNat + A000007 n

end

end A339222.P4347466067839881687

/-! ## A339222.P17259571393784912267

`A264403(A134869(n+1))^abs(A057428(n))`
-/

namespace A339222.P17259571393784912267
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264403 (A134869 (n + 1)).toNat : ℚ) ^ (|A057428 n| : ℤ)

end

end A339222.P17259571393784912267

/-! ## A339222.P6941048118672142781

`A028310(n)+A264403(A134869(n+1))-n`
-/

namespace A339222.P6941048118672142781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n + (A264403 (A134869 (n + 1)).toNat - (n : ℤ))

end

end A339222.P6941048118672142781

/-! ## A339222.P18340249331557487048

`A264403(A134869(n+1))+val(A000040(n+1), 2)`
-/

namespace A339222.P18340249331557487048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264403 (A134869 (n + 1)).toNat + (SequenceMachineLib.valuation (A000040 (n + 1)).toNat 2 : ℤ)

end

end A339222.P18340249331557487048

/-!
# A339223: Number of essentially series unoriented series-parallel networks with n elements.

The programs for A339223, there is no canonical definition to state claims against.
-/

/-! ## A339223.P14248238414938726390

`(A007453(n+1)+A339157(n+1))/2`
-/

namespace A339223.P14248238414938726390
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007453 (n + 1) + A339157 (n + 1) : ℚ) / 2

end

end A339223.P14248238414938726390

/-! ## A339223.P17325571127601836021

`(A339157(n+1)+A003430(A254667(n+1))-A007454(n+1))/2`
-/

namespace A339223.P17325571127601836021
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A339157 (n + 1) + (A003430 (A254667 (n + 1)).toNat - A007454 (n + 1)) : ℚ) / 2

end

end A339223.P17325571127601836021

/-! ## A339223.P6854746902701102080

`(A339157(n+1)+A003430(A000007(n)+1+n)-A007454(n+1))/2`
-/

namespace A339223.P6854746902701102080
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A339157 (n + 1) + (A003430 (A000007 n + 1 + (n : ℤ)).toNat - A007454 (n + 1)) : ℚ) / 2

end

end A339223.P6854746902701102080

/-! ## A339223.P12476445065485272245

`(A339159(n+1)+A003430(n+1))/2+A000007(n)-A339224(n+1)`
-/

namespace A339223.P12476445065485272245
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A339159 (n + 1) + A003430 (n + 1) : ℚ) / 2 + (A000007 n - A339224 (n + 1) : ℚ)

end

end A339223.P12476445065485272245

/-! ## A339223.P5705695561478837279

`(A339159(n+1)+A003430(n+1))/2+A057428(n)*A339224(n+1)`
-/

namespace A339223.P5705695561478837279
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A339159 (n + 1) + A003430 (n + 1) : ℚ) / 2 + (A057428 n * A339224 (n + 1) : ℚ)

end

end A339223.P5705695561478837279

/-!
# A339224: Number of essentially parallel unoriented series-parallel networks with n elements.

The programs for A339224, there is no canonical definition to state claims against.
-/

/-! ## A339224.P9611561787031137563

`(A007454(n+1)+A339158(n+1))/2`
-/

namespace A339224.P9611561787031137563
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007454 (n + 1) + A339158 (n + 1) : ℚ) / 2

end

end A339224.P9611561787031137563

/-! ## A339224.P18017060870795289450

`(A339159(n+1)+A003430(n+1))/2+A000007(n)-A339223(n+1)`
-/

namespace A339224.P18017060870795289450
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A339159 (n + 1) + A003430 (n + 1) : ℚ) / 2 + (A000007 n - A339223 (n + 1) : ℚ)

end

end A339224.P18017060870795289450

/-! ## A339224.P11970627397487753324

`(A339159(n+1)+A003430(n+1))/2+A057428(n)*A339223(n+1)`
-/

namespace A339224.P11970627397487753324
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A339159 (n + 1) + A003430 (n + 1) : ℚ) / 2 + (A057428 n * A339223 (n + 1) : ℚ)

end

end A339224.P11970627397487753324

/-! ## A339224.P4455436566732892360

`A339225(A254667(n+1))-A339223(n+1)`
-/

namespace A339224.P4455436566732892360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339225 (A254667 (n + 1)).toNat - A339223 (n + 1)

end

end A339224.P4455436566732892360

/-! ## A339224.P14474262656687981829

`A339225(n+1)+A000007(n)-A339223(n+1)`
-/

namespace A339224.P14474262656687981829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339225 (n + 1) + (A000007 n - A339223 (n + 1))

end

end A339224.P14474262656687981829

/-!
# A339225: Number of unoriented series-parallel networks with n elements.

The programs for A339225, there is no canonical definition to state claims against.
-/

/-! ## A339225.P18099178975972629638

`(A003430(n+1)+A339159(n+1))/2`
-/

namespace A339225.P18099178975972629638
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003430 (n + 1) + A339159 (n + 1) : ℚ) / 2

end

end A339225.P18099178975972629638

/-! ## A339225.P4579864160477201434

`A339223(n+1)+A339224(n+1)-A000007(n)`
-/

namespace A339225.P4579864160477201434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339223 (n + 1) + (A339224 (n + 1) - A000007 n)

end

end A339225.P4579864160477201434

/-! ## A339225.P5190508166219449665

`A339223(n+1)-A057428(n)*A339224(n+1)`
-/

namespace A339225.P5190508166219449665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339223 (n + 1) - A057428 n * A339224 (n + 1)

end

end A339225.P5190508166219449665

/-! ## A339225.P18365362225526465433

`A339223(n+1)+A339224(n+1)%A005425(n)`
-/

namespace A339225.P18365362225526465433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339223 (n + 1) + Int.tmod (A339224 (n + 1)) (A005425 n)

end

end A339225.P18365362225526465433

/-! ## A339225.P14697503597487837255

`A339224(n+1)+A339223(n+1)%A041017(n)`
-/

namespace A339225.P14697503597487837255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339224 (n + 1) + Int.tmod (A339223 (n + 1)) (A041017 n)

end

end A339225.P14697503597487837255

/-!
# A339226: Number of oriented series-parallel networks with n elements of 2 colors.

The programs for A339226, there is no canonical definition to state claims against.
-/

/-! ## A339226.P4510394109501920320

`A003430(n+1)+A339227(n+1)+A003430(n+1)`
-/

namespace A339226.P4510394109501920320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003430 (n + 1) + (A339227 (n + 1) + A003430 (n + 1))

end

end A339226.P4510394109501920320

/-! ## A339226.P16418455122041418961

`A339227(n+1)+A004277(A003430(n+1))`
-/

namespace A339226.P16418455122041418961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339227 (n + 1) + A004277 (A003430 (n + 1)).toNat

end

end A339226.P16418455122041418961

/-!
# A339227: Number of oriented series-parallel networks with n colored elements using exactly 2 colors.

The programs for A339227, there is no canonical definition to state claims against.
-/

/-! ## A339227.P9758695439896268505

`A339226(n+1)-2*A003430(n+1)`
-/

namespace A339227.P9758695439896268505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339226 (n + 1) - 2 * A003430 (n + 1)

end

end A339227.P9758695439896268505

/-! ## A339227.P7056842870749354034

`A339226(n+1)-A004277(A003430(n+1))`
-/

namespace A339227.P7056842870749354034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339226 (n + 1) - A004277 (A003430 (n + 1)).toNat

end

end A339227.P7056842870749354034

/-! ## A339227.P7277215534515624984

`A339228(∑[char[1]+n]+1)-C(2, n+2)`
-/

namespace A339227.P7277215534515624984
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339228 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - (Nat.choose 2 (n + 2) : ℤ)

end

end A339227.P7277215534515624984

/-! ## A339227.P16194506639347690657

`A339228(∑[char[1]+n]+1)%A230547(n)`
-/

namespace A339227.P16194506639347690657
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A339228 (∑ j ∈ Finset.range (n + 1), f1 j + 1)) (A230547 n)

end

end A339227.P16194506639347690657

/-!
# A339230: Number of oriented series-parallel networks with integer valued elements summing to n.

The programs for A339230, there is no canonical definition to state claims against.
-/

/-! ## A339230.P1691495824286683555

`A208327(A104547(n))`
-/

namespace A339230.P1691495824286683555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208327 (A104547 n).toNat

end

end A339230.P1691495824286683555

/-! ## A339230.P4699596326565767612

`∑[A322912(A000712(n))]`
-/

namespace A339230.P4699596326565767612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322912 (A000712 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339230.P4699596326565767612

/-!
# A339231: Triangle read by rows: T(n,k) is the number of oriented series-parallel networks whose multigraph has n edges and k interior vertices, 0 <= k < n.

The programs for A339231, there is no canonical definition to state claims against.
-/

/-! ## A339231.P8477678856712821539

`A194967(A382225(n))`
-/

namespace A339231.P8477678856712821539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194967 (A382225 n).toNat

end

end A339231.P8477678856712821539

/-! ## A339231.P14775539759684584056

`A194967(A133713(n+2))`
-/

namespace A339231.P14775539759684584056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194967 (A133713 (n + 2)).toNat

end

end A339231.P14775539759684584056

/-! ## A339231.P16684851356039783559

`A109401(A088925(n)+A009999(n))`
-/

namespace A339231.P16684851356039783559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109401 (A088925 n + A009999 n).toNat

end

end A339231.P16684851356039783559

/-! ## A339231.P14325891612376016160

`A109401(A098568(n)+A009999(n))`
-/

namespace A339231.P14325891612376016160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109401 (A098568 n + A009999 n).toNat

end

end A339231.P14325891612376016160

/-! ## A339231.P15414897551097557532

`A109401(A100862(n)+A009999(n))`
-/

namespace A339231.P15414897551097557532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109401 (A100862 n + A009999 n).toNat

end

end A339231.P15414897551097557532

/-!
# A339232: Total number of interior vertices in the multigraphs of all oriented series-parallel networks with n edges.

The programs for A339232, there is no canonical definition to state claims against.
-/

/-! ## A339232.P5871424659633929249

`A276797(A000045(3*n+2)-A126942(n))`
-/

namespace A339232.P5871424659633929249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276797 (A000045 (3 * n + 2) - A126942 n).toNat

end

end A339232.P5871424659633929249

/-! ## A339232.P11315126701198809937

`A048865(A180036(n))`
-/

namespace A339232.P11315126701198809937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048865 (A180036 n).toNat

end

end A339232.P11315126701198809937

/-!
# A339233: Number of inequivalent colorings of oriented series-parallel networks with n colored elements.

The programs for A339233, there is no canonical definition to state claims against.
-/

/-! ## A339233.P11387980177449429663

`A130376(∑[A149845(n)²])`
-/

namespace A339233.P11387980177449429663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149845 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130376 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A339233.P11387980177449429663

/-!
# A339240: a(n) = n*2^(2*n-2) + n*binomial(2*n,n)/2.

The programs for A339240, the canonical program `A339240.P14606482106746122209` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A339240 has offset 0).

The definition of A339240 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A339240.P14606482106746122209

`n*(2^(2*n-2)+C(2*n, n)/2)`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A339240

/-- `n*(2^(2*n-2)+C(2*n, n)/2)` -/
def P14606482106746122209.Spec : Prop :=
  ∀ n, P14606482106746122209.a n = (A339240 n : ℚ)

end A339240

/-! ## A339240.P10793229952592086280

`n*2^(2*n-2)+n*C(2*n, n)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A339240.P10793229952592086280
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * (2 : ℚ) ^ ((2 * n : ℤ) - 2 : ℤ) + (n * Nat.choose (2 * n) n : ℚ) / 2

end

end A339240.P10793229952592086280

namespace A339240

/-- `n*2^(2*n-2)+n*C(2*n, n)/2` -/
def P10793229952592086280.Spec : Prop :=
  ∀ n, P10793229952592086280.a n = (A339240 n : ℚ)

end A339240

/-! ## A339240.P1769281192177751090

`n*A114121(n)`
-/

namespace A339240.P1769281192177751090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A114121 n

end

end A339240.P1769281192177751090

namespace A339240

/-- `n*A114121(n)` -/
def P1769281192177751090.Spec : Prop :=
  ∀ n, P1769281192177751090.a n = A339240 n

end A339240

/-! ## A339240.P15460793856818839588

`n*A116406(2*n)`
-/

namespace A339240.P15460793856818839588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A116406 (2 * n)

end

end A339240.P15460793856818839588

namespace A339240

/-- `n*A116406(2*n)` -/
def P15460793856818839588.Spec : Prop :=
  ∀ n, P15460793856818839588.a n = A339240 n

end A339240

/-! ## A339240.P2433730235972540862

`n*A079280(Δ[n²])`
-/

namespace A339240.P2433730235972540862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A079280 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A339240.P2433730235972540862

namespace A339240

/-- `n*A079280(Δ[n²])` -/
def P2433730235972540862.Spec : Prop :=
  ∀ n, P2433730235972540862.a n = A339240 n

end A339240

/-! ## A339240.P16277280555524810058

`A002697(n)+A005430(n)/2`
-/

namespace A339240.P16277280555524810058
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002697 n : ℚ) + (A005430 n : ℚ) / 2

end

end A339240.P16277280555524810058

namespace A339240

/-- `A002697(n)+A005430(n)/2` -/
def P16277280555524810058.Spec : Prop :=
  ∀ n, P16277280555524810058.a n = (A339240 n : ℚ)

end A339240

/-! ## A339240.P16822058431638693895

`A002697(n)+record[A274707(n+1)]`
-/

namespace A339240.P16822058431638693895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274707 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002697 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339240.P16822058431638693895

namespace A339240

/-- `A002697(n)+record[A274707(n+1)]` -/
def P16822058431638693895.Spec : Prop :=
  ∀ n, P16822058431638693895.a n = A339240 n

end A339240

/-! ## A339240.P4272143351905905474

`record[A056040(n)-A168150(n+1)]`
-/

namespace A339240.P4272143351905905474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056040 n - A168150 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339240.P4272143351905905474

namespace A339240

/-- `record[A056040(n)-A168150(n+1)]` -/
def P4272143351905905474.Spec : Prop :=
  ∀ n, P4272143351905905474.a n = A339240 n

end A339240

/-! ## A339240.P2523739501263528154

`n*(A088218(n)+A011782(n)²)`
-/

namespace A339240.P2523739501263528154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A088218 n + A011782 n ^ 2)

end

end A339240.P2523739501263528154

namespace A339240

/-- `n*(A088218(n)+A011782(n)²)` -/
def P2523739501263528154.Spec : Prop :=
  ∀ n, P2523739501263528154.a n = A339240 n

end A339240

/-! ## A339240.P14260385133189104927

`n*(A088218(n)+A131577(n)²)`
-/

namespace A339240.P14260385133189104927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A088218 n + A131577 n ^ 2)

end

end A339240.P14260385133189104927

namespace A339240

/-- `n*(A088218(n)+A131577(n)²)` -/
def P14260385133189104927.Spec : Prop :=
  ∀ n, P14260385133189104927.a n = A339240 n

end A339240

/-! ## A339240.P12560979239215248904

`A002697(n)+∑[n]*A000108(n)`
-/

namespace A339240.P12560979239215248904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002697 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A000108 n

end

end A339240.P12560979239215248904

namespace A339240

/-- `A002697(n)+∑[n]*A000108(n)` -/
def P12560979239215248904.Spec : Prop :=
  ∀ n, P12560979239215248904.a n = A339240 n

end A339240

/-! ## A339240.P15442888547492480812

`n*record[A123344(n)+A037952(n)]`
-/

namespace A339240.P15442888547492480812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123344 n + A037952 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339240.P15442888547492480812

namespace A339240

/-- `n*record[A123344(n)+A037952(n)]` -/
def P15442888547492480812.Spec : Prop :=
  ∀ n, P15442888547492480812.a n = A339240 n

end A339240

/-! ## A339240.P14891167453727320598

`n*(A210736(2*n)+A166444(2*n))`
-/

namespace A339240.P14891167453727320598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A210736 (2 * n) + A166444 (2 * n))

end

end A339240.P14891167453727320598

namespace A339240

/-- `n*(A210736(2*n)+A166444(2*n))` -/
def P14891167453727320598.Spec : Prop :=
  ∀ n, P14891167453727320598.a n = A339240 n

end A339240

/-! ## A339240.P2214107038532468813

`n*(A248574(2*n)-A131577(2*n))`
-/

namespace A339240.P2214107038532468813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A248574 (2 * n) - A131577 (2 * n))

end

end A339240.P2214107038532468813

namespace A339240

/-- `n*(A248574(2*n)-A131577(2*n))` -/
def P2214107038532468813.Spec : Prop :=
  ∀ n, P2214107038532468813.a n = A339240 n

end A339240

/-! ## A339240.P8984109194952700973

`n*(A191386(2*n+1)-A191522(2*n))`
-/

namespace A339240.P8984109194952700973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A191386 (2 * n + 1) - A191522 (2 * n))

end

end A339240.P8984109194952700973

namespace A339240

/-- `n*(A191386(2*n+1)-A191522(2*n))` -/
def P8984109194952700973.Spec : Prop :=
  ∀ n, P8984109194952700973.a n = A339240 n

end A339240

/-! ## A339240.P4948290293408768757

`A081039(n)-A003583(n)`
-/

namespace A339240.P4948290293408768757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081039 n - A003583 n

end

end A339240.P4948290293408768757

namespace A339240

/-- `A081039(n)-A003583(n)` -/
def P4948290293408768757.Spec : Prop :=
  ∀ n, P4948290293408768757.a n = A339240 n

end A339240

/-! ## A339240.P6877346735711247672

`A100511(n)-A002697(n)`
-/

namespace A339240.P6877346735711247672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100511 n - A002697 n

end

end A339240.P6877346735711247672

namespace A339240

/-- `A100511(n)-A002697(n)` -/
def P6877346735711247672.Spec : Prop :=
  ∀ n, P6877346735711247672.a n = A339240 n

end A339240

/-! ## A339240.P9015268581760423528

`(A185252(2*n)+A100071(2*n))/2`
-/

namespace A339240.P9015268581760423528
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185252 (2 * n) + A100071 (2 * n) : ℚ) / 2

end

end A339240.P9015268581760423528

namespace A339240

/-- `(A185252(2*n)+A100071(2*n))/2` -/
def P9015268581760423528.Spec : Prop :=
  ∀ n, P9015268581760423528.a n = (A339240 n : ℚ)

end A339240

/-! ## A339240.P17400298243524354159

`(A230137(2*n)-A185252(2*n))/2`
-/

namespace A339240.P17400298243524354159
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A230137 (2 * n) - A185252 (2 * n) : ℚ) / 2

end

end A339240.P17400298243524354159

namespace A339240

/-- `(A230137(2*n)-A185252(2*n))/2` -/
def P17400298243524354159.Spec : Prop :=
  ∀ n, P17400298243524354159.a n = (A339240 n : ℚ)

end A339240

/-! ## A339240.P6122842842667675885

`A230137(2*n)-n*A248574(2*n)`
-/

namespace A339240.P6122842842667675885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230137 (2 * n) - (n : ℤ) * A248574 (2 * n)

end

end A339240.P6122842842667675885

namespace A339240

/-- `A230137(2*n)-n*A248574(2*n)` -/
def P6122842842667675885.Spec : Prop :=
  ∀ n, P6122842842667675885.a n = A339240 n

end A339240

/-!
# A339241: Number of partitions of n into prime power parts (including 1) where every part appears at least 2 times.

The programs for A339241, there is no canonical definition to state claims against.
-/

/-! ## A339241.P3305754072138122084

`A178798(A007279(n))+A007690(n)`
-/

namespace A339241.P3305754072138122084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 (A007279 n).toNat + A007690 n

end

end A339241.P3305754072138122084

/-! ## A339241.P15407520602872451682

`A264403(∑[n])+A178798(A007279(n))`
-/

namespace A339241.P15407520602872451682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264403 (∑ j ∈ Finset.range (n + 1), f1 j) + A178798 (A007279 n).toNat

end

end A339241.P15407520602872451682

/-! ## A339241.P454894336126500621

`A000041(n)+A178798(A007279(n))-A183558(n)`
-/

namespace A339241.P454894336126500621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n + (A178798 (A007279 n).toNat - A183558 n)

end

end A339241.P454894336126500621

/-! ## A339241.P305343939541893627

`A178798(A007279(n))+A116595(A075349(n+1)-1)`
-/

namespace A339241.P305343939541893627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 (A007279 n).toNat + A116595 (A075349 (n + 1) - 1).toNat

end

end A339241.P305343939541893627

/-! ## A339241.P3490859399614599390

`A007690(n)-A185284(A008576(n))`
-/

namespace A339241.P3490859399614599390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007690 n - A185284 (A008576 n).toNat

end

end A339241.P3490859399614599390

/-!
# A339242: Number of partitions of n into prime power parts (1 excluded) where every part appears at least 2 times.

The programs for A339242, there is no canonical definition to state claims against.
-/

/-! ## A339242.P15160186542393256737

`A339222(n)-A307597(A353390(n))`
-/

namespace A339242.P15160186542393256737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339222 n - A307597 (A353390 n).toNat

end

end A339242.P15160186542393256737

/-! ## A339242.P204605542694285587

`A339222(n)-A122841(A056506(n))`
-/

namespace A339242.P204605542694285587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339222 n - A122841 (A056506 n).toNat

end

end A339242.P204605542694285587

/-! ## A339242.P15039134050048097586

`A339222(n)-A062977(A128500(n))`
-/

namespace A339242.P15039134050048097586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339222 n - A062977 (A128500 n).toNat

end

end A339242.P15039134050048097586

/-! ## A339242.P11649945564415345163

`A339222(n)-A005088(A221623(n+1))`
-/

namespace A339242.P11649945564415345163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339222 n - A005088 (A221623 (n + 1)).toNat

end

end A339242.P11649945564415345163

/-! ## A339242.P581737580552136907

`A339222(n)-A178798(A339222(2*n))`
-/

namespace A339242.P581737580552136907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339222 n - A178798 (A339222 (2 * n)).toNat

end

end A339242.P581737580552136907

/-!
# A339243: Number of partitions of n into divisors of n where every part appears at least 2 times.

The programs for A339243, there is no canonical definition to state claims against.
-/

/-! ## A339243.P10660866328769841591

`A335134(A001222(A040002(n)*A051190(n+1)))`
-/

namespace A339243.P10660866328769841591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335134 (A001222 (A040002 n * A051190 (n + 1)).toNat).toNat

end

end A339243.P10660866328769841591

/-! ## A339243.P2344526536764173892

`A001065(n+1)-A118164(A050358(n+1))`
-/

namespace A339243.P2344526536764173892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) - A118164 (A050358 (n + 1)).toNat

end

end A339243.P2344526536764173892

/-! ## A339243.P9709512588045263607

`A001065(n+1)-A257540(A317938(n+1))`
-/

namespace A339243.P9709512588045263607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) - A257540 (A317938 (n + 1)).toNat

end

end A339243.P9709512588045263607

/-! ## A339243.P9044730045292155880

`A000203(n+1)-(A118164(A050358(n+1))+n+1)`
-/

namespace A339243.P9044730045292155880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - (A118164 (A050358 (n + 1)).toNat + (n + 1 : ℤ))

end

end A339243.P9044730045292155880

/-! ## A339243.P3328833936264573541

`A249810(A345943(n+1))+A246277(n+1)`
-/

namespace A339243.P3328833936264573541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249810 (A345943 (n + 1)).toNat + A246277 (n + 1)

end

end A339243.P3328833936264573541

/-!
# A339245: Partrich numbers: positive integers whose square part and squarefree part are divisible by 2 and an odd prime.

The programs for A339245, there is no canonical definition to state claims against.
-/

/-! ## A339245.P18328091610976311844

`filter[A287840(2*(n+1)), A358775(#)]`
-/

namespace A339245.P18328091610976311844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287840 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358775 (f1 j).toNat = 1) n)

end

end A339245.P18328091610976311844

/-!
# A339246: a(n) = 1 for n <= 2; thereafter a(n) is the number of partitions of n where every part k appears at least a(k) times.

The programs for A339246, there is no canonical definition to state claims against.
-/

/-! ## A339246.P7232663850515242365

`gcd(C(3, A180278(n)), A003113(n))`
-/

namespace A339246.P7232663850515242365
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.choose 3 (A180278 n).toNat : ℤ) (A003113 n)

end

end A339246.P7232663850515242365

/-! ## A339246.P11363683721667069627

`A003113(n)-A036987(A003099(n))`
-/

namespace A339246.P11363683721667069627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003113 n - A036987 (A003099 n).toNat

end

end A339246.P11363683721667069627

/-! ## A339246.P5917607878092672771

`A003113(n)-A010054(A058539(n))`
-/

namespace A339246.P5917607878092672771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003113 n - A010054 (A058539 n).toNat

end

end A339246.P5917607878092672771

/-! ## A339246.P10313248471988275232

`A003113(n)-A010052(A299262(n))`
-/

namespace A339246.P10313248471988275232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003113 n - A010052 (A299262 n).toNat

end

end A339246.P10313248471988275232

/-! ## A339246.P10910321252136973617

`A003113(n)-A000007(Δ[A000073(n)])`
-/

namespace A339246.P10910321252136973617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003113 n - A000007 (f1 (n + 1) - f1 n).toNat

end

end A339246.P10910321252136973617

/-!
# A339247: The primes that yield twice a prime when each bit of their binary expansion is inverted.

The programs for A339247, the canonical program `A339247.P7181091707471005680` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A339247 has offset 1).

The definition of A339247 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 392 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A339247.P9491478817652704629

`p?[A001222(A080079(n+1))*A267872(n)]`
-/

namespace A339247.P9491478817652704629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A080079 (n + 1)).toNat * A267872 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A339247.P9491478817652704629

namespace A339247

/-- `p?[A001222(A080079(n+1))*A267872(n)]` -/
def P9491478817652704629.Spec : Prop :=
  ∀ n, P9491478817652704629.a n = A339247 (n + 1)

end A339247

/-! ## A339247.P2050191828590246903

`p?[A001222(A080079(n+1))*A267873(n)]`
-/

namespace A339247.P2050191828590246903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A080079 (n + 1)).toNat * A267873 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A339247.P2050191828590246903

namespace A339247

/-- `p?[A001222(A080079(n+1))*A267873(n)]` -/
def P2050191828590246903.Spec : Prop :=
  ∀ n, P2050191828590246903.a n = A339247 (n + 1)

end A339247

/-! ## A339247.P7181091707471005680

`p?[(2*n+1)*A032741(n-A006257(n))]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A339247

/-- `p?[(2*n+1)*A032741(n-A006257(n))]` -/
def P7181091707471005680.Spec : Prop :=
  ∀ n, P7181091707471005680.a n = A339247 (n + 1)

theorem P7181091707471005680.correct : P7181091707471005680.Spec := by
  intro n
  simp only [A339247, Nat.add_sub_cancel]

end A339247

/-! ## A339247.P6959796618036746180

`p?[(2*n+1)*A003415(A003817(n)-n)]`
-/

namespace A339247.P6959796618036746180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A003415 (A003817 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A339247.P6959796618036746180

namespace A339247

/-- `p?[(2*n+1)*A003415(A003817(n)-n)]` -/
def P6959796618036746180.Spec : Prop :=
  ∀ n, P6959796618036746180.a n = A339247 (n + 1)

end A339247

/-! ## A339247.P1453965302166379725

`p?[A003415(A003817(n)-n)*A005408(n)]`
-/

namespace A339247.P1453965302166379725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A003817 n - (n : ℤ)).toNat * A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A339247.P1453965302166379725

namespace A339247

/-- `p?[A003415(A003817(n)-n)*A005408(n)]` -/
def P1453965302166379725.Spec : Prop :=
  ∀ n, P1453965302166379725.a n = A339247 (n + 1)

end A339247

/-!
# A339250: List of dimensions for which there exist several non-isomorphic irreducible representations of E6.

The programs for A339250, there is no canonical definition to state claims against.
-/

/-! ## A339250.P149103746518876414

`filter[A121737(n+2), A339052(#)]`
-/

namespace A339250.P149103746518876414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121737 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A339052 (f1 j).toNat = 1) n)

end

end A339250.P149103746518876414

/-! ## A339250.P4243859446219241495

`filter[A121737(n+1), A284487(#)]`
-/

namespace A339250.P4243859446219241495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121737 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A284487 (f1 j).toNat = 1) n)

end

end A339250.P4243859446219241495

/-! ## A339250.P7926694615371831565

`filter[A121737(n+1), A285501(#)]`
-/

namespace A339250.P7926694615371831565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121737 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A285501 (f1 j).toNat = 1) n)

end

end A339250.P7926694615371831565

/-!
# A339252: a(0) = 1, a(1) = 4, a(2) = 11, and a(n) = 4*a(n-1) - 4*a(n-2) for n >= 3.

The programs for A339252, the canonical program `A339252.P11751569909095406909` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A339252 has offset 0).

The definition of A339252 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*a(n-1)-4*a(n-2)` (program `A339252.P11751569909095406909`, by `A339252.P11751569909095406909.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A339252.P11751569909095406909

`4*a(n-1)-4*a(n-2)` with `a(0)=1, a(1)=4, a(2)=11`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A339252

/-- `4*a(n-1)-4*a(n-2)` -/
def P11751569909095406909.Spec : Prop :=
  ∀ n, P11751569909095406909.a n = A339252 n

theorem P11751569909095406909.correct : P11751569909095406909.Spec := by
  intro n
  simp only [A339252]

end A339252

/-! ## A339252.P4163280285465329224

`ogf((1-x^2)/(1-4x+4x^2))`
-/

namespace A339252.P4163280285465329224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -1] [1, -4, 4] n

end

end A339252.P4163280285465329224

namespace A339252

/-- `ogf((1-x^2)/(1-4x+4x^2))` -/
def P4163280285465329224.Spec : Prop :=
  ∀ n, P4163280285465329224.a n = A339252 n

end A339252

/-! ## A339252.P15476914436764092477

`4*(a(n-1)-a(n-2))` with `a(0)=1, a(1)=4, a(2)=11`
-/

namespace A339252.P15476914436764092477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 11] fun n a =>
  4 * (a (n - 1) - a (n - 2))

end

end A339252.P15476914436764092477

namespace A339252

/-- `4*(a(n-1)-a(n-2))` -/
def P15476914436764092477.Spec : Prop :=
  ∀ n, P15476914436764092477.a n = A339252 n

theorem P15476914436764092477.correct : P15476914436764092477.Spec := by
  intro n
  simp only [A339252, Nat.add_sub_cancel, A339252.P15476914436764092477.a, A339252.P11751569909095406909.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A339252

/-! ## A339252.P11780107652011821661

`∑[A106472(n)]`
-/

namespace A339252.P11780107652011821661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106472 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339252.P11780107652011821661

namespace A339252

/-- `∑[A106472(n)]` -/
def P11780107652011821661.Spec : Prop :=
  ∀ n, P11780107652011821661.a n = A339252 n

end A339252

/-! ## A339252.P17916827410947269373

`A084860(n+1)-2^n`
-/

namespace A339252.P17916827410947269373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084860 (n + 1) - (2 ^ n : ℤ)

end

end A339252.P17916827410947269373

namespace A339252

/-- `A084860(n+1)-2^n` -/
def P17916827410947269373.Spec : Prop :=
  ∀ n, P17916827410947269373.a n = A339252 n

end A339252

/-! ## A339252.P12543151089588670143

`A084858(n)+floor(2^(n-1))`
-/

namespace A339252.P12543151089588670143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084858 n + ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A339252.P12543151089588670143

namespace A339252

/-- `A084858(n)+floor(2^(n-1))` -/
def P12543151089588670143.Spec : Prop :=
  ∀ n, P12543151089588670143.a n = A339252 n

end A339252

/-! ## A339252.P5120504329011039134

`A131577(n)+A084858(n)`
-/

namespace A339252.P5120504329011039134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n + A084858 n

end

end A339252.P5120504329011039134

namespace A339252

/-- `A131577(n)+A084858(n)` -/
def P5120504329011039134.Spec : Prop :=
  ∀ n, P5120504329011039134.a n = A339252 n

end A339252

/-! ## A339252.P5813972803361065673

`A321959(n)+A135035(n)`
-/

namespace A339252.P5813972803361065673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321959 n + A135035 n

end

end A339252.P5813972803361065673

namespace A339252

/-- `A321959(n)+A135035(n)` -/
def P5813972803361065673.Spec : Prop :=
  ∀ n, P5813972803361065673.a n = A339252 n

end A339252

/-! ## A339252.P7461743238109722052

`∑[A001792(n)-A049610(n)]`
-/

namespace A339252.P7461743238109722052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001792 n - A049610 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339252.P7461743238109722052

namespace A339252

/-- `∑[A001792(n)-A049610(n)]` -/
def P7461743238109722052.Spec : Prop :=
  ∀ n, P7461743238109722052.a n = A339252 n

end A339252

/-! ## A339252.P14526567958022006007

`A001792(n)+Δ[A139756(n)]`
-/

namespace A339252.P14526567958022006007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139756 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001792 n + (f1 (n + 1) - f1 n)

end

end A339252.P14526567958022006007

namespace A339252

/-- `A001792(n)+Δ[A139756(n)]` -/
def P14526567958022006007.Spec : Prop :=
  ∀ n, P14526567958022006007.a n = A339252 n

end A339252

/-! ## A339252.P2384758787237932875

`A045891(n+1)+A001787(n)`
-/

namespace A339252.P2384758787237932875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045891 (n + 1) + A001787 n

end

end A339252.P2384758787237932875

namespace A339252

/-- `A045891(n+1)+A001787(n)` -/
def P2384758787237932875.Spec : Prop :=
  ∀ n, P2384758787237932875.a n = A339252 n

end A339252

/-! ## A339252.P9786040164424475395

`A049610(n+1)+A001792(n)`
-/

namespace A339252.P9786040164424475395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049610 (n + 1) + A001792 n

end

end A339252.P9786040164424475395

namespace A339252

/-- `A049610(n+1)+A001792(n)` -/
def P9786040164424475395.Spec : Prop :=
  ∀ n, P9786040164424475395.a n = A339252 n

end A339252

/-! ## A339252.P16309220239855872587

`A335903(n+1)-A109975(n)`
-/

namespace A339252.P16309220239855872587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335903 (n + 1) - A109975 n

end

end A339252.P16309220239855872587

namespace A339252

/-- `A335903(n+1)-A109975(n)` -/
def P16309220239855872587.Spec : Prop :=
  ∀ n, P16309220239855872587.a n = A339252 n

end A339252

/-! ## A339252.P12491731999649578943

`A336102(2*n)+A001792(n)`
-/

namespace A339252.P12491731999649578943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336102 (2 * n) + A001792 n

end

end A339252.P12491731999649578943

namespace A339252

/-- `A336102(2*n)+A001792(n)` -/
def P12491731999649578943.Spec : Prop :=
  ∀ n, P12491731999649578943.a n = A339252 n

end A339252

/-! ## A339252.P8590037178147586413

`∑[∑[A045623(n)]-A049610(n)]`
-/

namespace A339252.P8590037178147586413
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045623 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A049610 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339252.P8590037178147586413

namespace A339252

/-- `∑[∑[A045623(n)]-A049610(n)]` -/
def P8590037178147586413.Spec : Prop :=
  ∀ n, P8590037178147586413.a n = A339252 n

end A339252

/-! ## A339252.P7175065318570682690

`A049610(n+1)+∑[A045623(n)]`
-/

namespace A339252.P7175065318570682690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045623 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049610 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339252.P7175065318570682690

namespace A339252

/-- `A049610(n+1)+∑[A045623(n)]` -/
def P7175065318570682690.Spec : Prop :=
  ∀ n, P7175065318570682690.a n = A339252 n

end A339252

/-! ## A339252.P7718090464728557337

`A139756(n+1)+A045891(n+1)`
-/

namespace A339252.P7718090464728557337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139756 (n + 1) + A045891 (n + 1)

end

end A339252.P7718090464728557337

namespace A339252

/-- `A139756(n+1)+A045891(n+1)` -/
def P7718090464728557337.Spec : Prop :=
  ∀ n, P7718090464728557337.a n = A339252 n

end A339252

/-! ## A339252.P15035033586455831323

`A049610(n+1)+A049610(n+2)`
-/

namespace A339252.P15035033586455831323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049610 (n + 1) + A049610 (n + 2)

end

end A339252.P15035033586455831323

namespace A339252

/-- `A049610(n+1)+A049610(n+2)` -/
def P15035033586455831323.Spec : Prop :=
  ∀ n, P15035033586455831323.a n = A339252 n

end A339252

/-! ## A339252.P6683542011679421163

`A336102(2*(n+1))+A336102(2*n)`
-/

namespace A339252.P6683542011679421163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336102 (2 * (n + 1)) + A336102 (2 * n)

end

end A339252.P6683542011679421163

namespace A339252

/-- `A336102(2*(n+1))+A336102(2*n)` -/
def P6683542011679421163.Spec : Prop :=
  ∀ n, P6683542011679421163.a n = A339252 n

end A339252

/-! ## A339252.P10416305444576933336

`A045891(n+1)+n*A034008(n+1)`
-/

namespace A339252.P10416305444576933336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045891 (n + 1) + (n : ℤ) * A034008 (n + 1)

end

end A339252.P10416305444576933336

namespace A339252

/-- `A045891(n+1)+n*A034008(n+1)` -/
def P10416305444576933336.Spec : Prop :=
  ∀ n, P10416305444576933336.a n = A339252 n

end A339252

/-!
# A339254: a(n) = 6*a(n - 1) - 12*a(n - 2) + 8*a(n - 3) for n >= 5, a(0) = 1, a(1) = 7, a(2) = 24, a(3) = 70, a(4) = 193.

The programs for A339254, the canonical program `A339254.P9614187548484412658` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A339254 has offset 0).

The definition of A339254 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*a(n-1)-12*a(n-2)+8*a(n-3)` (program `A339254.P9614187548484412658`, by `A339254.P9614187548484412658.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A339254.P9614187548484412658

`6*a(n-1)-12*a(n-2)+8*a(n-3)` with `a(0)=1, a(1)=7, a(2)=24, a(3)=70, a(4)=193`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A339254

/-- `6*a(n-1)-12*a(n-2)+8*a(n-3)` -/
def P9614187548484412658.Spec : Prop :=
  ∀ n, P9614187548484412658.a n = A339254 n

theorem P9614187548484412658.correct : P9614187548484412658.Spec := by
  intro n
  simp only [A339254]

end A339254

/-! ## A339254.P14429101622432555189

`A333650(∑[n+3]+1)`
-/

namespace A339254.P14429101622432555189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333650 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A339254.P14429101622432555189

namespace A339254

/-- `A333650(∑[n+3]+1)` -/
def P14429101622432555189.Spec : Prop :=
  ∀ n, P14429101622432555189.a n = A339254 n

end A339254

/-! ## A339254.P7755615645568586210

`record[A023531(n+2)*A333650(n+1)]`
-/

namespace A339254.P7755615645568586210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 (n + 2) * A333650 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339254.P7755615645568586210

namespace A339254

/-- `record[A023531(n+2)*A333650(n+1)]` -/
def P7755615645568586210.Spec : Prop :=
  ∀ n, P7755615645568586210.a n = A339254 n

end A339254

/-! ## A339254.P7426887769551793421

`record[A010054(n+3)*A333650(n+1)]`
-/

namespace A339254.P7426887769551793421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 3) * A333650 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339254.P7426887769551793421

namespace A339254

/-- `record[A010054(n+3)*A333650(n+1)]` -/
def P7426887769551793421.Spec : Prop :=
  ∀ n, P7426887769551793421.a n = A339254 n

end A339254

/-! ## A339254.P10789037467614276309

`record[A333650(n+1)/A038622(n+2)]`
-/

namespace A339254.P10789037467614276309
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A333650 (n + 1) : ℚ) / (A038622 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339254.P10789037467614276309

namespace A339254

/-- `record[A333650(n+1)/A038622(n+2)]` -/
def P10789037467614276309.Spec : Prop :=
  ∀ n, P10789037467614276309.a n = (A339254 n : ℚ)

end A339254

/-!
# A339255: Leading digit of n in base 5.

The programs for A339255, the canonical program `A339255.P17829690154061841677` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A339255 has offset 1).

The definition of A339255 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A339255.P17829690154061841677

`a(floor((n+1)/5)-1)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A339255

/-- `a(floor((n+1)/5)-1)` -/
def P17829690154061841677.Spec : Prop :=
  ∀ n, (P17829690154061841677.a n : ℤ) = A339255 (n + 1)

theorem P17829690154061841677.correct : P17829690154061841677.Spec := by
  intro n
  simp only [A339255, Nat.add_sub_cancel]

end A339255

/-! ## A339255.P132701926648037467

`A264995(A132739(n+1))%5`
-/

namespace A339255.P132701926648037467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A264995 (A132739 (n + 1)).toNat) 5

end

end A339255.P132701926648037467

namespace A339255

/-- `A264995(A132739(n+1))%5` -/
def P132701926648037467.Spec : Prop :=
  ∀ n, P132701926648037467.a n = A339255 (n + 1)

end A339255

/-! ## A339255.P12129730320110951541

`Δ[A073851(n)]`
-/

namespace A339255.P12129730320110951541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073851 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A339255.P12129730320110951541

namespace A339255

/-- `Δ[A073851(n)]` -/
def P12129730320110951541.Spec : Prop :=
  ∀ n, P12129730320110951541.a n = A339255 (n + 1)

end A339255

/-! ## A339255.P16429907265158745640

`A030104(n+1)%5`
-/

namespace A339255.P16429907265158745640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030104 (n + 1)) 5

end

end A339255.P16429907265158745640

namespace A339255

/-- `A030104(n+1)%5` -/
def P16429907265158745640.Spec : Prop :=
  ∀ n, P16429907265158745640.a n = A339255 (n + 1)

end A339255

/-! ## A339255.P12018379390838500011

`A255690(n+1)%5`
-/

namespace A339255.P12018379390838500011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A255690 (n + 1)) 5

end

end A339255.P12018379390838500011

namespace A339255

/-- `A255690(n+1)%5` -/
def P12018379390838500011.Spec : Prop :=
  ∀ n, P12018379390838500011.a n = A339255 (n + 1)

end A339255

/-! ## A339255.P12452438618373879278

`A073851(n+1)-A073851(n)`
-/

namespace A339255.P12452438618373879278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073851 (n + 1) - A073851 n

end

end A339255.P12452438618373879278

namespace A339255

/-- `A073851(n+1)-A073851(n)` -/
def P12452438618373879278.Spec : Prop :=
  ∀ n, P12452438618373879278.a n = A339255 (n + 1)

end A339255

/-! ## A339255.P18281387854636493469

`(A194459(n+1)-A339146(n+1))/A339146(n+1)`
-/

namespace A339255.P18281387854636493469
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A194459 (n + 1) - A339146 (n + 1) : ℚ) / (A339146 (n + 1) : ℚ)

end

end A339255.P18281387854636493469

namespace A339255

/-- `(A194459(n+1)-A339146(n+1))/A339146(n+1)` -/
def P18281387854636493469.Spec : Prop :=
  ∀ n, P18281387854636493469.a n = (A339255 (n + 1) : ℚ)

end A339255

/-! ## A339255.P12462268215727511242

`A010874(A255690(n+1))`
-/

namespace A339255.P12462268215727511242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010874 (A255690 (n + 1)).toNat

end

end A339255.P12462268215727511242

namespace A339255

/-- `A010874(A255690(n+1))` -/
def P12462268215727511242.Spec : Prop :=
  ∀ n, P12462268215727511242.a n = A339255 (n + 1)

end A339255

/-! ## A339255.P5446266242809924770

`A339256(A037465(n+1))`
-/

namespace A339255.P5446266242809924770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339256 (A037465 (n + 1)).toNat

end

end A339255.P5446266242809924770

namespace A339255

/-- `A339256(A037465(n+1))` -/
def P5446266242809924770.Spec : Prop :=
  ∀ n, P5446266242809924770.a n = A339255 (n + 1)

end A339255

/-! ## A339255.P2800053979781663924

`A010874(A030104(n+1))`
-/

namespace A339255.P2800053979781663924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010874 (A030104 (n + 1)).toNat

end

end A339255.P2800053979781663924

namespace A339255

/-- `A010874(A030104(n+1))` -/
def P2800053979781663924.Spec : Prop :=
  ∀ n, P2800053979781663924.a n = A339255 (n + 1)

end A339255

/-! ## A339255.P17639559466556457212

`A277543(A264995(n+1))`
-/

namespace A339255.P17639559466556457212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277543 (A264995 (n + 1)).toNat

end

end A339255.P17639559466556457212

namespace A339255

/-- `A277543(A264995(n+1))` -/
def P17639559466556457212.Spec : Prop :=
  ∀ n, P17639559466556457212.a n = A339255 (n + 1)

end A339255

/-! ## A339255.P8302440744712245796

`A031219(A031225(n+1))`
-/

namespace A339255.P8302440744712245796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031219 (A031225 (n + 1)).toNat

end

end A339255.P8302440744712245796

namespace A339255

/-- `A031219(A031225(n+1))` -/
def P8302440744712245796.Spec : Prop :=
  ∀ n, P8302440744712245796.a n = A339255 (n + 1)

end A339255

/-! ## A339255.P3022096448786822090

`A031235(A031241(n+1))`
-/

namespace A339255.P3022096448786822090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031235 (A031241 (n + 1)).toNat

end

end A339255.P3022096448786822090

namespace A339255

/-- `A031235(A031241(n+1))` -/
def P3022096448786822090.Spec : Prop :=
  ∀ n, P3022096448786822090.a n = A339255 (n + 1)

end A339255

/-! ## A339255.P3502819724316076235

`A031253(A031259(n+1))`
-/

namespace A339255.P3502819724316076235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031253 (A031259 (n + 1)).toNat

end

end A339255.P3502819724316076235

namespace A339255

/-- `A031253(A031259(n+1))` -/
def P3502819724316076235.Spec : Prop :=
  ∀ n, P3502819724316076235.a n = A339255 (n + 1)

end A339255

/-! ## A339255.P15831318467632293428

`A031269(A031275(n+1))`
-/

namespace A339255.P15831318467632293428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031269 (A031275 (n + 1)).toNat

end

end A339255.P15831318467632293428

namespace A339255

/-- `A031269(A031275(n+1))` -/
def P15831318467632293428.Spec : Prop :=
  ∀ n, P15831318467632293428.a n = A339255 (n + 1)

end A339255

/-! ## A339255.P5944747426534159264

`A000030(A007091(n+1))`
-/

namespace A339255.P5944747426534159264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A007091 (n + 1)).toNat

end

end A339255.P5944747426534159264

namespace A339255

/-- `A000030(A007091(n+1))` -/
def P5944747426534159264.Spec : Prop :=
  ∀ n, P5944747426534159264.a n = A339255 (n + 1)

end A339255

/-! ## A339255.P2855268233072562375

`A031251(A031252(n+1))`
-/

namespace A339255.P2855268233072562375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031251 (A031252 (n + 1)).toNat

end

end A339255.P2855268233072562375

namespace A339255

/-- `A031251(A031252(n+1))` -/
def P2855268233072562375.Spec : Prop :=
  ∀ n, P2855268233072562375.a n = A339255 (n + 1)

end A339255

/-! ## A339255.P5740052200512339183

`A084054(A014263(n+2))`
-/

namespace A339255.P5740052200512339183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084054 (A014263 (n + 2)).toNat

end

end A339255.P5740052200512339183

namespace A339255

/-- `A084054(A014263(n+2))` -/
def P5740052200512339183.Spec : Prop :=
  ∀ n, P5740052200512339183.a n = A339255 (n + 1)

end A339255

/-! ## A339255.P16091937917051616675

`A084054(A062285(n+2))`
-/

namespace A339255.P16091937917051616675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084054 (A062285 (n + 2)).toNat

end

end A339255.P16091937917051616675

namespace A339255

/-- `A084054(A062285(n+2))` -/
def P16091937917051616675.Spec : Prop :=
  ∀ n, P16091937917051616675.a n = A339255 (n + 1)

end A339255

/-!
# A339256: Leading digit of n in base 6.

The programs for A339256, the canonical program `A339256.P10589785540473457141` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A339256 has offset 1).

The definition of A339256 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A339256.P10589785540473457141

`a(floor((n+1)/6)-1)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4, a(4)=5`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A339256

/-- `a(floor((n+1)/6)-1)` -/
def P10589785540473457141.Spec : Prop :=
  ∀ n, (P10589785540473457141.a n : ℤ) = A339256 (n + 1)

theorem P10589785540473457141.correct : P10589785540473457141.Spec := by
  intro n
  simp only [A339256, Nat.add_sub_cancel]

end A339256

/-! ## A339256.P2987489859414260611

`Δ[A109804(n)]`
-/

namespace A339256.P2987489859414260611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A339256.P2987489859414260611

namespace A339256

/-- `Δ[A109804(n)]` -/
def P2987489859414260611.Spec : Prop :=
  ∀ n, P2987489859414260611.a n = A339256 (n + 1)

end A339256

/-! ## A339256.P15284540345179052723

`A030105(n+1)%6`
-/

namespace A339256.P15284540345179052723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030105 (n + 1)) 6

end

end A339256.P15284540345179052723

namespace A339256

/-- `A030105(n+1)%6` -/
def P15284540345179052723.Spec : Prop :=
  ∀ n, P15284540345179052723.a n = A339256 (n + 1)

end A339256

/-! ## A339256.P12527579799553735274

`A255691(n+1)%6`
-/

namespace A339256.P12527579799553735274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A255691 (n + 1)) 6

end

end A339256.P12527579799553735274

namespace A339256

/-- `A255691(n+1)%6` -/
def P12527579799553735274.Spec : Prop :=
  ∀ n, P12527579799553735274.a n = A339256 (n + 1)

end A339256

/-! ## A339256.P8698678740808008074

`A010875(A030105(n+1))`
-/

namespace A339256.P8698678740808008074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010875 (A030105 (n + 1)).toNat

end

end A339256.P8698678740808008074

namespace A339256

/-- `A010875(A030105(n+1))` -/
def P8698678740808008074.Spec : Prop :=
  ∀ n, P8698678740808008074.a n = A339256 (n + 1)

end A339256

/-! ## A339256.P8230426546642579302

`A010875(A255691(n+1))`
-/

namespace A339256.P8230426546642579302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010875 (A255691 (n + 1)).toNat

end

end A339256.P8230426546642579302

namespace A339256

/-- `A010875(A255691(n+1))` -/
def P8230426546642579302.Spec : Prop :=
  ∀ n, P8230426546642579302.a n = A339256 (n + 1)

end A339256

/-! ## A339256.P1353694105099582934

`A109804(n+1)-A109804(n)`
-/

namespace A339256.P1353694105099582934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109804 (n + 1) - A109804 n

end

end A339256.P1353694105099582934

namespace A339256

/-- `A109804(n+1)-A109804(n)` -/
def P1353694105099582934.Spec : Prop :=
  ∀ n, P1353694105099582934.a n = A339256 (n + 1)

end A339256

/-! ## A339256.P8958142864908230542

`A297259(n+6)%6`
-/

namespace A339256.P8958142864908230542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A297259 (n + 6)) 6

end

end A339256.P8958142864908230542

namespace A339256

/-- `A297259(n+6)%6` -/
def P8958142864908230542.Spec : Prop :=
  ∀ n, P8958142864908230542.a n = A339256 (n + 1)

end A339256

/-! ## A339256.P8974126928188256038

`A030588(A030595(n+1))`
-/

namespace A339256.P8974126928188256038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030588 (A030595 (n + 1)).toNat

end

end A339256.P8974126928188256038

namespace A339256

/-- `A030588(A030595(n+1))` -/
def P8974126928188256038.Spec : Prop :=
  ∀ n, P8974126928188256038.a n = A339256 (n + 1)

end A339256

/-! ## A339256.P3848524097689545013

`dr(A030108(A037472(n+1)))`
-/

namespace A339256.P3848524097689545013
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A030108 (A037472 (n + 1)).toNat)

end

end A339256.P3848524097689545013

namespace A339256

/-- `dr(A030108(A037472(n+1)))` -/
def P3848524097689545013.Spec : Prop :=
  ∀ n, (P3848524097689545013.a n : ℤ) = A339256 (n + 1)

end A339256

/-! ## A339256.P269592587339778476

`A030548(A030555(n+1))`
-/

namespace A339256.P269592587339778476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030548 (A030555 (n + 1)).toNat

end

end A339256.P269592587339778476

namespace A339256

/-- `A030548(A030555(n+1))` -/
def P269592587339778476.Spec : Prop :=
  ∀ n, P269592587339778476.a n = A339256 (n + 1)

end A339256

/-! ## A339256.P4101072008864931

`A030604(A030611(n+1)+1)`
-/

namespace A339256.P4101072008864931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030604 (A030611 (n + 1) + 1).toNat

end

end A339256.P4101072008864931

namespace A339256

/-- `A030604(A030611(n+1)+1)` -/
def P4101072008864931.Spec : Prop :=
  ∀ n, P4101072008864931.a n = A339256 (n + 1)

end A339256

/-! ## A339256.P15058856936130151691

`A000030(A007092(n+1))`
-/

namespace A339256.P15058856936130151691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A007092 (n + 1)).toNat

end

end A339256.P15058856936130151691

namespace A339256

/-- `A000030(A007092(n+1))` -/
def P15058856936130151691.Spec : Prop :=
  ∀ n, P15058856936130151691.a n = A339256 (n + 1)

end A339256

/-! ## A339256.P3283768941465039999

`A030586(A030587(n+1))`
-/

namespace A339256.P3283768941465039999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030586 (A030587 (n + 1)).toNat

end

end A339256.P3283768941465039999

namespace A339256

/-- `A030586(A030587(n+1))` -/
def P3283768941465039999.Spec : Prop :=
  ∀ n, P3283768941465039999.a n = A339256 (n + 1)

end A339256

/-! ## A339256.P6800590939331090779

`A030567(A030574(n+1))`
-/

namespace A339256.P6800590939331090779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030567 (A030574 (n + 1)).toNat

end

end A339256.P6800590939331090779

namespace A339256

/-- `A030567(A030574(n+1))` -/
def P6800590939331090779.Spec : Prop :=
  ∀ n, P6800590939331090779.a n = A339256 (n + 1)

end A339256

/-! ## A339256.P11519807394579000563

`A273619(∑[n+5]+7)`
-/

namespace A339256.P11519807394579000563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273619 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A339256.P11519807394579000563

namespace A339256

/-- `A273619(∑[n+5]+7)` -/
def P11519807394579000563.Spec : Prop :=
  ∀ n, P11519807394579000563.a n = A339256 (n + 1)

end A339256

/-!
# A339258: Triangle read by rows T(n,k), (n >= 1, k > = 1), in which row n has length A000070(n-1) and every column gives A000005, the number of divisors function.

The programs for A339258, there is no canonical definition to state claims against.
-/

/-! ## A339258.P6943391768672632917

`A000005(A176206(n+1))`
-/

namespace A339258.P6943391768672632917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A176206 (n + 1)).toNat

end

end A339258.P6943391768672632917

/-! ## A339258.P16301206964125844905

`A046951(A176206(n+1)²)`
-/

namespace A339258.P16301206964125844905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (A176206 (n + 1) ^ 2).toNat

end

end A339258.P16301206964125844905

/-! ## A339258.P17233589670005857887

`A109974(C(A176206(n+1), 2))`
-/

namespace A339258.P17233589670005857887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109974 (Nat.choose (A176206 (n + 1)).toNat 2)

end

end A339258.P17233589670005857887

/-! ## A339258.P12055129692780972751

`∑{d}[A176206(n+1), #/A000027(#)]`
-/

namespace A339258.P12055129692780972751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176206 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (d : ℚ) / (A000027 d : ℚ)

end

end A339258.P12055129692780972751

/-! ## A339258.P12680321818277435001

`A290532(A340530(n+1))`
-/

namespace A339258.P12680321818277435001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290532 (A340530 (n + 1)).toNat

end

end A339258.P12680321818277435001

/-! ## A339258.P10401413582330861492

`A000005(or(1, A340530(n+1)))`
-/

namespace A339258.P10401413582330861492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.lor 1 (A340530 (n + 1))).toNat

end

end A339258.P10401413582330861492

/-! ## A339258.P4289706175018839753

`∏{e}[or(1, A340530(n+1)), A000040(#)]`
-/

namespace A339258.P4289706175018839753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A340530 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000040 (Nat.factorization (f1 n).natAbs p)

end

end A339258.P4289706175018839753

/-!
# A339264: Decimal expansion of (63/25) * (17+15*sqrt(5)) / (7+15*sqrt(5)): an approximation for Pi from Srinivasa Ramanujan.

The programs for A339264, there is no canonical definition to state claims against.
-/

/-! ## A339264.P17883199069774436831

`A001355(A005408(n)^A061901(n))`
-/

namespace A339264.P17883199069774436831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001355 (SequenceMachineLib.roundAway ((A005408 n : ℚ) ^ (A061901 n : ℤ))).toNat

end

end A339264.P17883199069774436831

/-! ## A339264.P17501732606716941261

`A000796(A033865(n^A208879(n)))`
-/

namespace A339264.P17501732606716941261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 ((A033865 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A208879 n : ℤ))).toNat).toNat + 1)

end

end A339264.P17501732606716941261

/-! ## A339264.P17570741814691313099

`A000796(A082216(n^A208879(n)))`
-/

namespace A339264.P17570741814691313099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 ((A082216 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A208879 n : ℤ))).toNat).toNat + 1)

end

end A339264.P17570741814691313099

/-! ## A339264.P9242781541833782261

`A000796(C(A030147(n+1), A204118(n+1)))`
-/

namespace A339264.P9242781541833782261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (Nat.choose (A030147 (n + 1)).toNat (A204118 (n + 1)).toNat + 1)

end

end A339264.P9242781541833782261

/-!
# A339265: Expansion of Product_{n >= 1} (1 - x^(2*n))*(1 - x^(2*n-1))*(1 - x^(2*n+1)).

The programs for A339265, the canonical program `A339265.P9331210432347120952` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A339265 has offset 0).

The definition of A339265 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A339265.P851941403924579110

`(-1)^floor(sqrt(n))`
-/

namespace A339265.P851941403924579110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ Nat.sqrt n

end

end A339265.P851941403924579110

namespace A339265

/-- `(-1)^floor(sqrt(n))` -/
def P851941403924579110.Spec : Prop :=
  ∀ n, P851941403924579110.a n = A339265 n

end A339265

/-! ## A339265.P16775441987484930143

`cos(π*floor(sqrt(n)))`
-/

namespace A339265.P16775441987484930143
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (Real.pi * (Nat.sqrt n : ℝ))

end

end A339265.P16775441987484930143

namespace A339265

/-- `cos(π*floor(sqrt(n)))` -/
def P16775441987484930143.Spec : Prop :=
  ∀ n, P16775441987484930143.a n = (A339265 n : ℝ)

end A339265

/-! ## A339265.P9331210432347120952

`or(1, -(floor(sqrt(n))%2))`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A339265

/-- `or(1, -(floor(sqrt(n))%2))` -/
def P9331210432347120952.Spec : Prop :=
  ∀ n, P9331210432347120952.a n = A339265 n

theorem P9331210432347120952.correct : P9331210432347120952.Spec := by
  intro n
  simp only [A339265]

end A339265

/-! ## A339265.P1691461660623911396

`∏[∏{d}[n, -(n/#²)]]`
-/

namespace A339265.P1691461660623911396
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f2 n), (-((n : ℚ) / (d ^ 2 : ℚ)))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A339265.P1691461660623911396

namespace A339265

/-- `∏[∏{d}[n, -(n/#²)]]` -/
def P1691461660623911396.Spec : Prop :=
  ∀ n, P1691461660623911396.a n = (A339265 n : ℚ)

end A339265

/-! ## A339265.P16891494897197589994

`1-and(2, 2*floor(sqrt(n)))`
-/

namespace A339265.P16891494897197589994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Nat.land 2 (2 * Nat.sqrt n) : ℤ)

end

end A339265.P16891494897197589994

namespace A339265

/-- `1-and(2, 2*floor(sqrt(n)))` -/
def P16891494897197589994.Spec : Prop :=
  ∀ n, P16891494897197589994.a n = A339265 n

end A339265

/-! ## A339265.P1599223323458305433

`∑[A002448(n)]`
-/

namespace A339265.P1599223323458305433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002448 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339265.P1599223323458305433

namespace A339265

/-- `∑[A002448(n)]` -/
def P1599223323458305433.Spec : Prop :=
  ∀ n, P1599223323458305433.a n = A339265 n

end A339265

/-! ## A339265.P9632499819574542495

`Δ[A329116(n)]`
-/

namespace A339265.P9632499819574542495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329116 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A339265.P9632499819574542495

namespace A339265

/-- `Δ[A329116(n)]` -/
def P9632499819574542495.Spec : Prop :=
  ∀ n, P9632499819574542495.a n = A339265 n

end A339265

/-! ## A339265.P3210863964915927838

`A033999(floor(sqrt(n)))`
-/

namespace A339265.P3210863964915927838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (Nat.sqrt n)

end

end A339265.P3210863964915927838

namespace A339265

/-- `A033999(floor(sqrt(n)))` -/
def P3210863964915927838.Spec : Prop :=
  ∀ n, P3210863964915927838.a n = A339265 n

end A339265

/-! ## A339265.P5014832715226511602

`A087960(floor(sqrt(n))²)`
-/

namespace A339265.P5014832715226511602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 (Nat.sqrt n ^ 2)

end

end A339265.P5014832715226511602

namespace A339265

/-- `A087960(floor(sqrt(n))²)` -/
def P5014832715226511602.Spec : Prop :=
  ∀ n, P5014832715226511602.a n = A339265 n

end A339265

/-! ## A339265.P11777051538165276324

`A062157(∑[char[n²]])`
-/

namespace A339265.P11777051538165276324
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A339265.P11777051538165276324

namespace A339265

/-- `A062157(∑[char[n²]])` -/
def P11777051538165276324.Spec : Prop :=
  ∀ n, P11777051538165276324.a n = A339265 n

end A339265

/-! ## A339265.P10657041946847894052

`A165326(floor(sqrt(n))+1)`
-/

namespace A339265.P10657041946847894052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165326 (Nat.sqrt n + 1)

end

end A339265.P10657041946847894052

namespace A339265

/-- `A165326(floor(sqrt(n))+1)` -/
def P10657041946847894052.Spec : Prop :=
  ∀ n, P10657041946847894052.a n = A339265 n

end A339265

/-! ## A339265.P617789938369279733

`1-A010673(floor(sqrt(n)))`
-/

namespace A339265.P617789938369279733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A010673 (Nat.sqrt n)

end

end A339265.P617789938369279733

namespace A339265

/-- `1-A010673(floor(sqrt(n)))` -/
def P617789938369279733.Spec : Prop :=
  ∀ n, P617789938369279733.a n = A339265 n

end A339265

/-! ## A339265.P2558546354680716422

`2-A010684(floor(sqrt(n)))`
-/

namespace A339265.P2558546354680716422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A010684 (Nat.sqrt n)

end

end A339265.P2558546354680716422

namespace A339265

/-- `2-A010684(floor(sqrt(n)))` -/
def P2558546354680716422.Spec : Prop :=
  ∀ n, P2558546354680716422.a n = A339265 n

end A339265

/-! ## A339265.P13560473417310897217

`A009001(2*floor(sqrt(n)))`
-/

namespace A339265.P13560473417310897217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (2 * Nat.sqrt n)

end

end A339265.P13560473417310897217

namespace A339265

/-- `A009001(2*floor(sqrt(n)))` -/
def P13560473417310897217.Spec : Prop :=
  ∀ n, P13560473417310897217.a n = A339265 n

end A339265

/-! ## A339265.P7947743496447379125

`A056594(2*floor(sqrt(n)))`
-/

namespace A339265.P7947743496447379125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (2 * Nat.sqrt n)

end

end A339265.P7947743496447379125

namespace A339265

/-- `A056594(2*floor(sqrt(n)))` -/
def P7947743496447379125.Spec : Prop :=
  ∀ n, P7947743496447379125.a n = A339265 n

end A339265

/-! ## A339265.P17924171292029948718

`A115139(∑[char[n²]]²)`
-/

namespace A339265.P17924171292029948718
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115139 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2)

end

end A339265.P17924171292029948718

namespace A339265

/-- `A115139(∑[char[n²]]²)` -/
def P17924171292029948718.Spec : Prop :=
  ∀ n, P17924171292029948718.a n = A339265 n

end A339265

/-! ## A339265.P1341949042711012837

`1-2*A267034(n+1)`
-/

namespace A339265.P1341949042711012837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - 2 * A267034 (n + 1)

end

end A339265.P1341949042711012837

namespace A339265

/-- `1-2*A267034(n+1)` -/
def P1341949042711012837.Spec : Prop :=
  ∀ n, P1341949042711012837.a n = A339265 n

end A339265

/-! ## A339265.P11636859103582318944

`a(n-1)*A158387(n)` with `a(0)=1`
-/

namespace A339265.P11636859103582318944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A158387 n

end

end A339265.P11636859103582318944

namespace A339265

/-- `a(n-1)*A158387(n)` -/
def P11636859103582318944.Spec : Prop :=
  ∀ n, P11636859103582318944.a n = A339265 n

end A339265

/-! ## A339265.P5162386703970323878

`(1-A000122(n))*a(n-1)` with `a(0)=1`
-/

namespace A339265.P5162386703970323878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (1 - A000122 n) * a (n - 1)

end

end A339265.P5162386703970323878

namespace A339265

/-- `(1-A000122(n))*a(n-1)` -/
def P5162386703970323878.Spec : Prop :=
  ∀ n, P5162386703970323878.a n = A339265 n

end A339265

/-! ## A339265.P5118259742937790886

`(-1)^A000005(n)*a(n-1)` with `a(0)=1`
-/

namespace A339265.P5118259742937790886
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (-1 : ℚ) ^ (A000005 n : ℤ) * a (n - 1)

end

end A339265.P5118259742937790886

namespace A339265

/-- `(-1)^A000005(n)*a(n-1)` -/
def P5118259742937790886.Spec : Prop :=
  ∀ n, P5118259742937790886.a n = (A339265 n : ℚ)

end A339265

/-!
# A339267: Level of the Calkin-Wilf tree in which the n-th convergent of the continued fraction for e appears.

The programs for A339267, the canonical program `A339267.P2372862971580033784` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A339267 has offset 1).

The definition of A339267 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A339267.P2372862971580033784

`floor((n+1)/3)²+n+1+1`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A339267

/-- `floor((n+1)/3)²+n+1+1` -/
def P2372862971580033784.Spec : Prop :=
  ∀ n, P2372862971580033784.a n = A339267 (n + 1)

theorem P2372862971580033784.correct : P2372862971580033784.Spec := by
  intro n
  simp only [A339267, Nat.add_sub_cancel]

end A339267

/-! ## A339267.P600970121939717748

`∑[A003417(n)]`
-/

namespace A339267.P600970121939717748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003417 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339267.P600970121939717748

namespace A339267

/-- `∑[A003417(n)]` -/
def P600970121939717748.Spec : Prop :=
  ∀ n, P600970121939717748.a n = A339267 (n + 1)

end A339267

/-! ## A339267.P6705530161289720729

`∑[∑[A120691(n)]]`
-/

namespace A339267.P6705530161289720729
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120691 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339267.P6705530161289720729

namespace A339267

/-- `∑[∑[A120691(n)]]` -/
def P6705530161289720729.Spec : Prop :=
  ∀ n, P6705530161289720729.a n = A339267 (n + 1)

end A339267

/-! ## A339267.P9554870214663461431

`∑[A004277(abs((2*C(n, 3)+1)%(n+1)-n)^n^(1-n²%3))]`
-/

namespace A339267.P9554870214663461431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (SequenceMachineLib.roundAway ((|(((2 * Nat.choose n 3 + 1) % (n + 1) : ℕ) : ℤ) - (n : ℤ)| : ℝ) ^ ((n : ℚ) ^ (1 - ((n ^ 2 % 3 : ℕ) : ℤ) : ℤ) : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339267.P9554870214663461431

namespace A339267

/-- `∑[A004277(abs((2*C(n, 3)+1)%(n+1)-n)^n^(1-n²%3))]` -/
def P9554870214663461431.Spec : Prop :=
  ∀ n, P9554870214663461431.a n = A339267 (n + 1)

end A339267

/-! ## A339267.P17604554160564448982

`∑[gcd(A166711(n), A184538(n+1))]`
-/

namespace A339267.P17604554160564448982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A166711 n) (A184538 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339267.P17604554160564448982

namespace A339267

/-- `∑[gcd(A166711(n), A184538(n+1))]` -/
def P17604554160564448982.Spec : Prop :=
  ∀ n, (P17604554160564448982.a n : ℤ) = A339267 (n + 1)

end A339267

/-! ## A339267.P6417210420163629660

`∑[A005131(n+2)^a(n-1)]` with `a(0)=2, a(1)=1, a(2)=2`
-/

namespace A339267.P6417210420163629660
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [2, 1, 2] fun n f1 =>
  (A005131 (n + 2) : ℝ) ^ (f1 (n - 1))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339267.P6417210420163629660

namespace A339267

/-- `∑[A005131(n+2)^a(n-1)]` -/
def P6417210420163629660.Spec : Prop :=
  ∀ n, P6417210420163629660.a n = (A339267 (n + 1) : ℝ)

end A339267

/-! ## A339267.P15414033188601603306

`∑[A005131(2*A054977(n)+n)]`
-/

namespace A339267.P15414033188601603306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005131 (2 * A054977 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339267.P15414033188601603306

namespace A339267

/-- `∑[A005131(2*A054977(n)+n)]` -/
def P15414033188601603306.Spec : Prop :=
  ∀ n, P15414033188601603306.a n = A339267 (n + 1)

end A339267

/-! ## A339267.P14463877762625869725

`A000037(A087278(n+1))`
-/

namespace A339267.P14463877762625869725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000037 (A087278 (n + 1)).toNat

end

end A339267.P14463877762625869725

namespace A339267

/-- `A000037(A087278(n+1))` -/
def P14463877762625869725.Spec : Prop :=
  ∀ n, P14463877762625869725.a n = A339267 (n + 1)

end A339267

/-! ## A339267.P4579765691048873498

`lt[A053615(n), 2*n/(n+1)]`
-/

namespace A339267.P4579765691048873498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053615 n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A339267.P4579765691048873498

namespace A339267

/-- `lt[A053615(n), 2*n/(n+1)]` -/
def P4579765691048873498.Spec : Prop :=
  ∀ n, (P4579765691048873498.a n : ℤ) = A339267 (n + 1)

end A339267

/-! ## A339267.P11129268555730619959

`eq[A053615(n), A266070(n)]`
-/

namespace A339267.P11129268555730619959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053615 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266070 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A339267.P11129268555730619959

namespace A339267

/-- `eq[A053615(n), A266070(n)]` -/
def P11129268555730619959.Spec : Prop :=
  ∀ n, (P11129268555730619959.a n : ℤ) = A339267 (n + 1)

end A339267

/-! ## A339267.P181911429156860720

`eq[A053615(n), A267810(n)]`
-/

namespace A339267.P181911429156860720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053615 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267810 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A339267.P181911429156860720

namespace A339267

/-- `eq[A053615(n), A267810(n)]` -/
def P181911429156860720.Spec : Prop :=
  ∀ n, (P181911429156860720.a n : ℤ) = A339267 (n + 1)

end A339267

/-! ## A339267.P4346057596707060526

`eq[A266070(n), A380763(n)]`
-/

namespace A339267.P4346057596707060526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266070 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380763 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A339267.P4346057596707060526

namespace A339267

/-- `eq[A266070(n), A380763(n)]` -/
def P4346057596707060526.Spec : Prop :=
  ∀ n, (P4346057596707060526.a n : ℤ) = A339267 (n + 1)

end A339267

/-! ## A339267.P2601474676548827906

`eq[A267810(n), A380763(n)]`
-/

namespace A339267.P2601474676548827906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267810 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380763 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A339267.P2601474676548827906

namespace A339267

/-- `eq[A267810(n), A380763(n)]` -/
def P2601474676548827906.Spec : Prop :=
  ∀ n, (P2601474676548827906.a n : ℤ) = A339267 (n + 1)

end A339267

/-! ## A339267.P14853094689525239110

`eq[A099555(n), A141044(n)]`
-/

namespace A339267.P14853094689525239110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099555 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141044 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A339267.P14853094689525239110

namespace A339267

/-- `eq[A099555(n), A141044(n)]` -/
def P14853094689525239110.Spec : Prop :=
  ∀ n, (P14853094689525239110.a n : ℤ) = A339267 (n + 1)

end A339267

/-! ## A339267.P10132656724736332776

`eq[A099555(n), A157928(n)]`
-/

namespace A339267.P10132656724736332776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099555 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A339267.P10132656724736332776

namespace A339267

/-- `eq[A099555(n), A157928(n)]` -/
def P10132656724736332776.Spec : Prop :=
  ∀ n, (P10132656724736332776.a n : ℤ) = A339267 (n + 1)

end A339267

/-!
# A339268: The smallest prime that becomes 2 * prime(n), when all the bits in its binary expansion are inverted, or -1 if no such prime exists.

The programs for A339268, there is no canonical definition to state claims against.
-/

/-! ## A339268.P18125805859147213359

`A343738(p?[comp[n²]]+1)`
-/

namespace A339268.P18125805859147213359
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343738 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) + 1)

end

end A339268.P18125805859147213359

/-! ## A339268.P15865007734113245368

`A343738(∑{d}[p?[comp[n²]], #])`
-/

namespace A339268.P15865007734113245368
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343738 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A339268.P15865007734113245368

/-! ## A339268.P15117648419024735981

`A343738(A008864(n+1))`
-/

namespace A339268.P15117648419024735981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343738 (A008864 (n + 1)).toNat

end

end A339268.P15117648419024735981

/-! ## A339268.P3216519926267862957

`A343738(A028815(n+1))`
-/

namespace A339268.P3216519926267862957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343738 (A028815 (n + 1)).toNat

end

end A339268.P3216519926267862957

/-! ## A339268.P7365800362464433327

`A343738(A299763(n+2))`
-/

namespace A339268.P7365800362464433327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343738 (A299763 (n + 2)).toNat

end

end A339268.P7365800362464433327

/-!
# A339270: a(n) is the largest m such that there is no prime except prime(n) from prime(n)-m+1 to prime(n)+m.

The programs for A339270, there is no canonical definition to state claims against.
-/

/-! ## A339270.P3849637418448733813

`A046929(n+1)+char[A233671(n+1)-1]`
-/

namespace A339270.P3849637418448733813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233671 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046929 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A339270.P3849637418448733813

/-! ## A339270.P4810066272130694355

`A046929(n+1)+char[eq[1, A228098(n+1)]+1]`
-/

namespace A339270.P4810066272130694355
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228098 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046929 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A339270.P4810066272130694355

/-! ## A339270.P5863973912750731745

`A046929(n+1)+char[eq[1, A108415(n+2)]+1]`
-/

namespace A339270.P5863973912750731745
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108415 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046929 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A339270.P5863973912750731745

/-! ## A339270.P3697767449265454984

`A046929(n+1)+char[record[1-n*A079054(n+2)]]`
-/

namespace A339270.P3697767449265454984
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ) * A079054 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046929 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A339270.P3697767449265454984

/-! ## A339270.P14134643113590965436

`A099563(A068911(n)-A094587(n))`
-/

namespace A339270.P14134643113590965436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099563 (A068911 n - A094587 n).toNat

end

end A339270.P14134643113590965436

/-!
# A339273: Sums of two nonzero even squares.

The programs for A339273, the canonical program `A339273.P10031977836032368190` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A339273 has offset 1).

The definition of A339273 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000404, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A339273.P10031977836032368190

`4*A000404(n+1)`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A339273

/-- `4*A000404(n+1)` -/
def P10031977836032368190.Spec : Prop :=
  ∀ n, P10031977836032368190.a n = A339273 (n + 1)

theorem P10031977836032368190.correct : P10031977836032368190.Spec := by
  intro n
  simp only [A339273, Nat.add_sub_cancel]

end A339273

/-! ## A339273.P5939277678218332896

`4*sqrt(A135784(n+1))`
-/

namespace A339273.P5939277678218332896
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  4 * Real.sqrt (A135784 (n + 1) : ℝ)

end

end A339273.P5939277678218332896

namespace A339273

/-- `4*sqrt(A135784(n+1))` -/
def P5939277678218332896.Spec : Prop :=
  ∀ n, P5939277678218332896.a n = (A339273 (n + 1) : ℝ)

end A339273

/-! ## A339273.P18857691028644572

`4*(A166265(n+1)-1)`
-/

namespace A339273.P18857691028644572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A166265 (n + 1) - 1)

end

end A339273.P18857691028644572

namespace A339273

/-- `4*(A166265(n+1)-1)` -/
def P18857691028644572.Spec : Prop :=
  ∀ n, P18857691028644572.a n = A339273 (n + 1)

end A339273

/-! ## A339273.P13777816803866852974

`4*∪[A000415(n+1), A004431(n+1)]`
-/

namespace A339273.P13777816803866852974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000415 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004431 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A339273.P13777816803866852974

namespace A339273

/-- `4*∪[A000415(n+1), A004431(n+1)]` -/
def P13777816803866852974.Spec : Prop :=
  ∀ n, (P13777816803866852974.a n : ℤ) = A339273 (n + 1)

end A339273

/-! ## A339273.P2459123044507940361

`4*∪[A004431(n+1), A025284(n+1)]`
-/

namespace A339273.P2459123044507940361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025284 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A339273.P2459123044507940361

namespace A339273

/-- `4*∪[A004431(n+1), A025284(n+1)]` -/
def P2459123044507940361.Spec : Prop :=
  ∀ n, (P2459123044507940361.a n : ℤ) = A339273 (n + 1)

end A339273

/-! ## A339273.P17480100245201357690

`4*∪[A007692(n+1), A025284(n+1)]`
-/

namespace A339273.P17480100245201357690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007692 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025284 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A339273.P17480100245201357690

namespace A339273

/-- `4*∪[A007692(n+1), A025284(n+1)]` -/
def P17480100245201357690.Spec : Prop :=
  ∀ n, (P17480100245201357690.a n : ℤ) = A339273 (n + 1)

end A339273

/-! ## A339273.P14126899496417155749

`4*∪[A004431(n+1), A050804(n+1)]`
-/

namespace A339273.P14126899496417155749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050804 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A339273.P14126899496417155749

namespace A339273

/-- `4*∪[A004431(n+1), A050804(n+1)]` -/
def P14126899496417155749.Spec : Prop :=
  ∀ n, (P14126899496417155749.a n : ℤ) = A339273 (n + 1)

end A339273

/-! ## A339273.P2496338788309128218

`4*∪[A000415(n+1), A085989(n+1)]`
-/

namespace A339273.P2496338788309128218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000415 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085989 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A339273.P2496338788309128218

namespace A339273

/-- `4*∪[A000415(n+1), A085989(n+1)]` -/
def P2496338788309128218.Spec : Prop :=
  ∀ n, (P2496338788309128218.a n : ℤ) = A339273 (n + 1)

end A339273

/-! ## A339273.P10710345010510358126

`4*∪[A000415(n+1), A097268(n+1)]`
-/

namespace A339273.P10710345010510358126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000415 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097268 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A339273.P10710345010510358126

namespace A339273

/-- `4*∪[A000415(n+1), A097268(n+1)]` -/
def P10710345010510358126.Spec : Prop :=
  ∀ n, (P10710345010510358126.a n : ℤ) = A339273 (n + 1)

end A339273

/-! ## A339273.P4307620321437903434

`4*∪[A004431(n+1), A094147(n+1)]`
-/

namespace A339273.P4307620321437903434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094147 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A339273.P4307620321437903434

namespace A339273

/-- `4*∪[A004431(n+1), A094147(n+1)]` -/
def P4307620321437903434.Spec : Prop :=
  ∀ n, (P4307620321437903434.a n : ℤ) = A339273 (n + 1)

end A339273

/-! ## A339273.P14215043665611762743

`4*∪[A118882(n+1), A000415(n+1)]`
-/

namespace A339273.P14215043665611762743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118882 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000415 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A339273.P14215043665611762743

namespace A339273

/-- `4*∪[A118882(n+1), A000415(n+1)]` -/
def P14215043665611762743.Spec : Prop :=
  ∀ n, (P14215043665611762743.a n : ℤ) = A339273 (n + 1)

end A339273

/-! ## A339273.P8771267165758766269

`(2/A135784(n+1))²*A135787(n+1)`
-/

namespace A339273.P8771267165758766269
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 / (A135784 (n + 1) : ℚ)) ^ 2 * (A135787 (n + 1) : ℚ)

end

end A339273.P8771267165758766269

namespace A339273

/-- `(2/A135784(n+1))²*A135787(n+1)` -/
def P8771267165758766269.Spec : Prop :=
  ∀ n, P8771267165758766269.a n = (A339273 (n + 1) : ℚ)

end A339273

/-! ## A339273.P16712550544788768142

`4*lt[0, A025426(n)]`
-/

namespace A339273.P16712550544788768142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025426 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A339273.P16712550544788768142

namespace A339273

/-- `4*lt[0, A025426(n)]` -/
def P16712550544788768142.Spec : Prop :=
  ∀ n, (P16712550544788768142.a n : ℤ) = A339273 (n + 1)

end A339273

/-! ## A339273.P4452238542882366627

`A016825(A000404(n+1)-1)+2`
-/

namespace A339273.P4452238542882366627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 (A000404 (n + 1) - 1).toNat + 2

end

end A339273.P4452238542882366627

namespace A339273

/-- `A016825(A000404(n+1)-1)+2` -/
def P4452238542882366627.Spec : Prop :=
  ∀ n, P4452238542882366627.a n = A339273 (n + 1)

end A339273

/-! ## A339273.P1192041684149494277

`∩[2*n, A097268(n+1)]`
-/

namespace A339273.P1192041684149494277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097268 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A339273.P1192041684149494277

namespace A339273

/-- `∩[2*n, A097268(n+1)]` -/
def P1192041684149494277.Spec : Prop :=
  ∀ n, (P1192041684149494277.a n : ℤ) = A339273 (n + 1)

end A339273

/-! ## A339273.P11046477977087039351

`filter[A097268(n+1), A121262(#)]`
-/

namespace A339273.P11046477977087039351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097268 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A121262 (f1 j).toNat = 1) n)

end

end A339273.P11046477977087039351

namespace A339273

/-- `filter[A097268(n+1), A121262(#)]` -/
def P11046477977087039351.Spec : Prop :=
  ∀ n, P11046477977087039351.a n = A339273 (n + 1)

end A339273

/-! ## A339273.P15769560492527964211

`filter[A097268(n+1), A354097(#)]`
-/

namespace A339273.P15769560492527964211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097268 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354097 (f1 j).toNat = 1) n)

end

end A339273.P15769560492527964211

namespace A339273

/-- `filter[A097268(n+1), A354097(#)]` -/
def P15769560492527964211.Spec : Prop :=
  ∀ n, P15769560492527964211.a n = A339273 (n + 1)

end A339273

/-! ## A339273.P12886547728118865296

`∩[A097268(n+1), A128106(n+1)]`
-/

namespace A339273.P12886547728118865296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097268 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128106 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A339273.P12886547728118865296

namespace A339273

/-- `∩[A097268(n+1), A128106(n+1)]` -/
def P12886547728118865296.Spec : Prop :=
  ∀ n, (P12886547728118865296.a n : ℤ) = A339273 (n + 1)

end A339273

/-! ## A339273.P6120099618751396872

`filter[A085989(n+1), A121262(#)]`
-/

namespace A339273.P6120099618751396872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085989 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A121262 (f1 j).toNat = 1) n)

end

end A339273.P6120099618751396872

namespace A339273

/-- `filter[A085989(n+1), A121262(#)]` -/
def P6120099618751396872.Spec : Prop :=
  ∀ n, P6120099618751396872.a n = A339273 (n + 1)

end A339273

/-! ## A339273.P9592386265394424948

`∩[A034045(n+1), A085989(n+1)]`
-/

namespace A339273.P9592386265394424948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034045 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085989 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A339273.P9592386265394424948

namespace A339273

/-- `∩[A034045(n+1), A085989(n+1)]` -/
def P9592386265394424948.Spec : Prop :=
  ∀ n, (P9592386265394424948.a n : ℤ) = A339273 (n + 1)

end A339273

/-!
# A339275: Irregular triangle read by rows: T(n,k), n >= 1, k >= 1, in which column k lists the terms of A040000: 1, 2, 2, 2, ... interleaved with k-1 zeros, and the first element of column k is in row k(k+1)/2.

The programs for A339275, there is no canonical definition to state claims against.
-/

/-! ## A339275.P8055763814836277230

`ceil(atan(A196020(n+1)))`
-/

namespace A339275.P8055763814836277230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan (A196020 (n + 1) : ℝ)⌉

end

end A339275.P8055763814836277230

/-! ## A339275.P3693161207943057557

`ceil(atan(A211343(n+1)))`
-/

namespace A339275.P3693161207943057557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan (A211343 (n + 1) : ℝ)⌉

end

end A339275.P3693161207943057557

/-! ## A339275.P16062555645674281900

`val((A196020(C(n+1, n))-2)%2+3, 2)`
-/

namespace A339275.P16062555645674281900
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Int.tmod (A196020 (Nat.choose (n + 1) n) - 2) 2 + 3).toNat 2

end

end A339275.P16062555645674281900

/-! ## A339275.P4185926056175243655

`A046698(A196020(n+1))`
-/

namespace A339275.P4185926056175243655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046698 (A196020 (n + 1)).toNat

end

end A339275.P4185926056175243655

/-! ## A339275.P11509213966712165740

`A130130(A211343(n+1))`
-/

namespace A339275.P11509213966712165740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130130 (A211343 (n + 1)).toNat

end

end A339275.P11509213966712165740

/-! ## A339275.P2217967228686760969

`A126664(A196020(n+1)²)`
-/

namespace A339275.P2217967228686760969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126664 (A196020 (n + 1) ^ 2).toNat

end

end A339275.P2217967228686760969

/-! ## A339275.P7748633963873791208

`A269735(A196020(n+1)²)`
-/

namespace A339275.P7748633963873791208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269735 (A196020 (n + 1) ^ 2).toNat

end

end A339275.P7748633963873791208

/-! ## A339275.P8927314354918494962

`A072491(2*A196020(n+1))`
-/

namespace A339275.P8927314354918494962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072491 (2 * A196020 (n + 1)).toNat

end

end A339275.P8927314354918494962

/-! ## A339275.P7067394469810257791

`A072491(2*A211343(n+1))`
-/

namespace A339275.P7067394469810257791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072491 (2 * A211343 (n + 1)).toNat

end

end A339275.P7067394469810257791

/-! ## A339275.P10862906977791390573

`A107286(2*A196020(n+1))`
-/

namespace A339275.P10862906977791390573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 (2 * A196020 (n + 1)).toNat

end

end A339275.P10862906977791390573

/-! ## A339275.P11715366504067831868

`A302555(2*A196020(n+1))`
-/

namespace A339275.P11715366504067831868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302555 (2 * A196020 (n + 1)).toNat

end

end A339275.P11715366504067831868

/-! ## A339275.P1889069211174400368

`A107286(lcm(2, A196020(n+1)))`
-/

namespace A339275.P1889069211174400368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 (Int.lcm 2 (A196020 (n + 1)))

end

end A339275.P1889069211174400368

/-! ## A339275.P14629380468414984284

`ceil(A196020(n+1)^acot(A005843(n)))`
-/

namespace A339275.P14629380468414984284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A196020 (n + 1) : ℝ) ^ (SequenceMachineLib.acot (A005843 n : ℝ))⌉

end

end A339275.P14629380468414984284

/-! ## A339275.P15530702826800295187

`ceil(A196020(n+1)^acot(A016825(n)))`
-/

namespace A339275.P15530702826800295187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A196020 (n + 1) : ℝ) ^ (SequenceMachineLib.acot (A016825 n : ℝ))⌉

end

end A339275.P15530702826800295187

/-! ## A339275.P10197897324012966882

`ceil(A196020(n+1)/A235791(n+1))`
-/

namespace A339275.P10197897324012966882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A196020 (n + 1) : ℚ) / (A235791 (n + 1) : ℚ)⌉

end

end A339275.P10197897324012966882

/-! ## A339275.P7641544513592243611

`ceil(A196020(n+1)^acot(A000040(n+1)))`
-/

namespace A339275.P7641544513592243611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A196020 (n + 1) : ℝ) ^ (SequenceMachineLib.acot (A000040 (n + 1) : ℝ))⌉

end

end A339275.P7641544513592243611

/-! ## A339275.P15119047609953776972

`ceil(A196020(n+1)^acot(A000203(n+1)))`
-/

namespace A339275.P15119047609953776972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A196020 (n + 1) : ℝ) ^ (SequenceMachineLib.acot (A000203 (n + 1) : ℝ))⌉

end

end A339275.P15119047609953776972

/-! ## A339275.P17349247321564565341

`ceil(A196020(n+1)^acot(A024916(n+1)))`
-/

namespace A339275.P17349247321564565341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A196020 (n + 1) : ℝ) ^ (SequenceMachineLib.acot (A024916 (n + 1) : ℝ))⌉

end

end A339275.P17349247321564565341

/-! ## A339275.P14453250072056249052

`A001221(A073740(A196020(n+1)²))`
-/

namespace A339275.P14453250072056249052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A073740 (A196020 (n + 1) ^ 2).toNat).toNat

end

end A339275.P14453250072056249052

/-! ## A339275.P1153400195008731042

`A072491(A196020(n+1)+A196020(n+1)²)`
-/

namespace A339275.P1153400195008731042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072491 (A196020 (n + 1) + A196020 (n + 1) ^ 2).toNat

end

end A339275.P1153400195008731042

/-!
# A339276: Nearest integer to the fourth root of n.

The programs for A339276, the canonical program `A339276.P81636024138697190` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A339276 has offset 1).

The definition of A339276 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A339276.P81636024138697190

`round(root(n+1, 4))`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A339276

/-- `round(root(n+1, 4))` -/
def P81636024138697190.Spec : Prop :=
  ∀ n, P81636024138697190.a n = A339276 (n + 1)

theorem P81636024138697190.correct : P81636024138697190.Spec := by
  intro n
  simp only [A339276, Nat.add_sub_cancel]

end A339276

/-! ## A339276.P5303109021383376105

`∑[char[(∑[4*n]+1)*C(n+1, 2)]]`
-/

namespace A339276.P5303109021383376105
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f3 j + 1) * Nat.choose (n + 1) 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339276.P5303109021383376105

namespace A339276

/-- `∑[char[(∑[4*n]+1)*C(n+1, 2)]]` -/
def P5303109021383376105.Spec : Prop :=
  ∀ n, (P5303109021383376105.a n : ℤ) = A339276 (n + 1)

end A339276

/-! ## A339276.P3376680285642994263

`∑[char[A219086(n)]]`
-/

namespace A339276.P3376680285642994263
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219086 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339276.P3376680285642994263

namespace A339276

/-- `∑[char[A219086(n)]]` -/
def P3376680285642994263.Spec : Prop :=
  ∀ n, (P3376680285642994263.a n : ℤ) = A339276 (n + 1)

end A339276

/-! ## A339276.P413603586642451648

`∑[char[A007742(∑[n])]]`
-/

namespace A339276.P413603586642451648
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007742 (∑ j ∈ Finset.range (n + 1), f3 j)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339276.P413603586642451648

namespace A339276

/-- `∑[char[A007742(∑[n])]]` -/
def P413603586642451648.Spec : Prop :=
  ∀ n, (P413603586642451648.a n : ℤ) = A339276 (n + 1)

end A339276

/-! ## A339276.P17872791271075302524

`A005349(round(sqrt(sqrt(n+1))))`
-/

namespace A339276.P17872791271075302524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005349 (SequenceMachineLib.roundAway (Real.sqrt (Real.sqrt (n + 1 : ℝ)))).toNat

end

end A339276.P17872791271075302524

namespace A339276

/-- `A005349(round(sqrt(sqrt(n+1))))` -/
def P17872791271075302524.Spec : Prop :=
  ∀ n, P17872791271075302524.a n = A339276 (n + 1)

end A339276

/-! ## A339276.P11959437770431392183

`∑[char[∑[A317297(n+1)]]]`
-/

namespace A339276.P11959437770431392183
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317297 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339276.P11959437770431392183

namespace A339276

/-- `∑[char[∑[A317297(n+1)]]]` -/
def P11959437770431392183.Spec : Prop :=
  ∀ n, (P11959437770431392183.a n : ℤ) = A339276 (n + 1)

end A339276

/-! ## A339276.P9768774496158384394

`∑[char[∑[n]*A001844(n)]]`
-/

namespace A339276.P9768774496158384394
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ) * A001844 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339276.P9768774496158384394

namespace A339276

/-- `∑[char[∑[n]*A001844(n)]]` -/
def P9768774496158384394.Spec : Prop :=
  ∀ n, (P9768774496158384394.a n : ℤ) = A339276 (n + 1)

end A339276

/-! ## A339276.P12511681371459891894

`∑[char[A011863(2*n+1)]]`
-/

namespace A339276.P12511681371459891894
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011863 (2 * n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339276.P12511681371459891894

namespace A339276

/-- `∑[char[A011863(2*n+1)]]` -/
def P12511681371459891894.Spec : Prop :=
  ∀ n, (P12511681371459891894.a n : ℤ) = A339276 (n + 1)

end A339276

/-! ## A339276.P7912829908584581918

`∑[char[A134449(2*n+1)]]`
-/

namespace A339276.P7912829908584581918
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134449 (2 * n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339276.P7912829908584581918

namespace A339276

/-- `∑[char[A134449(2*n+1)]]` -/
def P7912829908584581918.Spec : Prop :=
  ∀ n, (P7912829908584581918.a n : ℤ) = A339276 (n + 1)

end A339276

/-! ## A339276.P10403798877391078999

`∑[char[∑[n]+4*A000537(n)]]`
-/

namespace A339276.P10403798877391078999
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ) + 4 * A000537 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339276.P10403798877391078999

namespace A339276

/-- `∑[char[∑[n]+4*A000537(n)]]` -/
def P10403798877391078999.Spec : Prop :=
  ∀ n, (P10403798877391078999.a n : ℤ) = A339276 (n + 1)

end A339276

/-! ## A339276.P12110191624979079937

`∑[char[∑[n]*A000982(2*n+1)]]`
-/

namespace A339276.P12110191624979079937
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ) * A000982 (2 * n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339276.P12110191624979079937

namespace A339276

/-- `∑[char[∑[n]*A000982(2*n+1)]]` -/
def P12110191624979079937.Spec : Prop :=
  ∀ n, (P12110191624979079937.a n : ℤ) = A339276 (n + 1)

end A339276

/-! ## A339276.P2143521722804998405

`A000194(A000194(A053188(n)+1+n))`
-/

namespace A339276.P2143521722804998405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A000194 (A053188 n + 1 + (n : ℤ)).toNat).toNat

end

end A339276.P2143521722804998405

namespace A339276

/-- `A000194(A000194(A053188(n)+1+n))` -/
def P2143521722804998405.Spec : Prop :=
  ∀ n, P2143521722804998405.a n = A339276 (n + 1)

end A339276

/-! ## A339276.P15750424788082599877

`A000194(A307707(2*(n+1)))`
-/

namespace A339276.P15750424788082599877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A307707 (2 * (n + 1))).toNat

end

end A339276.P15750424788082599877

namespace A339276

/-- `A000194(A307707(2*(n+1)))` -/
def P15750424788082599877.Spec : Prop :=
  ∀ n, P15750424788082599877.a n = A339276 (n + 1)

end A339276

/-! ## A339276.P6330331554890242763

`A000194(∑[A010054(2*n)])`
-/

namespace A339276.P6330331554890242763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A339276.P6330331554890242763

namespace A339276

/-- `A000194(∑[A010054(2*n)])` -/
def P6330331554890242763.Spec : Prop :=
  ∀ n, P6330331554890242763.a n = A339276 (n + 1)

end A339276

/-! ## A339276.P14790279889084486924

`A000194(A274701(2*(n+1)))`
-/

namespace A339276.P14790279889084486924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A274701 (2 * (n + 1))).toNat

end

end A339276.P14790279889084486924

namespace A339276

/-- `A000194(A274701(2*(n+1)))` -/
def P14790279889084486924.Spec : Prop :=
  ∀ n, P14790279889084486924.a n = A339276 (n + 1)

end A339276

/-! ## A339276.P18390206578059875138

`A371355(A002024(2*n+1)+1)`
-/

namespace A339276.P18390206578059875138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371355 (A002024 (2 * n + 1) + 1).toNat

end

end A339276.P18390206578059875138

namespace A339276

/-- `A371355(A002024(2*n+1)+1)` -/
def P18390206578059875138.Spec : Prop :=
  ∀ n, P18390206578059875138.a n = A339276 (n + 1)

end A339276

/-! ## A339276.P7137952120041155322

`A000194(A105209((n+1)*A135034(n+1)))`
-/

namespace A339276.P7137952120041155322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A105209 ((n + 1 : ℤ) * A135034 (n + 1)).toNat).toNat

end

end A339276.P7137952120041155322

namespace A339276

/-- `A000194(A105209((n+1)*A135034(n+1)))` -/
def P7137952120041155322.Spec : Prop :=
  ∀ n, P7137952120041155322.a n = A339276 (n + 1)

end A339276

/-! ## A339276.P9479600906791359096

`A055642(∑[A190302(∑[n+1])])`
-/

namespace A339276.P9479600906791359096
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190302 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A339276.P9479600906791359096

namespace A339276

/-- `A055642(∑[A190302(∑[n+1])])` -/
def P9479600906791359096.Spec : Prop :=
  ∀ n, P9479600906791359096.a n = A339276 (n + 1)

end A339276

/-! ## A339276.P10263940199895502145

`A055642(∑[A104638(∑[n+3])])`
-/

namespace A339276.P10263940199895502145
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104638 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A339276.P10263940199895502145

namespace A339276

/-- `A055642(∑[A104638(∑[n+3])])` -/
def P10263940199895502145.Spec : Prop :=
  ∀ n, P10263940199895502145.a n = A339276 (n + 1)

end A339276

/-! ## A339276.P6769283774510716127

`A127321(A127321((2-n)²)+3)`
-/

namespace A339276.P6769283774510716127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127321 (A127321 ((2 - (n : ℤ)) ^ 2).toNat + 3).toNat

end

end A339276.P6769283774510716127

namespace A339276

/-- `A127321(A127321((2-n)²)+3)` -/
def P6769283774510716127.Spec : Prop :=
  ∀ n, P6769283774510716127.a n = A339276 (n + 1)

end A339276

/-!
# A339277: Number of partitions of 2*n into powers of 2 where every part appears at least 2 times.

The programs for A339277, the canonical program `A339277.P12339968615600327131` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A339277 has offset 0).

The definition of A339277 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1836 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A339277.P12339968615600327131

`a(floor((xor(1, n)-1)/2))+a(n-1)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A339277

/-- `a(floor((xor(1, n)-1)/2))+a(n-1)` -/
def P12339968615600327131.Spec : Prop :=
  ∀ n, (P12339968615600327131.a n : ℤ) = A339277 n

theorem P12339968615600327131.correct : P12339968615600327131.Spec := by
  intro n
  simp only [A339277]

end A339277

/-! ## A339277.P3348974056505624525

`a(ceil(xor(1, n)/2)-1)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A339277.P3348974056505624525
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (⌈(Nat.xor 1 n : ℚ) / 2⌉ - 1).toNat + a (n - 1)

end

end A339277.P3348974056505624525

namespace A339277

/-- `a(ceil(xor(1, n)/2)-1)+a(n-1)` -/
def P3348974056505624525.Spec : Prop :=
  ∀ n, (P3348974056505624525.a n : ℤ) = A339277 n

end A339277

/-! ## A339277.P7792179597030079215

`a(n-1)+a(round(xor(1, n)/2)-1)` with `a(0)=1, a(1)=1`
-/

namespace A339277.P7792179597030079215
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + a (SequenceMachineLib.roundAway ((Nat.xor 1 n : ℚ) / 2) - 1).toNat

end

end A339277.P7792179597030079215

namespace A339277

/-- `a(n-1)+a(round(xor(1, n)/2)-1)` -/
def P7792179597030079215.Spec : Prop :=
  ∀ n, (P7792179597030079215.a n : ℤ) = A339277 n

end A339277

/-! ## A339277.P3448583816532111856

`a(floor(n/2)-n%2)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A339277.P3448583816532111856
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (⌊(n : ℚ) / 2⌋ - ((n % 2 : ℕ) : ℤ)).toNat + a (n - 1)

end

end A339277.P3448583816532111856

namespace A339277

/-- `a(floor(n/2)-n%2)+a(n-1)` -/
def P3448583816532111856.Spec : Prop :=
  ∀ n, (P3448583816532111856.a n : ℤ) = A339277 n

end A339277

/-! ## A339277.P9023616937539017205

`a(n-1)+a(Δ[a(n-2)-3+n])` with `a(0)=1, a(1)=1`
-/

namespace A339277.P9023616937539017205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 2) - 3 + (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + a (f1 (n + 1) - f1 n).toNat

end

end A339277.P9023616937539017205

namespace A339277

/-- `a(n-1)+a(Δ[a(n-2)-3+n])` -/
def P9023616937539017205.Spec : Prop :=
  ∀ n, (P9023616937539017205.a n : ℤ) = A339277 n

end A339277

/-! ## A339277.P2549932251845779722

`a(n-1)+a(∑[1-a(n-1)]-3)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A339277.P2549932251845779722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n f1 =>
  1 - f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  a (n - 1) + a (∑ j ∈ Finset.range (n + 1), f1 j - 3).toNat

end

end A339277.P2549932251845779722

namespace A339277

/-- `a(n-1)+a(∑[1-a(n-1)]-3)` -/
def P2549932251845779722.Spec : Prop :=
  ∀ n, (P2549932251845779722.a n : ℤ) = A339277 n

end A339277

/-! ## A339277.P7582336726011556067

`A161051(2*n+3)`
-/

namespace A339277.P7582336726011556067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161051 (2 * n + 3)

end

end A339277.P7582336726011556067

namespace A339277

/-- `A161051(2*n+3)` -/
def P7582336726011556067.Spec : Prop :=
  ∀ n, P7582336726011556067.a n = A339277 n

end A339277

/-! ## A339277.P4630926601041532558

`A161051(n)+a(n-1)` with `a(0)=1`
-/

namespace A339277.P4630926601041532558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A161051 n + a (n - 1)

end

end A339277.P4630926601041532558

namespace A339277

/-- `A161051(n)+a(n-1)` -/
def P4630926601041532558.Spec : Prop :=
  ∀ n, P4630926601041532558.a n = A339277 n

end A339277

/-! ## A339277.P13080827414741139380

`A018819(n)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A339277.P13080827414741139380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  A018819 n + a (n - 3)

end

end A339277.P13080827414741139380

namespace A339277

/-- `A018819(n)+a(n-3)` -/
def P13080827414741139380.Spec : Prop :=
  ∀ n, P13080827414741139380.a n = A339277 n

end A339277

/-!
# A339278: Irregular triangle read by rows T(n,k), (n >= 1, k >= 1), in which the partition number A000041(n-1) is the length of row n and every column k is A000203, the sum of divisors function.

The programs for A339278, there is no canonical definition to state claims against.
-/

/-! ## A339278.P1982662429142774034

`A000203(A336811(n+1))`
-/

namespace A339278.P1982662429142774034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A336811 (n + 1)).toNat

end

end A339278.P1982662429142774034

/-! ## A339278.P11280748896851588932

`A074883(A359279(n+1))`
-/

namespace A339278.P11280748896851588932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074883 (A359279 (n + 1)).toNat

end

end A339278.P11280748896851588932

/-! ## A339278.P7512366938996651754

`A069290(A336811(n+1)²)`
-/

namespace A339278.P7512366938996651754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069290 (A336811 (n + 1) ^ 2).toNat

end

end A339278.P7512366938996651754

/-! ## A339278.P14316659685617402087

`A069290(A336811(n+1)^2)`
-/

namespace A339278.P14316659685617402087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069290 (A336811 (n + 1) ^ 2).toNat

end

end A339278.P14316659685617402087

/-! ## A339278.P6976590428581922731

`A221529(A359279(n+1)+A336811(n+1))`
-/

namespace A339278.P6976590428581922731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221529 (A359279 (n + 1) + A336811 (n + 1)).toNat

end

end A339278.P6976590428581922731

/-! ## A339278.P18318619416378202358

`A334464(A059500(n+1)*A336811(n+1))`
-/

namespace A339278.P18318619416378202358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334464 (A059500 (n + 1) * A336811 (n + 1)).toNat

end

end A339278.P18318619416378202358

/-! ## A339278.P17976424252352825681

`A240698(A340529(n+1))`
-/

namespace A339278.P17976424252352825681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240698 (A340529 (n + 1)).toNat

end

end A339278.P17976424252352825681

/-! ## A339278.P11865111115574020405

`A000203(floor(root(A340529(n+1), sqrt(2))))`
-/

namespace A339278.P11865111115574020405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 ⌊(A340529 (n + 1) : ℝ) ^ (1 / Real.sqrt (2 : ℝ))⌋.toNat

end

end A339278.P11865111115574020405

/-! ## A339278.P9444678096973278937

`A000203(ceil(sqrt(A340423(n+1))))`
-/

namespace A339278.P9444678096973278937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 ⌈Real.sqrt (A340423 (n + 1) : ℝ)⌉.toNat

end

end A339278.P9444678096973278937

/-!
# A339279: Number of partitions of 3*n into powers of 3 where every part appears at least 2 times.

The programs for A339279, there is no canonical definition to state claims against.
-/

/-! ## A339279.P1894551581780502962

`A005704(n)-a(n-1)` with `a(0)=1`
-/

namespace A339279.P1894551581780502962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A005704 n - a (n - 1)

end

end A339279.P1894551581780502962

/-! ## A339279.P8341414117998668253

`A008650(n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A339279.P8341414117998668253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A008650 n + a (n - 2)

end

end A339279.P8341414117998668253

/-! ## A339279.P15937395180400408553

`A062051(n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A339279.P15937395180400408553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A062051 n + a (n - 2)

end

end A339279.P15937395180400408553

/-! ## A339279.P12293813382346719858

`a(n-1)+a(A008611(n)-1)` with `a(0)=1, a(1)=1`
-/

namespace A339279.P12293813382346719858
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + a (A008611 n - 1).toNat

end

end A339279.P12293813382346719858

/-! ## A339279.P9945617740378128585

`record[A062051(n^(n%2))]-a(n-1)` with `a(0)=1`
-/

namespace A339279.P9945617740378128585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062051 (n ^ (n % 2))

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - a (n - 1)

end

end A339279.P9945617740378128585

/-! ## A339279.P5751544156133345273

`a(n-1)+a(A168056(n)%(n+1))` with `a(0)=1, a(1)=1`
-/

namespace A339279.P5751544156133345273
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + a (Int.tmod (A168056 n) (n + 1 : ℤ)).toNat

end

end A339279.P5751544156133345273

/-! ## A339279.P4707884546587323501

`a(n-1)+a(A008612(A004274(n)))` with `a(0)=1, a(1)=1`
-/

namespace A339279.P4707884546587323501
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + a (A008612 (A004274 n).toNat).toNat

end

end A339279.P4707884546587323501

/-! ## A339279.P9228982050615250327

`a(n-1)+a(A023443(A008611(n)))` with `a(0)=1, a(1)=1`
-/

namespace A339279.P9228982050615250327
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + a (A023443 (A008611 n).toNat).toNat

end

end A339279.P9228982050615250327

/-!
# A339280: Number of unoriented series-parallel networks with n elements of 2 colors.

The programs for A339280, there is no canonical definition to state claims against.
-/

/-! ## A339280.P1715943916223345462

`A339281(n+1)+2*A339225(n+1)`
-/

namespace A339280.P1715943916223345462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339281 (n + 1) + 2 * A339225 (n + 1)

end

end A339280.P1715943916223345462

/-! ## A339280.P16483908588681017296

`A003430(n+1)+A339281(n+1)+A339159(n+1)`
-/

namespace A339280.P16483908588681017296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003430 (n + 1) + (A339281 (n + 1) + A339159 (n + 1))

end

end A339280.P16483908588681017296

/-! ## A339280.P15814424526567407310

`A339281(n+1)+2*(A339223(n+1)+A339224(n+1)-A000007(n))`
-/

namespace A339280.P15814424526567407310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339281 (n + 1) + 2 * (A339223 (n + 1) + (A339224 (n + 1) - A000007 n))

end

end A339280.P15814424526567407310

/-! ## A339280.P14246666945597692468

`A339281(n+1)+2*(A339223(n+1)-A057428(n)*A339224(n+1))`
-/

namespace A339280.P14246666945597692468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339281 (n + 1) + 2 * (A339223 (n + 1) - A057428 n * A339224 (n + 1))

end

end A339280.P14246666945597692468

/-! ## A339280.P7703613115377120904

`A339281(n+1)+2*(A339223(n+1)+A339224(n+1)%A005425(n))`
-/

namespace A339280.P7703613115377120904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339281 (n + 1) + 2 * (A339223 (n + 1) + Int.tmod (A339224 (n + 1)) (A005425 n))

end

end A339280.P7703613115377120904

/-!
# A339281: Number of unoriented series-parallel networks with n colored elements using exactly 2 colors.

The programs for A339281, there is no canonical definition to state claims against.
-/

/-! ## A339281.P5866461099234684709

`A339280(n+1)-2*A339225(n+1)`
-/

namespace A339281.P5866461099234684709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339280 (n + 1) - 2 * A339225 (n + 1)

end

end A339281.P5866461099234684709

/-! ## A339281.P2099706548823724642

`A339280(n+1)-(A339159(n+1)+A003430(n+1))`
-/

namespace A339281.P2099706548823724642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339280 (n + 1) - (A339159 (n + 1) + A003430 (n + 1))

end

end A339281.P2099706548823724642

/-! ## A339281.P3426873120179265472

`A339280(n+1)-2*(A339223(n+1)+A339224(n+1)-A000007(n))`
-/

namespace A339281.P3426873120179265472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339280 (n + 1) - 2 * (A339223 (n + 1) + (A339224 (n + 1) - A000007 n))

end

end A339281.P3426873120179265472

/-! ## A339281.P7529994260190960098

`A339280(n+1)-2*(A339223(n+1)-A057428(n)*A339224(n+1))`
-/

namespace A339281.P7529994260190960098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339280 (n + 1) - 2 * (A339223 (n + 1) - A057428 n * A339224 (n + 1))

end

end A339281.P7529994260190960098

/-! ## A339281.P13307246744967188889

`A339280(n+1)-2*(A339223(n+1)+A339224(n+1)%A005425(n))`
-/

namespace A339281.P13307246744967188889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339280 (n + 1) - 2 * (A339223 (n + 1) + Int.tmod (A339224 (n + 1)) (A005425 n))

end

end A339281.P13307246744967188889

/-!
# A339284: Number of unoriented series-parallel networks with integer valued elements summing to n.

The programs for A339284, there is no canonical definition to state claims against.
-/

/-! ## A339284.P11365478966456972421

`A130420(A166952(n))`
-/

namespace A339284.P11365478966456972421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130420 (A166952 n).toNat

end

end A339284.P11365478966456972421

/-! ## A339284.P11156014318329674625

`or(A061396(n+1), A325758(A061396(n)))`
-/

namespace A339284.P11156014318329674625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A061396 (n + 1)) (A325758 (A061396 n).toNat)

end

end A339284.P11156014318329674625

/-!
# A339285: Triangle read by rows: T(n,k) is the number of unoriented series-parallel networks whose multigraph has n edges and k interior vertices, 0 <= k < n.

The programs for A339285, there is no canonical definition to state claims against.
-/

/-! ## A339285.P3227302442312403303

`A038372(A047812(n+1))`
-/

namespace A339285.P3227302442312403303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038372 (A047812 (n + 1)).toNat

end

end A339285.P3227302442312403303

/-! ## A339285.P1076171550049914604

`A072649(A241825(3*n)^A145153(n))`
-/

namespace A339285.P1076171550049914604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072649 (SequenceMachineLib.roundAway ((A241825 (3 * n) : ℚ) ^ (A145153 n : ℤ))).toNat

end

end A339285.P1076171550049914604

/-!
# A339286: Total number of interior vertices in the multigraphs of all unoriented series-parallel networks with n edges.

The programs for A339286, there is no canonical definition to state claims against.
-/

/-! ## A339286.P13259094222659356718

`A302301(A179611(n+1))`
-/

namespace A339286.P13259094222659356718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302301 (A179611 (n + 1)).toNat

end

end A339286.P13259094222659356718

/-! ## A339286.P16782068575152200760

`A141100(3*A014323(n))`
-/

namespace A339286.P16782068575152200760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141100 (3 * A014323 n).toNat

end

end A339286.P16782068575152200760

/-!
# A339287: Number of inequivalent colorings of unoriented series-parallel networks with n colored elements.

The programs for A339287, there is no canonical definition to state claims against.
-/

/-! ## A339287.P6628571060353606067

`A048865((n+5)^n+4^n+1)`
-/

namespace A339287.P6628571060353606067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048865 ((n + 5) ^ n + 4 ^ n + 1)

end

end A339287.P6628571060353606067

/-!
# A339288: Number of essentially series oriented series-parallel networks with n elements and without multiple unit elements in parallel.

The programs for A339288, there is no canonical definition to state claims against.
-/

/-! ## A339288.P15561852485337127850

`A339290(n+1)-A339289(n+1)`
-/

namespace A339288.P15561852485337127850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339290 (n + 1) - A339289 (n + 1)

end

end A339288.P15561852485337127850

/-! ## A339288.P1227642721065173039

`2*A339294(n+1)-A339291(n+1)`
-/

namespace A339288.P1227642721065173039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A339294 (n + 1) - A339291 (n + 1)

end

end A339288.P1227642721065173039

/-! ## A339288.P7781712277916854589

`2*A339296(n+1)-A339293(n+1)-A339289(n+1)`
-/

namespace A339288.P7781712277916854589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A339296 (n + 1) - A339293 (n + 1) - A339289 (n + 1)

end

end A339288.P7781712277916854589

/-! ## A339288.P11296556009649219629

`A339290(n+1)-(2*A339295(n+1)-A339292(n+1))`
-/

namespace A339288.P11296556009649219629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339290 (n + 1) - (2 * A339295 (n + 1) - A339292 (n + 1))

end

end A339288.P11296556009649219629

/-! ## A339288.P12333552546892321773

`A339290(n+1)+(A118824(A001122(n+1))+1)*A339289(n+1)`
-/

namespace A339288.P12333552546892321773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339290 (n + 1) + (A118824 (A001122 (n + 1)).toNat + 1) * A339289 (n + 1)

end

end A339288.P12333552546892321773

/-!
# A339289: Number of essentially parallel oriented series-parallel networks with n elements and without multiple unit elements in parallel.

The programs for A339289, there is no canonical definition to state claims against.
-/

/-! ## A339289.P10837357828577073336

`A339290(n+1)-A339288(n+1)`
-/

namespace A339289.P10837357828577073336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339290 (n + 1) - A339288 (n + 1)

end

end A339289.P10837357828577073336

/-! ## A339289.P7188029015116400960

`2*A339295(n+1)-A339292(n+1)`
-/

namespace A339289.P7188029015116400960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A339295 (n + 1) - A339292 (n + 1)

end

end A339289.P7188029015116400960

/-! ## A339289.P7630235922997372979

`2*A339296(n+1)-A339293(n+1)-A339288(n+1)`
-/

namespace A339289.P7630235922997372979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A339296 (n + 1) - A339293 (n + 1) - A339288 (n + 1)

end

end A339289.P7630235922997372979

/-! ## A339289.P6804922295117955075

`A339290(n+1)-(2*A339294(n+1)-A339291(n+1))`
-/

namespace A339289.P6804922295117955075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339290 (n + 1) - (2 * A339294 (n + 1) - A339291 (n + 1))

end

end A339289.P6804922295117955075

/-! ## A339289.P13454842417345514358

`A339295(n+1)-A339292(n+1)+A339296(n+1)-A339294(n+1)`
-/

namespace A339289.P13454842417345514358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339295 (n + 1) - A339292 (n + 1) + (A339296 (n + 1) - A339294 (n + 1))

end

end A339289.P13454842417345514358

/-!
# A339290: Number of oriented series-parallel networks with n elements and without multiple unit elements in parallel.

The programs for A339290, there is no canonical definition to state claims against.
-/

/-! ## A339290.P1055153615850731581

`A339288(n+1)+A339289(n+1)`
-/

namespace A339290.P1055153615850731581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339288 (n + 1) + A339289 (n + 1)

end

end A339290.P1055153615850731581

/-! ## A339290.P13242237755034910667

`2*A339296(n+1)-A339293(n+1)`
-/

namespace A339290.P13242237755034910667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A339296 (n + 1) - A339293 (n + 1)

end

end A339290.P13242237755034910667

/-! ## A339290.P15084245195884313629

`A339288(n+1)+2*A339295(n+1)-A339292(n+1)`
-/

namespace A339290.P15084245195884313629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339288 (n + 1) + (2 * A339295 (n + 1) - A339292 (n + 1))

end

end A339290.P15084245195884313629

/-! ## A339290.P13783360472980873614

`A339289(n+1)+2*A339294(n+1)-A339291(n+1)`
-/

namespace A339290.P13783360472980873614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339289 (n + 1) + (2 * A339294 (n + 1) - A339291 (n + 1))

end

end A339290.P13783360472980873614

/-! ## A339290.P4356148632524468239

`2*A339294(n+1)-A339291(n+1)+2*A339295(n+1)-A339292(n+1)`
-/

namespace A339290.P4356148632524468239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A339294 (n + 1) - A339291 (n + 1) + (2 * A339295 (n + 1) - A339292 (n + 1))

end

end A339290.P4356148632524468239

/-!
# A339291: Number of essentially series achiral series-parallel networks with n elements and without multiple unit elements in parallel.

The programs for A339291, there is no canonical definition to state claims against.
-/

/-! ## A339291.P14542855703558421805

`A339293(n+1)-A339292(n+1)`
-/

namespace A339291.P14542855703558421805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339293 (n + 1) - A339292 (n + 1)

end

end A339291.P14542855703558421805

/-! ## A339291.P15979923654347767562

`2*A339294(n+1)-A339288(n+1)`
-/

namespace A339291.P15979923654347767562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A339294 (n + 1) - A339288 (n + 1)

end

end A339291.P15979923654347767562

/-! ## A339291.P11520076151095022596

`2*A339296(n+1)-A339290(n+1)-A339292(n+1)`
-/

namespace A339291.P11520076151095022596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A339296 (n + 1) - A339290 (n + 1) - A339292 (n + 1)

end

end A339291.P11520076151095022596

/-! ## A339291.P13449917085621069008

`A339293(n+1)-(2*A339295(n+1)-A339289(n+1))`
-/

namespace A339291.P13449917085621069008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339293 (n + 1) - (2 * A339295 (n + 1) - A339289 (n + 1))

end

end A339291.P13449917085621069008

/-! ## A339291.P3939737600487968389

`2*A339296(n+1)-A339290(n+1)-(2*A339295(n+1)-A339289(n+1))`
-/

namespace A339291.P3939737600487968389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A339296 (n + 1) - A339290 (n + 1) - (2 * A339295 (n + 1) - A339289 (n + 1))

end

end A339291.P3939737600487968389

/-!
# A339292: Number of essentially parallel achiral series-parallel networks with n elements and without multiple unit elements in parallel.

The programs for A339292, there is no canonical definition to state claims against.
-/

/-! ## A339292.P15932756144749734859

`A339293(n+1)-A339291(n+1)`
-/

namespace A339292.P15932756144749734859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339293 (n + 1) - A339291 (n + 1)

end

end A339292.P15932756144749734859

/-! ## A339292.P18308238342015664961

`2*A339295(n+1)-A339289(n+1)`
-/

namespace A339292.P18308238342015664961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A339295 (n + 1) - A339289 (n + 1)

end

end A339292.P18308238342015664961

/-! ## A339292.P12896904752510280274

`2*A339296(n+1)-A339290(n+1)-A339291(n+1)`
-/

namespace A339292.P12896904752510280274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A339296 (n + 1) - A339290 (n + 1) - A339291 (n + 1)

end

end A339292.P12896904752510280274

/-! ## A339292.P3876135414536257658

`A339293(n+1)-(2*A339294(n+1)-A339288(n+1))`
-/

namespace A339292.P3876135414536257658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339293 (n + 1) - (2 * A339294 (n + 1) - A339288 (n + 1))

end

end A339292.P3876135414536257658

/-! ## A339292.P8351473211898344848

`2*A339296(n+1)-A339290(n+1)-(2*A339294(n+1)-A339288(n+1))`
-/

namespace A339292.P8351473211898344848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A339296 (n + 1) - A339290 (n + 1) - (2 * A339294 (n + 1) - A339288 (n + 1))

end

end A339292.P8351473211898344848

/-!
# A339293: Number of achiral series-parallel networks with n elements and without multiple unit elements in parallel.

The programs for A339293, there is no canonical definition to state claims against.
-/

/-! ## A339293.P11704892070087480293

`A339291(n+1)+A339292(n+1)`
-/

namespace A339293.P11704892070087480293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339291 (n + 1) + A339292 (n + 1)

end

end A339293.P11704892070087480293

/-! ## A339293.P5494678246702881538

`2*A339296(n+1)-A339290(n+1)`
-/

namespace A339293.P5494678246702881538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A339296 (n + 1) - A339290 (n + 1)

end

end A339293.P5494678246702881538

/-! ## A339293.P16046214902432399693

`A339291(n+1)+2*A339295(n+1)-A339289(n+1)`
-/

namespace A339293.P16046214902432399693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339291 (n + 1) + (2 * A339295 (n + 1) - A339289 (n + 1))

end

end A339293.P16046214902432399693

/-! ## A339293.P3246851220014678735

`A339292(n+1)+2*A339294(n+1)-A339288(n+1)`
-/

namespace A339293.P3246851220014678735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339292 (n + 1) + (2 * A339294 (n + 1) - A339288 (n + 1))

end

end A339293.P3246851220014678735

/-! ## A339293.P10742594039231757960

`2*A339294(n+1)-A339288(n+1)+2*A339295(n+1)-A339289(n+1)`
-/

namespace A339293.P10742594039231757960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A339294 (n + 1) - A339288 (n + 1) + (2 * A339295 (n + 1) - A339289 (n + 1))

end

end A339293.P10742594039231757960

/-!
# A339294: Number of essentially series unoriented series-parallel networks with n elements and without multiple unit elements in parallel.

The programs for A339294, there is no canonical definition to state claims against.
-/

/-! ## A339294.P14847645819275960882

`(A339288(n+1)+A339291(n+1))/2`
-/

namespace A339294.P14847645819275960882
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A339288 (n + 1) + A339291 (n + 1) : ℚ) / 2

end

end A339294.P14847645819275960882

/-! ## A339294.P11804674212702714567

`A339296(n+1)-A339295(n+1)`
-/

namespace A339294.P11804674212702714567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339296 (n + 1) - A339295 (n + 1)

end

end A339294.P11804674212702714567

/-! ## A339294.P13731156230553993964

`A014682(A339291(n+1)+A339288(n+1))`
-/

namespace A339294.P13731156230553993964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A339291 (n + 1) + A339288 (n + 1)).toNat

end

end A339294.P13731156230553993964

/-! ## A339294.P16207827589064139854

`A014682(A339288(n+1)+A339293(n+1)-A339292(n+1))`
-/

namespace A339294.P16207827589064139854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A339288 (n + 1) + (A339293 (n + 1) - A339292 (n + 1))).toNat

end

end A339294.P16207827589064139854

/-! ## A339294.P10862547329292273512

`A339296(n+1)-A014682(A339292(n+1)+A339289(n+1))`
-/

namespace A339294.P10862547329292273512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339296 (n + 1) - A014682 (A339292 (n + 1) + A339289 (n + 1)).toNat

end

end A339294.P10862547329292273512

/-!
# A339295: Number of essentially parallel unoriented series-parallel networks with n elements and without multiple unit elements in parallel.

The programs for A339295, there is no canonical definition to state claims against.
-/

/-! ## A339295.P12269513896760812454

`(A339289(n+1)+A339292(n+1))/2`
-/

namespace A339295.P12269513896760812454
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A339289 (n + 1) + A339292 (n + 1) : ℚ) / 2

end

end A339295.P12269513896760812454

/-! ## A339295.P9323355007618197456

`A339296(n+1)-A339294(n+1)`
-/

namespace A339295.P9323355007618197456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339296 (n + 1) - A339294 (n + 1)

end

end A339295.P9323355007618197456

/-! ## A339295.P18216686998747165930

`A014682(A339292(n+1)+A339289(n+1))`
-/

namespace A339295.P18216686998747165930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A339292 (n + 1) + A339289 (n + 1)).toNat

end

end A339295.P18216686998747165930

/-! ## A339295.P6527443192116990591

`A014682(A339293(n+1)+A339290(n+1))-A339294(n+1)`
-/

namespace A339295.P6527443192116990591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A339293 (n + 1) + A339290 (n + 1)).toNat - A339294 (n + 1)

end

end A339295.P6527443192116990591

/-! ## A339295.P5177016717219491813

`A175126(A339292(n+1)+A339289(n+1))`
-/

namespace A339295.P5177016717219491813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 (A339292 (n + 1) + A339289 (n + 1)).toNat

end

end A339295.P5177016717219491813

/-!
# A339296: Number of unoriented series-parallel networks with n elements and without multiple unit elements in parallel.

The programs for A339296, there is no canonical definition to state claims against.
-/

/-! ## A339296.P16851980179493056756

`A339294(n+1)+A339295(n+1)`
-/

namespace A339296.P16851980179493056756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339294 (n + 1) + A339295 (n + 1)

end

end A339296.P16851980179493056756

/-! ## A339296.P8941262681974739293

`(A339290(n+1)+A339293(n+1))/2`
-/

namespace A339296.P8941262681974739293
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A339290 (n + 1) + A339293 (n + 1) : ℚ) / 2

end

end A339296.P8941262681974739293

/-! ## A339296.P1367849192840024802

`A014682(A339293(n+1)+A339290(n+1))`
-/

namespace A339296.P1367849192840024802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A339293 (n + 1) + A339290 (n + 1)).toNat

end

end A339296.P1367849192840024802

/-! ## A339296.P14964726338720905726

`A339294(n+1)+A014682(A339292(n+1)+A339289(n+1))`
-/

namespace A339296.P14964726338720905726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339294 (n + 1) + A014682 (A339292 (n + 1) + A339289 (n + 1)).toNat

end

end A339296.P14964726338720905726

/-! ## A339296.P492331695629414638

`A339295(n+1)+A014682(A339291(n+1)+A339288(n+1))`
-/

namespace A339296.P492331695629414638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339295 (n + 1) + A014682 (A339291 (n + 1) + A339288 (n + 1)).toNat

end

end A339296.P492331695629414638

/-!
# A339298: Number of oriented series-parallel networks with n integer valued elements spanning an initial interval of positive integers and without multiple unit elements in parallel.

The programs for A339298, there is no canonical definition to state claims against.
-/

/-! ## A339298.P15196775154704515882

`A181815(A302357(n+1))+n`
-/

namespace A339298.P15196775154704515882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181815 (A302357 (n + 1)).toNat + (n : ℤ)

end

end A339298.P15196775154704515882

/-!
# A339299: Number of essentially series oriented series-parallel networks with n labeled elements and without multiple unit elements in parallel.

The programs for A339299, there is no canonical definition to state claims against.
-/

/-! ## A339299.P10943790896943812074

`A339301(n+1)-A339300(n+1)`
-/

namespace A339299.P10943790896943812074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339301 (n + 1) - A339300 (n + 1)

end

end A339299.P10943790896943812074

/-! ## A339299.P16752210762960905643

`A339297(∑[n+1])-A339300(n+1)`
-/

namespace A339299.P16752210762960905643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339297 (∑ j ∈ Finset.range (n + 1), f1 j) - A339300 (n + 1)

end

end A339299.P16752210762960905643

/-! ## A339299.P3051899236647811029

`record[A339297(A115017(n+1))]-A339300(n+1)`
-/

namespace A339299.P3051899236647811029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339297 (A115017 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A339300 (n + 1)

end

end A339299.P3051899236647811029

