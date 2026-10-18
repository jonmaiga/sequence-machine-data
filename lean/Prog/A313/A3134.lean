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
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
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
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
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

/-!
# A313400: Coordination sequence Gal.5.245.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313400, there is no canonical definition to state claims against.
-/

/-! ## A313400.P7153960162870126406

`A315401(n)-A051903(A000984(n))`
-/

namespace A313400.P7153960162870126406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315401 n - A051903 (A000984 n).toNat

end

end A313400.P7153960162870126406

/-! ## A313400.P10619014952017610625

`A313401(n)-A080224(A014137(n))`
-/

namespace A313400.P10619014952017610625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313401 n - A080224 (A014137 n).toNat

end

end A313400.P10619014952017610625

/-! ## A313400.P3244191388394993234

`A313401(A087051(n))-A102683(n)`
-/

namespace A313400.P3244191388394993234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313401 (A087051 n).toNat - A102683 n

end

end A313400.P3244191388394993234

/-! ## A313400.P8485379894749347301

`A313401(n)-A115199(A330300(n)+2)`
-/

namespace A313400.P8485379894749347301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313401 n - A115199 (A330300 n + 2).toNat

end

end A313400.P8485379894749347301

/-! ## A313400.P7398412881549278448

`or(A001222(A321401(n+1)), A311153(n))`
-/

namespace A313400.P7398412881549278448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001222 (A321401 (n + 1)).toNat) (A311153 n)

end

end A313400.P7398412881549278448

/-!
# A313401: Coordination sequence Gal.6.533.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313401, there is no canonical definition to state claims against.
-/

/-! ## A313401.P7605915888729667262

`A337769(A313720(n)+A276057(n))`
-/

namespace A313401.P7605915888729667262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337769 (A313720 n + A276057 n).toNat

end

end A313401.P7605915888729667262

/-! ## A313401.P8589829603149179260

`A037800(A047363(n+1))+A351613(A003065(n))+4*n`
-/

namespace A313401.P8589829603149179260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037800 (A047363 (n + 1)).toNat + (A351613 (A003065 n).toNat + (4 * n : ℤ))

end

end A313401.P8589829603149179260

/-!
# A313402: Coordination sequence Gal.5.241.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313402, there is no canonical definition to state claims against.
-/

/-! ## A313402.P9462051383357556352

`A000959(n+1)+comp[A024095(n)]`
-/

namespace A313402.P9462051383357556352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024095 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A313402.P9462051383357556352

/-! ## A313402.P8434212650810176815

`A000959(n+1)+comp[A024097(n)]`
-/

namespace A313402.P8434212650810176815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024097 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A313402.P8434212650810176815

/-! ## A313402.P704090503319970102

`A000959(n+1)+comp[A024098(n)]`
-/

namespace A313402.P704090503319970102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024098 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A313402.P704090503319970102

/-! ## A313402.P17524709045237660479

`A000959(n+1)+comp[A024099(n)]`
-/

namespace A313402.P17524709045237660479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024099 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A313402.P17524709045237660479

/-! ## A313402.P16297303644826384866

`A000959(n+1)+comp[A051447(n+1)]`
-/

namespace A313402.P16297303644826384866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051447 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A313402.P16297303644826384866

/-!
# A313403: Coordination sequence Gal.6.421.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313403, there is no canonical definition to state claims against.
-/

/-! ## A313403.P489149255585786180

`or(A020639(A000108(n)), A311201(n))`
-/

namespace A313403.P489149255585786180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A020639 (A000108 n).toNat) (A311201 n)

end

end A313403.P489149255585786180

/-! ## A313403.P9392995007182136523

`or(A020639(A000108(n)), A311694(n))`
-/

namespace A313403.P9392995007182136523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A020639 (A000108 n).toNat) (A311694 n)

end

end A313403.P9392995007182136523

/-! ## A313403.P7732924066126610838

`or(A020639(A148372(n)), A311162(n))`
-/

namespace A313403.P7732924066126610838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A020639 (A148372 n).toNat) (A311162 n)

end

end A313403.P7732924066126610838

/-! ## A313403.P398530805686164505

`or(A001221(A290616(n)), A311694(n))`
-/

namespace A313403.P398530805686164505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001221 (A290616 n).toNat) (A311694 n)

end

end A313403.P398530805686164505

/-! ## A313403.P6701529076632466540

`or(A276502(A013946(n+1)), A311694(n))`
-/

namespace A313403.P6701529076632466540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A276502 (A013946 (n + 1)).toNat) (A311694 n)

end

end A313403.P6701529076632466540

/-!
# A313404: Coordination sequence Gal.6.535.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313404, there is no canonical definition to state claims against.
-/

/-! ## A313404.P6976859582586427439

`xor(A087444(n+1), A171588(A005248(n)))`
-/

namespace A313404.P6976859582586427439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A087444 (n + 1)) (A171588 (A005248 n).toNat)

end

end A313404.P6976859582586427439

/-! ## A313404.P8451863808781083862

`A292315(n+1)-A109925(A002182(2*n+1))`
-/

namespace A313404.P8451863808781083862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292315 (n + 1) - A109925 (A002182 (2 * n + 1)).toNat

end

end A313404.P8451863808781083862

/-! ## A313404.P7817717708544061950

`A295664(A020874(n)+A020639(n+1))+A313786(n)-n`
-/

namespace A313404.P7817717708544061950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295664 (A020874 n + A020639 (n + 1)).toNat + (A313786 n - (n : ℤ))

end

end A313404.P7817717708544061950

/-! ## A313404.P2332904087264191493

`A312934(n)+A188034(A317014(n))`
-/

namespace A313404.P2332904087264191493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312934 n + A188034 (A317014 n).toNat

end

end A313404.P2332904087264191493

/-! ## A313404.P1220341837026904544

`A314099(n)-A001222(A350265(n))`
-/

namespace A313404.P1220341837026904544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314099 n - A001222 (A350265 n).toNat

end

end A313404.P1220341837026904544

/-!
# A313405: Coordination sequence Gal.6.404.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313405, there is no canonical definition to state claims against.
-/

/-! ## A313405.P1842905571638058716

`A005117(3*n+1)-A065339(A297708(n))`
-/

namespace A313405.P1842905571638058716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (3 * n + 1) - A065339 (A297708 n).toNat

end

end A313405.P1842905571638058716

/-! ## A313405.P12020042464672431274

`A375398(3*n+2)-A066099(A131428(n))`
-/

namespace A313405.P12020042464672431274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375398 (3 * n + 2) - A066099 (A131428 n).toNat

end

end A313405.P12020042464672431274

/-! ## A313405.P17401728550066732165

`A301676(n)+A257991(A255802(n))`
-/

namespace A313405.P17401728550066732165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301676 n + A257991 (A255802 n).toNat

end

end A313405.P17401728550066732165

/-! ## A313405.P8165253014292111573

`A342148(A288147(n))+A313403(n)`
-/

namespace A313405.P8165253014292111573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342148 (A288147 n).toNat + A313403 n

end

end A313405.P8165253014292111573

/-! ## A313405.P3665210294266612446

`A314112(n)-A005811(A143954(n))`
-/

namespace A313405.P3665210294266612446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314112 n - A005811 (A143954 n).toNat

end

end A313405.P3665210294266612446

/-!
# A313407: Coordination sequence Gal.6.448.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313407, there is no canonical definition to state claims against.
-/

/-! ## A313407.P15762464708857735866

`or(A008574(n), A263259(A151432(n)))`
-/

namespace A313407.P15762464708857735866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008574 n) (A263259 (A151432 n).toNat)

end

end A313407.P15762464708857735866

/-! ## A313407.P2151738722875218111

`or(A004277(2*n), A263259(A151432(n)))`
-/

namespace A313407.P2151738722875218111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A004277 (2 * n)) (A263259 (A151432 n).toNat)

end

end A313407.P2151738722875218111

/-!
# A313408: Coordination sequence Gal.6.400.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313408, there is no canonical definition to state claims against.
-/

/-! ## A313408.P10803774705521170964

`A286361(3^n+1)+4*n`
-/

namespace A313408.P10803774705521170964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286361 (3 ^ n + 1) + (4 * n : ℤ)

end

end A313408.P10803774705521170964

/-! ## A313408.P268997896249832554

`A102481(A102477(n))+A008586(n)`
-/

namespace A313408.P268997896249832554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102481 (A102477 n).toNat + A008586 n

end

end A313408.P268997896249832554

/-! ## A313408.P4298157645644011538

`A010123(A281157(n))+A008586(n)`
-/

namespace A313408.P4298157645644011538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010123 (A281157 n).toNat + A008586 n

end

end A313408.P4298157645644011538

/-! ## A313408.P5713252868959383741

`or(A008574(n), A102481(A102477(n)))`
-/

namespace A313408.P5713252868959383741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008574 n) (A102481 (A102477 n).toNat)

end

end A313408.P5713252868959383741

/-! ## A313408.P281371037790177000

`or(A008574(n), A010123(A281157(n)))`
-/

namespace A313408.P281371037790177000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008574 n) (A010123 (A281157 n).toNat)

end

end A313408.P281371037790177000

/-!
# A313409: Coordination sequence Gal.5.185.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313409, there is no canonical definition to state claims against.
-/

/-! ## A313409.P1987615236708656238

`A314684(n)+A014683(A112835(2*n)+2)%A007918(n)`
-/

namespace A313409.P1987615236708656238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314684 n + Int.tmod (A014683 (A112835 (2 * n) + 2).toNat) (A007918 n)

end

end A313409.P1987615236708656238

/-!
# A313410: Coordination sequence Gal.6.73.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313410, there is no canonical definition to state claims against.
-/

/-! ## A313410.P17140632603603070227

`∑[A270000(A047408(n+1)+A008265(2*(n+1)))]`
-/

namespace A313410.P17140632603603070227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270000 (A047408 (n + 1) + A008265 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313410.P17140632603603070227

/-! ## A313410.P4955779262243496680

`A247189(A003022(3*n+2))+n`
-/

namespace A313410.P4955779262243496680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247189 (A003022 (3 * n + 2)).toNat + (n : ℤ)

end

end A313410.P4955779262243496680

/-! ## A313410.P264066473806654653

`A313405(n)+A193330(A145269(n))`
-/

namespace A313410.P264066473806654653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313405 n + A193330 (A145269 n).toNat

end

end A313410.P264066473806654653

/-! ## A313410.P5829819191815873408

`or(A301684(n), A377282(A372999(n+1)))`
-/

namespace A313410.P5829819191815873408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A301684 n) (A377282 (A372999 (n + 1)).toNat)

end

end A313410.P5829819191815873408

/-!
# A313411: Coordination sequence Gal.6.539.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313411, there is no canonical definition to state claims against.
-/

/-! ## A313411.P17064406830223355802

`A313410(n)+A308773(A004915(n+1))`
-/

namespace A313411.P17064406830223355802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313410 n + A308773 (A004915 (n + 1)).toNat

end

end A313411.P17064406830223355802

/-! ## A313411.P17479832958366624991

`A190486(n+1)-A000002(A175441(n+1))`
-/

namespace A313411.P17479832958366624991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190486 (n + 1) - A000002 (A175441 (n + 1)).toNat

end

end A313411.P17479832958366624991

/-! ## A313411.P4612811711605476600

`A313515(n)-A280710(n!)`
-/

namespace A313411.P4612811711605476600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313515 n - A280710 (Nat.factorial n)

end

end A313411.P4612811711605476600

/-! ## A313411.P1729299676536085973

`A301710(n)-4%A132103(n)`
-/

namespace A313411.P1729299676536085973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301710 n - Int.tmod 4 (A132103 n)

end

end A313411.P1729299676536085973

/-! ## A313411.P12726896848062563132

`A311485(n)+A124010(A116723(n))`
-/

namespace A313411.P12726896848062563132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311485 n + A124010 (A116723 n).toNat

end

end A313411.P12726896848062563132

/-!
# A313412: Coordination sequence Gal.4.115.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313412, there is no canonical definition to state claims against.
-/

/-! ## A313412.P2696343647182478385

`record[A313413(n)-A052403(n+1)]`
-/

namespace A313412.P2696343647182478385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313413 n - A052403 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A313412.P2696343647182478385

/-! ## A313412.P14225533156819911576

`A313739(n)-A001221(A130263(n))`
-/

namespace A313412.P14225533156819911576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313739 n - A001221 (A130263 n).toNat

end

end A313412.P14225533156819911576

/-! ## A313412.P474224051552907268

`A313413(n)-A014082(A274739(n))`
-/

namespace A313412.P474224051552907268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313413 n - A014082 (A274739 n).toNat

end

end A313412.P474224051552907268

/-! ## A313412.P7379562471640690918

`A311207(n)+A001222(A026017(n+2))`
-/

namespace A313412.P7379562471640690918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311207 n + A001222 (A026017 (n + 2)).toNat

end

end A313412.P7379562471640690918

/-! ## A313412.P4878526869903081745

`A190486(n+1)-A156263(A006330(2*n+3))`
-/

namespace A313412.P4878526869903081745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190486 (n + 1) - A156263 (A006330 (2 * n + 3)).toNat

end

end A313412.P4878526869903081745

/-!
# A313413: Coordination sequence Gal.5.242.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313413, there is no canonical definition to state claims against.
-/

/-! ## A313413.P12022673544195641597

`or(A007814(A094388(n)), A313412(n))`
-/

namespace A313413.P12022673544195641597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A007814 (A094388 n).toNat) (A313412 n)

end

end A313413.P12022673544195641597

/-! ## A313413.P1948886059382503574

`or(A055874(∏{p}[n+1, #^4+1]), A137620(3*n+1))`
-/

namespace A313413.P1948886059382503574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A055874 (∏ p ∈ Nat.primeFactors (f1 n), (p ^ 4 + 1))) (A137620 (3 * n + 1))

end

end A313413.P1948886059382503574

/-! ## A313413.P14524517635346121494

`A313412(n)+A014082(A274739(n))`
-/

namespace A313413.P14524517635346121494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313412 n + A014082 (A274739 n).toNat

end

end A313413.P14524517635346121494

/-! ## A313413.P8467920898779058947

`A337769(A052905(n))-∑[A292373(n)]`
-/

namespace A313413.P8467920898779058947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292373 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337769 (A052905 n).toNat - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313413.P8467920898779058947

/-! ## A313413.P5207490448165694125

`A111850(A162862(n+1))+A039274(3*n+1)`
-/

namespace A313413.P5207490448165694125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111850 (A162862 (n + 1)).toNat + A039274 (3 * n + 1)

end

end A313413.P5207490448165694125

/-!
# A313414: Coordination sequence Gal.6.543.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313414, there is no canonical definition to state claims against.
-/

/-! ## A313414.P7684644752202365211

`A330878(or(A017077(n), A281715(n+1)))`
-/

namespace A313414.P7684644752202365211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330878 (Int.lor (A017077 n) (A281715 (n + 1))).toNat

end

end A313414.P7684644752202365211

/-!
# A313416: Coordination sequence Gal.4.106.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313416, the canonical program `A313416.P3381920737884461264` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313416 has offset 0).

The definition of A313416 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2421 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313416.P16257371171728229594

`abs(8*n-A316317(n))`
-/

namespace A313416.P16257371171728229594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(8 * n : ℤ) - A316317 n|

end

end A313416.P16257371171728229594

namespace A313416

/-- `abs(8*n-A316317(n))` -/
def P16257371171728229594.Spec : Prop :=
  ∀ n, P16257371171728229594.a n = A313416 n

end A313416

/-! ## A313416.P3176442093208973479

`A298024(n)+A101455(n)`
-/

namespace A313416.P3176442093208973479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298024 n + A101455 n

end

end A313416.P3176442093208973479

namespace A313416

/-- `A298024(n)+A101455(n)` -/
def P3176442093208973479.Spec : Prop :=
  ∀ n, P3176442093208973479.a n = A313416 n

end A313416

/-! ## A313416.P3381920737884461264

`A298024(n)-A056594(n+1)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A313416

/-- `A298024(n)-A056594(n+1)` -/
def P3381920737884461264.Spec : Prop :=
  ∀ n, P3381920737884461264.a n = A313416 n

theorem P3381920737884461264.correct : P3381920737884461264.Spec := by
  intro n
  simp only [A313416]

end A313416

/-! ## A313416.P8511495860601341475

`A004525(A316316(n))+3*n`
-/

namespace A313416.P8511495860601341475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A316316 n).toNat + (3 * n : ℤ)

end

end A313416.P8511495860601341475

namespace A313416

/-- `A004525(A316316(n))+3*n` -/
def P8511495860601341475.Spec : Prop :=
  ∀ n, P8511495860601341475.a n = A313416 n

end A313416

/-! ## A313416.P16543243239209300309

`2*A313575(n)-A008706(n)`
-/

namespace A313416.P16543243239209300309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313575 n - A008706 n

end

end A313416.P16543243239209300309

namespace A313416

/-- `2*A313575(n)-A008706(n)` -/
def P16543243239209300309.Spec : Prop :=
  ∀ n, P16543243239209300309.a n = A313416 n

end A313416

/-! ## A313416.P16614936294474552019

`A008486(n)+A004526(A316316(n))`
-/

namespace A313416.P16614936294474552019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + A004526 (A316316 n).toNat

end

end A313416.P16614936294474552019

namespace A313416

/-- `A008486(n)+A004526(A316316(n))` -/
def P16614936294474552019.Spec : Prop :=
  ∀ n, P16614936294474552019.a n = A313416 n

end A313416

/-! ## A313416.P7616433461131582073

`A298024(n)+A301291(n)-A301293(n)`
-/

namespace A313416.P7616433461131582073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298024 n + (A301291 n - A301293 n)

end

end A313416.P7616433461131582073

namespace A313416

/-- `A298024(n)+A301291(n)-A301293(n)` -/
def P7616433461131582073.Spec : Prop :=
  ∀ n, P7616433461131582073.a n = A313416 n

end A313416

/-! ## A313416.P8573768856318834721

`A008706(n)-A005843(A008706(n)-A313575(n))`
-/

namespace A313416.P8573768856318834721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n - A005843 (A008706 n - A313575 n).toNat

end

end A313416.P8573768856318834721

namespace A313416

/-- `A008706(n)-A005843(A008706(n)-A313575(n))` -/
def P8573768856318834721.Spec : Prop :=
  ∀ n, P8573768856318834721.a n = A313416 n

end A313416

/-! ## A313416.P17618052807158845637

`A315211(n)-A008612(2*n+1)`
-/

namespace A313416.P17618052807158845637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315211 n - A008612 (2 * n + 1)

end

end A313416.P17618052807158845637

namespace A313416

/-- `A315211(n)-A008612(2*n+1)` -/
def P17618052807158845637.Spec : Prop :=
  ∀ n, P17618052807158845637.a n = A313416 n

end A313416

/-! ## A313416.P5265761512406271341

`A005843(A313575(n))-A008706(n)`
-/

namespace A313416.P5265761512406271341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A313575 n).toNat - A008706 n

end

end A313416.P5265761512406271341

namespace A313416

/-- `A005843(A313575(n))-A008706(n)` -/
def P5265761512406271341.Spec : Prop :=
  ∀ n, P5265761512406271341.a n = A313416 n

end A313416

/-! ## A313416.P13550124964978595126

`A008854(n+1)+A004525(n)+A004525(A008706(n))`
-/

namespace A313416.P13550124964978595126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008854 (n + 1) + (A004525 n + A004525 (A008706 n).toNat)

end

end A313416.P13550124964978595126

namespace A313416

/-- `A008854(n+1)+A004525(n)+A004525(A008706(n))` -/
def P13550124964978595126.Spec : Prop :=
  ∀ n, P13550124964978595126.a n = A313416 n

end A313416

/-! ## A313416.P461322491835092021

`A072149(3*n)-3*n`
-/

namespace A313416.P461322491835092021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072149 (3 * n) - (3 * n : ℤ)

end

end A313416.P461322491835092021

namespace A313416

/-- `A072149(3*n)-3*n` -/
def P461322491835092021.Spec : Prop :=
  ∀ n, P461322491835092021.a n = A313416 n

end A313416

/-!
# A313419: Coordination sequence Gal.6.488.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313419, there is no canonical definition to state claims against.
-/

/-! ## A313419.P14900814411502180138

`A257804(3*n+1)-A342510(A302929(3*n+5))`
-/

namespace A313419.P14900814411502180138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257804 (3 * n + 1) - A342510 (A302929 (3 * n + 5)).toNat

end

end A313419.P14900814411502180138

/-! ## A313419.P4234552866962931187

`A313428(n)-A014707(A134915(n))`
-/

namespace A313419.P4234552866962931187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313428 n - A014707 (A134915 n).toNat

end

end A313419.P4234552866962931187

/-! ## A313419.P3179333367798780375

`A301291(n)+A134023(A000228(n+1))`
-/

namespace A313419.P3179333367798780375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301291 n + A134023 (A000228 (n + 1)).toNat

end

end A313419.P3179333367798780375

/-! ## A313419.P16586156265476152394

`A313428(n)-A112765(A269076(n+1))`
-/

namespace A313419.P16586156265476152394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313428 n - A112765 (A269076 (n + 1)).toNat

end

end A313419.P16586156265476152394

/-! ## A313419.P1732533375115719187

`A313428(n)-A322437(A183926(n+1))`
-/

namespace A313419.P1732533375115719187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313428 n - A322437 (A183926 (n + 1)).toNat

end

end A313419.P1732533375115719187

/-!
# A313420: Coordination sequence Gal.6.30.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313420, there is no canonical definition to state claims against.
-/

/-! ## A313420.P17328848924800562200

`A180493(xor(A275609(n), A312464(n)))`
-/

namespace A313420.P17328848924800562200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180493 (Int.xor (A275609 n) (A312464 n)).toNat

end

end A313420.P17328848924800562200

/-! ## A313420.P3233454945788320106

`A313875(n)-A318995(A195669(n+3))`
-/

namespace A313420.P3233454945788320106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313875 n - A318995 (A195669 (n + 3)).toNat

end

end A313420.P3233454945788320106

/-!
# A313423: Coordination sequence Gal.6.611.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313423, there is no canonical definition to state claims against.
-/

/-! ## A313423.P16508128695135522038

`A007895(A121654(n))+4*n`
-/

namespace A313423.P16508128695135522038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (A121654 n).toNat + (4 * n : ℤ)

end

end A313423.P16508128695135522038

/-! ## A313423.P10461444619919093623

`A314049(n)-A001221(A003014(n))`
-/

namespace A313423.P10461444619919093623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314049 n - A001221 (A003014 n).toNat

end

end A313423.P10461444619919093623

/-! ## A313423.P5174982241771966677

`A314049(n)-A001221(A060727(n))`
-/

namespace A313423.P5174982241771966677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314049 n - A001221 (A060727 n).toNat

end

end A313423.P5174982241771966677

/-! ## A313423.P8189055429293853855

`A314049(n)-A001221(A177534(n))`
-/

namespace A313423.P8189055429293853855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314049 n - A001221 (A177534 n).toNat

end

end A313423.P8189055429293853855

/-! ## A313423.P12337447113750224742

`A311405(n)+A001221(A074740(n+1))`
-/

namespace A313423.P12337447113750224742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311405 n + A001221 (A074740 (n + 1)).toNat

end

end A313423.P12337447113750224742

/-!
# A313424: Coordination sequence Gal.6.610.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313424, there is no canonical definition to state claims against.
-/

/-! ## A313424.P1327106386845809978

`A313611(n)-A084888(A005803(n))`
-/

namespace A313424.P1327106386845809978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313611 n - A084888 (A005803 n).toNat

end

end A313424.P1327106386845809978

/-! ## A313424.P4513934946682427278

`A313639(n)-A086251(A159347(n))`
-/

namespace A313424.P4513934946682427278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313639 n - A086251 (A159347 n).toNat

end

end A313424.P4513934946682427278

/-! ## A313424.P8014919139746061929

`A008706(n)-A374748(A270702(n+1))`
-/

namespace A313424.P8014919139746061929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n - A374748 (A270702 (n + 1)).toNat

end

end A313424.P8014919139746061929

/-! ## A313424.P3980406809579462473

`A115871(∑[A139490(∏{p}[n+1, #])])`
-/

namespace A313424.P3980406809579462473
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139490 (∏ p ∈ Nat.primeFactors (f2 n), p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115871 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A313424.P3980406809579462473

/-! ## A313424.P16946923132449727137

`A060130(A007758(n))+A008574(n)`
-/

namespace A313424.P16946923132449727137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060130 (A007758 n).toNat + A008574 n

end

end A313424.P16946923132449727137

/-!
# A313425: Coordination sequence Gal.5.224.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313425, there is no canonical definition to state claims against.
-/

/-! ## A313425.P15499359768893094473

`A314049(n)-A321090(A306523(n))`
-/

namespace A313425.P15499359768893094473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314049 n - A321090 (A306523 n).toNat

end

end A313425.P15499359768893094473

/-! ## A313425.P14525635883195864854

`or(A312203(n), A325497(A269505(2*n+1)))`
-/

namespace A313425.P14525635883195864854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A312203 n) (A325497 (A269505 (2 * n + 1)).toNat)

end

end A313425.P14525635883195864854

/-!
# A313426: Coordination sequence Gal.5.220.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313426, there is no canonical definition to state claims against.
-/

/-! ## A313426.P8844504406034927723

`A311535(n)+A001222(A267609(n))`
-/

namespace A313426.P8844504406034927723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311535 n + A001222 (A267609 n).toNat

end

end A313426.P8844504406034927723

/-! ## A313426.P16315788644358736802

`A313428(n)-A346392(A148470(n))`
-/

namespace A313426.P16315788644358736802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313428 n - A346392 (A148470 n).toNat

end

end A313426.P16315788644358736802

/-! ## A313426.P8396941293576334185

`A313646(n)-A037800(A094309(n+3))`
-/

namespace A313426.P8396941293576334185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313646 n - A037800 (A094309 (n + 3)).toNat

end

end A313426.P8396941293576334185

/-!
# A313427: Coordination sequence Gal.6.212.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313427, there is no canonical definition to state claims against.
-/

/-! ## A313427.P14921859003600305207

`A313428(n)-A157928(A033483(n))`
-/

namespace A313427.P14921859003600305207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313428 n - A157928 (A033483 n).toNat

end

end A313427.P14921859003600305207

/-! ## A313427.P9700973361439434085

`A313428(n)-A157928(Δ[A036601(n)])`
-/

namespace A313427.P9700973361439434085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036601 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313428 n - A157928 (f1 (n + 1) - f1 n).toNat

end

end A313427.P9700973361439434085

/-! ## A313427.P4174996604261038796

`A313428(n)-A157928(A036601(n+1))`
-/

namespace A313427.P4174996604261038796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313428 n - A157928 (A036601 (n + 1)).toNat

end

end A313427.P4174996604261038796

/-! ## A313427.P13032067795360557185

`A313428(n)-A157928(2*A036601(n))`
-/

namespace A313427.P13032067795360557185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313428 n - A157928 (2 * A036601 n).toNat

end

end A313427.P13032067795360557185

/-! ## A313427.P4526368922066129386

`A313428(n)-∑[A025456(A194265(n+1))]`
-/

namespace A313427.P4526368922066129386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025456 (A194265 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313428 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313427.P4526368922066129386

/-!
# A313428: Coordination sequence Gal.6.211.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313428, there is no canonical definition to state claims against.
-/

/-! ## A313428.P5365045565314947652

`A313427(n)+A157928(A033483(n))`
-/

namespace A313428.P5365045565314947652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313427 n + A157928 (A033483 n).toNat

end

end A313428.P5365045565314947652

/-! ## A313428.P2524448986427511303

`A313427(n)+A157928(Δ[A036601(n)])`
-/

namespace A313428.P2524448986427511303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036601 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313427 n + A157928 (f1 (n + 1) - f1 n).toNat

end

end A313428.P2524448986427511303

/-! ## A313428.P10912946018333659751

`A313427(n)+A157928(A036601(n+1))`
-/

namespace A313428.P10912946018333659751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313427 n + A157928 (A036601 (n + 1)).toNat

end

end A313428.P10912946018333659751

/-! ## A313428.P16926961652735259465

`A313427(n)-∑[A016389(A022166(n))]`
-/

namespace A313428.P16926961652735259465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016389 (A022166 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313427 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313428.P16926961652735259465

/-! ## A313428.P8424271266406004524

`A313427(n)+∑[A025456(A194265(n+1))]`
-/

namespace A313428.P8424271266406004524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025456 (A194265 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313427 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313428.P8424271266406004524

/-!
# A313431: Coordination sequence Gal.6.478.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313431, there is no canonical definition to state claims against.
-/

/-! ## A313431.P16794665137763554060

`A245550(n)+record[A171172(n+1)]`
-/

namespace A313431.P16794665137763554060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171172 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245550 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A313431.P16794665137763554060

/-!
# A313432: Coordination sequence Gal.5.168.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313432, there is no canonical definition to state claims against.
-/

/-! ## A313432.P724591803487824068

`xor(A008706(n), A266003(A034472(n)))`
-/

namespace A313432.P724591803487824068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A008706 n) (A266003 (A034472 n).toNat)

end

end A313432.P724591803487824068

/-! ## A313432.P9946233742727717355

`A314140(n)-A001222(A040018(n+3))`
-/

namespace A313432.P9946233742727717355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314140 n - A001222 (A040018 (n + 3)).toNat

end

end A313432.P9946233742727717355

/-!
# A313433: Coordination sequence Gal.6.295.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313433, there is no canonical definition to state claims against.
-/

/-! ## A313433.P4638499965270927182

`2*A061762(n)+A070084(A031872(n+1))+A025480(n)`
-/

namespace A313433.P4638499965270927182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A061762 n + (A070084 (A031872 (n + 1)).toNat + A025480 n)

end

end A313433.P4638499965270927182

/-!
# A313434: Coordination sequence Gal.6.281.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313434, there is no canonical definition to state claims against.
-/

/-! ## A313434.P8323901378233053597

`A020753(2*n+1)+A129527(n)+n`
-/

namespace A313434.P8323901378233053597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020753 (2 * n + 1) + (A129527 n + (n : ℤ))

end

end A313434.P8323901378233053597

/-!
# A313435: Coordination sequence Gal.6.190.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313435, there is no canonical definition to state claims against.
-/

/-! ## A313435.P3005885594465641509

`A313436(n)-A059841(A055366(n+7))`
-/

namespace A313435.P3005885594465641509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313436 n - A059841 (A055366 (n + 7)).toNat

end

end A313435.P3005885594465641509

/-! ## A313435.P16454313975241023496

`A313436(n)-A326499(A313467(2*(n+2)))`
-/

namespace A313435.P16454313975241023496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313436 n - A326499 ((A313467 (2 * (n + 2))).toNat + 50)

end

end A313435.P16454313975241023496

/-! ## A313435.P3974861861194774354

`A000120(A027742(n+1))+4*n-A000120(A357285(n))`
-/

namespace A313435.P3974861861194774354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A027742 (n + 1)).toNat + (4 * n : ℤ) - A000120 (A357285 n).toNat

end

end A313435.P3974861861194774354

/-! ## A313435.P110322565368115356

`A000120(A027742(n+1))+4*n-A057354(A057354(n+1))`
-/

namespace A313435.P110322565368115356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A027742 (n + 1)).toNat + (4 * n : ℤ) - A057354 (A057354 (n + 1)).toNat

end

end A313435.P110322565368115356

/-!
# A313436: Coordination sequence Gal.6.174.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313436, there is no canonical definition to state claims against.
-/

/-! ## A313436.P13369516587864540675

`A000120(A027742(n+1))+4*n`
-/

namespace A313436.P13369516587864540675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A027742 (n + 1)).toNat + (4 * n : ℤ)

end

end A313436.P13369516587864540675

/-! ## A313436.P4703415407292214969

`or(A001221(A050478(n)), A311728(n))`
-/

namespace A313436.P4703415407292214969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001221 (A050478 n).toNat) (A311728 n)

end

end A313436.P4703415407292214969

/-! ## A313436.P6538481784455975696

`or(A000120(A027742(n+1)), A008574(n))`
-/

namespace A313436.P6538481784455975696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000120 (A027742 (n + 1)).toNat) (A008574 n)

end

end A313436.P6538481784455975696

/-! ## A313436.P15705368768988373775

`or(A000120(A027742(n+1)), A311728(n))`
-/

namespace A313436.P15705368768988373775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000120 (A027742 (n + 1)).toNat) (A311728 n)

end

end A313436.P15705368768988373775

/-! ## A313436.P5324024778561016869

`A326499(A313467(2*(n+2)))+A313435(n)`
-/

namespace A313436.P5324024778561016869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326499 ((A313467 (2 * (n + 2))).toNat + 50) + A313435 n

end

end A313436.P5324024778561016869

/-!
# A313437: Coordination sequence Gal.6.565.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313437, there is no canonical definition to state claims against.
-/

/-! ## A313437.P16744125770566921502

`A008706(n)-A169676(A169696(n+1))`
-/

namespace A313437.P16744125770566921502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n - A169676 (A169696 (n + 1)).toNat

end

end A313437.P16744125770566921502

/-! ## A313437.P3644667969064935488

`A244227(A244208(n+2))+A045750(n)`
-/

namespace A313437.P3644667969064935488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244227 (A244208 (n + 2)).toNat + A045750 n

end

end A313437.P3644667969064935488

/-! ## A313437.P8203228009130273308

`A313997(n)+A010892(A323861(3*n+1))`
-/

namespace A313437.P8203228009130273308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313997 n + A010892 (A323861 (3 * n + 1)).toNat

end

end A313437.P8203228009130273308

/-! ## A313437.P3581136543620486179

`A313424(n)+A003023(A006720(n))`
-/

namespace A313437.P3581136543620486179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313424 n + A003023 (A006720 n).toNat

end

end A313437.P3581136543620486179

/-! ## A313437.P2968252332085597920

`A314943(n)-A016331(A311646(n))`
-/

namespace A313437.P2968252332085597920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314943 n - A016331 (A311646 n).toNat

end

end A313437.P2968252332085597920

/-!
# A313438: Coordination sequence Gal.5.229.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313438, there is no canonical definition to state claims against.
-/

/-! ## A313438.P10576969067427131956

`A313622(n)-A055641(A068875(n))`
-/

namespace A313438.P10576969067427131956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313622 n - A055641 (A068875 n).toNat

end

end A313438.P10576969067427131956

/-! ## A313438.P1700495489154915435

`A160755(A314049(n)-A023969(n))`
-/

namespace A313438.P1700495489154915435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160755 (A314049 n - A023969 n).toNat

end

end A313438.P1700495489154915435

/-! ## A313438.P11107197469916109278

`A313622(n)-A284751(A148592(n))`
-/

namespace A313438.P11107197469916109278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313622 n - A284751 (A148592 n).toNat

end

end A313438.P11107197469916109278

/-! ## A313438.P349894592656695497

`A160755(xor(A023969(n), A314049(n)))`
-/

namespace A313438.P349894592656695497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160755 (Int.xor (A023969 n) (A314049 n)).toNat

end

end A313438.P349894592656695497

/-! ## A313438.P7437439496219741328

`A315412(n)-A298972((n+1)*∑{digits}[n, #])`
-/

namespace A313438.P7437439496219741328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315412 n - A298972 ((n + 1) * ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum)

end

end A313438.P7437439496219741328

/-!
# A313439: Coordination sequence Gal.4.110.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313439, there is no canonical definition to state claims against.
-/

/-! ## A313439.P6999520659021292753

`A311408(n)+A001222(A123748(n))`
-/

namespace A313439.P6999520659021292753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311408 n + A001222 (A123748 n).toNat

end

end A313439.P6999520659021292753

/-! ## A313439.P13560751882122848608

`A313628(n)-A010051(A001349(n))`
-/

namespace A313439.P13560751882122848608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313628 n - A010051 (A001349 n).toNat

end

end A313439.P13560751882122848608

/-! ## A313439.P656864350451592141

`A301678(n)-A127326(A006128(n))`
-/

namespace A313439.P656864350451592141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301678 n - A127326 (A006128 n).toNat

end

end A313439.P656864350451592141

/-! ## A313439.P5687848986358058975

`A301678(n)-A102683(A121724(n))`
-/

namespace A313439.P5687848986358058975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301678 n - A102683 (A121724 n).toNat

end

end A313439.P5687848986358058975

/-! ## A313439.P15245865254657321295

`A301678(n)-A289025(A000984(n))`
-/

namespace A313439.P15245865254657321295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301678 n - A289025 (A000984 n).toNat

end

end A313439.P15245865254657321295

/-!
# A313440: Coordination sequence Gal.5.259.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313440, there is no canonical definition to state claims against.
-/

/-! ## A313440.P8128244039639120341

`∑[dr(A073138(A340824(n+1)))]`
-/

namespace A313440.P8128244039639120341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A073138 (A340824 (n + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313440.P8128244039639120341

/-! ## A313440.P6367915106389708511

`A313653(n)-A154782(A049864(n))`
-/

namespace A313440.P6367915106389708511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313653 n - A154782 (A049864 n).toNat

end

end A313440.P6367915106389708511

/-!
# A313441: Coordination sequence Gal.6.452.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313441, there is no canonical definition to state claims against.
-/

/-! ## A313441.P11045501482865605211

`A301678(n)-A065712(A003173(n+1))`
-/

namespace A313441.P11045501482865605211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301678 n - A065712 (A003173 (n + 1)).toNat

end

end A313441.P11045501482865605211

/-! ## A313441.P15819262529070359461

`A097366(A081770(n+1))-A245554(n+1)`
-/

namespace A313441.P15819262529070359461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097366 (A081770 (n + 1)).toNat - A245554 (n + 1)

end

end A313441.P15819262529070359461

/-! ## A313441.P6930187460781961535

`A030303(3*n+2)-A357112(A001793(n+1))`
-/

namespace A313441.P6930187460781961535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030303 (3 * n + 2) - A357112 (A001793 (n + 1)).toNat

end

end A313441.P6930187460781961535

/-!
# A313442: Coordination sequence Gal.6.453.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313442, there is no canonical definition to state claims against.
-/

/-! ## A313442.P9248199039304188699

`A301678(n)-A355741(A301700(n+4))`
-/

namespace A313442.P9248199039304188699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301678 n - A355741 (A301700 (n + 4)).toNat

end

end A313442.P9248199039304188699

/-! ## A313442.P10349446350068786516

`A005117(3*n+2)-A079344(A046979(n))`
-/

namespace A313442.P10349446350068786516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (3 * n + 2) - A079344 (A046979 n).toNat

end

end A313442.P10349446350068786516

/-! ## A313442.P16201305794855903065

`A005117(3*n+2)-A353846(A353860(n+3))`
-/

namespace A313442.P16201305794855903065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (3 * n + 2) - A353846 (A353860 (n + 3)).toNat

end

end A313442.P16201305794855903065

/-!
# A313446: Coordination sequence Gal.5.204.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313446, there is no canonical definition to state claims against.
-/

/-! ## A313446.P2668389718278673162

`(A315311(n)+A310337(n))/2`
-/

namespace A313446.P2668389718278673162
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315311 n + A310337 n : ℚ) / 2

end

end A313446.P2668389718278673162

/-! ## A313446.P15983311354576927727

`A004525(A313842(n)+A310337(n))`
-/

namespace A313446.P15983311354576927727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313842 n + A310337 n).toNat

end

end A313446.P15983311354576927727

/-! ## A313446.P11099363270094914402

`A004525(A315311(n)+A310337(n))`
-/

namespace A313446.P11099363270094914402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315311 n + A310337 n).toNat

end

end A313446.P11099363270094914402

/-! ## A313446.P272793641303597449

`A289435(A315311(n)+A310337(n))`
-/

namespace A313446.P272793641303597449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289435 (A315311 n + A310337 n).toNat

end

end A313446.P272793641303597449

/-! ## A313446.P5429541235702143012

`1-A168050(A315311(n)+A310337(n))`
-/

namespace A313446.P5429541235702143012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A168050 (A315311 n + A310337 n).toNat

end

end A313446.P5429541235702143012

/-!
# A313449: Coordination sequence Gal.6.319.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313449, there is no canonical definition to state claims against.
-/

/-! ## A313449.P13934659110149596052

`A100484(n+1)-A144402(A061601(n+1))`
-/

namespace A313449.P13934659110149596052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1) - A144402 (A061601 (n + 1)).toNat

end

end A313449.P13934659110149596052

/-!
# A313452: Coordination sequence Gal.6.17.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313452, there is no canonical definition to state claims against.
-/

/-! ## A313452.P14522658647118348802

`A313382(n)+A261990(A262006(n))`
-/

namespace A313452.P14522658647118348802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313382 n + A261990 (A262006 n).toNat

end

end A313452.P14522658647118348802

/-! ## A313452.P10549139383003300264

`A314002(n)-A000035(A185544(n))`
-/

namespace A313452.P10549139383003300264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314002 n - A000035 (A185544 n).toNat

end

end A313452.P10549139383003300264

/-! ## A313452.P13785264638123350479

`xor(A305831(A261650(n)), A311542(n))`
-/

namespace A313452.P13785264638123350479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A305831 (A261650 n).toNat) (A311542 n)

end

end A313452.P13785264638123350479

/-!
# A313453: Coordination sequence Gal.6.55.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313453, there is no canonical definition to state claims against.
-/

/-! ## A313453.P13499469143567740288

`A311107(n)+A001221(A026026(n+2))`
-/

namespace A313453.P13499469143567740288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311107 n + A001221 (A026026 (n + 2)).toNat

end

end A313453.P13499469143567740288

/-!
# A313454: Coordination sequence Gal.6.371.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313454, there is no canonical definition to state claims against.
-/

/-! ## A313454.P726364157565509390

`A313455(n)-A014083(A198644(n))`
-/

namespace A313454.P726364157565509390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313455 n - A014083 (A198644 n).toNat

end

end A313454.P726364157565509390

/-! ## A313454.P17234951425725809336

`A313455(n)-A186747(A250120(n))`
-/

namespace A313454.P17234951425725809336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313455 n - A186747 (A250120 n).toNat

end

end A313454.P17234951425725809336

/-! ## A313454.P15378243406386168685

`A313455(n)-A025459(A032559(n+1))`
-/

namespace A313454.P15378243406386168685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313455 n - A025459 (A032559 (n + 1)).toNat

end

end A313454.P15378243406386168685

/-! ## A313454.P9298145130706474103

`A313455(n)-A186747(A072154(2*n))`
-/

namespace A313454.P9298145130706474103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313455 n - A186747 (A072154 (2 * n)).toNat

end

end A313454.P9298145130706474103

/-!
# A313455: Coordination sequence Gal.5.285.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313455, there is no canonical definition to state claims against.
-/

/-! ## A313455.P17585661802663411940

`A313454(n)+A014083(A198644(n))`
-/

namespace A313455.P17585661802663411940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313454 n + A014083 (A198644 n).toNat

end

end A313455.P17585661802663411940

/-! ## A313455.P15664191388045861843

`A313454(n)+A186747(A250120(n))`
-/

namespace A313455.P15664191388045861843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313454 n + A186747 (A250120 n).toNat

end

end A313455.P15664191388045861843

/-! ## A313455.P8382125350840760261

`A313454(n)+A025459(A032559(n+1))`
-/

namespace A313455.P8382125350840760261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313454 n + A025459 (A032559 (n + 1)).toNat

end

end A313455.P8382125350840760261

/-! ## A313455.P8143827573018846924

`A313454(n)+A186747(A072154(2*n))`
-/

namespace A313455.P8143827573018846924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313454 n + A186747 (A072154 (2 * n)).toNat

end

end A313455.P8143827573018846924

/-! ## A313455.P11092701338411719516

`or(A246260(A351698(n+1)), A313454(n))`
-/

namespace A313455.P11092701338411719516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A246260 (A351698 (n + 1)).toNat) (A313454 n)

end

end A313455.P11092701338411719516

/-!
# A313456: Coordination sequence Gal.6.307.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313456, there is no canonical definition to state claims against.
-/

/-! ## A313456.P13391999641995245944

`A313482(n)-A044939(A309383(n+1))`
-/

namespace A313456.P13391999641995245944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313482 n - A044939 (A309383 (n + 1)).toNat

end

end A313456.P13391999641995245944

/-! ## A313456.P1051393218728816210

`A313491(n)-A185117(A174700(n))`
-/

namespace A313456.P1051393218728816210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313491 n - A185117 (A174700 n).toNat

end

end A313456.P1051393218728816210

/-! ## A313456.P7303322575402924241

`A106744(A314082(n)+1)`
-/

namespace A313456.P7303322575402924241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106744 (A314082 n + 1).toNat

end

end A313456.P7303322575402924241

/-! ## A313456.P16639990626904555813

`A106744(A314083(n)+1)`
-/

namespace A313456.P16639990626904555813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106744 (A314083 n + 1).toNat

end

end A313456.P16639990626904555813

/-! ## A313456.P18214504937441067945

`A313491(n)-A179527(A110287(n))`
-/

namespace A313456.P18214504937441067945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313491 n - A179527 (A110287 n).toNat

end

end A313456.P18214504937441067945

/-!
# A313457: Coordination sequence Gal.6.445.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313457, there is no canonical definition to state claims against.
-/

/-! ## A313457.P7822593957173685238

`A076840(A343514(n+1))+4*n`
-/

namespace A313457.P7822593957173685238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076840 (A343514 (n + 1)).toNat + (4 * n : ℤ)

end

end A313457.P7822593957173685238

/-! ## A313457.P14792855305756707477

`A091446(11*n)+A016813(n)`
-/

namespace A313457.P14792855305756707477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091446 (11 * n) + A016813 n

end

end A313457.P14792855305756707477

/-! ## A313457.P12103682449814186716

`A130658(A074421(n+1))+4*n`
-/

namespace A313457.P12103682449814186716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130658 (A074421 (n + 1)).toNat + (4 * n : ℤ)

end

end A313457.P12103682449814186716

/-! ## A313457.P5645600310984495820

`A056169(A179579(n+1))+4*n`
-/

namespace A313457.P5645600310984495820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056169 (A179579 (n + 1)).toNat + (4 * n : ℤ)

end

end A313457.P5645600310984495820

/-! ## A313457.P7159382018109907439

`record[xor(3, n)]-A000034(A036983(n+2))`
-/

namespace A313457.P7159382018109907439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) - A000034 (A036983 (n + 2)).toNat

end

end A313457.P7159382018109907439

/-!
# A313458: Coordination sequence Gal.6.444.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313458, there is no canonical definition to state claims against.
-/

/-! ## A313458.P17660912323398797498

`A311176(n)+A001222(A026737(n))`
-/

namespace A313458.P17660912323398797498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311176 n + A001222 (A026737 n).toNat

end

end A313458.P17660912323398797498

/-! ## A313458.P10690475596831516819

`A347460(∑[A317533(n+4)])+4*n`
-/

namespace A313458.P10690475596831516819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317533 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347460 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + (4 * n : ℤ)

end

end A313458.P10690475596831516819

/-! ## A313458.P4813316497951417216

`A333365(A000142(n))+A016813(n)`
-/

namespace A313458.P4813316497951417216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333365 (A000142 n).toNat + A016813 n

end

end A313458.P4813316497951417216

/-! ## A313458.P14167812485525210195

`A013947(lt[A008613(n), A334028(n)])`
-/

namespace A313458.P14167812485525210195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008613 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334028 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013947 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A313458.P14167812485525210195

/-!
# A313459: Coordination sequence Gal.6.19.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313459, there is no canonical definition to state claims against.
-/

/-! ## A313459.P16890454698680739787

`A038548(A261059(n+3))+4*n`
-/

namespace A313459.P16890454698680739787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (A261059 (n + 3)).toNat + (4 * n : ℤ)

end

end A313459.P16890454698680739787

/-! ## A313459.P15333131598225813727

`A318584(A000389(n))+A313456(n)`
-/

namespace A313459.P15333131598225813727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318584 (A000389 n).toNat + A313456 n

end

end A313459.P15333131598225813727

/-! ## A313459.P18017321305837248080

`A314675(n)+A275947(A289780(n))`
-/

namespace A313459.P18017321305837248080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314675 n + A275947 (A289780 n).toNat

end

end A313459.P18017321305837248080

/-! ## A313459.P17683517726401968414

`A313389(n)+A030315(A345271(n+1))`
-/

namespace A313459.P17683517726401968414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313389 n + A030315 (A345271 (n + 1)).toNat

end

end A313459.P17683517726401968414

/-!
# A313460: Coordination sequence Gal.5.187.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313460, there is no canonical definition to state claims against.
-/

/-! ## A313460.P5273275947279050434

`record[A313461(n)-A324099(n+1)]`
-/

namespace A313460.P5273275947279050434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313461 n - A324099 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A313460.P5273275947279050434

/-! ## A313460.P2512598344800825604

`A313461(A120126(n))-A326632(n)`
-/

namespace A313460.P2512598344800825604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313461 (A120126 n).toNat - A326632 n

end

end A313460.P2512598344800825604

/-! ## A313460.P5899828949831315212

`A313461(A120126(n))-A347689(n)`
-/

namespace A313460.P5899828949831315212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313461 (A120126 n).toNat - A347689 n

end

end A313460.P5899828949831315212

/-! ## A313460.P4661740604975586654

`A313461(n)-A326632(A351870(n))`
-/

namespace A313460.P4661740604975586654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313461 n - A326632 (A351870 n).toNat

end

end A313460.P4661740604975586654

/-! ## A313460.P12435126463099112912

`A313461(A351870(n))-A347689(n)`
-/

namespace A313460.P12435126463099112912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313461 (A351870 n).toNat - A347689 n

end

end A313460.P12435126463099112912

/-!
# A313461: Coordination sequence Gal.6.446.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313461, there is no canonical definition to state claims against.
-/

/-! ## A313461.P17886619832196868266

`or(A120126(A324099(n+1)), A313460(n))`
-/

namespace A313461.P17886619832196868266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A120126 (A324099 (n + 1)).toNat) (A313460 n)

end

end A313461.P17886619832196868266

/-! ## A313461.P5799121510377137984

`A326632(A120126(n))+A313460(n)`
-/

namespace A313461.P5799121510377137984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326632 (A120126 n).toNat + A313460 n

end

end A313461.P5799121510377137984

/-! ## A313461.P9369660385351720782

`A347689(n)+A313460(A120126(n))`
-/

namespace A313461.P9369660385351720782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347689 n + A313460 (A120126 n).toNat

end

end A313461.P9369660385351720782

/-! ## A313461.P17037826465361186090

`A326632(n)+A313460(A351870(n))`
-/

namespace A313461.P17037826465361186090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326632 n + A313460 (A351870 n).toNat

end

end A313461.P17037826465361186090

/-! ## A313461.P5795762734024191845

`A347689(n)+A313460(A351870(n))`
-/

namespace A313461.P5795762734024191845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347689 n + A313460 (A351870 n).toNat

end

end A313461.P5795762734024191845

/-!
# A313462: Coordination sequence Gal.6.308.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313462, there is no canonical definition to state claims against.
-/

/-! ## A313462.P100030706844802021

`A131818(A276456(n+1))+round(π*n)`
-/

namespace A313462.P100030706844802021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (A276456 (n + 1)).toNat + SequenceMachineLib.roundAway (Real.pi * (n : ℝ))

end

end A313462.P100030706844802021

/-! ## A313462.P12186434784338517336

`A008706(n)-A023645(A279554(n))`
-/

namespace A313462.P12186434784338517336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n - A023645 (A279554 n).toNat

end

end A313462.P12186434784338517336

/-! ## A313462.P11461478165359989863

`eq[A014677(2*n), A040001(A157684(2*n+5))]`
-/

namespace A313462.P11461478165359989863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014677 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A157684 (2 * n + 5)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A313462.P11461478165359989863

/-!
# A313463: Coordination sequence Gal.6.448.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313463, there is no canonical definition to state claims against.
-/

/-! ## A313463.P1879135072045533614

`A087179(A094803(n+1))+A008574(n)`
-/

namespace A313463.P1879135072045533614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087179 (A094803 (n + 1)).toNat + A008574 n

end

end A313463.P1879135072045533614

/-!
# A313465: Coordination sequence Gal.6.400.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313465, there is no canonical definition to state claims against.
-/

/-! ## A313465.P10163068689236391126

`A005117(3*(n+1))-A261461(A316411(n))`
-/

namespace A313465.P10163068689236391126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (3 * (n + 1)) - A261461 (A316411 (n + 10)).toNat

end

end A313465.P10163068689236391126

/-!
# A313466: Coordination sequence Gal.5.185.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313466, there is no canonical definition to state claims against.
-/

/-! ## A313466.P10967956963741654745

`A313015(n)-A238468(2*n)`
-/

namespace A313466.P10967956963741654745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313015 n - A238468 (2 * n)

end

end A313466.P10967956963741654745

/-! ## A313466.P6295869411097693746

`A028310(A313015(n))-A238468(A004277(n))`
-/

namespace A313466.P6295869411097693746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A313015 n).toNat - A238468 (A004277 n).toNat

end

end A313466.P6295869411097693746

/-!
# A313469: Coordination sequence Gal.6.85.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313469, there is no canonical definition to state claims against.
-/

/-! ## A313469.P3982178786498224484

`record[A032766(3*n+1)-A035687(3*n+4)]`
-/

namespace A313469.P3982178786498224484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (3 * n + 1) - A035687 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A313469.P3982178786498224484

/-! ## A313469.P4418795970181923855

`A049321(A042561(n))+A008574(n)`
-/

namespace A313469.P4418795970181923855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049321 (A042561 n).toNat + A008574 n

end

end A313469.P4418795970181923855

/-! ## A313469.P1309413517981066535

`A204425(A279560(n))+A008586(n)`
-/

namespace A313469.P1309413517981066535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204425 (A279560 n).toNat + A008586 n

end

end A313469.P1309413517981066535

/-! ## A313469.P15633749696373303983

`A234538(A275012(n))+A008586(n)`
-/

namespace A313469.P15633749696373303983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234538 (A275012 n).toNat + A008586 n

end

end A313469.P15633749696373303983

/-! ## A313469.P14668288325926976535

`A316826(A332523(n))+A008574(n)`
-/

namespace A313469.P14668288325926976535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316826 (A332523 n).toNat + A008574 n

end

end A313469.P14668288325926976535

/-!
# A313470: Coordination sequence Gal.6.311.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313470, there is no canonical definition to state claims against.
-/

/-! ## A313470.P9265050991985189063

`A008574(n)+A001222(A150956(n))`
-/

namespace A313470.P9265050991985189063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A001222 (A150956 n).toNat

end

end A313470.P9265050991985189063

/-! ## A313470.P4903532883271951398

`A315446(n)-A001221(A042233(n))`
-/

namespace A313470.P4903532883271951398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315446 n - A001221 (A042233 n).toNat

end

end A313470.P4903532883271951398

/-! ## A313470.P1849992463298818283

`A315447(n)-A001221(A137697(n))`
-/

namespace A313470.P1849992463298818283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315447 n - A001221 (A137697 n).toNat

end

end A313470.P1849992463298818283

/-! ## A313470.P15075234330703981263

`A315173(n)-A341609(A219151(n+1)+1)`
-/

namespace A313470.P15075234330703981263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315173 n - A341609 (A219151 (n + 1) + 1).toNat

end

end A313470.P15075234330703981263

/-!
# A313471: Coordination sequence Gal.5.286.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313471, there is no canonical definition to state claims against.
-/

/-! ## A313471.P2028445272045166530

`A311783(n)+A049816(A007689(n))`
-/

namespace A313471.P2028445272045166530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311783 n + A049816 (A007689 n).toNat

end

end A313471.P2028445272045166530

/-! ## A313471.P5759541143889210811

`A313722(n)-A089050(A111004(n)+1)`
-/

namespace A313471.P5759541143889210811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313722 n - A089050 (A111004 n + 1).toNat

end

end A313471.P5759541143889210811

/-! ## A313471.P17859783846843688544

`A315448(n)-A001221(A047145(n+3))`
-/

namespace A313471.P17859783846843688544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315448 n - A001221 (A047145 (n + 3)).toNat

end

end A313471.P17859783846843688544

/-! ## A313471.P9439088177936158165

`A302242(A001075(n)+n)+A008574(n)`
-/

namespace A313471.P9439088177936158165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302242 (A001075 n + (n : ℤ)).toNat + A008574 n

end

end A313471.P9439088177936158165

/-! ## A313471.P10732852328560521733

`A230104(2*n+1)+A230103(A050535(n+1))`
-/

namespace A313471.P10732852328560521733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230104 (2 * n + 1) + A230103 (A050535 (n + 1)).toNat

end

end A313471.P10732852328560521733

/-!
# A313472: Coordination sequence Gal.6.308.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313472, there is no canonical definition to state claims against.
-/

/-! ## A313472.P16958780351275160741

`A313545(n)-A001222(A147075(n+1))`
-/

namespace A313472.P16958780351275160741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313545 n - A001222 (A147075 (n + 1)).toNat

end

end A313472.P16958780351275160741

/-! ## A313472.P16720351575434695697

`or(A001221(A142859(n+5)), A312247(n))`
-/

namespace A313472.P16720351575434695697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001221 (A142859 (n + 5)).toNat) (A312247 n)

end

end A313472.P16720351575434695697

/-!
# A313473: Coordination sequence Gal.6.460.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313473, there is no canonical definition to state claims against.
-/

/-! ## A313473.P889480398415569412

`A028809(A028767(3*n+1))-A028788(n+1)`
-/

namespace A313473.P889480398415569412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028809 (A028767 (3 * n + 1)).toNat - A028788 (n + 1)

end

end A313473.P889480398415569412

/-! ## A313473.P13825645775524133556

`A343746(A002061(n))+A001958(n)`
-/

namespace A313473.P13825645775524133556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343746 (A002061 n).toNat + A001958 n

end

end A313473.P13825645775524133556

/-! ## A313473.P10132196178403584806

`A016861(n)-A001222(A024718(n))`
-/

namespace A313473.P10132196178403584806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 n - A001222 (A024718 n).toNat

end

end A313473.P10132196178403584806

/-! ## A313473.P4135601959041281499

`A311784(n)+A303837(A311835(2*n))`
-/

namespace A313473.P4135601959041281499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311784 n + A303837 (A311835 (2 * n)).toNat

end

end A313473.P4135601959041281499

/-! ## A313473.P6517480278290101066

`A023604(A269495(n+1))`
-/

namespace A313473.P6517480278290101066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023604 (A269495 (n + 1)).toNat

end

end A313473.P6517480278290101066

/-!
# A313474: Coordination sequence Gal.6.118.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313474, the canonical program `A313474.P13131872544688635231` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313474 has offset 0).

The definition of A313474 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2499 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313474.P1367294503610085362

`A315683(n)-n`
-/

namespace A313474.P1367294503610085362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315683 n - (n : ℤ)

end

end A313474.P1367294503610085362

namespace A313474

/-- `A315683(n)-n` -/
def P1367294503610085362.Spec : Prop :=
  ∀ n, P1367294503610085362.a n = A313474 n

end A313474

/-! ## A313474.P13131872544688635231

`A004396(A004525(n))+A313533(n)-A004525(n)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A313474

/-- `A004396(A004525(n))+A313533(n)-A004525(n)` -/
def P13131872544688635231.Spec : Prop :=
  ∀ n, P13131872544688635231.a n = A313474 n

theorem P13131872544688635231.correct : P13131872544688635231.Spec := by
  intro n
  simp only [A313474]

end A313474

/-! ## A313474.P2596161474176814505

`A314089(n)-∑[and(2, n)/2]`
-/

namespace A313474.P2596161474176814505
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.land 2 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A314089 n : ℚ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313474.P2596161474176814505

namespace A313474

/-- `A314089(n)-∑[and(2, n)/2]` -/
def P2596161474176814505.Spec : Prop :=
  ∀ n, P2596161474176814505.a n = (A313474 n : ℚ)

end A313474

/-! ## A313474.P2710980948803918940

`A314089(n)-A004524(n+1)`
-/

namespace A313474.P2710980948803918940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314089 n - A004524 (n + 1)

end

end A313474.P2710980948803918940

namespace A313474

/-- `A314089(n)-A004524(n+1)` -/
def P2710980948803918940.Spec : Prop :=
  ∀ n, P2710980948803918940.a n = A313474 n

end A313474

/-! ## A313474.P5960144023016059334

`A004525(n)+A314089(n)-n`
-/

namespace A313474.P5960144023016059334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A314089 n - (n : ℤ))

end

end A313474.P5960144023016059334

namespace A313474

/-- `A004525(n)+A314089(n)-n` -/
def P5960144023016059334.Spec : Prop :=
  ∀ n, P5960144023016059334.a n = A313474 n

end A313474

/-! ## A313474.P16341001879954442879

`A315462(n)-A004396(n)`
-/

namespace A313474.P16341001879954442879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315462 n - A004396 n

end

end A313474.P16341001879954442879

namespace A313474

/-- `A315462(n)-A004396(n)` -/
def P16341001879954442879.Spec : Prop :=
  ∀ n, P16341001879954442879.a n = A313474 n

end A313474

/-! ## A313474.P16850594495337367267

`A315462(n)-A002264(2*n+1)`
-/

namespace A313474.P16850594495337367267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315462 n - A002264 (2 * n + 1)

end

end A313474.P16850594495337367267

namespace A313474

/-- `A315462(n)-A002264(2*n+1)` -/
def P16850594495337367267.Spec : Prop :=
  ∀ n, P16850594495337367267.a n = A313474 n

end A313474

/-! ## A313474.P18336945461434767063

`A004525(A004396(n))+A314108(n)-n`
-/

namespace A313474.P18336945461434767063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A004396 n).toNat + (A314108 n - (n : ℤ))

end

end A313474.P18336945461434767063

namespace A313474

/-- `A004525(A004396(n))+A314108(n)-n` -/
def P18336945461434767063.Spec : Prop :=
  ∀ n, P18336945461434767063.a n = A313474 n

end A313474

/-! ## A313474.P6916557401764493503

`abs(A008592(n)-(A312144(n)+n))`
-/

namespace A313474.P6916557401764493503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - (A312144 n + (n : ℤ))|

end

end A313474.P6916557401764493503

namespace A313474

/-- `abs(A008592(n)-(A312144(n)+n))` -/
def P6916557401764493503.Spec : Prop :=
  ∀ n, P6916557401764493503.a n = A313474 n

end A313474

/-! ## A313474.P6929024134273870347

`A008458(n)+A008486(n)-A312144(n)`
-/

namespace A313474.P6929024134273870347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008486 n - A312144 n)

end

end A313474.P6929024134273870347

namespace A313474

/-- `A008458(n)+A008486(n)-A312144(n)` -/
def P6929024134273870347.Spec : Prop :=
  ∀ n, P6929024134273870347.a n = A313474 n

end A313474

/-! ## A313474.P5293847451910536192

`A128834(n)+A314233(n)-n`
-/

namespace A313474.P5293847451910536192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128834 n + (A314233 n - (n : ℤ))

end

end A313474.P5293847451910536192

namespace A313474

/-- `A128834(n)+A314233(n)-n` -/
def P5293847451910536192.Spec : Prop :=
  ∀ n, P5293847451910536192.a n = A313474 n

end A313474

/-! ## A313474.P63387242395925045

`A315760(n)-A047513(n+1)`
-/

namespace A313474.P63387242395925045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315760 n - A047513 (n + 1)

end

end A313474.P63387242395925045

namespace A313474

/-- `A315760(n)-A047513(n+1)` -/
def P63387242395925045.Spec : Prop :=
  ∀ n, P63387242395925045.a n = A313474 n

end A313474

/-! ## A313474.P18266043288497018742

`A004396(2*n)+A004396(A315395(n))`
-/

namespace A313474.P18266043288497018742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (2 * n) + A004396 (A315395 n).toNat

end

end A313474.P18266043288497018742

namespace A313474

/-- `A004396(2*n)+A004396(A315395(n))` -/
def P18266043288497018742.Spec : Prop :=
  ∀ n, P18266043288497018742.a n = A313474 n

end A313474

/-! ## A313474.P7341385977662384539

`A008458(n)+A008574(n)-A313930(n)`
-/

namespace A313474.P7341385977662384539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313930 n)

end

end A313474.P7341385977662384539

namespace A313474

/-- `A008458(n)+A008574(n)-A313930(n)` -/
def P7341385977662384539.Spec : Prop :=
  ∀ n, P7341385977662384539.a n = A313474 n

end A313474

/-! ## A313474.P10273894279642184975

`A004396(A315670(n))+n`
-/

namespace A313474.P10273894279642184975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315670 n).toNat + (n : ℤ)

end

end A313474.P10273894279642184975

namespace A313474

/-- `A004396(A315670(n))+n` -/
def P10273894279642184975.Spec : Prop :=
  ∀ n, P10273894279642184975.a n = A313474 n

end A313474

/-! ## A313474.P15696245039902885819

`A004396(A315395(n)+2*n)`
-/

namespace A313474.P15696245039902885819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315395 n + (2 * n : ℤ)).toNat

end

end A313474.P15696245039902885819

namespace A313474

/-- `A004396(A315395(n)+2*n)` -/
def P15696245039902885819.Spec : Prop :=
  ∀ n, P15696245039902885819.a n = A313474 n

end A313474

/-! ## A313474.P17305207366731483936

`A004396(A315395(n)+n+n)`
-/

namespace A313474.P17305207366731483936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315395 n + (n : ℤ) + (n : ℤ)).toNat

end

end A313474.P17305207366731483936

namespace A313474

/-- `A004396(A315395(n)+n+n)` -/
def P17305207366731483936.Spec : Prop :=
  ∀ n, P17305207366731483936.a n = A313474 n

end A313474

/-! ## A313474.P5655554631433333247

`A315409(n)-A004525(n)`
-/

namespace A313474.P5655554631433333247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315409 n - A004525 n

end

end A313474.P5655554631433333247

namespace A313474

/-- `A315409(n)-A004525(n)` -/
def P5655554631433333247.Spec : Prop :=
  ∀ n, P5655554631433333247.a n = A313474 n

end A313474

/-!
# A313475: Coordination sequence Gal.6.119.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313475, the canonical program `A313475.P17328450546123291622` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313475 has offset 0).

The definition of A313475 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2113 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313475.P7675906285294893353

`(A315629(n)+A008574(n))/2`
-/

namespace A313475.P7675906285294893353
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315629 n + A008574 n : ℚ) / 2

end

end A313475.P7675906285294893353

namespace A313475

/-- `(A315629(n)+A008574(n))/2` -/
def P7675906285294893353.Spec : Prop :=
  ∀ n, P7675906285294893353.a n = (A313475 n : ℚ)

end A313475

/-! ## A313475.P10174623172196113637

`A005843(n)+A004525(A315629(n))`
-/

namespace A313475.P10174623172196113637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + A004525 (A315629 n).toNat

end

end A313475.P10174623172196113637

namespace A313475

/-- `A005843(n)+A004525(A315629(n))` -/
def P10174623172196113637.Spec : Prop :=
  ∀ n, P10174623172196113637.a n = A313475 n

end A313475

/-! ## A313475.P7743034788658964357

`A004526(A315629(n))+A004277(n)`
-/

namespace A313475.P7743034788658964357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A315629 n).toNat + A004277 n

end

end A313475.P7743034788658964357

namespace A313475

/-- `A004526(A315629(n))+A004277(n)` -/
def P7743034788658964357.Spec : Prop :=
  ∀ n, P7743034788658964357.a n = A313475 n

end A313475

/-! ## A313475.P17328450546123291622

`abs(A008592(n)-A313929(n))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A313475

/-- `abs(A008592(n)-A313929(n))` -/
def P17328450546123291622.Spec : Prop :=
  ∀ n, P17328450546123291622.a n = A313475 n

theorem P17328450546123291622.correct : P17328450546123291622.Spec := by
  intro n
  simp only [A313475]

end A313475

/-! ## A313475.P5716424095854211139

`A008458(n)+A008574(n)-A313929(n)`
-/

namespace A313475.P5716424095854211139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313929 n)

end

end A313475.P5716424095854211139

namespace A313475

/-- `A008458(n)+A008574(n)-A313929(n)` -/
def P5716424095854211139.Spec : Prop :=
  ∀ n, P5716424095854211139.a n = A313475 n

end A313475

/-! ## A313475.P7550996171934902086

`A005843(A008458(n)-n)-A313929(n)`
-/

namespace A313475.P7550996171934902086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008458 n - (n : ℤ)).toNat - A313929 n

end

end A313475.P7550996171934902086

namespace A313475

/-- `A005843(A008458(n)-n)-A313929(n)` -/
def P7550996171934902086.Spec : Prop :=
  ∀ n, P7550996171934902086.a n = A313475 n

end A313475

/-! ## A313475.P9590046708690891542

`A008458(n)+n-A004526(A312685(n))`
-/

namespace A313475.P9590046708690891542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + ((n : ℤ) - A004526 (A312685 n).toNat)

end

end A313475.P9590046708690891542

namespace A313475

/-- `A008458(n)+n-A004526(A312685(n))` -/
def P9590046708690891542.Spec : Prop :=
  ∀ n, P9590046708690891542.a n = A313475 n

end A313475

/-! ## A313475.P12833418114470097738

`round(A008574(A315740(n))/5)`
-/

namespace A313475.P12833418114470097738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A008574 (A315740 n).toNat : ℚ) / 5)

end

end A313475.P12833418114470097738

namespace A313475

/-- `round(A008574(A315740(n))/5)` -/
def P12833418114470097738.Spec : Prop :=
  ∀ n, P12833418114470097738.a n = A313475 n

end A313475

/-! ## A313475.P3613438212530650587

`A315730(n)-A134119(A315730(n))`
-/

namespace A313475.P3613438212530650587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315730 n - A134119 (A315730 n).toNat

end

end A313475.P3613438212530650587

namespace A313475

/-- `A315730(n)-A134119(A315730(n))` -/
def P3613438212530650587.Spec : Prop :=
  ∀ n, P3613438212530650587.a n = A313475 n

end A313475

/-! ## A313475.P12555002010409454858

`A004396(A004396(2*A314092(n)))`
-/

namespace A313475.P12555002010409454858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A004396 (2 * A314092 n).toNat).toNat

end

end A313475.P12555002010409454858

namespace A313475

/-- `A004396(A004396(2*A314092(n)))` -/
def P12555002010409454858.Spec : Prop :=
  ∀ n, P12555002010409454858.a n = A313475 n

end A313475

/-! ## A313475.P4026994061147579295

`A004396(A004396(2*A315450(n)))`
-/

namespace A313475.P4026994061147579295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A004396 (2 * A315450 n).toNat).toNat

end

end A313475.P4026994061147579295

namespace A313475

/-- `A004396(A004396(2*A315450(n)))` -/
def P4026994061147579295.Spec : Prop :=
  ∀ n, P4026994061147579295.a n = A313475 n

end A313475

/-! ## A313475.P15963555515910861625

`A134119(4*A315730(n))`
-/

namespace A313475.P15963555515910861625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134119 (4 * A315730 n).toNat

end

end A313475.P15963555515910861625

namespace A313475

/-- `A134119(4*A315730(n))` -/
def P15963555515910861625.Spec : Prop :=
  ∀ n, P15963555515910861625.a n = A313475 n

end A313475

/-! ## A313475.P4807386361611886060

`A008458(A008458(2*n))-A313929(A008458(2*n))`
-/

namespace A313475.P4807386361611886060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A008458 (2 * n)).toNat - A313929 (A008458 (2 * n)).toNat

end

end A313475.P4807386361611886060

namespace A313475

/-- `A008458(A008458(2*n))-A313929(A008458(2*n))` -/
def P4807386361611886060.Spec : Prop :=
  ∀ n, P4807386361611886060.a n = A313475 n

end A313475

/-!
# A313476: Coordination sequence Gal.5.53.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313476, the canonical program `A313476.P1237108097731061015` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313476 has offset 0).

The definition of A313476 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2525 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313476.P14300155796534685873

`A311535(n)+A253262(n)`
-/

namespace A313476.P14300155796534685873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311535 n + A253262 n

end

end A313476.P14300155796534685873

namespace A313476

/-- `A311535(n)+A253262(n)` -/
def P14300155796534685873.Spec : Prop :=
  ∀ n, P14300155796534685873.a n = A313476 n

end A313476

/-! ## A313476.P1237108097731061015

`A330025(n)+A312903(n)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A313476

/-- `A330025(n)+A312903(n)` -/
def P1237108097731061015.Spec : Prop :=
  ∀ n, P1237108097731061015.a n = A313476 n

theorem P1237108097731061015.correct : P1237108097731061015.Spec := by
  intro n
  simp only [A313476]

end A313476

/-! ## A313476.P1092240941536203204

`A315691(n)-A151988(n)`
-/

namespace A313476.P1092240941536203204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315691 n - A151988 n

end

end A313476.P1092240941536203204

namespace A313476

/-- `A315691(n)-A151988(n)` -/
def P1092240941536203204.Spec : Prop :=
  ∀ n, P1092240941536203204.a n = A313476 n

end A313476

/-! ## A313476.P15788943124593353789

`A301726(n)+A330025(n)-n`
-/

namespace A313476.P15788943124593353789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301726 n + (A330025 n - (n : ℤ))

end

end A313476.P15788943124593353789

namespace A313476

/-- `A301726(n)+A330025(n)-n` -/
def P15788943124593353789.Spec : Prop :=
  ∀ n, P15788943124593353789.a n = A313476 n

end A313476

/-! ## A313476.P10987187846700540802

`A330025(n-A330025(n))+A314685(n)`
-/

namespace A313476.P10987187846700540802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 ((n : ℤ) - A330025 n).toNat + A314685 n

end

end A313476.P10987187846700540802

namespace A313476

/-- `A330025(n-A330025(n))+A314685(n)` -/
def P10987187846700540802.Spec : Prop :=
  ∀ n, P10987187846700540802.a n = A313476 n

end A313476

/-! ## A313476.P10237777941519134343

`abs(A008591(n)-A312143(n))`
-/

namespace A313476.P10237777941519134343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008591 n - A312143 n|

end

end A313476.P10237777941519134343

namespace A313476

/-- `abs(A008591(n)-A312143(n))` -/
def P10237777941519134343.Spec : Prop :=
  ∀ n, P10237777941519134343.a n = A313476 n

end A313476

/-! ## A313476.P8302101610809713449

`abs(A008592(n)-(A312143(n)+n))`
-/

namespace A313476.P8302101610809713449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - (A312143 n + (n : ℤ))|

end

end A313476.P8302101610809713449

namespace A313476

/-- `abs(A008592(n)-(A312143(n)+n))` -/
def P8302101610809713449.Spec : Prop :=
  ∀ n, P8302101610809713449.a n = A313476 n

end A313476

/-! ## A313476.P17663330695671810102

`A005843(A008574(n))+n-A312143(n)`
-/

namespace A313476.P17663330695671810102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008574 n).toNat + ((n : ℤ) - A312143 n)

end

end A313476.P17663330695671810102

namespace A313476

/-- `A005843(A008574(n))+n-A312143(n)` -/
def P17663330695671810102.Spec : Prop :=
  ∀ n, P17663330695671810102.a n = A313476 n

end A313476

/-! ## A313476.P7820437660067517924

`A008458(n)+A008486(n)-A312143(n)`
-/

namespace A313476.P7820437660067517924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008486 n - A312143 n)

end

end A313476.P7820437660067517924

namespace A313476

/-- `A008458(n)+A008486(n)-A312143(n)` -/
def P7820437660067517924.Spec : Prop :=
  ∀ n, P7820437660067517924.a n = A313476 n

end A313476

/-! ## A313476.P15271683780914894033

`(A315630(n)+A008574(n))/2`
-/

namespace A313476.P15271683780914894033
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315630 n + A008574 n : ℚ) / 2

end

end A313476.P15271683780914894033

namespace A313476

/-- `(A315630(n)+A008574(n))/2` -/
def P15271683780914894033.Spec : Prop :=
  ∀ n, P15271683780914894033.a n = (A313476 n : ℚ)

end A313476

/-! ## A313476.P5465288219009130888

`A314020(n)-Δ[A011858(n)]`
-/

namespace A313476.P5465288219009130888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011858 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314020 n - (f1 (n + 1) - f1 n)

end

end A313476.P5465288219009130888

namespace A313476

/-- `A314020(n)-Δ[A011858(n)]` -/
def P5465288219009130888.Spec : Prop :=
  ∀ n, P5465288219009130888.a n = A313476 n

end A313476

/-! ## A313476.P10606688743866692968

`A008574(n)+A315508(n)-A250120(n)`
-/

namespace A313476.P10606688743866692968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + (A315508 n - A250120 n)

end

end A313476.P10606688743866692968

namespace A313476

/-- `A008574(n)+A315508(n)-A250120(n)` -/
def P10606688743866692968.Spec : Prop :=
  ∀ n, P10606688743866692968.a n = A313476 n

end A313476

/-! ## A313476.P11884859180304756162

`A315684(n)-n`
-/

namespace A313476.P11884859180304756162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315684 n - (n : ℤ)

end

end A313476.P11884859180304756162

namespace A313476

/-- `A315684(n)-n` -/
def P11884859180304756162.Spec : Prop :=
  ∀ n, P11884859180304756162.a n = A313476 n

end A313476

/-! ## A313476.P4228232628969557857

`A253262(n)+A313801(n)-n`
-/

namespace A313476.P4228232628969557857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253262 n + (A313801 n - (n : ℤ))

end

end A313476.P4228232628969557857

namespace A313476

/-- `A253262(n)+A313801(n)-n` -/
def P4228232628969557857.Spec : Prop :=
  ∀ n, P4228232628969557857.a n = A313476 n

end A313476

/-! ## A313476.P4547818183050427846

`A315742(n)-A047263(n+1)`
-/

namespace A313476.P4547818183050427846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315742 n - A047263 (n + 1)

end

end A313476.P4547818183050427846

namespace A313476

/-- `A315742(n)-A047263(n+1)` -/
def P4547818183050427846.Spec : Prop :=
  ∀ n, P4547818183050427846.a n = A313476 n

end A313476

/-! ## A313476.P6057733505923176342

`2*A008706(n)-A313928(n)`
-/

namespace A313476.P6057733505923176342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A313928 n

end

end A313476.P6057733505923176342

namespace A313476

/-- `2*A008706(n)-A313928(n)` -/
def P6057733505923176342.Spec : Prop :=
  ∀ n, P6057733505923176342.a n = A313476 n

end A313476

/-! ## A313476.P11232938679629516074

`abs(A008593(n)-(A313928(n)+n))`
-/

namespace A313476.P11232938679629516074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008593 n - (A313928 n + (n : ℤ))|

end

end A313476.P11232938679629516074

namespace A313476

/-- `abs(A008593(n)-(A313928(n)+n))` -/
def P11232938679629516074.Spec : Prop :=
  ∀ n, P11232938679629516074.a n = A313476 n

end A313476

/-! ## A313476.P16439161109932084786

`A008458(n)+A008574(n)-A313928(n)`
-/

namespace A313476.P16439161109932084786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313928 n)

end

end A313476.P16439161109932084786

namespace A313476

/-- `A008458(n)+A008574(n)-A313928(n)` -/
def P16439161109932084786.Spec : Prop :=
  ∀ n, P16439161109932084786.a n = A313476 n

end A313476

/-! ## A313476.P3258699700872506907

`A005843(A008458(n)-n)-A313928(n)`
-/

namespace A313476.P3258699700872506907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008458 n - (n : ℤ)).toNat - A313928 n

end

end A313476.P3258699700872506907

namespace A313476

/-- `A005843(A008458(n)-n)-A313928(n)` -/
def P3258699700872506907.Spec : Prop :=
  ∀ n, P3258699700872506907.a n = A313476 n

end A313476

/-!
# A313477: Coordination sequence Gal.5.54.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313477, the canonical program `A313477.P9239923112402886863` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313477 has offset 0).

The definition of A313477 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2474 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313477.P8588654065772925017

`A314671(n)+A004396(n-A004396(n))`
-/

namespace A313477.P8588654065772925017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314671 n + A004396 ((n : ℤ) - A004396 n).toNat

end

end A313477.P8588654065772925017

namespace A313477

/-- `A314671(n)+A004396(n-A004396(n))` -/
def P8588654065772925017.Spec : Prop :=
  ∀ n, P8588654065772925017.a n = A313477 n

end A313477

/-! ## A313477.P16221398079965164057

`A315696(n)-A004396(A004396(n)+n)`
-/

namespace A313477.P16221398079965164057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315696 n - A004396 (A004396 n + (n : ℤ)).toNat

end

end A313477.P16221398079965164057

namespace A313477

/-- `A315696(n)-A004396(A004396(n)+n)` -/
def P16221398079965164057.Spec : Prop :=
  ∀ n, P16221398079965164057.a n = A313477 n

end A313477

/-! ## A313477.P9239923112402886863

`A313683(n)-Δ[A011862(n)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A313477

/-- `A313683(n)-Δ[A011862(n)]` -/
def P9239923112402886863.Spec : Prop :=
  ∀ n, P9239923112402886863.a n = A313477 n

theorem P9239923112402886863.correct : P9239923112402886863.Spec := by
  intro n
  simp only [A313477]

end A313477

/-! ## A313477.P12304411138542458023

`A004396(A004396(n))+A313683(n)-A004396(n)`
-/

namespace A313477.P12304411138542458023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A004396 n).toNat + (A313683 n - A004396 n)

end

end A313477.P12304411138542458023

namespace A313477

/-- `A004396(A004396(n))+A313683(n)-A004396(n)` -/
def P12304411138542458023.Spec : Prop :=
  ∀ n, P12304411138542458023.a n = A313477 n

end A313477

/-! ## A313477.P8300917814994880862

`(A315631(n)+A008574(n))/2`
-/

namespace A313477.P8300917814994880862
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315631 n + A008574 n : ℚ) / 2

end

end A313477.P8300917814994880862

namespace A313477

/-- `(A315631(n)+A008574(n))/2` -/
def P8300917814994880862.Spec : Prop :=
  ∀ n, P8300917814994880862.a n = (A313477 n : ℚ)

end A313477

/-! ## A313477.P1941475496967225885

`A315463(n)-A004396(n)`
-/

namespace A313477.P1941475496967225885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315463 n - A004396 n

end

end A313477.P1941475496967225885

namespace A313477

/-- `A315463(n)-A004396(n)` -/
def P1941475496967225885.Spec : Prop :=
  ∀ n, P1941475496967225885.a n = A313477 n

end A313477

/-! ## A313477.P8521567173077555010

`A315463(n)-A002264(2*n+1)`
-/

namespace A313477.P8521567173077555010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315463 n - A002264 (2 * n + 1)

end

end A313477.P8521567173077555010

namespace A313477

/-- `A315463(n)-A002264(2*n+1)` -/
def P8521567173077555010.Spec : Prop :=
  ∀ n, P8521567173077555010.a n = A313477 n

end A313477

/-! ## A313477.P6052348673870489117

`abs(A008592(n)-A313927(n))`
-/

namespace A313477.P6052348673870489117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313927 n|

end

end A313477.P6052348673870489117

namespace A313477

/-- `abs(A008592(n)-A313927(n))` -/
def P6052348673870489117.Spec : Prop :=
  ∀ n, P6052348673870489117.a n = A313477 n

end A313477

/-! ## A313477.P6969571889975932373

`A008458(n)+A008574(n)-A313927(n)`
-/

namespace A313477.P6969571889975932373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313927 n)

end

end A313477.P6969571889975932373

namespace A313477

/-- `A008458(n)+A008574(n)-A313927(n)` -/
def P6969571889975932373.Spec : Prop :=
  ∀ n, P6969571889975932373.a n = A313477 n

end A313477

/-! ## A313477.P16019073190328056873

`A004396(2*n)+A004396(A315398(n))`
-/

namespace A313477.P16019073190328056873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (2 * n) + A004396 (A315398 n).toNat

end

end A313477.P16019073190328056873

namespace A313477

/-- `A004396(2*n)+A004396(A315398(n))` -/
def P16019073190328056873.Spec : Prop :=
  ∀ n, P16019073190328056873.a n = A313477 n

end A313477

/-! ## A313477.P8957240411120080610

`A005843(n)-(A004396(n)-A004396(A315398(n)))`
-/

namespace A313477.P8957240411120080610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n - (A004396 n - A004396 (A315398 n).toNat)

end

end A313477.P8957240411120080610

namespace A313477

/-- `A005843(n)-(A004396(n)-A004396(A315398(n)))` -/
def P8957240411120080610.Spec : Prop :=
  ∀ n, P8957240411120080610.a n = A313477 n

end A313477

/-! ## A313477.P11336440972325829235

`A004526(A315631(n))+A004277(n)`
-/

namespace A313477.P11336440972325829235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A315631 n).toNat + A004277 n

end

end A313477.P11336440972325829235

namespace A313477

/-- `A004526(A315631(n))+A004277(n)` -/
def P11336440972325829235.Spec : Prop :=
  ∀ n, P11336440972325829235.a n = A313477 n

end A313477

/-! ## A313477.P13185792728575721106

`A005843(A008458(n)-n)-A313927(n)`
-/

namespace A313477.P13185792728575721106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008458 n - (n : ℤ)).toNat - A313927 n

end

end A313477.P13185792728575721106

namespace A313477

/-- `A005843(A008458(n)-n)-A313927(n)` -/
def P13185792728575721106.Spec : Prop :=
  ∀ n, P13185792728575721106.a n = A313477 n

end A313477

/-! ## A313477.P13199121004646324269

`round(A008574(A315739(n))/5)`
-/

namespace A313477.P13199121004646324269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A008574 (A315739 n).toNat : ℚ) / 5)

end

end A313477.P13199121004646324269

namespace A313477

/-- `round(A008574(A315739(n))/5)` -/
def P13199121004646324269.Spec : Prop :=
  ∀ n, P13199121004646324269.a n = A313477 n

end A313477

/-! ## A313477.P8223099998706409261

`A004396(A315398(n)+2*n)`
-/

namespace A313477.P8223099998706409261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315398 n + (2 * n : ℤ)).toNat

end

end A313477.P8223099998706409261

namespace A313477

/-- `A004396(A315398(n)+2*n)` -/
def P8223099998706409261.Spec : Prop :=
  ∀ n, P8223099998706409261.a n = A313477 n

end A313477

/-! ## A313477.P12892929242664962503

`A004396(A315398(n)+n+n)`
-/

namespace A313477.P12892929242664962503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315398 n + (n : ℤ) + (n : ℤ)).toNat

end

end A313477.P12892929242664962503

namespace A313477

/-- `A004396(A315398(n)+n+n)` -/
def P12892929242664962503.Spec : Prop :=
  ∀ n, P12892929242664962503.a n = A313477 n

end A313477

/-! ## A313477.P2794792736443824382

`A004396(A315680(n)+A004396(2*n))`
-/

namespace A313477.P2794792736443824382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315680 n + A004396 (2 * n)).toNat

end

end A313477.P2794792736443824382

namespace A313477

/-- `A004396(A315680(n)+A004396(2*n))` -/
def P2794792736443824382.Spec : Prop :=
  ∀ n, P2794792736443824382.a n = A313477 n

end A313477

/-! ## A313477.P12584561093223975524

`round(A072154(A315690(n))/3)`
-/

namespace A313477.P12584561093223975524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A072154 (A315690 n).toNat : ℚ) / 3)

end

end A313477.P12584561093223975524

namespace A313477

/-- `round(A072154(A315690(n))/3)` -/
def P12584561093223975524.Spec : Prop :=
  ∀ n, P12584561093223975524.a n = A313477 n

end A313477

/-! ## A313477.P4751939408936909004

`A311612(A008574(n))/2-A311612(n)`
-/

namespace A313477.P4751939408936909004
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A311612 (A008574 n).toNat : ℚ) / 2 - (A311612 n : ℚ)

end

end A313477.P4751939408936909004

namespace A313477

/-- `A311612(A008574(n))/2-A311612(n)` -/
def P4751939408936909004.Spec : Prop :=
  ∀ n, P4751939408936909004.a n = (A313477 n : ℚ)

end A313477

/-!
# A313478: Coordination sequence Gal.6.531.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313478, there is no canonical definition to state claims against.
-/

/-! ## A313478.P10326679612837772547

`A083415(A083391(n+2))+A008586(n)`
-/

namespace A313478.P10326679612837772547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083415 (A083391 (n + 2)).toNat + A008586 n

end

end A313478.P10326679612837772547

/-! ## A313478.P7130352334046043203

`or(A008574(n), A083415(A083391(n+2)))`
-/

namespace A313478.P7130352334046043203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008574 n) (A083415 (A083391 (n + 2)).toNat)

end

end A313478.P7130352334046043203

/-! ## A313478.P6007275750622916590

`A020639(A324138(n))+4*n`
-/

namespace A313478.P6007275750622916590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A324138 n).toNat + (4 * n : ℤ)

end

end A313478.P6007275750622916590

/-! ## A313478.P7283666529101399876

`∑[A001511(record[A084702(n+1)])]`
-/

namespace A313478.P7283666529101399876
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084702 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313478.P7283666529101399876

/-! ## A313478.P17260018226318799304

`A317994(A069832(n+1))+4*n`
-/

namespace A313478.P17260018226318799304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317994 (A069832 (n + 1)).toNat + (4 * n : ℤ)

end

end A313478.P17260018226318799304

/-!
# A313479: Coordination sequence Gal.6.309.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313479, there is no canonical definition to state claims against.
-/

/-! ## A313479.P3751552050657081728

`4*n+A001221(A006744(2*(n+1)))`
-/

namespace A313479.P3751552050657081728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) + A001221 (A006744 (2 * (n + 1))).toNat

end

end A313479.P3751552050657081728

/-! ## A313479.P13971674433710227347

`A016813(n)+A001221(A040027(n))`
-/

namespace A313479.P13971674433710227347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n + A001221 (A040027 n).toNat

end

end A313479.P13971674433710227347

/-! ## A313479.P3271469048964011464

`A051903(A022493(n))+A016813(n)`
-/

namespace A313479.P3271469048964011464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A022493 n).toNat + A016813 n

end

end A313479.P3271469048964011464

/-! ## A313479.P4099775714769380782

`A257990(A192728(n))+A016813(n)`
-/

namespace A313479.P4099775714769380782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257990 (A192728 n).toNat + A016813 n

end

end A313479.P4099775714769380782

/-! ## A313479.P17170304303157523898

`A312892(n)+A001221(A185387(n))`
-/

namespace A313479.P17170304303157523898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312892 n + A001221 (A185387 n).toNat

end

end A313479.P17170304303157523898

/-!
# A313480: Coordination sequence Gal.4.41.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313480, the canonical program `A313480.P5748992067713966907` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313480 has offset 0).

The definition of A313480 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2495 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313480.P5748992067713966907

`A315685(n)-n`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A313480

/-- `A315685(n)-n` -/
def P5748992067713966907.Spec : Prop :=
  ∀ n, P5748992067713966907.a n = A313480 n

theorem P5748992067713966907.correct : P5748992067713966907.Spec := by
  intro n
  simp only [A313480]

end A313480

/-! ## A313480.P8589677289902754365

`abs(9*n-A312140(n))`
-/

namespace A313480.P8589677289902754365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(9 * n : ℤ) - A312140 n|

end

end A313480.P8589677289902754365

namespace A313480

/-- `abs(9*n-A312140(n))` -/
def P8589677289902754365.Spec : Prop :=
  ∀ n, P8589677289902754365.a n = A313480 n

end A313480

/-! ## A313480.P10081843529674035597

`A312943(n)+A046978(n)`
-/

namespace A313480.P10081843529674035597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312943 n + A046978 n

end

end A313480.P10081843529674035597

namespace A313480

/-- `A312943(n)+A046978(n)` -/
def P10081843529674035597.Spec : Prop :=
  ∀ n, P10081843529674035597.a n = A313480 n

end A313480

/-! ## A313480.P4800368200311462863

`abs(A008592(n)-(A312140(n)+n))`
-/

namespace A313480.P4800368200311462863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - (A312140 n + (n : ℤ))|

end

end A313480.P4800368200311462863

namespace A313480

/-- `abs(A008592(n)-(A312140(n)+n))` -/
def P4800368200311462863.Spec : Prop :=
  ∀ n, P4800368200311462863.a n = A313480 n

end A313480

/-! ## A313480.P15265475405551693228

`A312894(n)+A004525(A004525(n))`
-/

namespace A313480.P15265475405551693228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312894 n + A004525 (A004525 n).toNat

end

end A313480.P15265475405551693228

namespace A313480

/-- `A312894(n)+A004525(A004525(n))` -/
def P15265475405551693228.Spec : Prop :=
  ∀ n, P15265475405551693228.a n = A313480 n

end A313480

/-! ## A313480.P4137360483055292876

`A314672(n)+A004525(n-A004525(n))`
-/

namespace A313480.P4137360483055292876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314672 n + A004525 ((n : ℤ) - A004525 n).toNat

end

end A313480.P4137360483055292876

namespace A313480

/-- `A314672(n)+A004525(n-A004525(n))` -/
def P4137360483055292876.Spec : Prop :=
  ∀ n, P4137360483055292876.a n = A313480 n

end A313480

/-! ## A313480.P2399216513731173851

`A008458(n)+A008486(n)-A312140(n)`
-/

namespace A313480.P2399216513731173851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008486 n - A312140 n)

end

end A313480.P2399216513731173851

namespace A313480

/-- `A008458(n)+A008486(n)-A312140(n)` -/
def P2399216513731173851.Spec : Prop :=
  ∀ n, P2399216513731173851.a n = A313480 n

end A313480

/-! ## A313480.P11936983324917610024

`A301291(n)+A046978(n-A046978(n))`
-/

namespace A313480.P11936983324917610024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301291 n + A046978 ((n : ℤ) - A046978 n).toNat

end

end A313480.P11936983324917610024

namespace A313480

/-- `A301291(n)+A046978(n-A046978(n))` -/
def P11936983324917610024.Spec : Prop :=
  ∀ n, P11936983324917610024.a n = A313480 n

end A313480

/-! ## A313480.P10118683224216523902

`gcd(9*n-A312140(n), A008683(A000118(n)))`
-/

namespace A313480.P10118683224216523902
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((9 * n : ℤ) - A312140 n) (A008683 (A000118 n).toNat)

end

end A313480.P10118683224216523902

namespace A313480

/-- `gcd(9*n-A312140(n), A008683(A000118(n)))` -/
def P10118683224216523902.Spec : Prop :=
  ∀ n, (P10118683224216523902.a n : ℤ) = A313480 n

end A313480

/-! ## A313480.P4621954310614163784

`A313685(n)-Δ[A011861(n)]`
-/

namespace A313480.P4621954310614163784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011861 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313685 n - (f1 (n + 1) - f1 n)

end

end A313480.P4621954310614163784

namespace A313480

/-- `A313685(n)-Δ[A011861(n)]` -/
def P4621954310614163784.Spec : Prop :=
  ∀ n, P4621954310614163784.a n = A313480 n

end A313480

/-! ## A313480.P10221315990550516379

`A004525(A004525(n))+A313561(n)-A004525(n)`
-/

namespace A313480.P10221315990550516379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A004525 n).toNat + (A313561 n - A004525 n)

end

end A313480.P10221315990550516379

namespace A313480

/-- `A004525(A004525(n))+A313561(n)-A004525(n)` -/
def P10221315990550516379.Spec : Prop :=
  ∀ n, P10221315990550516379.a n = A313480 n

end A313480

/-! ## A313480.P2516297674339543242

`A315411(n)-A004525(n)`
-/

namespace A313480.P2516297674339543242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315411 n - A004525 n

end

end A313480.P2516297674339543242

namespace A313480

/-- `A315411(n)-A004525(n)` -/
def P2516297674339543242.Spec : Prop :=
  ∀ n, P2516297674339543242.a n = A313480 n

end A313480

/-! ## A313480.P13094147404199372398

`Δ[A011848(n)]+A315411(n)-n`
-/

namespace A313480.P13094147404199372398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (A315411 n - (n : ℤ))

end

end A313480.P13094147404199372398

namespace A313480

/-- `Δ[A011848(n)]+A315411(n)-n` -/
def P13094147404199372398.Spec : Prop :=
  ∀ n, P13094147404199372398.a n = A313480 n

end A313480

/-! ## A313480.P15558642027598760492

`A004525(n)+A314090(n)-n`
-/

namespace A313480.P15558642027598760492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A314090 n - (n : ℤ))

end

end A313480.P15558642027598760492

namespace A313480

/-- `A004525(n)+A314090(n)-n` -/
def P15558642027598760492.Spec : Prop :=
  ∀ n, P15558642027598760492.a n = A313480 n

end A313480

/-! ## A313480.P5115071814647814782

`(A315632(n)+A008574(n))/2`
-/

namespace A313480.P5115071814647814782
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315632 n + A008574 n : ℚ) / 2

end

end A313480.P5115071814647814782

namespace A313480

/-- `(A315632(n)+A008574(n))/2` -/
def P5115071814647814782.Spec : Prop :=
  ∀ n, P5115071814647814782.a n = (A313480 n : ℚ)

end A313480

/-! ## A313480.P13855338674404551370

`A004525(A004525(n))+A314112(n)-n`
-/

namespace A313480.P13855338674404551370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A004525 n).toNat + (A314112 n - (n : ℤ))

end

end A313480.P13855338674404551370

namespace A313480

/-- `A004525(A004525(n))+A314112(n)-n` -/
def P13855338674404551370.Spec : Prop :=
  ∀ n, P13855338674404551370.a n = A313480 n

end A313480

/-! ## A313480.P11416212959061351184

`A315399(n)-A004525(A004525(n))`
-/

namespace A313480.P11416212959061351184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315399 n - A004525 (A004525 n).toNat

end

end A313480.P11416212959061351184

namespace A313480

/-- `A315399(n)-A004525(A004525(n))` -/
def P11416212959061351184.Spec : Prop :=
  ∀ n, P11416212959061351184.a n = A313480 n

end A313480

/-! ## A313480.P465095994230519852

`A315469(n)-A004525(A004525(n)+n)`
-/

namespace A313480.P465095994230519852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315469 n - A004525 (A004525 n + (n : ℤ)).toNat

end

end A313480.P465095994230519852

namespace A313480

/-- `A315469(n)-A004525(A004525(n)+n)` -/
def P465095994230519852.Spec : Prop :=
  ∀ n, P465095994230519852.a n = A313480 n

end A313480

/-! ## A313480.P15514253929291844959

`A008458(n)+A008574(n)-A313926(n)`
-/

namespace A313480.P15514253929291844959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313926 n)

end

end A313480.P15514253929291844959

namespace A313480

/-- `A008458(n)+A008574(n)-A313926(n)` -/
def P15514253929291844959.Spec : Prop :=
  ∀ n, P15514253929291844959.a n = A313480 n

end A313480

/-! ## A313480.P3619281510087533747

`A046978(n)+A314161(n)-n`
-/

namespace A313480.P3619281510087533747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046978 n + (A314161 n - (n : ℤ))

end

end A313480.P3619281510087533747

namespace A313480

/-- `A046978(n)+A314161(n)-n` -/
def P3619281510087533747.Spec : Prop :=
  ∀ n, P3619281510087533747.a n = A313480 n

end A313480

/-!
# A313481: Coordination sequence Gal.6.257.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313481, there is no canonical definition to state claims against.
-/

/-! ## A313481.P6541753897989650816

`A313683(n)-A124761(A007664(n))`
-/

namespace A313481.P6541753897989650816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313683 n - A124761 (A007664 n).toNat

end

end A313481.P6541753897989650816

/-! ## A313481.P13821554998378457754

`∑[A029898(record[A145597(n+2)])]`
-/

namespace A313481.P13821554998378457754
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145597 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029898 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313481.P13821554998378457754

/-! ## A313481.P7369937445328552030

`or(A178333(n^4), A313480(n))`
-/

namespace A313481.P7369937445328552030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A178333 (n ^ 4)) (A313480 n)

end

end A313481.P7369937445328552030

/-! ## A313481.P8414963753705547841

`A313480(n)+A014376(A022166(n))`
-/

namespace A313481.P8414963753705547841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313480 n + A014376 (A022166 n).toNat

end

end A313481.P8414963753705547841

/-! ## A313481.P8712657693156320717

`A313480(n)+A014041(A061273(n))`
-/

namespace A313481.P8712657693156320717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313480 n + A014041 (A061273 n).toNat

end

end A313481.P8712657693156320717

/-!
# A313482: Coordination sequence Gal.6.443.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313482, there is no canonical definition to state claims against.
-/

/-! ## A313482.P2234379694288389145

`A313456(n)+A044939(A309383(n+1))`
-/

namespace A313482.P2234379694288389145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313456 n + A044939 (A309383 (n + 1)).toNat

end

end A313482.P2234379694288389145

/-! ## A313482.P8208119571472032913

`A313613(n)-A259179(A316218(2*(n+2)))`
-/

namespace A313482.P8208119571472032913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313613 n - A259179 (A316218 (2 * (n + 2))).toNat

end

end A313482.P8208119571472032913

/-! ## A313482.P16302246629928109144

`A106744(A314082(n)+1)+A044939(A309383(n+1))`
-/

namespace A313482.P16302246629928109144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106744 (A314082 n + 1).toNat + A044939 (A309383 (n + 1)).toNat

end

end A313482.P16302246629928109144

/-! ## A313482.P8027692218142555894

`A106744(A314083(n)+1)+A044939(A309383(n+1))`
-/

namespace A313482.P8027692218142555894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106744 (A314083 n + 1).toNat + A044939 (A309383 (n + 1)).toNat

end

end A313482.P8027692218142555894

/-! ## A313482.P9744464401017152737

`A016813(n)+A001222(A317776(n))`
-/

namespace A313482.P9744464401017152737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n + A001222 (A317776 n).toNat

end

end A313482.P9744464401017152737

/-!
# A313483: Coordination sequence Gal.5.171.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313483, there is no canonical definition to state claims against.
-/

/-! ## A313483.P14865433741759031946

`record[A313484(n)-A011856(n)]`
-/

namespace A313483.P14865433741759031946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313484 n - A011856 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A313483.P14865433741759031946

/-! ## A313483.P18333497546594363176

`A313484(n)-A102683(A206432(n))`
-/

namespace A313483.P18333497546594363176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313484 n - A102683 (A206432 n).toNat

end

end A313483.P18333497546594363176

/-! ## A313483.P3627108970026491243

`A313484(n)-A102683(A208452(n))`
-/

namespace A313483.P3627108970026491243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313484 n - A102683 (A208452 n).toNat

end

end A313483.P3627108970026491243

/-! ## A313483.P5612160769827531554

`A313484(n)-A102683(A208453(n))`
-/

namespace A313483.P5612160769827531554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313484 n - A102683 (A208453 n).toNat

end

end A313483.P5612160769827531554

/-! ## A313483.P10667611116562972658

`A313484(n)-A102683(A209383(n))`
-/

namespace A313483.P10667611116562972658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313484 n - A102683 (A209383 n).toNat

end

end A313483.P10667611116562972658

/-!
# A313484: Coordination sequence Gal.6.418.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313484, there is no canonical definition to state claims against.
-/

/-! ## A313484.P16872389763457699223

`A313483(n)+A102683(A206432(n))`
-/

namespace A313484.P16872389763457699223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313483 n + A102683 (A206432 n).toNat

end

end A313484.P16872389763457699223

/-! ## A313484.P9239574732243014116

`A313483(n)+A102683(A208452(n))`
-/

namespace A313484.P9239574732243014116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313483 n + A102683 (A208452 n).toNat

end

end A313484.P9239574732243014116

/-! ## A313484.P5348000227123304519

`A313483(n)+A102683(A208453(n))`
-/

namespace A313484.P5348000227123304519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313483 n + A102683 (A208453 n).toNat

end

end A313484.P5348000227123304519

/-! ## A313484.P3618418268983602105

`A313483(n)+A102683(A209383(n))`
-/

namespace A313484.P3618418268983602105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313483 n + A102683 (A209383 n).toNat

end

end A313484.P3618418268983602105

/-! ## A313484.P18123100593450828686

`A313483(n)+A185284(A310979(n))`
-/

namespace A313484.P18123100593450828686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313483 n + A185284 (A310979 n).toNat

end

end A313484.P18123100593450828686

/-!
# A313485: Coordination sequence Gal.6.254.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313485, the canonical program `A313485.P7677676480922091384` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313485 has offset 0).

The definition of A313485 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2524 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313485.P86237044696618197

`A315687(n)-n`
-/

namespace A313485.P86237044696618197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315687 n - (n : ℤ)

end

end A313485.P86237044696618197

namespace A313485

/-- `A315687(n)-n` -/
def P86237044696618197.Spec : Prop :=
  ∀ n, P86237044696618197.a n = A313485 n

end A313485

/-! ## A313485.P7677676480922091384

`A047424(n+1)+A312890(n)-n`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A313485

/-- `A047424(n+1)+A312890(n)-n` -/
def P7677676480922091384.Spec : Prop :=
  ∀ n, P7677676480922091384.a n = A313485 n

theorem P7677676480922091384.correct : P7677676480922091384.Spec := by
  intro n
  simp only [A313485]

end A313485

/-! ## A313485.P5965906515132794117

`A314677(n)+A004525(n-A004396(n))`
-/

namespace A313485.P5965906515132794117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314677 n + A004525 ((n : ℤ) - A004396 n).toNat

end

end A313485.P5965906515132794117

namespace A313485

/-- `A314677(n)+A004525(n-A004396(n))` -/
def P5965906515132794117.Spec : Prop :=
  ∀ n, P5965906515132794117.a n = A313485 n

end A313485

/-! ## A313485.P1014365360562246746

`A310373(n)+A134667(n)`
-/

namespace A313485.P1014365360562246746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310373 n + A134667 n

end

end A313485.P1014365360562246746

namespace A313485

/-- `A310373(n)+A134667(n)` -/
def P1014365360562246746.Spec : Prop :=
  ∀ n, P1014365360562246746.a n = A313485 n

end A313485

/-! ## A313485.P500931811336102290

`abs(A008592(n)-(A312123(n)+n))`
-/

namespace A313485.P500931811336102290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - (A312123 n + (n : ℤ))|

end

end A313485.P500931811336102290

namespace A313485

/-- `abs(A008592(n)-(A312123(n)+n))` -/
def P500931811336102290.Spec : Prop :=
  ∀ n, P500931811336102290.a n = A313485 n

end A313485

/-! ## A313485.P17578604133493406465

`A008458(n)+A008486(n)-A312123(n)`
-/

namespace A313485.P17578604133493406465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008486 n - A312123 n)

end

end A313485.P17578604133493406465

namespace A313485

/-- `A008458(n)+A008486(n)-A312123(n)` -/
def P17578604133493406465.Spec : Prop :=
  ∀ n, P17578604133493406465.a n = A313485 n

end A313485

/-! ## A313485.P3455050762994449396

`A313088(n)+A128834(n)`
-/

namespace A313485.P3455050762994449396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313088 n + A128834 n

end

end A313485.P3455050762994449396

namespace A313485

/-- `A313088(n)+A128834(n)` -/
def P3455050762994449396.Spec : Prop :=
  ∀ n, P3455050762994449396.a n = A313485 n

end A313485

/-! ## A313485.P10527433471755842893

`A313088(n)-A010892(n+2)`
-/

namespace A313485.P10527433471755842893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313088 n - A010892 (n + 2)

end

end A313485.P10527433471755842893

namespace A313485

/-- `A313088(n)-A010892(n+2)` -/
def P10527433471755842893.Spec : Prop :=
  ∀ n, P10527433471755842893.a n = A313485 n

end A313485

/-! ## A313485.P15585903119403519788

`A004396(A004525(n))+A313540(n)-A004525(n)`
-/

namespace A313485.P15585903119403519788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A004525 n).toNat + (A313540 n - A004525 n)

end

end A313485.P15585903119403519788

namespace A313485

/-- `A004396(A004525(n))+A313540(n)-A004525(n)` -/
def P15585903119403519788.Spec : Prop :=
  ∀ n, P15585903119403519788.a n = A313485 n

end A313485

/-! ## A313485.P639100867614202622

`A315413(n)-A004525(n)`
-/

namespace A313485.P639100867614202622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315413 n - A004525 n

end

end A313485.P639100867614202622

namespace A313485

/-- `A315413(n)-A004525(n)` -/
def P639100867614202622.Spec : Prop :=
  ∀ n, P639100867614202622.a n = A313485 n

end A313485

/-! ## A313485.P561116397035349347

`Δ[A011848(n)]+A315413(n)-n`
-/

namespace A313485.P561116397035349347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (A315413 n - (n : ℤ))

end

end A313485.P561116397035349347

namespace A313485

/-- `Δ[A011848(n)]+A315413(n)-n` -/
def P561116397035349347.Spec : Prop :=
  ∀ n, P561116397035349347.a n = A313485 n

end A313485

/-! ## A313485.P1130064637849217740

`A004396(A004525(n))+A314107(n)-n`
-/

namespace A313485.P1130064637849217740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A004525 n).toNat + (A314107 n - (n : ℤ))

end

end A313485.P1130064637849217740

namespace A313485

/-- `A004396(A004525(n))+A314107(n)-n` -/
def P1130064637849217740.Spec : Prop :=
  ∀ n, P1130064637849217740.a n = A313485 n

end A313485

/-! ## A313485.P6169508716033085347

`A315425(n)-A004396(2*A004525(n))`
-/

namespace A313485.P6169508716033085347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315425 n - A004396 (2 * A004525 n).toNat

end

end A313485.P6169508716033085347

namespace A313485

/-- `A315425(n)-A004396(2*A004525(n))` -/
def P6169508716033085347.Spec : Prop :=
  ∀ n, P6169508716033085347.a n = A313485 n

end A313485

/-! ## A313485.P7207432443898147918

`abs(10*n-A313924(n))`
-/

namespace A313485.P7207432443898147918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 * n : ℤ) - A313924 n|

end

end A313485.P7207432443898147918

namespace A313485

/-- `abs(10*n-A313924(n))` -/
def P7207432443898147918.Spec : Prop :=
  ∀ n, P7207432443898147918.a n = A313485 n

end A313485

/-! ## A313485.P1355180067820152755

`2*A008706(n)-A313924(n)`
-/

namespace A313485.P1355180067820152755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A313924 n

end

end A313485.P1355180067820152755

namespace A313485

/-- `2*A008706(n)-A313924(n)` -/
def P1355180067820152755.Spec : Prop :=
  ∀ n, P1355180067820152755.a n = A313485 n

end A313485

/-! ## A313485.P2134950442974236957

`abs(A008593(n)-(A313924(n)+n))`
-/

namespace A313485.P2134950442974236957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008593 n - (A313924 n + (n : ℤ))|

end

end A313485.P2134950442974236957

namespace A313485

/-- `abs(A008593(n)-(A313924(n)+n))` -/
def P2134950442974236957.Spec : Prop :=
  ∀ n, P2134950442974236957.a n = A313485 n

end A313485

/-! ## A313485.P7155126547601392264

`A128834(n)+A314236(n)-n`
-/

namespace A313485.P7155126547601392264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128834 n + (A314236 n - (n : ℤ))

end

end A313485.P7155126547601392264

namespace A313485

/-- `A128834(n)+A314236(n)-n` -/
def P7155126547601392264.Spec : Prop :=
  ∀ n, P7155126547601392264.a n = A313485 n

end A313485

/-! ## A313485.P6352301971159657579

`A315763(n)-A047513(n+1)`
-/

namespace A313485.P6352301971159657579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315763 n - A047513 (n + 1)

end

end A313485.P6352301971159657579

namespace A313485

/-- `A315763(n)-A047513(n+1)` -/
def P6352301971159657579.Spec : Prop :=
  ∀ n, P6352301971159657579.a n = A313485 n

end A313485

/-!
# A313486: Coordination sequence Gal.6.310.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313486, there is no canonical definition to state claims against.
-/

/-! ## A313486.P14477835072053607045

`A029905(A029968(n+1))+2*n+1`
-/

namespace A313486.P14477835072053607045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029905 (A029968 (n + 1)).toNat + (2 * n + 1 : ℤ)

end

end A313486.P14477835072053607045

/-! ## A313486.P6786316681422507075

`A314672(n)+A001221(A041989(n))`
-/

namespace A313486.P6786316681422507075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314672 n + A001221 (A041989 n).toNat

end

end A313486.P6786316681422507075

/-! ## A313486.P14278994471811584603

`A313683(n)-A137331(A005178(n))`
-/

namespace A313486.P14278994471811584603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313683 n - A137331 (A005178 n).toNat

end

end A313486.P14278994471811584603

/-! ## A313486.P16140291052394642937

`xor(A071906(A022916(n)), A313537(n))`
-/

namespace A313486.P16140291052394642937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A071906 (A022916 n).toNat) (A313537 n)

end

end A313486.P16140291052394642937

/-! ## A313486.P2200063958902645542

`A285760(A029905(3*n+1))+n`
-/

namespace A313486.P2200063958902645542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285760 (A029905 (3 * n + 1)).toNat + (n : ℤ)

end

end A313486.P2200063958902645542

/-!
# A313487: Coordination sequence Gal.4.42.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313487, the canonical program `A313487.P15288592894226833753` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313487 has offset 0).

The definition of A313487 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313487.P7559812009749771820

`A008706(n)-A194225(n+1)`
-/

namespace A313487.P7559812009749771820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n - A194225 (n + 1)

end

end A313487.P7559812009749771820

namespace A313487

/-- `A008706(n)-A194225(n+1)` -/
def P7559812009749771820.Spec : Prop :=
  ∀ n, P7559812009749771820.a n = A313487 n

end A313487

/-! ## A313487.P15288592894226833753

`A315701(n)-A047588(n+1)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A313487

/-- `A315701(n)-A047588(n+1)` -/
def P15288592894226833753.Spec : Prop :=
  ∀ n, P15288592894226833753.a n = A313487 n

theorem P15288592894226833753.correct : P15288592894226833753.Spec := by
  intro n
  simp only [A313487]

end A313487

/-! ## A313487.P1016587461666054754

`A008706(n)-A242062(3*n)`
-/

namespace A313487.P1016587461666054754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n - A242062 (3 * n)

end

end A313487.P1016587461666054754

namespace A313487

/-- `A008706(n)-A242062(3*n)` -/
def P1016587461666054754.Spec : Prop :=
  ∀ n, P1016587461666054754.a n = A313487 n

end A313487

/-! ## A313487.P951892555557840036

`A314753(n)+A175629(n-A175629(n))`
-/

namespace A313487.P951892555557840036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314753 n + A175629 ((n : ℤ) - A175629 n).toNat

end

end A313487.P951892555557840036

namespace A313487

/-- `A314753(n)+A175629(n-A175629(n))` -/
def P951892555557840036.Spec : Prop :=
  ∀ n, P951892555557840036.a n = A313487 n

end A313487

/-! ## A313487.P3237603271811298991

`A314838(n)+A238470(n)`
-/

namespace A313487.P3237603271811298991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314838 n + A238470 n

end

end A313487.P3237603271811298991

namespace A313487

/-- `A314838(n)+A238470(n)` -/
def P3237603271811298991.Spec : Prop :=
  ∀ n, P3237603271811298991.a n = A313487 n

end A313487

/-! ## A313487.P10849317979941336140

`A310372(n)+A238469(n)`
-/

namespace A313487.P10849317979941336140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310372 n + A238469 n

end

end A313487.P10849317979941336140

namespace A313487

/-- `A310372(n)+A238469(n)` -/
def P10849317979941336140.Spec : Prop :=
  ∀ n, P10849317979941336140.a n = A313487 n

end A313487

/-! ## A313487.P13728879036743133757

`A310372(n)+A238470(2*n)`
-/

namespace A313487.P13728879036743133757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310372 n + A238470 (2 * n)

end

end A313487.P13728879036743133757

namespace A313487

/-- `A310372(n)+A238470(2*n)` -/
def P13728879036743133757.Spec : Prop :=
  ∀ n, P13728879036743133757.a n = A313487 n

end A313487

/-! ## A313487.P18081106378302980942

`A313694(n)-Δ[A011860(n)]`
-/

namespace A313487.P18081106378302980942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011860 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313694 n - (f1 (n + 1) - f1 n)

end

end A313487.P18081106378302980942

namespace A313487

/-- `A313694(n)-Δ[A011860(n)]` -/
def P18081106378302980942.Spec : Prop :=
  ∀ n, P18081106378302980942.a n = A313487 n

end A313487

/-! ## A313487.P7974764282672959328

`A315175(n)-A238469(n)`
-/

namespace A313487.P7974764282672959328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315175 n - A238469 n

end

end A313487.P7974764282672959328

namespace A313487

/-- `A315175(n)-A238469(n)` -/
def P7974764282672959328.Spec : Prop :=
  ∀ n, P7974764282672959328.a n = A313487 n

end A313487

/-! ## A313487.P7971862713283310619

`(A315634(n)+A008574(n))/2`
-/

namespace A313487.P7971862713283310619
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315634 n + A008574 n : ℚ) / 2

end

end A313487.P7971862713283310619

namespace A313487

/-- `(A315634(n)+A008574(n))/2` -/
def P7971862713283310619.Spec : Prop :=
  ∀ n, P7971862713283310619.a n = (A313487 n : ℚ)

end A313487

/-! ## A313487.P10457002828993381214

`abs(11*n-(A313923(n)+n))`
-/

namespace A313487.P10457002828993381214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(11 * n : ℤ) - (A313923 n + (n : ℤ))|

end

end A313487.P10457002828993381214

namespace A313487

/-- `abs(11*n-(A313923(n)+n))` -/
def P10457002828993381214.Spec : Prop :=
  ∀ n, P10457002828993381214.a n = A313487 n

end A313487

/-! ## A313487.P12979391318602522607

`2*A008706(n)-A313923(n)`
-/

namespace A313487.P12979391318602522607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A313923 n

end

end A313487.P12979391318602522607

namespace A313487

/-- `2*A008706(n)-A313923(n)` -/
def P12979391318602522607.Spec : Prop :=
  ∀ n, P12979391318602522607.a n = A313487 n

end A313487

/-! ## A313487.P4462043190409827571

`A008458(n)+A008574(n)-A313923(n)`
-/

namespace A313487.P4462043190409827571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313923 n)

end

end A313487.P4462043190409827571

namespace A313487

/-- `A008458(n)+A008574(n)-A313923(n)` -/
def P4462043190409827571.Spec : Prop :=
  ∀ n, P4462043190409827571.a n = A313487 n

end A313487

/-! ## A313487.P16437725562715944885

`A005843(A008458(n)-n)-A313923(n)`
-/

namespace A313487.P16437725562715944885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008458 n - (n : ℤ)).toNat - A313923 n

end

end A313487.P16437725562715944885

namespace A313487

/-- `A005843(A008458(n)-n)-A313923(n)` -/
def P16437725562715944885.Spec : Prop :=
  ∀ n, P16437725562715944885.a n = A313487 n

end A313487

/-! ## A313487.P5412206084919979322

`A008458(n)-A242062(10*n)`
-/

namespace A313487.P5412206084919979322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A242062 (10 * n)

end

end A313487.P5412206084919979322

namespace A313487

/-- `A008458(n)-A242062(10*n)` -/
def P5412206084919979322.Spec : Prop :=
  ∀ n, P5412206084919979322.a n = A313487 n

end A313487

/-! ## A313487.P5187751031227933799

`A312549(A008574(n))/2-A312549(n)`
-/

namespace A313487.P5187751031227933799
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A312549 (A008574 n).toNat : ℚ) / 2 - (A312549 n : ℚ)

end

end A313487.P5187751031227933799

namespace A313487

/-- `A312549(A008574(n))/2-A312549(n)` -/
def P5187751031227933799.Spec : Prop :=
  ∀ n, P5187751031227933799.a n = (A313487 n : ℚ)

end A313487

/-! ## A313487.P14465007234599967929

`A242062(A022144(4*n))`
-/

namespace A313487.P14465007234599967929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242062 (A022144 (4 * n)).toNat

end

end A313487.P14465007234599967929

namespace A313487

/-- `A242062(A022144(4*n))` -/
def P14465007234599967929.Spec : Prop :=
  ∀ n, P14465007234599967929.a n = A313487 n

end A313487

/-! ## A313487.P15929597918380558884

`A242062(A008574(8*n))`
-/

namespace A313487.P15929597918380558884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242062 (A008574 (8 * n)).toNat

end

end A313487.P15929597918380558884

namespace A313487

/-- `A242062(A008574(8*n))` -/
def P15929597918380558884.Spec : Prop :=
  ∀ n, P15929597918380558884.a n = A313487 n

end A313487

/-! ## A313487.P12852426530325516625

`A242062(Δ[A130824(n)²])`
-/

namespace A313487.P12852426530325516625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130824 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242062 (f1 (n + 1) - f1 n).toNat

end

end A313487.P12852426530325516625

namespace A313487

/-- `A242062(Δ[A130824(n)²])` -/
def P12852426530325516625.Spec : Prop :=
  ∀ n, P12852426530325516625.a n = A313487 n

end A313487

/-! ## A313487.P7865643043033593783

`A008458(A008574(2*n))-A313923(A008574(2*n))`
-/

namespace A313487.P7865643043033593783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A008574 (2 * n)).toNat - A313923 (A008574 (2 * n)).toNat

end

end A313487.P7865643043033593783

namespace A313487

/-- `A008458(A008574(2*n))-A313923(A008574(2*n))` -/
def P7865643043033593783.Spec : Prop :=
  ∀ n, P7865643043033593783.a n = A313487 n

end A313487

/-!
# A313488: Coordination sequence Gal.6.312.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313488, there is no canonical definition to state claims against.
-/

/-! ## A313488.P12728093450336171446

`∑[A038548(A049944(n+1))+3]-3`
-/

namespace A313488.P12728093450336171446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (A049944 (n + 1)).toNat + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 3

end

end A313488.P12728093450336171446

/-! ## A313488.P9756585835926248297

`xor(A057979(A309864(n)), A313489(n))`
-/

namespace A313488.P9756585835926248297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A057979 (A309864 n).toNat) (A313489 n)

end

end A313488.P9756585835926248297

/-! ## A313488.P17523331474637465580

`xor(A185284(A033160(n+1)), A313489(n))`
-/

namespace A313488.P17523331474637465580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A185284 (A033160 (n + 1)).toNat) (A313489 n)

end

end A313488.P17523331474637465580

/-! ## A313488.P13298892077507957815

`A313491(n)-A185274(A173917(n))`
-/

namespace A313488.P13298892077507957815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313491 n - A185274 (A173917 n).toNat

end

end A313488.P13298892077507957815

/-! ## A313488.P4923313950058254793

`A313489(A087051(n))`
-/

namespace A313488.P4923313950058254793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313489 (A087051 n).toNat

end

end A313488.P4923313950058254793

/-!
# A313489: Coordination sequence Gal.6.609.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313489, there is no canonical definition to state claims against.
-/

/-! ## A313489.P15489622595976235230

`xor(A057979(A309864(n)), A313488(n))`
-/

namespace A313489.P15489622595976235230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A057979 (A309864 n).toNat) (A313488 n)

end

end A313489.P15489622595976235230

/-! ## A313489.P8892688919035297209

`xor(A185284(A033160(n+1)), A313488(n))`
-/

namespace A313489.P8892688919035297209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A185284 (A033160 (n + 1)).toNat) (A313488 n)

end

end A313489.P8892688919035297209

/-! ## A313489.P11013896723198284383

`A130256(A077937(n))+A130248(n+2)`
-/

namespace A313489.P11013896723198284383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130256 (A077937 n).toNat + A130248 (n + 2)

end

end A313489.P11013896723198284383

/-! ## A313489.P3850391350327757196

`A247916(n+1)-A295297(A113285(n+1))`
-/

namespace A313489.P3850391350327757196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247916 (n + 1) - A295297 (A113285 (n + 1)).toNat

end

end A313489.P3850391350327757196

/-!
# A313490: Coordination sequence Gal.5.124.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313490, there is no canonical definition to state claims against.
-/

/-! ## A313490.P3405988927638650218

`A313491(n)-A185284(3*n+1)`
-/

namespace A313490.P3405988927638650218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313491 n - A185284 (3 * n + 1)

end

end A313490.P3405988927638650218

/-! ## A313490.P11233412093042858094

`A313491(n)-A055641(A348622(n))`
-/

namespace A313490.P11233412093042858094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313491 n - A055641 (A348622 n).toNat

end

end A313490.P11233412093042858094

/-! ## A313490.P3818867321310080690

`record[A313491(n)-A011856(n)]`
-/

namespace A313490.P3818867321310080690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313491 n - A011856 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A313490.P3818867321310080690

/-! ## A313490.P10045027885419036878

`A313491(n)-A058276(A022166(n))`
-/

namespace A313490.P10045027885419036878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313491 n - A058276 (A022166 n).toNat

end

end A313490.P10045027885419036878

/-! ## A313490.P313705224789533934

`A313491(n)+A244895(A185284((5-n)²))`
-/

namespace A313490.P313705224789533934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313491 n + A244895 (A185284 ((5 - (n : ℤ)) ^ 2).toNat).toNat

end

end A313490.P313705224789533934

/-!
# A313491: Coordination sequence Gal.6.313.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313491, there is no canonical definition to state claims against.
-/

/-! ## A313491.P11516929836603252249

`A313490(n)+A055641(A348622(n))`
-/

namespace A313491.P11516929836603252249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313490 n + A055641 (A348622 n).toNat

end

end A313491.P11516929836603252249

/-! ## A313491.P6086320625199615307

`A313490(n)+A185284(A033627(n+2))`
-/

namespace A313491.P6086320625199615307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313490 n + A185284 (A033627 (n + 2)).toNat

end

end A313491.P6086320625199615307

/-! ## A313491.P1206544116156967231

`A313490(n)+A058276(A022166(n))`
-/

namespace A313491.P1206544116156967231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313490 n + A058276 (A022166 n).toNat

end

end A313491.P1206544116156967231

/-! ## A313491.P2596871601924250054

`A313490(n)+A185284(A028815(n))`
-/

namespace A313491.P2596871601924250054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313490 n + A185284 (A028815 n).toNat

end

end A313491.P2596871601924250054

/-!
# A313492: Coordination sequence Gal.6.307.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313492, there is no canonical definition to state claims against.
-/

/-! ## A313492.P6634771197617248242

`A313509(n)-A064532(A301700(n+1))`
-/

namespace A313492.P6634771197617248242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313509 n - A064532 (A301700 (n + 1)).toNat

end

end A313492.P6634771197617248242

/-! ## A313492.P16192985711326124163

`lt[A288377(A198453(3*n+5)+1), 1]+3*n`
-/

namespace A313492.P16192985711326124163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288377 (A198453 (3 * n + 5) + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 3 * n

end

end A313492.P16192985711326124163

/-! ## A313492.P11899228061616406

`A313718(n)-A105661(A099950(n))`
-/

namespace A313492.P11899228061616406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313718 n - A105661 (A099950 n).toNat

end

end A313492.P11899228061616406

/-! ## A313492.P12247103051438592350

`A313538(n)-A286804(A290571(n+3))`
-/

namespace A313492.P12247103051438592350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313538 n - A286804 (A290571 (n + 3)).toNat

end

end A313492.P12247103051438592350

/-! ## A313492.P1827431742490479074

`A005117(3*n+1)-A307597(A014138(n))`
-/

namespace A313492.P1827431742490479074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (3 * n + 1) - A307597 (A014138 n).toNat

end

end A313492.P1827431742490479074

/-!
# A313493: Coordination sequence Gal.6.454.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313493, there is no canonical definition to state claims against.
-/

/-! ## A313493.P7973390399373068870

`A327180(n²²)+A313030(n)`
-/

namespace A313493.P7973390399373068870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327180 ((n ^ 2) ^ 2) + A313030 n

end

end A313493.P7973390399373068870

/-! ## A313493.P2626205596242285073

`A314712(n)+A000035(A006451(n))`
-/

namespace A313493.P2626205596242285073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314712 n + A000035 (A006451 n).toNat

end

end A313493.P2626205596242285073

/-! ## A313493.P16820885309168830554

`A313190(A062399(n))+A244895(n)`
-/

namespace A313493.P16820885309168830554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313190 (A062399 n).toNat + A244895 n

end

end A313493.P16820885309168830554

/-! ## A313493.P9449717636351652383

`xor(A313505(n), A328311(A101168(n)))`
-/

namespace A313493.P9449717636351652383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A313505 n) (A328311 (A101168 n).toNat)

end

end A313493.P9449717636351652383

/-! ## A313493.P996536626312894968

`A267269(A018014(n))+A161579(3*n+1)`
-/

namespace A313493.P996536626312894968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267269 (A018014 n).toNat + A161579 (3 * n + 1)

end

end A313493.P996536626312894968

/-!
# A313494: Coordination sequence Gal.6.155.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313494, the canonical program `A313494.P14635809210881396952` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313494 has offset 0).

The definition of A313494 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2450 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313494.P14635809210881396952

`A313099(n)+A128834(n)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A313494

/-- `A313099(n)+A128834(n)` -/
def P14635809210881396952.Spec : Prop :=
  ∀ n, P14635809210881396952.a n = A313494 n

theorem P14635809210881396952.correct : P14635809210881396952.Spec := by
  intro n
  simp only [A313494]

end A313494

/-! ## A313494.P8357375516698812428

`A313099(n)-A010892(n+2)`
-/

namespace A313494.P8357375516698812428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313099 n - A010892 (n + 2)

end

end A313494.P8357375516698812428

namespace A313494

/-- `A313099(n)-A010892(n+2)` -/
def P8357375516698812428.Spec : Prop :=
  ∀ n, P8357375516698812428.a n = A313494 n

end A313494

/-! ## A313494.P3884049938541902079

`A312896(n)+A004525(A004396(n))`
-/

namespace A313494.P3884049938541902079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312896 n + A004525 (A004396 n).toNat

end

end A313494.P3884049938541902079

namespace A313494

/-- `A312896(n)+A004525(A004396(n))` -/
def P3884049938541902079.Spec : Prop :=
  ∀ n, P3884049938541902079.a n = A313494 n

end A313494

/-! ## A313494.P16281112675090347491

`A312896(n)+A004525(A274616(n))`
-/

namespace A313494.P16281112675090347491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312896 n + A004525 (A274616 n).toNat

end

end A313494.P16281112675090347491

namespace A313494

/-- `A312896(n)+A004525(A274616(n))` -/
def P16281112675090347491.Spec : Prop :=
  ∀ n, P16281112675090347491.a n = A313494 n

end A313494

/-! ## A313494.P15602878372118132659

`A314677(n)+A004396(n-A004525(n))`
-/

namespace A313494.P15602878372118132659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314677 n + A004396 ((n : ℤ) - A004525 n).toNat

end

end A313494.P15602878372118132659

namespace A313494

/-- `A314677(n)+A004396(n-A004525(n))` -/
def P15602878372118132659.Spec : Prop :=
  ∀ n, P15602878372118132659.a n = A313494 n

end A313494

/-! ## A313494.P13336617125183979114

`A004396(A004525(n))+A313546(n)-A004525(n)`
-/

namespace A313494.P13336617125183979114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A004525 n).toNat + (A313546 n - A004525 n)

end

end A313494.P13336617125183979114

namespace A313494

/-- `A004396(A004525(n))+A313546(n)-A004525(n)` -/
def P13336617125183979114.Spec : Prop :=
  ∀ n, P13336617125183979114.a n = A313494 n

end A313494

/-! ## A313494.P15989443507030893013

`A004525(A004396(n))+A313569(n)-A004525(n)`
-/

namespace A313494.P15989443507030893013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A004396 n).toNat + (A313569 n - A004525 n)

end

end A313494.P15989443507030893013

namespace A313494

/-- `A004525(A004396(n))+A313569(n)-A004525(n)` -/
def P15989443507030893013.Spec : Prop :=
  ∀ n, P15989443507030893013.a n = A313494 n

end A313494

/-! ## A313494.P15475383424846604894

`A315415(n)-A004525(n)`
-/

namespace A313494.P15475383424846604894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315415 n - A004525 n

end

end A313494.P15475383424846604894

namespace A313494

/-- `A315415(n)-A004525(n)` -/
def P15475383424846604894.Spec : Prop :=
  ∀ n, P15475383424846604894.a n = A313494 n

end A313494

/-! ## A313494.P17432061021180737491

`A315415(n)-Δ[A054925(n)]`
-/

namespace A313494.P17432061021180737491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054925 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315415 n - (f1 (n + 1) - f1 n)

end

end A313494.P17432061021180737491

namespace A313494

/-- `A315415(n)-Δ[A054925(n)]` -/
def P17432061021180737491.Spec : Prop :=
  ∀ n, P17432061021180737491.a n = A313494 n

end A313494

/-! ## A313494.P7204529802718444020

`abs(A008592(n)-A313922(n))`
-/

namespace A313494.P7204529802718444020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313922 n|

end

end A313494.P7204529802718444020

namespace A313494

/-- `abs(A008592(n)-A313922(n))` -/
def P7204529802718444020.Spec : Prop :=
  ∀ n, P7204529802718444020.a n = A313494 n

end A313494

/-! ## A313494.P7089218633032108980

`2*A008706(n)-A313922(n)`
-/

namespace A313494.P7089218633032108980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A313922 n

end

end A313494.P7089218633032108980

namespace A313494

/-- `2*A008706(n)-A313922(n)` -/
def P7089218633032108980.Spec : Prop :=
  ∀ n, P7089218633032108980.a n = A313494 n

end A313494

/-! ## A313494.P4541422423607356055

`A008458(n)+A008574(n)-A313922(n)`
-/

namespace A313494.P4541422423607356055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313922 n)

end

end A313494.P4541422423607356055

namespace A313494

/-- `A008458(n)+A008574(n)-A313922(n)` -/
def P4541422423607356055.Spec : Prop :=
  ∀ n, P4541422423607356055.a n = A313494 n

end A313494

/-! ## A313494.P15540166443188838592

`A314124(n)-∑[A131735(n)]`
-/

namespace A313494.P15540166443188838592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131735 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314124 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313494.P15540166443188838592

namespace A313494

/-- `A314124(n)-∑[A131735(n)]` -/
def P15540166443188838592.Spec : Prop :=
  ∀ n, P15540166443188838592.a n = A313494 n

end A313494

/-! ## A313494.P16021804514044382660

`A315405(n)-A004396(A004525(n))`
-/

namespace A313494.P16021804514044382660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315405 n - A004396 (A004525 n).toNat

end

end A313494.P16021804514044382660

namespace A313494

/-- `A315405(n)-A004396(A004525(n))` -/
def P16021804514044382660.Spec : Prop :=
  ∀ n, P16021804514044382660.a n = A313494 n

end A313494

/-! ## A313494.P14252763443184464194

`A004525(A315681(2*n))-A004525(n)`
-/

namespace A313494.P14252763443184464194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315681 (2 * n)).toNat - A004525 n

end

end A313494.P14252763443184464194

namespace A313494

/-- `A004525(A315681(2*n))-A004525(n)` -/
def P14252763443184464194.Spec : Prop :=
  ∀ n, P14252763443184464194.a n = A313494 n

end A313494

/-!
# A313495: Coordination sequence Gal.5.240.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313495, there is no canonical definition to state claims against.
-/

/-! ## A313495.P12817215661185808891

`A313388(n)+A011655(A002807(n))`
-/

namespace A313495.P12817215661185808891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313388 n + A011655 (A002807 n).toNat

end

end A313495.P12817215661185808891

/-! ## A313495.P11875825952566703551

`A313388(n)+A059841(A000568(n))`
-/

namespace A313495.P11875825952566703551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313388 n + A059841 (A000568 n).toNat

end

end A313495.P11875825952566703551

/-! ## A313495.P761673328482603824

`A313493(n)+A309433(A032555(n+1))`
-/

namespace A313495.P761673328482603824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313493 n + A309433 (A032555 (n + 1)).toNat

end

end A313495.P761673328482603824

/-! ## A313495.P2318706176131785817

`A313493(n)+A309433(A077739(n+1))`
-/

namespace A313495.P2318706176131785817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313493 n + A309433 (A077739 (n + 1)).toNat

end

end A313495.P2318706176131785817

/-! ## A313495.P1469623570172750847

`A313493(n)+A309433(A082217(n+1))`
-/

namespace A313495.P1469623570172750847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313493 n + A309433 (A082217 (n + 1)).toNat

end

end A313495.P1469623570172750847

/-!
# A313496: Coordination sequence Gal.6.437.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313496, there is no canonical definition to state claims against.
-/

/-! ## A313496.P6578827453807412576

`A331671(A331684(n+1))+A313477(n)`
-/

namespace A313496.P6578827453807412576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331671 (A331684 (n + 1)).toNat + A313477 n

end

end A313496.P6578827453807412576

/-! ## A313496.P11380260730424962681

`or(A137893(A022165(n)), A313479(n))`
-/

namespace A313496.P11380260730424962681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A137893 (A022165 n).toNat) (A313479 n)

end

end A313496.P11380260730424962681

/-! ## A313496.P6943866230232949051

`A315397(n)-A196058(A217414(n+1))%2`
-/

namespace A313496.P6943866230232949051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315397 n - Int.tmod (A196058 (A217414 (n + 1)).toNat) 2

end

end A313496.P6943866230232949051

/-! ## A313496.P11615648355000920208

`A001221(A001472(n))+4*n+1`
-/

namespace A313496.P11615648355000920208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A001472 n).toNat + (4 * n + 1 : ℤ)

end

end A313496.P11615648355000920208

/-! ## A313496.P2319292988382929978

`A029903(3*n+1)-A358194(n)`
-/

namespace A313496.P2319292988382929978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029903 (3 * n + 1) - A358194 n

end

end A313496.P2319292988382929978

/-!
# A313497: Coordination sequence Gal.6.285.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313497, there is no canonical definition to state claims against.
-/

/-! ## A313497.P1333573778751048075

`A311807(n)+A257994(A018047(n))`
-/

namespace A313497.P1333573778751048075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311807 n + A257994 (A018047 n).toNat

end

end A313497.P1333573778751048075

/-! ## A313497.P17161540037229322432

`A313550(n)-A188432(A000108(n))`
-/

namespace A313497.P17161540037229322432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313550 n - A188432 (A000108 n).toNat

end

end A313497.P17161540037229322432

/-! ## A313497.P3900368138366026781

`xor(A023532(A074357(n)), A313477(n))`
-/

namespace A313497.P3900368138366026781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A023532 (A074357 n).toNat) (A313477 n)

end

end A313497.P3900368138366026781

/-! ## A313497.P16532129448223687919

`A101925(2*n)+A001222(A106184(n))`
-/

namespace A313497.P16532129448223687919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101925 (2 * n) + A001222 (A106184 n).toNat

end

end A313497.P16532129448223687919

/-! ## A313497.P13941526799716140461

`A016861(n)-A000120(A357182(2*(n+1)))`
-/

namespace A313497.P13941526799716140461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 n - A000120 (A357182 (2 * (n + 1))).toNat

end

end A313497.P13941526799716140461

/-!
# A313498: Coordination sequence Gal.6.255.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313498, the canonical program `A313498.P2788060221542101989` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313498 has offset 0).

The definition of A313498 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2245 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313498.P17534730191521336821

`(A315636(n)+A008574(n))/2`
-/

namespace A313498.P17534730191521336821
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315636 n + A008574 n : ℚ) / 2

end

end A313498.P17534730191521336821

namespace A313498

/-- `(A315636(n)+A008574(n))/2` -/
def P17534730191521336821.Spec : Prop :=
  ∀ n, P17534730191521336821.a n = (A313498 n : ℚ)

end A313498

/-! ## A313498.P14087438136735991224

`A008574(n)+A001281(A315636(n)-A008574(n))`
-/

namespace A313498.P14087438136735991224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A001281 (A315636 n - A008574 n).toNat

end

end A313498.P14087438136735991224

namespace A313498

/-- `A008574(n)+A001281(A315636(n)-A008574(n))` -/
def P14087438136735991224.Spec : Prop :=
  ∀ n, P14087438136735991224.a n = A313498 n

end A313498

/-! ## A313498.P9182868230353035294

`A008574(n)+A004525(A315636(n)-A008574(n))`
-/

namespace A313498.P9182868230353035294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A004525 (A315636 n - A008574 n).toNat

end

end A313498.P9182868230353035294

namespace A313498

/-- `A008574(n)+A004525(A315636(n)-A008574(n))` -/
def P9182868230353035294.Spec : Prop :=
  ∀ n, P9182868230353035294.a n = A313498 n

end A313498

/-! ## A313498.P9015227529089244172

`A315636(n)-A004526(A315636(n)-A008574(n))`
-/

namespace A313498.P9015227529089244172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315636 n - A004526 (A315636 n - A008574 n).toNat

end

end A313498.P9015227529089244172

namespace A313498

/-- `A315636(n)-A004526(A315636(n)-A008574(n))` -/
def P9015227529089244172.Spec : Prop :=
  ∀ n, P9015227529089244172.a n = A313498 n

end A313498

/-! ## A313498.P2788060221542101989

`abs(A008592(n)-A313918(n))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A313498

/-- `abs(A008592(n)-A313918(n))` -/
def P2788060221542101989.Spec : Prop :=
  ∀ n, P2788060221542101989.a n = A313498 n

theorem P2788060221542101989.correct : P2788060221542101989.Spec := by
  intro n
  simp only [A313498]

end A313498

/-! ## A313498.P5127310153444928344

`2*A008706(n)-A313918(n)`
-/

namespace A313498.P5127310153444928344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A313918 n

end

end A313498.P5127310153444928344

namespace A313498

/-- `2*A008706(n)-A313918(n)` -/
def P5127310153444928344.Spec : Prop :=
  ∀ n, P5127310153444928344.a n = A313498 n

end A313498

/-! ## A313498.P16513584557962355870

`A008458(n)+A008574(n)-A313918(n)`
-/

namespace A313498.P16513584557962355870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313918 n)

end

end A313498.P16513584557962355870

namespace A313498

/-- `A008458(n)+A008574(n)-A313918(n)` -/
def P16513584557962355870.Spec : Prop :=
  ∀ n, P16513584557962355870.a n = A313498 n

end A313498

/-! ## A313498.P2691099060319284308

`∑{d}[A008592(n)-A313918(n), A000010(#)]`
-/

namespace A313498.P2691099060319284308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n - A313918 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A313498.P2691099060319284308

namespace A313498

/-- `∑{d}[A008592(n)-A313918(n), A000010(#)]` -/
def P2691099060319284308.Spec : Prop :=
  ∀ n, P2691099060319284308.a n = A313498 n

end A313498

/-! ## A313498.P15762794390994766450

`A313918(n)-A005843(A313918(n)-A008706(n))`
-/

namespace A313498.P15762794390994766450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313918 n - A005843 (A313918 n - A008706 n).toNat

end

end A313498.P15762794390994766450

namespace A313498

/-- `A313918(n)-A005843(A313918(n)-A008706(n))` -/
def P15762794390994766450.Spec : Prop :=
  ∀ n, P15762794390994766450.a n = A313498 n

end A313498

/-! ## A313498.P8424647079351367159

`A038572(A315636(n)+4*n)`
-/

namespace A313498.P8424647079351367159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A315636 n + (4 * n : ℤ)).toNat

end

end A313498.P8424647079351367159

namespace A313498

/-- `A038572(A315636(n)+4*n)` -/
def P8424647079351367159.Spec : Prop :=
  ∀ n, P8424647079351367159.a n = A313498 n

end A313498

/-! ## A313498.P6173414574826935841

`A008458(n)+n-A004526(A312668(n))`
-/

namespace A313498.P6173414574826935841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + ((n : ℤ) - A004526 (A312668 n).toNat)

end

end A313498.P6173414574826935841

namespace A313498

/-- `A008458(n)+n-A004526(A312668(n))` -/
def P6173414574826935841.Spec : Prop :=
  ∀ n, P6173414574826935841.a n = A313498 n

end A313498

/-! ## A313498.P6380634970422249760

`A005843(A008706(n))-A313918(n)`
-/

namespace A313498.P6380634970422249760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A313918 n

end

end A313498.P6380634970422249760

namespace A313498

/-- `A005843(A008706(n))-A313918(n)` -/
def P6380634970422249760.Spec : Prop :=
  ∀ n, P6380634970422249760.a n = A313498 n

end A313498

/-! ## A313498.P17369558821488421625

`A005843(A008458(n)-n)-A313918(n)`
-/

namespace A313498.P17369558821488421625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008458 n - (n : ℤ)).toNat - A313918 n

end

end A313498.P17369558821488421625

namespace A313498

/-- `A005843(A008458(n)-n)-A313918(n)` -/
def P17369558821488421625.Spec : Prop :=
  ∀ n, P17369558821488421625.a n = A313498 n

end A313498

/-! ## A313498.P3499682044229217863

`A004526(A315636(n))+A004277(n)`
-/

namespace A313498.P3499682044229217863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A315636 n).toNat + A004277 n

end

end A313498.P3499682044229217863

namespace A313498

/-- `A004526(A315636(n))+A004277(n)` -/
def P3499682044229217863.Spec : Prop :=
  ∀ n, P3499682044229217863.a n = A313498 n

end A313498

/-! ## A313498.P1731987106479582100

`A005843(n)+A004525(A315636(n))`
-/

namespace A313498.P1731987106479582100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + A004525 (A315636 n).toNat

end

end A313498.P1731987106479582100

namespace A313498

/-- `A005843(n)+A004525(A315636(n))` -/
def P1731987106479582100.Spec : Prop :=
  ∀ n, P1731987106479582100.a n = A313498 n

end A313498

/-! ## A313498.P3791807454633270381

`A008619(A315636(n))+A004273(n)`
-/

namespace A313498.P3791807454633270381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A315636 n).toNat + A004273 n

end

end A313498.P3791807454633270381

namespace A313498

/-- `A008619(A315636(n))+A004273(n)` -/
def P3791807454633270381.Spec : Prop :=
  ∀ n, P3791807454633270381.a n = A313498 n

end A313498

/-! ## A313498.P6823359810347471702

`A314140(2*n)+A008458(n+1)-(12*n+6)`
-/

namespace A313498.P6823359810347471702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314140 (2 * n) + (A008458 (n + 1) - (12 * n + 6 : ℤ))

end

end A313498.P6823359810347471702

namespace A313498

/-- `A314140(2*n)+A008458(n+1)-(12*n+6)` -/
def P6823359810347471702.Spec : Prop :=
  ∀ n, P6823359810347471702.a n = A313498 n

end A313498

/-! ## A313498.P12685315698785295449

`A004525(A315636(n)+A008574(n))`
-/

namespace A313498.P12685315698785295449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315636 n + A008574 n).toNat

end

end A313498.P12685315698785295449

namespace A313498

/-- `A004525(A315636(n)+A008574(n))` -/
def P12685315698785295449.Spec : Prop :=
  ∀ n, P12685315698785295449.a n = A313498 n

end A313498

/-! ## A313498.P654870555133261610

`A001281(A315636(n)+A008574(n))`
-/

namespace A313498.P654870555133261610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A315636 n + A008574 n).toNat

end

end A313498.P654870555133261610

namespace A313498

/-- `A001281(A315636(n)+A008574(n))` -/
def P654870555133261610.Spec : Prop :=
  ∀ n, P654870555133261610.a n = A313498 n

end A313498

/-! ## A313498.P4533356753924096740

`A004526(A315636(n)+A008574(n))`
-/

namespace A313498.P4533356753924096740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A315636 n + A008574 n).toNat

end

end A313498.P4533356753924096740

namespace A313498

/-- `A004526(A315636(n)+A008574(n))` -/
def P4533356753924096740.Spec : Prop :=
  ∀ n, P4533356753924096740.a n = A313498 n

end A313498

/-!
# A313499: Coordination sequence Gal.6.449.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313499, there is no canonical definition to state claims against.
-/

/-! ## A313499.P8120439732143848206

`A311107(n)+A001222(A094832(n))`
-/

namespace A313499.P8120439732143848206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311107 n + A001222 (A094832 n).toNat

end

end A313499.P8120439732143848206

/-! ## A313499.P3383413930604761720

`A313570(n)-A037833(A239040(n+1))`
-/

namespace A313499.P3383413930604761720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313570 n - A037833 (A239040 (n + 1)).toNat

end

end A313499.P3383413930604761720

/-! ## A313499.P7474464132564751187

`A313489(A087051(n))+char[A072154(n+2)]`
-/

namespace A313499.P7474464132564751187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072154 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313489 (A087051 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A313499.P7474464132564751187

/-! ## A313499.P16345907004923058750

`A038669(3*n+1)+A007895(A038624(n+1))`
-/

namespace A313499.P16345907004923058750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038669 (3 * n + 1) + A007895 (A038624 (n + 1)).toNat

end

end A313499.P16345907004923058750

/-! ## A313499.P9788781167838894239

`∑[A275853(16*A060498(n))]`
-/

namespace A313499.P9788781167838894239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275853 (16 * A060498 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313499.P9788781167838894239

