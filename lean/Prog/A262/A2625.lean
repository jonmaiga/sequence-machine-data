import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C007
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
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
import Seq.B006.C000
import Seq.B007.C000
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A262501: First differences of A002182 (highly composite numbers, definition 1).

The programs for A262501, there is no canonical definition to state claims against.
-/

/-! ## A262501.P1290686981960293797

`A002182(n+2)-A002182(n+1)`
-/

namespace A262501.P1290686981960293797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002182 (n + 2) - A002182 (n + 1)

end

end A262501.P1290686981960293797

/-! ## A262501.P15526953903385293024

`Δ[A002182(n+1)]`
-/

namespace A262501.P15526953903385293024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002182 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A262501.P15526953903385293024

/-! ## A262501.P3957257526162801295

`Δ[A135372(n+1)]`
-/

namespace A262501.P3957257526162801295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135372 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A262501.P3957257526162801295

/-! ## A262501.P3433611335255031847

`Δ[record[A365901(n+1)]]`
-/

namespace A262501.P3433611335255031847
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365901 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A262501.P3433611335255031847

/-! ## A262501.P14660674163832711648

`A135372(n+2)-A135372(n+1)`
-/

namespace A262501.P14660674163832711648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135372 (n + 2) - A135372 (n + 1)

end

end A262501.P14660674163832711648

/-! ## A262501.P3447592984466825050

`Δ[A063072(n+1)-A072824(n+1)]`
-/

namespace A262501.P3447592984466825050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063072 (n + 1) - A072824 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A262501.P3447592984466825050

/-! ## A262501.P4473252900683066443

`Δ[A301413(n+1)*A319865(n+1)]`
-/

namespace A262501.P4473252900683066443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301413 (n + 1) * A319865 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A262501.P4473252900683066443

/-! ## A262501.P9202702130633060871

`Δ[A002110(A108602(n+1))*A301413(n+1)]`
-/

namespace A262501.P9202702130633060871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (A108602 (n + 1)).toNat * A301413 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A262501.P9202702130633060871

/-! ## A262501.P10615666203835917506

`(A054483(n+2)-A054482(n+2))*A054481(n+2)`
-/

namespace A262501.P10615666203835917506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A054483 (n + 2) - A054482 (n + 2)) * A054481 (n + 2)

end

end A262501.P10615666203835917506

/-! ## A262501.P4745823977145495867

`Δ[sqrt(A046952(n+1))]`
-/

namespace A262501.P4745823977145495867
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A046952 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A262501.P4745823977145495867

/-! ## A262501.P17144874065353535962

`Δ[A025487(A306802(n+1))]`
-/

namespace A262501.P17144874065353535962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (A306802 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A262501.P17144874065353535962

/-! ## A262501.P12160580730353174967

`A053878(n+2)*A054481(n+2)`
-/

namespace A262501.P12160580730353174967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053878 (n + 2) * A054481 (n + 2)

end

end A262501.P12160580730353174967

/-! ## A262501.P16938667054965875046

`A002182(n+1)*A053878(n+2)/A054482(n+2)`
-/

namespace A262501.P16938667054965875046
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002182 (n + 1) * A053878 (n + 2) : ℚ) / (A054482 (n + 2) : ℚ)

end

end A262501.P16938667054965875046

/-! ## A262501.P2355051996057454211

`A002182(n+2)*A053878(n+2)/A054483(n+2)`
-/

namespace A262501.P2355051996057454211
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002182 (n + 2) * A053878 (n + 2) : ℚ) / (A054483 (n + 2) : ℚ)

end

end A262501.P2355051996057454211

/-! ## A262501.P2028336385377859958

`Δ[A061799(A002183(n+1))]`
-/

namespace A262501.P2028336385377859958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061799 (A002183 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A262501.P2028336385377859958

/-! ## A262501.P13107750301417150815

`A061799(A002183(n+2))-A061799(A002183(n+1))`
-/

namespace A262501.P13107750301417150815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061799 (A002183 (n + 2)).toNat - A061799 (A002183 (n + 1)).toNat

end

end A262501.P13107750301417150815

/-!
# A262502: a(n) = least k such that A261104(k) = n; positions of records in A261104.

The programs for A262502, there is no canonical definition to state claims against.
-/

/-! ## A262502.P12209236104293498486

`∑[A262504(n)]-A262504(n)`
-/

namespace A262502.P12209236104293498486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A262504 n

end

end A262502.P12209236104293498486

/-! ## A262502.P14386596780358986

`∑[A262504(n)]+A001478(A262504(n)+1)+1`
-/

namespace A262502.P14386596780358986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A001478 (A262504 n + 1).toNat + 1)

end

end A262502.P14386596780358986

/-! ## A262502.P1192816143703078535

`A259361(A032279(3*(n+2)))-n`
-/

namespace A262502.P1192816143703078535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A032279 (3 * (n + 2))).toNat - (n : ℤ)

end

end A262502.P1192816143703078535

/-! ## A262502.P6644390655430051588

`∑[A037821(A186417(n+1)²+n+1)+n]`
-/

namespace A262502.P6644390655430051588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037821 (A186417 (n + 1) ^ 2 + (n + 1 : ℤ)).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262502.P6644390655430051588

/-! ## A262502.P10456382020896109315

`ceil(log2(A112834(2*n+1)))`
-/

namespace A262502.P10456382020896109315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A112834 (2 * n + 1) : ℝ)⌉

end

end A262502.P10456382020896109315

/-!
# A262503: a(n) = largest k such that A155043(k) = n.

The programs for A262503, there is no canonical definition to state claims against.
-/

/-! ## A262503.P4419578125046558353

`A263265(A263260(n)-1)`
-/

namespace A262503.P4419578125046558353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263265 (A263260 n - 1).toNat

end

end A262503.P4419578125046558353

/-! ## A262503.P4364534177874748314

`A262506(n)+A259934(n)`
-/

namespace A262503.P4364534177874748314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262506 n + A259934 n

end

end A262503.P4364534177874748314

/-! ## A262503.P12392250896492653064

`A262505(n)+A261089(n)`
-/

namespace A262503.P12392250896492653064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262505 n + A261089 n

end

end A262503.P12392250896492653064

/-! ## A262503.P16176714579701618753

`A263265(∑[A262507(n)]-1)`
-/

namespace A262503.P16176714579701618753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262507 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263265 (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A262503.P16176714579701618753

/-! ## A262503.P11755961053329793845

`A261089(n)+A262506(n)+A261103(n)`
-/

namespace A262503.P11755961053329793845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261089 n + (A262506 n + A261103 n)

end

end A262503.P11755961053329793845

/-! ## A262503.P8831905125315671336

`A259934(n)+A262505(n)-A261103(n)`
-/

namespace A262503.P8831905125315671336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259934 n + (A262505 n - A261103 n)

end

end A262503.P8831905125315671336

/-! ## A262503.P12709003335273223541

`∑[A259935(n+1)]+A262506(n)-A259935(n+1)`
-/

namespace A262503.P12709003335273223541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259935 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A262506 n - A259935 (n + 1))

end

end A262503.P12709003335273223541

/-! ## A262503.P11053019687061848815

`A262506(n)+eq[0, A262522(n)]`
-/

namespace A262503.P11053019687061848815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262522 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262506 n + (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ)

end

end A262503.P11053019687061848815

/-! ## A262503.P9511311120425176458

`A262506(n)+lt[A000005(A262522(n)+1), 2]`
-/

namespace A262503.P9511311120425176458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A262522 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262506 n + (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ)

end

end A262503.P9511311120425176458

/-! ## A262503.P13084803401668523692

`A263265(A263268(A263269(n)))`
-/

namespace A262503.P13084803401668523692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263265 (A263268 (A263269 n).toNat).toNat

end

end A262503.P13084803401668523692

/-! ## A262503.P12834439471361287372

`A262506(n)+A049820(∑[A259935(n+1)])`
-/

namespace A262503.P12834439471361287372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259935 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262506 n + A049820 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A262503.P12834439471361287372

/-! ## A262503.P13965991032657404355

`A262506(n)+lt[A000040(A262522(n)+1), 3]`
-/

namespace A262503.P13965991032657404355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A262522 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262506 n + (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ)

end

end A262503.P13965991032657404355

/-! ## A262503.P16938453442245648361

`A263255(∑[n])+A262506(n)`
-/

namespace A262503.P16938453442245648361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263255 (∑ j ∈ Finset.range (n + 1), f1 j) + A262506 n

end

end A262503.P16938453442245648361

/-!
# A262504: First differences of A262502.

The programs for A262504, there is no canonical definition to state claims against.
-/

/-! ## A262504.P5354153416739240309

`A262502(n+1)-A262502(n)`
-/

namespace A262504.P5354153416739240309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262502 (n + 1) - A262502 n

end

end A262504.P5354153416739240309

/-! ## A262504.P5097620701538062074

`Δ[A262502(n)]`
-/

namespace A262504.P5097620701538062074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262502 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A262504.P5097620701538062074

/-! ## A262504.P10030850990016385814

`record[A262502(abs(1-n))]-A262502(n)`
-/

namespace A262504.P10030850990016385814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262502 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A262502 n

end

end A262504.P10030850990016385814

/-!
# A262505: Distance between the positions of the first and the last occurrence of n in A155043: a(n) = A262503(n) - A261089(n).

The programs for A262505, there is no canonical definition to state claims against.
-/

/-! ## A262505.P11844477850370133879

`A261103(n)+A262506(n)`
-/

namespace A262505.P11844477850370133879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261103 n + A262506 n

end

end A262505.P11844477850370133879

/-! ## A262505.P15119912974075494836

`A262503(n)-A261089(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A262505.P15119912974075494836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262503 n - A261089 n

end

end A262505.P15119912974075494836

/-! ## A262505.P2920571103605954317

`A259934(n)+A262506(n)-A261089(n)`
-/

namespace A262505.P2920571103605954317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259934 n + (A262506 n - A261089 n)

end

end A262505.P2920571103605954317

/-! ## A262505.P14864381656286287621

`A261103(n)+A262503(n)-A259934(n)`
-/

namespace A262505.P14864381656286287621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261103 n + (A262503 n - A259934 n)

end

end A262505.P14864381656286287621

/-! ## A262505.P7620931109400003656

`A263265(∑[A262507(n)]-1)-A261089(n)`
-/

namespace A262505.P7620931109400003656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262507 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263265 (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat - A261089 n

end

end A262505.P7620931109400003656

/-!
# A262506: a(n) = A262503(n) - A259934(n).

The programs for A262506, there is no canonical definition to state claims against.
-/

/-! ## A262506.P2224467660854725412

`A262503(n)-A259934(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A262506.P2224467660854725412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262503 n - A259934 n

end

end A262506.P2224467660854725412

/-! ## A262506.P3128965307250607969

`A262505(n)-A261103(n)`
-/

namespace A262506.P3128965307250607969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262505 n - A261103 n

end

end A262506.P3128965307250607969

/-! ## A262506.P18225086396071874404

`A262503(n)%A259934(A028310(n))`
-/

namespace A262506.P18225086396071874404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A262503 n) (A259934 (A028310 n).toNat)

end

end A262506.P18225086396071874404

/-! ## A262506.P8946477134637744740

`A261089(n)+A262505(n)-A259934(n)`
-/

namespace A262506.P8946477134637744740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261089 n + (A262505 n - A259934 n)

end

end A262506.P8946477134637744740

/-! ## A262506.P12453764265226452589

`A262503(n)-(A261103(n)+A261089(n))`
-/

namespace A262506.P12453764265226452589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262503 n - (A261103 n + A261089 n)

end

end A262506.P12453764265226452589

/-! ## A262506.P15329882944514612149

`A262503(n)-eq[0, A263254(n)]`
-/

namespace A262506.P15329882944514612149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263254 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262503 n - (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ)

end

end A262506.P15329882944514612149

/-! ## A262506.P2646673720232799439

`A262503(n)-A263255(∑[n])`
-/

namespace A262506.P2646673720232799439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262503 n - A263255 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A262506.P2646673720232799439

/-!
# A262507: a(n) = number of times n occurs in A155043.

The programs for A262507, there is no canonical definition to state claims against.
-/

/-! ## A262507.P7638036617841733043

`A263279(n)+A263280(n)`
-/

namespace A262507.P7638036617841733043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263279 n + A263280 n

end

end A262507.P7638036617841733043

/-! ## A262507.P18264140429659463778

`Δ[A263266(A261089(n))]`
-/

namespace A262507.P18264140429659463778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263266 (A261089 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A262507.P18264140429659463778

/-! ## A262507.P14637737566136035968

`A263260(n)-A263266(A261089(n))`
-/

namespace A262507.P14637737566136035968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263260 n - A263266 (A261089 n).toNat

end

end A262507.P14637737566136035968

/-! ## A262507.P7228799927021385367

`A263260(n)-A263266(eq[1, A263259(n)])`
-/

namespace A262507.P7228799927021385367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263259 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263260 n - A263266 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A262507.P7228799927021385367

/-! ## A262507.P17427727572632045157

`A263280(n)+A263259(A259934(n))`
-/

namespace A262507.P17427727572632045157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263280 n + A263259 (A259934 n).toNat

end

end A262507.P17427727572632045157

/-! ## A262507.P5046879470588509089

`A263260(n)-eq[1, A263259(A263265(n))]`
-/

namespace A262507.P5046879470588509089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263259 (A263265 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263260 n - (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ)

end

end A262507.P5046879470588509089

/-! ## A262507.P11864684909132279380

`A263259(A262503(n))`
-/

namespace A262507.P11864684909132279380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263259 (A262503 n).toNat

end

end A262507.P11864684909132279380

/-! ## A262507.P14670837498326488966

`A263259(A262506(n)+A259934(n))`
-/

namespace A262507.P14670837498326488966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263259 (A262506 n + A259934 n).toNat

end

end A262507.P14670837498326488966

/-! ## A262507.P5529534845713601769

`A263259(A262505(n)+A261089(n))`
-/

namespace A262507.P5529534845713601769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263259 (A262505 n + A261089 n).toNat

end

end A262507.P5529534845713601769

/-!
# A262508: Numbers that occur only once in A155043; positions of zeros in A262505, ones in A262507.

The programs for A262508, there is no canonical definition to state claims against.
-/

/-! ## A262508.P16042791715992865220

`A155043(A262509(n))`
-/

namespace A262508.P16042791715992865220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155043 (A262509 n).toNat

end

end A262508.P16042791715992865220

/-!
# A262509: Numbers n such that there is no other number k for which A155043(k) = A155043(n).

The programs for A262509, there is no canonical definition to state claims against.
-/

/-! ## A262509.P8890778467476537669

`A259934(A262508(n))`
-/

namespace A262509.P8890778467476537669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259934 (A262508 n).toNat

end

end A262509.P8890778467476537669

/-! ## A262509.P17608317612436825294

`A261089(and(-1, A262508(n)))`
-/

namespace A262509.P17608317612436825294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261089 (Int.land (-1) (A262508 n)).toNat

end

end A262509.P17608317612436825294

/-! ## A262509.P7182970269259614243

`A262503(and(-1, A262508(n)))`
-/

namespace A262509.P7182970269259614243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262503 (Int.land (-1) (A262508 n)).toNat

end

end A262509.P7182970269259614243

/-! ## A262509.P14466885708004042556

`A263269(and(-1, A262508(n)))`
-/

namespace A262509.P14466885708004042556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263269 (Int.land (-1) (A262508 n)).toNat

end

end A262509.P14466885708004042556

/-! ## A262509.P14169476186150925670

`A264988(and(-1, A262508(n)))`
-/

namespace A262509.P14169476186150925670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264988 (Int.land (-1) (A262508 n)).toNat

end

end A262509.P14169476186150925670

/-!
# A262510: Parent nodes of nonzero terms of A262509: a(n) = A049820(A262509(n)).

The programs for A262510, there is no canonical definition to state claims against.
-/

/-! ## A262510.P12835174441254525443

`A259934(A262508(n+1)-1)`
-/

namespace A262510.P12835174441254525443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259934 (A262508 (n + 1) - 1).toNat

end

end A262510.P12835174441254525443

/-! ## A262510.P9404692499663831327

`A262896(A262508(n+1)-1)`
-/

namespace A262510.P9404692499663831327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262896 (A262508 (n + 1) - 1).toNat

end

end A262510.P9404692499663831327

/-!
# A262511: Numbers k for which there is exactly one solution to x - d(x) = k, where d(k) is the number of divisors of k (A000005). Positions of ones in A060990.

The programs for A262511, there is no canonical definition to state claims against.
-/

/-! ## A262511.P15957647878976675445

`A049820(A262512(n+1))`
-/

namespace A262511.P15957647878976675445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049820 (A262512 (n + 1)).toNat

end

end A262511.P15957647878976675445

/-! ## A262511.P7671036241672899065

`eq[1, A060990(n)]`
-/

namespace A262511.P7671036241672899065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060990 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A262511.P7671036241672899065

/-! ## A262511.P10071082092018824101

`record[(n+1)/a(A060990(n+1))]` with `a(0)=2, a(1)=1`
-/

namespace A262511.P10071082092018824101
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  (n + 1 : ℚ) / f1 (A060990 (n + 1)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262511.P10071082092018824101

/-! ## A262511.P4977093405274683452

`eq[A028310(A082284(n)), A262686(n)]`
-/

namespace A262511.P4977093405274683452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A082284 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262686 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A262511.P4977093405274683452

/-!
# A262512: Sequence gives the unique x for each term of A262511 which contains those numbers n that have exactly one solution to x - d(x) = n, where d(n) is the number of divisors of n (A000005).

The programs for A262512, there is no canonical definition to state claims against.
-/

/-! ## A262512.P14077938629684346307

`A082284(A262511(n+1))`
-/

namespace A262512.P14077938629684346307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082284 (A262511 (n + 1)).toNat

end

end A262512.P14077938629684346307

/-! ## A262512.P15284962017461988613

`A082284(eq[1, A060990(n)])`
-/

namespace A262512.P15284962017461988613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060990 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082284 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A262512.P15284962017461988613

/-! ## A262512.P7328186426271389603

`A262686(eq[1, A060990(n)])`
-/

namespace A262512.P7328186426271389603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060990 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262686 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A262512.P7328186426271389603

/-! ## A262512.P9448654950574113516

`A262686(A262511(2*n+1-n))`
-/

namespace A262512.P9448654950574113516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262686 (A262511 (2 * n + 1 - n)).toNat

end

end A262512.P9448654950574113516

/-! ## A262512.P7492948824705270731

`A262686(A262511(n+1)+A000007(n+1))`
-/

namespace A262512.P7492948824705270731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262686 (A262511 (n + 1) + A000007 (n + 1)).toNat

end

end A262512.P7492948824705270731

/-! ## A262512.P1850177265199253619

`A262686(eq[1, char[A262511(n+1)]])`
-/

namespace A262512.P1850177265199253619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262511 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262686 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A262512.P1850177265199253619

/-!
# A262513: Numbers where A049820 takes a unique value; numbers n for which A060990(A049820(n)) = 1.

The programs for A262513, there is no canonical definition to state claims against.
-/

/-! ## A262513.P12538177210825956546

`eq[1, char[A262512(n+1)]]`
-/

namespace A262513.P12538177210825956546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262512 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A262513.P12538177210825956546

/-! ## A262513.P5735752162076936268

`eq[1, char[A082284(A262511(n+1))]]`
-/

namespace A262513.P5735752162076936268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082284 (A262511 (n + 1)).toNat

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A262513.P5735752162076936268

/-! ## A262513.P568179808908836807

`lt[A000007(n), char[A262512(n+1)]]`
-/

namespace A262513.P568179808908836807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262512 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A262513.P568179808908836807

/-! ## A262513.P2665646400151623334

`eq[1, A060990(A049820(n+1))]+1`
-/

namespace A262513.P2665646400151623334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060990 (A049820 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A262513.P2665646400151623334

/-! ## A262513.P17640372419866424732

`eq[1, char[A262686(A262511(2*n+1-n))]]`
-/

namespace A262513.P17640372419866424732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262686 (A262511 (2 * n + 1 - n)).toNat

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A262513.P17640372419866424732

/-!
# A262514: Squares present in A259934.

The programs for A262514, there is no canonical definition to state claims against.
-/

/-! ## A262514.P4318670054049067561

`A259934(A263276(n))`
-/

namespace A262514.P4318670054049067561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259934 (A263276 n).toNat

end

end A262514.P4318670054049067561

/-! ## A262514.P1271806849687440832

`A262515(n)²`
-/

namespace A262514.P1271806849687440832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262515 n ^ 2

end

end A262514.P1271806849687440832

/-! ## A262514.P4893582071463255563

`A262515(n)^(2%A017221(n))`
-/

namespace A262514.P4893582071463255563
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262515 n : ℚ) ^ (Int.tmod 2 (A017221 n) : ℤ)

end

end A262514.P4893582071463255563

/-! ## A262514.P5279942079921392534

`A262515(n)^A020639(2*(n+1))`
-/

namespace A262514.P5279942079921392534
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262515 n : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

end

end A262514.P5279942079921392534

/-! ## A262514.P11300371287846389943

`A262515(n)^A006530(∏{digits}[n, 2^#])`
-/

namespace A262514.P11300371287846389943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262515 n : ℚ) ^ (A006530 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 2 ^ x).prod : ℤ)

end

end A262514.P11300371287846389943

/-!
# A262515: Natural numbers whose squares are present in A259934.

The programs for A262515, there is no canonical definition to state claims against.
-/

/-! ## A262515.P1839276184256361864

`sqrt(A262514(n))`
-/

namespace A262515.P1839276184256361864
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A262514 n : ℝ)

end

end A262515.P1839276184256361864

/-! ## A262515.P6128865796657875073

`A262514(n)^(A262681(n)/2)`
-/

namespace A262515.P6128865796657875073
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A262514 n : ℝ) ^ ((A262681 n : ℚ) / 2 : ℝ)

end

end A262515.P6128865796657875073

/-! ## A262515.P10797438495114322786

`A262514(n)^(A033999(2*n)/2)`
-/

namespace A262515.P10797438495114322786
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A262514 n : ℝ) ^ ((A033999 (2 * n) : ℚ) / 2 : ℝ)

end

end A262515.P10797438495114322786

/-! ## A262515.P17943928686441968055

`A262514(n)^2^A008683(A020484(n))`
-/

namespace A262515.P17943928686441968055
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A262514 n : ℝ) ^ ((2 : ℚ) ^ (A008683 (A020484 n).toNat : ℤ) : ℝ)

end

end A262515.P17943928686441968055

/-!
# A262516: a(n) = length of n-th run of odd terms in A259934.

The programs for A262516, there is no canonical definition to state claims against.
-/

/-! ## A262516.P4285793360511664092

`A263277(2*(n+1))`
-/

namespace A262516.P4285793360511664092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263277 (2 * (n + 1))

end

end A262516.P4285793360511664092

/-! ## A262516.P2801012806601319280

`A263277(A248609(n+1))+char[8]`
-/

namespace A262516.P2801012806601319280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263277 (A248609 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A262516.P2801012806601319280

/-! ## A262516.P15814393572647314194

`∑{e}[A000079(n+1)², A263277(#)]`
-/

namespace A262516.P15814393572647314194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A263277 (Nat.factorization (f1 n).natAbs p)

end

end A262516.P15814393572647314194

/-!
# A262518: Even bisection of A155043.

The programs for A262518, the canonical program `A262518.P4745405101441477404` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A262518 has offset 0).

The definition of A262518 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A155043, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A262518.P4745405101441477404

`A155043(2*n)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A262518

/-- `A155043(2*n)` -/
def P4745405101441477404.Spec : Prop :=
  ∀ n, P4745405101441477404.a n = A262518 n

theorem P4745405101441477404.correct : P4745405101441477404.Spec := by
  intro n
  simp only [A262518]

end A262518

/-! ## A262518.P11805694693235715098

`A262519(n)-A262520(n)`
-/

namespace A262518.P11805694693235715098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262519 n - A262520 n

end

end A262518.P11805694693235715098

namespace A262518

/-- `A262519(n)-A262520(n)` -/
def P11805694693235715098.Spec : Prop :=
  ∀ n, P11805694693235715098.a n = A262518 n

end A262518

/-! ## A262518.P18311390202232052401

`A155043(A005843(n))%(n+1)`
-/

namespace A262518.P18311390202232052401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A155043 (A005843 n).toNat) (n + 1 : ℤ)

end

end A262518.P18311390202232052401

namespace A262518

/-- `A155043(A005843(n))%(n+1)` -/
def P18311390202232052401.Spec : Prop :=
  ∀ n, P18311390202232052401.a n = A262518 n

end A262518

/-! ## A262518.P12559654619387781519

`∑{d}[A155043(n+n), A000010(#)]`
-/

namespace A262518.P12559654619387781519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155043 (n + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A262518.P12559654619387781519

namespace A262518

/-- `∑{d}[A155043(n+n), A000010(#)]` -/
def P12559654619387781519.Spec : Prop :=
  ∀ n, P12559654619387781519.a n = A262518 n

end A262518

/-! ## A262518.P7168101777486432894

`A155043(n+1+n)-A262520(n)`
-/

namespace A262518.P7168101777486432894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155043 (n + 1 + n) - A262520 n

end

end A262518.P7168101777486432894

namespace A262518

/-- `A155043(n+1+n)-A262520(n)` -/
def P7168101777486432894.Spec : Prop :=
  ∀ n, P7168101777486432894.a n = A262518 n

end A262518

/-! ## A262518.P5768891339879539547

`A263270(A263266(2*n))`
-/

namespace A262518.P5768891339879539547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263270 (A263266 (2 * n)).toNat

end

end A262518.P5768891339879539547

namespace A262518

/-- `A263270(A263266(2*n))` -/
def P5768891339879539547.Spec : Prop :=
  ∀ n, P5768891339879539547.a n = A262518 n

end A262518

/-! ## A262518.P856849702585983496

`A262677(2*n)+A262676(2*n)`
-/

namespace A262518.P856849702585983496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262677 (2 * n) + A262676 (2 * n)

end

end A262518.P856849702585983496

namespace A262518

/-- `A262677(2*n)+A262676(2*n)` -/
def P856849702585983496.Spec : Prop :=
  ∀ n, P856849702585983496.a n = A262518 n

end A262518

/-! ## A262518.P10285257433899360496

`A263254(2*n)+A262904(2*n)`
-/

namespace A262518.P10285257433899360496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263254 (2 * n) + A262904 (2 * n)

end

end A262518.P10285257433899360496

namespace A262518

/-- `A263254(2*n)+A262904(2*n)` -/
def P10285257433899360496.Spec : Prop :=
  ∀ n, P10285257433899360496.a n = A262518 n

end A262518

/-! ## A262518.P10942691817990871242

`A262519(n)-A264893(2*n)`
-/

namespace A262518.P10942691817990871242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262519 n - A264893 (2 * n)

end

end A262518.P10942691817990871242

namespace A262518

/-- `A262519(n)-A264893(2*n)` -/
def P10942691817990871242.Spec : Prop :=
  ∀ n, P10942691817990871242.a n = A262518 n

end A262518

/-! ## A262518.P6074420517167448102

`A263270(A263268(2*n))`
-/

namespace A262518.P6074420517167448102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263270 (A263268 (2 * n)).toNat

end

end A262518.P6074420517167448102

namespace A262518

/-- `A263270(A263268(2*n))` -/
def P6074420517167448102.Spec : Prop :=
  ∀ n, P6074420517167448102.a n = A262518 n

end A262518

/-!
# A262519: Odd bisection of A155043.

The programs for A262519, the canonical program `A262519.P6612858690634746410` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A262519 has offset 0).

The definition of A262519 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A155043, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A262519.P6612858690634746410

`A155043(2*n+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A262519

/-- `A155043(2*n+1)` -/
def P6612858690634746410.Spec : Prop :=
  ∀ n, P6612858690634746410.a n = A262519 n

theorem P6612858690634746410.correct : P6612858690634746410.Spec := by
  intro n
  simp only [A262519]

end A262519

/-! ## A262519.P4811646277743000753

`A262520(n)+A262518(n)`
-/

namespace A262519.P4811646277743000753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262520 n + A262518 n

end

end A262519.P4811646277743000753

namespace A262519

/-- `A262520(n)+A262518(n)` -/
def P4811646277743000753.Spec : Prop :=
  ∀ n, P4811646277743000753.a n = A262519 n

end A262519

/-! ## A262519.P8569186108937169034

`A263270(A263266(Δ[n²]))`
-/

namespace A262519.P8569186108937169034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263270 (A263266 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A262519.P8569186108937169034

namespace A262519

/-- `A263270(A263266(Δ[n²]))` -/
def P8569186108937169034.Spec : Prop :=
  ∀ n, P8569186108937169034.a n = A262519 n

end A262519

/-! ## A262519.P5150622325379089901

`A262677(2*n+1)+A262676(2*n+1)`
-/

namespace A262519.P5150622325379089901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262677 (2 * n + 1) + A262676 (2 * n + 1)

end

end A262519.P5150622325379089901

namespace A262519

/-- `A262677(2*n+1)+A262676(2*n+1)` -/
def P5150622325379089901.Spec : Prop :=
  ∀ n, P5150622325379089901.a n = A262519 n

end A262519

/-! ## A262519.P15815542193336122492

`A263254(2*n+1)+A262904(2*n+1)`
-/

namespace A262519.P15815542193336122492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263254 (2 * n + 1) + A262904 (2 * n + 1)

end

end A262519.P15815542193336122492

namespace A262519

/-- `A263254(2*n+1)+A262904(2*n+1)` -/
def P15815542193336122492.Spec : Prop :=
  ∀ n, P15815542193336122492.a n = A262519 n

end A262519

/-! ## A262519.P10257987035952956664

`A263270(A263268(2*n+1))`
-/

namespace A262519.P10257987035952956664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263270 (A263268 (2 * n + 1)).toNat

end

end A262519.P10257987035952956664

namespace A262519

/-- `A263270(A263268(2*n+1))` -/
def P10257987035952956664.Spec : Prop :=
  ∀ n, P10257987035952956664.a n = A262519 n

end A262519

/-!
# A262520: a(n) = A262519(n) - A262518(n).

The programs for A262520, the canonical program `A262520.P5646456857022786100` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A262520 has offset 0).

The definition of A262520 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A262518, A262519, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A262520.P5646456857022786100

`A262519(n)-A262518(n)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A262520

/-- `A262519(n)-A262518(n)` -/
def P5646456857022786100.Spec : Prop :=
  ∀ n, P5646456857022786100.a n = A262520 n

theorem P5646456857022786100.correct : P5646456857022786100.Spec := by
  intro n
  simp only [A262520]

end A262520

/-! ## A262520.P17947786012118866820

`A262519(n)-A155043(2*n)`
-/

namespace A262520.P17947786012118866820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262519 n - A155043 (2 * n)

end

end A262520.P17947786012118866820

namespace A262520

/-- `A262519(n)-A155043(2*n)` -/
def P17947786012118866820.Spec : Prop :=
  ∀ n, P17947786012118866820.a n = A262520 n

end A262520

/-! ## A262520.P14103825247812681321

`A155043(2*n+1)-A262518(n)`
-/

namespace A262520.P14103825247812681321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155043 (2 * n + 1) - A262518 n

end

end A262520.P14103825247812681321

namespace A262520

/-- `A155043(2*n+1)-A262518(n)` -/
def P14103825247812681321.Spec : Prop :=
  ∀ n, P14103825247812681321.a n = A262520 n

end A262520

/-! ## A262520.P11343365104110496375

`A155043(2*n+1)-A155043(2*n)`
-/

namespace A262520.P11343365104110496375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155043 (2 * n + 1) - A155043 (2 * n)

end

end A262520.P11343365104110496375

namespace A262520

/-- `A155043(2*n+1)-A155043(2*n)` -/
def P11343365104110496375.Spec : Prop :=
  ∀ n, P11343365104110496375.a n = A262520 n

end A262520

/-! ## A262520.P864669638518777449

`A263270(A263266(2*n+1))-A263270(A263266(2*n))`
-/

namespace A262520.P864669638518777449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263270 (A263266 (2 * n + 1)).toNat - A263270 (A263266 (2 * n)).toNat

end

end A262520.P864669638518777449

namespace A262520

/-- `A263270(A263266(2*n+1))-A263270(A263266(2*n))` -/
def P864669638518777449.Spec : Prop :=
  ∀ n, P864669638518777449.a n = A262520 n

end A262520

/-! ## A262520.P15870972762947050441

`A264893(2*n)`
-/

namespace A262520.P15870972762947050441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264893 (2 * n)

end

end A262520.P15870972762947050441

namespace A262520

/-- `A264893(2*n)` -/
def P15870972762947050441.Spec : Prop :=
  ∀ n, P15870972762947050441.a n = A262520 n

end A262520

/-! ## A262520.P84818463076488400

`A263270(A263268(2*n+1))-A263270(A263268(2*n))`
-/

namespace A262520.P84818463076488400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263270 (A263268 (2 * n + 1)).toNat - A263270 (A263268 (2 * n)).toNat

end

end A262520.P84818463076488400

namespace A262520

/-- `A263270(A263268(2*n+1))-A263270(A263268(2*n))` -/
def P84818463076488400.Spec : Prop :=
  ∀ n, P84818463076488400.a n = A262520 n

end A262520

/-!
# A262521: Numbers where A262520 takes a negative value; numbers n for which A155043(2n) > A155043(2n + 1).

The programs for A262521, the canonical program `A262521.P6675054301120771592` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A262521 has offset 1).

The definition of A262521 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 195 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A262521.P6675054301120771592

`lt[A262519(n), A262518(n)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A262521

/-- `lt[A262519(n), A262518(n)]` -/
def P6675054301120771592.Spec : Prop :=
  ∀ n, (P6675054301120771592.a n : ℤ) = A262521 (n + 1)

theorem P6675054301120771592.correct : P6675054301120771592.Spec := by
  intro n
  simp only [A262521, Nat.add_sub_cancel]

end A262521

/-!
# A262523: a(n+3) = a(n) + 6*n + 13, a(0)=0, a(1)=2, a(2)=7.

The programs for A262523, the canonical program `A262523.P6312345314274739741` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A262523 has offset 0).

The definition of A262523 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A262523.P6312345314274739741

`n*(n+1)+floor((n+1)/3)`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A262523

/-- `n*(n+1)+floor((n+1)/3)` -/
def P6312345314274739741.Spec : Prop :=
  ∀ n, P6312345314274739741.a n = A262523 n

theorem P6312345314274739741.correct : P6312345314274739741.Spec := by
  intro n
  simp only [A262523]

end A262523

/-! ## A262523.P13236635306147245864

`∑[∑[n%3]+n]`
-/

namespace A262523.P13236635306147245864
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262523.P13236635306147245864

namespace A262523

/-- `∑[∑[n%3]+n]` -/
def P13236635306147245864.Spec : Prop :=
  ∀ n, (P13236635306147245864.a n : ℤ) = A262523 n

end A262523

/-! ## A262523.P651097753116145267

`∑[∑[dr(6*n)%4]]`
-/

namespace A262523.P651097753116145267
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (6 * n : ℤ) % 4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262523.P651097753116145267

namespace A262523

/-- `∑[∑[dr(6*n)%4]]` -/
def P651097753116145267.Spec : Prop :=
  ∀ n, (P651097753116145267.a n : ℤ) = A262523 n

end A262523

/-! ## A262523.P15132654711317775074

`∑[∑[and(3, dr(6*n))]]`
-/

namespace A262523.P15132654711317775074
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 3 (SequenceMachineLib.digitalRoot (6 * n : ℤ))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262523.P15132654711317775074

namespace A262523

/-- `∑[∑[and(3, dr(6*n))]]` -/
def P15132654711317775074.Spec : Prop :=
  ∀ n, (P15132654711317775074.a n : ℤ) = A262523 n

end A262523

/-! ## A262523.P16448693304758751360

`∑[n-∑[-n%3]]`
-/

namespace A262523.P16448693304758751360
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (-(n : ℤ)) 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262523.P16448693304758751360

namespace A262523

/-- `∑[n-∑[-n%3]]` -/
def P16448693304758751360.Spec : Prop :=
  ∀ n, P16448693304758751360.a n = A262523 n

end A262523

/-! ## A262523.P6844304071757731330

`∑[a(n-3)+6]` with `a(0)=0, a(1)=2, a(2)=5`
-/

namespace A262523.P6844304071757731330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 5] fun n f1 =>
  f1 (n - 3) + 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262523.P6844304071757731330

namespace A262523

/-- `∑[a(n-3)+6]` -/
def P6844304071757731330.Spec : Prop :=
  ∀ n, (P6844304071757731330.a n : ℤ) = A262523 n

end A262523

/-! ## A262523.P13984950817634103907

`∑[∑[abs(a(n-3))]]` with `a(0)=0, a(1)=2, a(2)=3, a(3)=1`
-/

namespace A262523.P13984950817634103907
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 3, 1] fun n f2 =>
  f2 (n - 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262523.P13984950817634103907

namespace A262523

/-- `∑[∑[abs(a(n-3))]]` -/
def P13984950817634103907.Spec : Prop :=
  ∀ n, (P13984950817634103907.a n : ℤ) = A262523 n

end A262523

/-! ## A262523.P11657790888970756111

`∑[∑[dr(a(n-3))]]` with `a(0)=0, a(1)=2, a(2)=3, a(3)=1`
-/

namespace A262523.P11657790888970756111
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 3, 1] fun n f2 =>
  SequenceMachineLib.digitalRoot (f2 (n - 3) : ℤ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262523.P11657790888970756111

namespace A262523

/-- `∑[∑[dr(a(n-3))]]` -/
def P11657790888970756111.Spec : Prop :=
  ∀ n, (P11657790888970756111.a n : ℤ) = A262523 n

end A262523

/-! ## A262523.P6286422280624052789

`∑[∑[floor(a(n-3))]]` with `a(0)=0, a(1)=2, a(2)=3, a(3)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A262523.P6286422280624052789
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 3, 1] fun n f2 =>
  f2 (n - 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262523.P6286422280624052789

namespace A262523

/-- `∑[∑[floor(a(n-3))]]` -/
def P6286422280624052789.Spec : Prop :=
  ∀ n, (P6286422280624052789.a n : ℤ) = A262523 n

end A262523

/-! ## A262523.P16262665237199652742

`∑[∑[ceil(a(n-3))]]` with `a(0)=0, a(1)=2, a(2)=3, a(3)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A262523.P16262665237199652742
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 3, 1] fun n f2 =>
  f2 (n - 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262523.P16262665237199652742

namespace A262523

/-- `∑[∑[ceil(a(n-3))]]` -/
def P16262665237199652742.Spec : Prop :=
  ∀ n, (P16262665237199652742.a n : ℤ) = A262523 n

end A262523

/-! ## A262523.P9970955160352644139

`∑[∑[round(a(n-3))]]` with `a(0)=0, a(1)=2, a(2)=3, a(3)=1`

`round` is left out, it is the identity on integers.
-/

namespace A262523.P9970955160352644139
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 3, 1] fun n f2 =>
  f2 (n - 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262523.P9970955160352644139

namespace A262523

/-- `∑[∑[round(a(n-3))]]` -/
def P9970955160352644139.Spec : Prop :=
  ∀ n, (P9970955160352644139.a n : ℤ) = A262523 n

end A262523

/-! ## A262523.P864430820487855103

`∑[∑[a(n-3)%4]]` with `a(0)=0, a(1)=2, a(2)=3, a(3)=1`
-/

namespace A262523.P864430820487855103
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 3, 1] fun n f2 =>
  f2 (n - 3) % 4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262523.P864430820487855103

namespace A262523

/-- `∑[∑[a(n-3)%4]]` -/
def P864430820487855103.Spec : Prop :=
  ∀ n, (P864430820487855103.a n : ℤ) = A262523 n

end A262523

/-! ## A262523.P7485333091741295568

`∑[∑[gcd(6, a(n-3))]]` with `a(0)=0, a(1)=2, a(2)=3, a(3)=1`
-/

namespace A262523.P7485333091741295568
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 3, 1] fun n f2 =>
  Nat.gcd 6 (f2 (n - 3))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262523.P7485333091741295568

namespace A262523

/-- `∑[∑[gcd(6, a(n-3))]]` -/
def P7485333091741295568.Spec : Prop :=
  ∀ n, (P7485333091741295568.a n : ℤ) = A262523 n

end A262523

/-! ## A262523.P6390153928633406474

`∑[∪[2*n+n+2, 6*n]]`
-/

namespace A262523.P6390153928633406474
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + (n + 2)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262523.P6390153928633406474

namespace A262523

/-- `∑[∪[2*n+n+2, 6*n]]` -/
def P6390153928633406474.Spec : Prop :=
  ∀ n, (P6390153928633406474.a n : ℤ) = A262523 n

end A262523

/-! ## A262523.P3395092447961737215

`∑[A047267(n+1)]`
-/

namespace A262523.P3395092447961737215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047267 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262523.P3395092447961737215

namespace A262523

/-- `∑[A047267(n+1)]` -/
def P3395092447961737215.Spec : Prop :=
  ∀ n, P3395092447961737215.a n = A262523 n

end A262523

/-! ## A262523.P11935175403811978061

`∑[A130481(n)+n]`
-/

namespace A262523.P11935175403811978061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130481 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262523.P11935175403811978061

namespace A262523

/-- `∑[A130481(n)+n]` -/
def P11935175403811978061.Spec : Prop :=
  ∀ n, P11935175403811978061.a n = A262523 n

end A262523

/-! ## A262523.P15875264869740597981

`floor(sqrt(A035288(n+1)))`
-/

namespace A262523.P15875264869740597981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A035288 (n + 1))

end

end A262523.P15875264869740597981

namespace A262523

/-- `floor(sqrt(A035288(n+1)))` -/
def P15875264869740597981.Spec : Prop :=
  ∀ n, P15875264869740597981.a n = A262523 n

end A262523

/-! ## A262523.P7421437339802223666

`∑[A128054(2*n+1)]`
-/

namespace A262523.P7421437339802223666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128054 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262523.P7421437339802223666

namespace A262523

/-- `∑[A128054(2*n+1)]` -/
def P7421437339802223666.Spec : Prop :=
  ∀ n, P7421437339802223666.a n = A262523 n

end A262523

/-!
# A262524: Numbers that can be represented as the sum of three base-10 palindromes in more ways than any smaller number. Position of records in A261132.

The programs for A262524, there is no canonical definition to state claims against.
-/

/-! ## A262524.P11418596845203490144

`A115337(A262525(n+2))`
-/

namespace A262524.P11418596845203490144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115337 (A262525 (n + 2)).toNat

end

end A262524.P11418596845203490144

/-! ## A262524.P14269309542933737024

`A115337(record[A261132(n+2)])`
-/

namespace A262524.P14269309542933737024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261132 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115337 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A262524.P14269309542933737024

/-! ## A262524.P14513850025729422176

`A262545(record[A109038(n)+2])`
-/

namespace A262524.P14513850025729422176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109038 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262545 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A262524.P14513850025729422176

/-! ## A262524.P8792970350010720303

`∑[A192177(2*C(n, 12)+2)]-n`
-/

namespace A262524.P8792970350010720303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192177 (2 * Nat.choose n 12 + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A262524.P8792970350010720303

/-! ## A262524.P12600320380129101420

`∑[A326020(A014375(n)²)]`
-/

namespace A262524.P12600320380129101420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326020 (A014375 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262524.P12600320380129101420

/-!
# A262525: Records in the number of ways to represent a number as the sum of three base-10 palindromes, A261132.

The programs for A262525, there is no canonical definition to state claims against.
-/

/-! ## A262525.P5704285905352609283

`record[A261132(n)]`
-/

namespace A262525.P5704285905352609283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261132 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262525.P5704285905352609283

/-! ## A262525.P16771424148635401446

`record[A261131(n)+A260254(n)]`
-/

namespace A262525.P16771424148635401446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261131 n + A260254 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262525.P16771424148635401446

/-! ## A262525.P63833655542865398

`record[A136522(n)+A319468(n)+A261131(n)]`
-/

namespace A262525.P63833655542865398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136522 n + (A319468 n + A261131 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262525.P63833655542865398

/-! ## A262525.P15408637027359339656

`record[A260254(n)-A260196(n)*A261131(n)]`
-/

namespace A262525.P15408637027359339656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260254 n - A260196 n * A261131 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262525.P15408637027359339656

/-! ## A262525.P8079916765623270969

`A261132(∪[A262524(n+1), A334822(n+1)])`
-/

namespace A262525.P8079916765623270969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262524 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334822 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261132 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A262525.P8079916765623270969

/-!
# A262526: Any number greater than a(n) can conjecturally be represented in more ways by sums of three base-10 palindromes than a(n).

The programs for A262526, there is no canonical definition to state claims against.
-/

/-! ## A262526.P15314109924109520387

`∑[A216964(A058158(n+1))]`
-/

namespace A262526.P15314109924109520387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216964 (A058158 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262526.P15314109924109520387

/-! ## A262526.P16921331760776048766

`lt[A069505(A261131(n)), A083851(n+1)]`
-/

namespace A262526.P16921331760776048766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069505 (A261131 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083851 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A262526.P16921331760776048766

/-!
# A262529: Number of partitions of 2n into parts of exactly n sorts which are introduced in ascending order such that sorts of adjacent parts are different.

The programs for A262529, there is no canonical definition to state claims against.
-/

/-! ## A262529.P2267008404896352063

`A262495(∑[4*n])`
-/

namespace A262529.P2267008404896352063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262495 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A262529.P2267008404896352063

/-! ## A262529.P317351709792510896

`lcm(A033999(n), A262495(A046092(n)))`
-/

namespace A262529.P317351709792510896
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A262495 (A046092 n).toNat)

end

end A262529.P317351709792510896

/-! ## A262529.P5067963049171266988

`or(A000007(n), A262495(A046092(n)))`
-/

namespace A262529.P5067963049171266988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A262495 (A046092 n).toNat)

end

end A262529.P5067963049171266988

/-! ## A262529.P2781471908307302410

`A262495(A046092(n))+char[1]*A007290(n+1)`
-/

namespace A262529.P2781471908307302410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262495 (A046092 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A007290 (n + 1)

end

end A262529.P2781471908307302410

/-! ## A262529.P10359944759824549267

`A262495(A046092(n))+(A002260(n+1)-1)*char[1]`
-/

namespace A262529.P10359944759824549267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262495 (A046092 n).toNat + (A002260 (n + 1) - 1) * ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A262529.P10359944759824549267

/-!
# A262530: Numbers such that digits occur at most twice in decimal representation.

The programs for A262530, the canonical program `A262530.P16964743584819314098` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A262530 has offset 1).

The definition of A262530 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 139 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A262530.P18270817511281223889

`A234578(A108689(n+4))+1+n`
-/

namespace A262530.P18270817511281223889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234578 (A108689 (n + 4)).toNat + 1 + (n : ℤ)

end

end A262530.P18270817511281223889

namespace A262530

/-- `A234578(A108689(n+4))+1+n` -/
def P18270817511281223889.Spec : Prop :=
  ∀ n, P18270817511281223889.a n = A262530 (n + 1)

end A262530

/-! ## A262530.P16964743584819314098

`A003056(∑[A337843(n)])`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A262530

/-- `A003056(∑[A337843(n)])` -/
def P16964743584819314098.Spec : Prop :=
  ∀ n, P16964743584819314098.a n = A262530 (n + 1)

theorem P16964743584819314098.correct : P16964743584819314098.Spec := by
  intro n
  simp only [A262530, Nat.add_sub_cancel]

end A262530

/-! ## A262530.P2613377833386866263

`A003056(∑[A055642(n)+n])`
-/

namespace A262530.P2613377833386866263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A262530.P2613377833386866263

namespace A262530

/-- `A003056(∑[A055642(n)+n])` -/
def P2613377833386866263.Spec : Prop :=
  ∀ n, P2613377833386866263.a n = A262530 (n + 1)

end A262530

/-! ## A262530.P9101656422932919870

`A003056(∑[A103921(n+3)+n])`
-/

namespace A262530.P9101656422932919870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103921 (n + 3) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A262530.P9101656422932919870

namespace A262530

/-- `A003056(∑[A103921(n+3)+n])` -/
def P9101656422932919870.Spec : Prop :=
  ∀ n, P9101656422932919870.a n = A262530 (n + 1)

end A262530

/-! ## A262530.P2702226480493759416

`A003056(A117804(n+1)+A000217(n))`
-/

namespace A262530.P2702226480493759416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A117804 (n + 1) + A000217 n).toNat

end

end A262530.P2702226480493759416

namespace A262530

/-- `A003056(A117804(n+1)+A000217(n))` -/
def P2702226480493759416.Spec : Prop :=
  ∀ n, P2702226480493759416.a n = A262530 (n + 1)

end A262530

/-! ## A262530.P4412230607222094635

`A178489(A100719(3*n+5))+n`
-/

namespace A262530.P4412230607222094635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178489 (A100719 (3 * n + 5)).toNat + (n : ℤ)

end

end A262530.P4412230607222094635

namespace A262530

/-- `A178489(A100719(3*n+5))+n` -/
def P4412230607222094635.Spec : Prop :=
  ∀ n, P4412230607222094635.a n = A262530 (n + 1)

end A262530

/-! ## A262530.P8121506977314277519

`A055642(A358477(n+4))+n`
-/

namespace A262530.P8121506977314277519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A358477 (n + 4)).toNat + (n : ℤ)

end

end A262530.P8121506977314277519

namespace A262530

/-- `A055642(A358477(n+4))+n` -/
def P8121506977314277519.Spec : Prop :=
  ∀ n, P8121506977314277519.a n = A262530 (n + 1)

end A262530

/-! ## A262530.P1314336358194451906

`round(n/(A059496(n+2)+1)+n)+1`
-/

namespace A262530.P1314336358194451906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℚ) / (A059496 (n + 2) + 1 : ℚ) + (n : ℚ)) + 1

end

end A262530.P1314336358194451906

namespace A262530

/-- `round(n/(A059496(n+2)+1)+n)+1` -/
def P1314336358194451906.Spec : Prop :=
  ∀ n, P1314336358194451906.a n = A262530 (n + 1)

end A262530

/-! ## A262530.P7437001852148315391

`A196933(A282290(n))+n`
-/

namespace A262530.P7437001852148315391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196933 (A282290 n).toNat + (n : ℤ)

end

end A262530.P7437001852148315391

namespace A262530

/-- `A196933(A282290(n))+n` -/
def P7437001852148315391.Spec : Prop :=
  ∀ n, P7437001852148315391.a n = A262530 (n + 1)

end A262530

/-! ## A262530.P718850884425435824

`A078572(A220063(n+4))+n`
-/

namespace A262530.P718850884425435824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078572 (A220063 (n + 4)).toNat + (n : ℤ)

end

end A262530.P718850884425435824

namespace A262530

/-- `A078572(A220063(n+4))+n` -/
def P718850884425435824.Spec : Prop :=
  ∀ n, P718850884425435824.a n = A262530 (n + 1)

end A262530

/-!
# A262534: 

The programs for A262534, there is no canonical definition to state claims against.
-/

/-! ## A262534.P6843891194507099585

`A000215(n)+char[6]`
-/

namespace A262534.P6843891194507099585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000215 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A262534.P6843891194507099585

/-!
# A262537: Bisection of A262310.

The programs for A262537, there is no canonical definition to state claims against.
-/

/-! ## A262537.P13943911912889399187

`A286354(A062728(2*n))`
-/

namespace A262537.P13943911912889399187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286354 (A062728 (2 * n)).toNat

end

end A262537.P13943911912889399187

/-! ## A262537.P14498988280348054374

`A286354(A045946(n)+n)`
-/

namespace A262537.P14498988280348054374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286354 (A045946 n + (n : ℤ)).toNat

end

end A262537.P14498988280348054374

/-! ## A262537.P3457559041446169995

`A262310(2*n)`
-/

namespace A262537.P3457559041446169995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262310 (2 * n)

end

end A262537.P3457559041446169995

/-! ## A262537.P12453125175205623150

`A262310(A005843(n))+char[16]`
-/

namespace A262537.P12453125175205623150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262310 (A005843 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A262537.P12453125175205623150

/-! ## A262537.P11124485043419407347

`A262310(record[A014681(n)])+char[16]`
-/

namespace A262537.P11124485043419407347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262310 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A262537.P11124485043419407347

/-!
# A262538: Bisection of A262310.

The programs for A262538, there is no canonical definition to state claims against.
-/

/-! ## A262538.P6582104597613423208

`A286354(A062728(2*n+1))`
-/

namespace A262538.P6582104597613423208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286354 (A062728 (2 * n + 1)).toNat

end

end A262538.P6582104597613423208

/-! ## A262538.P10339571992217773420

`A286354(A001105(3*n+2)+n)`
-/

namespace A262538.P10339571992217773420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286354 (A001105 (3 * n + 2) + (n : ℤ)).toNat

end

end A262538.P10339571992217773420

/-! ## A262538.P9399071167834768798

`A262310(Δ[n²])`
-/

namespace A262538.P9399071167834768798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262310 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A262538.P9399071167834768798

/-! ## A262538.P7046516302209476837

`A262310(2*n+1)+char[15]`
-/

namespace A262538.P7046516302209476837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262310 (2 * n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A262538.P7046516302209476837

/-! ## A262538.P13785959542951420524

`A007318(∑[n])*A262310(n+1+n)`
-/

namespace A262538.P13785959542951420524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A262310 (n + 1 + n)

end

end A262538.P13785959542951420524

/-!
# A262539: a(n) = coefficient of x^n in the expansion of Product_{k>=1} (1-x^k)^(3*n).

The programs for A262539, there is no canonical definition to state claims against.
-/

/-! ## A262539.P1541773236873955844

`A286354(A139276(n))`
-/

namespace A262539.P1541773236873955844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286354 (A139276 n).toNat

end

end A262539.P1541773236873955844

/-! ## A262539.P9669985058327322004

`A286354(A033585(n)+n)`
-/

namespace A262539.P9669985058327322004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286354 (A033585 n + (n : ℤ)).toNat

end

end A262539.P9669985058327322004

/-! ## A262539.P10731352426952921608

`A286354(A033586(n)-n)`
-/

namespace A262539.P10731352426952921608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286354 (A033586 n - (n : ℤ)).toNat

end

end A262539.P10731352426952921608

/-! ## A262539.P9305136536759948578

`A286354(n*A017101(n))`
-/

namespace A262539.P9305136536759948578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286354 ((n : ℤ) * A017101 n).toNat

end

end A262539.P9305136536759948578

/-! ## A262539.P10156545522887114594

`A286354(A102083(n)-(n+1))`
-/

namespace A262539.P10156545522887114594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286354 (A102083 n - (n + 1 : ℤ)).toNat

end

end A262539.P10156545522887114594

/-!
# A262540: Bisection of A262539.

The programs for A262540, there is no canonical definition to state claims against.
-/

/-! ## A262540.P16165938347684128380

`A262539(2*n)`
-/

namespace A262540.P16165938347684128380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262539 (2 * n)

end

end A262540.P16165938347684128380

/-! ## A262540.P6540418971685481498

`or(A000007(n), A262539(A005843(n)))`
-/

namespace A262540.P6540418971685481498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A262539 (A005843 n).toNat)

end

end A262540.P6540418971685481498

/-! ## A262540.P1724455969238864829

`A286354(A139276(2*n))`
-/

namespace A262540.P1724455969238864829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286354 (A139276 (2 * n)).toNat

end

end A262540.P1724455969238864829

/-!
# A262541: Bisection of A262539.

The programs for A262541, there is no canonical definition to state claims against.
-/

/-! ## A262541.P14355623832026770241

`A262539(Δ[n²])`
-/

namespace A262541.P14355623832026770241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262539 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A262541.P14355623832026770241

/-! ## A262541.P6768133457708026899

`2*A262539(2*n+1)-A262539(2*n+1)`
-/

namespace A262541.P6768133457708026899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A262539 (2 * n + 1) - A262539 (2 * n + 1)

end

end A262541.P6768133457708026899

/-! ## A262541.P15606862856463945272

`or(A000007(n), A262539(A005408(n)))`
-/

namespace A262541.P15606862856463945272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A262539 (A005408 n).toNat)

end

end A262541.P15606862856463945272

/-! ## A262541.P8428106878152327542

`A262539(A005408(n))+A000007(n+1)`
-/

namespace A262541.P8428106878152327542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262539 (A005408 n).toNat + A000007 (n + 1)

end

end A262541.P8428106878152327542

/-! ## A262541.P14441297519375991601

`A286354(A139276(Δ[n²]))`
-/

namespace A262541.P14441297519375991601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286354 (A139276 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A262541.P14441297519375991601

/-!
# A262543: Number of rooted asymmetrical polyenoids of type U_n* having n edges.

The programs for A262543, the canonical program `A262543.P13500433892424337736` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A262543 has offset 1).

The definition of A262543 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A262543.P12228576158475540643

`(4-6/(n+1))*a(n-1)` with `a(0)=0, a(1)=2`
-/

namespace A262543.P12228576158475540643
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 2] fun n a =>
  (4 - 6 / (n + 1 : ℚ)) * a (n - 1)

end

end A262543.P12228576158475540643

namespace A262543

/-- `(4-6/(n+1))*a(n-1)` -/
def P12228576158475540643.Spec : Prop :=
  ∀ n, P12228576158475540643.a n = (A262543 (n + 1) : ℚ)

end A262543

/-! ## A262543.P6399776783765225558

`record[(4-6/n)*a(n-1)]` with `a(0)=0, a(1)=-1, a(2)=2`
-/

namespace A262543.P6399776783765225558
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [0, -1, 2] fun n f1 =>
  (4 - 6 / (n : ℚ)) * f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262543.P6399776783765225558

namespace A262543

/-- `record[(4-6/n)*a(n-1)]` -/
def P6399776783765225558.Spec : Prop :=
  ∀ n, P6399776783765225558.a n = (A262543 (n + 1) : ℚ)

end A262543

/-! ## A262543.P4465347603487407497

`and(-2, A068875(n))`
-/

namespace A262543.P4465347603487407497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) (A068875 n)

end

end A262543.P4465347603487407497

namespace A262543

/-- `and(-2, A068875(n))` -/
def P4465347603487407497.Spec : Prop :=
  ∀ n, P4465347603487407497.a n = A262543 (n + 1)

end A262543

/-! ## A262543.P13500433892424337736

`2*(A141351(n)-1)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A262543

/-- `2*(A141351(n)-1)` -/
def P13500433892424337736.Spec : Prop :=
  ∀ n, P13500433892424337736.a n = A262543 (n + 1)

theorem P13500433892424337736.correct : P13500433892424337736.Spec := by
  intro n
  simp only [A262543, Nat.add_sub_cancel]

end A262543

/-! ## A262543.P2389984649986943163

`record[abs(A104624(n+3))]`
-/

namespace A262543.P2389984649986943163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A104624 (n + 3)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262543.P2389984649986943163

namespace A262543

/-- `record[abs(A104624(n+3))]` -/
def P2389984649986943163.Spec : Prop :=
  ∀ n, P2389984649986943163.a n = A262543 (n + 1)

end A262543

/-! ## A262543.P5611697849503437678

`record[abs(A182122(n+3))]`
-/

namespace A262543.P5611697849503437678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A182122 (n + 3)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262543.P5611697849503437678

namespace A262543

/-- `record[abs(A182122(n+3))]` -/
def P5611697849503437678.Spec : Prop :=
  ∀ n, P5611697849503437678.a n = A262543 (n + 1)

end A262543

/-! ## A262543.P5706134926822799858

`2*∑{d}[n, A002996(#)]`
-/

namespace A262543.P5706134926822799858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ d ∈ Nat.divisors (f1 n), A002996 d)

end

end A262543.P5706134926822799858

namespace A262543

/-- `2*∑{d}[n, A002996(#)]` -/
def P5706134926822799858.Spec : Prop :=
  ∀ n, P5706134926822799858.a n = A262543 (n + 1)

end A262543

/-! ## A262543.P2076532087934598199

`record[Δ[A182122(n+1)]]`
-/

namespace A262543.P2076532087934598199
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182122 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262543.P2076532087934598199

namespace A262543

/-- `record[Δ[A182122(n+1)]]` -/
def P2076532087934598199.Spec : Prop :=
  ∀ n, P2076532087934598199.a n = A262543 (n + 1)

end A262543

/-! ## A262543.P16616462820350223086

`record[Δ[2*A090192(n)]]`
-/

namespace A262543.P16616462820350223086
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A090192 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262543.P16616462820350223086

namespace A262543

/-- `record[Δ[2*A090192(n)]]` -/
def P16616462820350223086.Spec : Prop :=
  ∀ n, P16616462820350223086.a n = A262543 (n + 1)

end A262543

/-! ## A262543.P5677690255590733250

`record[Δ[2*A097331(n)]]`
-/

namespace A262543.P5677690255590733250
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A097331 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262543.P5677690255590733250

namespace A262543

/-- `record[Δ[2*A097331(n)]]` -/
def P5677690255590733250.Spec : Prop :=
  ∀ n, P5677690255590733250.a n = A262543 (n + 1)

end A262543

/-! ## A262543.P13224969259476132183

`record[Δ[2*A329687(n)]]`
-/

namespace A262543.P13224969259476132183
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A329687 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262543.P13224969259476132183

namespace A262543

/-- `record[Δ[2*A329687(n)]]` -/
def P13224969259476132183.Spec : Prop :=
  ∀ n, P13224969259476132183.a n = A262543 (n + 1)

end A262543

/-! ## A262543.P16097671495947777484

`record[Δ[2*A329696(n)]]`
-/

namespace A262543.P16097671495947777484
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A329696 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262543.P16097671495947777484

namespace A262543

/-- `record[Δ[2*A329696(n)]]` -/
def P16097671495947777484.Spec : Prop :=
  ∀ n, P16097671495947777484.a n = A262543 (n + 1)

end A262543

/-! ## A262543.P16891648344436672193

`abs(2*A106181(2*n))`
-/

namespace A262543.P16891648344436672193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * A106181 (2 * n)|

end

end A262543.P16891648344436672193

namespace A262543

/-- `abs(2*A106181(2*n))` -/
def P16891648344436672193.Spec : Prop :=
  ∀ n, P16891648344436672193.a n = A262543 (n + 1)

end A262543

/-! ## A262543.P1422593306784398726

`record[2*A126120(n+1)]`
-/

namespace A262543.P1422593306784398726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A126120 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262543.P1422593306784398726

namespace A262543

/-- `record[2*A126120(n+1)]` -/
def P1422593306784398726.Spec : Prop :=
  ∀ n, P1422593306784398726.a n = A262543 (n + 1)

end A262543

/-! ## A262543.P13369633061244214342

`2*(A329696(2*n)-1)`
-/

namespace A262543.P13369633061244214342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A329696 (2 * n) - 1)

end

end A262543.P13369633061244214342

namespace A262543

/-- `2*(A329696(2*n)-1)` -/
def P13369633061244214342.Spec : Prop :=
  ∀ n, P13369633061244214342.a n = A262543 (n + 1)

end A262543

/-! ## A262543.P14269083346492854565

`2%(n+2)*A000108(n)`
-/

namespace A262543.P14269083346492854565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 % (n + 2) : ℕ) : ℤ) * A000108 n

end

end A262543.P14269083346492854565

namespace A262543

/-- `2%(n+2)*A000108(n)` -/
def P14269083346492854565.Spec : Prop :=
  ∀ n, P14269083346492854565.a n = A262543 (n + 1)

end A262543

/-! ## A262543.P336886839922622055

`abs(Δ[2*A156906(2*n)])`
-/

namespace A262543.P336886839922622055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A156906 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A262543.P336886839922622055

namespace A262543

/-- `abs(Δ[2*A156906(2*n)])` -/
def P336886839922622055.Spec : Prop :=
  ∀ n, P336886839922622055.a n = A262543 (n + 1)

end A262543

/-! ## A262543.P2002501989691982268

`2*(A192480(n+1)-(n+1))`
-/

namespace A262543.P2002501989691982268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A192480 (n + 1) - (n + 1 : ℤ))

end

end A262543.P2002501989691982268

namespace A262543

/-- `2*(A192480(n+1)-(n+1))` -/
def P2002501989691982268.Spec : Prop :=
  ∀ n, P2002501989691982268.a n = A262543 (n + 1)

end A262543

/-! ## A262543.P6889237276657309667

`A329686(A019442(n+2))`
-/

namespace A262543.P6889237276657309667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329686 (A019442 (n + 2)).toNat

end

end A262543.P6889237276657309667

namespace A262543

/-- `A329686(A019442(n+2))` -/
def P6889237276657309667.Spec : Prop :=
  ∀ n, P6889237276657309667.a n = A262543 (n + 1)

end A262543

/-! ## A262543.P10310088529945645455

`2*A028303(A004277(n))`
-/

namespace A262543.P10310088529945645455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028303 (A004277 n).toNat

end

end A262543.P10310088529945645455

namespace A262543

/-- `2*A028303(A004277(n))` -/
def P10310088529945645455.Spec : Prop :=
  ∀ n, P10310088529945645455.a n = A262543 (n + 1)

end A262543

/-!
# A262544: Records in A261422.

The programs for A262544, there is no canonical definition to state claims against.
-/

/-! ## A262544.P12443921990194030266

`record[A261422(n)]`
-/

namespace A262544.P12443921990194030266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261422 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262544.P12443921990194030266

/-! ## A262544.P17645404384788632619

`A261422(A262545(n+1))`
-/

namespace A262544.P17645404384788632619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261422 (A262545 (n + 1)).toNat

end

end A262544.P17645404384788632619

/-! ## A262544.P4536427930602035563

`A261422(n)+A173068(A288620(n+1))`
-/

namespace A262544.P4536427930602035563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261422 n + A173068 (A288620 (n + 1)).toNat

end

end A262544.P4536427930602035563

/-!
# A262545: Where records occur in A261422.

The programs for A262545, there is no canonical definition to state claims against.
-/

/-! ## A262545.P11585235326425926294

`xor(n, A357136(A168287(n)))`
-/

namespace A262545.P11585235326425926294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A357136 (A168287 n).toNat)

end

end A262545.P11585235326425926294

/-! ## A262545.P18073255410189988197

`A057918(A047672(n+1))+n`
-/

namespace A262545.P18073255410189988197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057918 (A047672 (n + 1)).toNat + (n : ℤ)

end

end A262545.P18073255410189988197

/-! ## A262545.P17873899367352463293

`A014378(A216084(n+1))+n`
-/

namespace A262545.P17873899367352463293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014378 (A216084 (n + 1)).toNat + (n : ℤ)

end

end A262545.P17873899367352463293

/-! ## A262545.P6692616622003892258

`A184983(A212359(n+1))+n`
-/

namespace A262545.P6692616622003892258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184983 (A212359 (n + 1)).toNat + (n : ℤ)

end

end A262545.P6692616622003892258

/-! ## A262545.P12261588860395471838

`A275494(A221388(n+1))+n`
-/

namespace A262545.P12261588860395471838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275494 (A221388 (n + 1)).toNat + (n : ℤ)

end

end A262545.P12261588860395471838

/-!
# A262546: Number of Post functions of n variables which fail to satisfy Post's second condition.

The programs for A262546, there is no canonical definition to state claims against.
-/

/-! ## A262546.P2595685590002832488

`34*a(n-1)` with `a(0)=1, a(1)=1, a(2)=4, a(3)=16`
-/

namespace A262546.P2595685590002832488
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 4, 16] fun n a =>
  34 * a (n - 1)

end

end A262546.P2595685590002832488

/-!
# A262547: Nearest integer to 2^(2^n)/(4*n!).

The programs for A262547, there is no canonical definition to state claims against.
-/

/-! ## A262547.P15143541574266323322

`round(A058891(n+1)²/A319211(n+1))`
-/

namespace A262547.P15143541574266323322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A058891 (n + 1) ^ 2 : ℚ) / (A319211 (n + 1) : ℚ))

end

end A262547.P15143541574266323322

/-!
# A262548: Nearest integer to 2^(2^(n-1))/(2*n!).

The programs for A262548, there is no canonical definition to state claims against.
-/

/-! ## A262548.P17651769988329524364

`round(A058891(n+1)/A000142(n+1))`
-/

namespace A262548.P17651769988329524364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A058891 (n + 1) : ℚ) / (A000142 (n + 1) : ℚ))

end

end A262548.P17651769988329524364

/-! ## A262548.P3261812623003402192

`round(A058891(n+1)/A319211(n+1))`
-/

namespace A262548.P3261812623003402192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A058891 (n + 1) : ℚ) / (A319211 (n + 1) : ℚ))

end

end A262548.P3261812623003402192

/-!
# A262549: Read A006530 digit-by-digit.

The programs for A262549, there is no canonical definition to state claims against.
-/

/-! ## A262549.P17509770755041361847

`A342257(A077168(n))%A074320(2*n+1)`
-/

namespace A262549.P17509770755041361847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A342257 (A077168 n).toNat) (A074320 (2 * n + 1))

end

end A262549.P17509770755041361847

/-! ## A262549.P14967981785288160553

`A006530(gcd(A254933(3*n+5), A254948(n+1)))`
-/

namespace A262549.P14967981785288160553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.gcd (A254933 (3 * n + 5)) (A254948 (n + 1)))

end

end A262549.P14967981785288160553

/-! ## A262549.P4587518640161274516

`A286516(n+1)%A286508(A286515(n))`
-/

namespace A262549.P4587518640161274516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A286516 (n + 1)) (A286508 (A286515 n).toNat)

end

end A262549.P4587518640161274516

/-! ## A262549.P17351444112899010300

`A007947(A217434(n+1)%A134039(n+1))`
-/

namespace A262549.P17351444112899010300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (Int.tmod (A217434 (n + 1)) (A134039 (n + 1))).toNat

end

end A262549.P17351444112899010300

/-! ## A262549.P3621180629840159287

`A286516(A390761(n+1))`
-/

namespace A262549.P3621180629840159287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286516 (A390761 (n + 1)).toNat

end

end A262549.P3621180629840159287

/-!
# A262550: Read A000010 digit-by-digit.

The programs for A262550, there is no canonical definition to state claims against.
-/

/-! ## A262550.P3930744283086089453

`((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])%A053737(A180672(n+1))`
-/

namespace A262550.P3930744283086089453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ))) (A053737 (A180672 (n + 1)).toNat)

end

end A262550.P3930744283086089453

/-! ## A262550.P11027428284850294945

`A000010(n+1)%A242030(A053707(n+2))`
-/

namespace A262550.P11027428284850294945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (n + 1)) (A242030 (A053707 (n + 2)).toNat)

end

end A262550.P11027428284850294945

/-! ## A262550.P5731288932174206662

`A156836(∑[comp[11*n]])`
-/

namespace A262550.P5731288932174206662
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156836 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A262550.P5731288932174206662

/-! ## A262550.P15590871171734651495

`A096800(A033442(n+1))`
-/

namespace A262550.P15590871171734651495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096800 (A033442 (n + 1)).toNat

end

end A262550.P15590871171734651495

/-!
# A262553: Square array read by antidiagonals: number of ways of making change when coins have values 1,2,4,8,16,...

The programs for A262553, there is no canonical definition to state claims against.
-/

/-! ## A262553.P17078553623452614470

`A000120(lcm(A250484(n), A293960(n)))`
-/

namespace A262553.P17078553623452614470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.lcm (A250484 n) (A293960 n))

end

end A262553.P17078553623452614470

/-! ## A262553.P11048204977440632420

`A160385(or(A183134(n), A267479(n)))`
-/

namespace A262553.P11048204977440632420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160385 (Int.lor (A183134 n) (A267479 n)).toNat

end

end A262553.P11048204977440632420

/-! ## A262553.P10951835931938122830

`A333224(or(A080934(n), A250484(n)))`
-/

namespace A262553.P10951835931938122830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333224 (Int.lor (A080934 n) (A250484 n)).toNat

end

end A262553.P10951835931938122830

/-! ## A262553.P1958468083298018769

`A160385(or(A267479(n), A294250(n)))`
-/

namespace A262553.P1958468083298018769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160385 (Int.lor (A267479 n) (A294250 n)).toNat

end

end A262553.P1958468083298018769

/-! ## A262553.P8792267853799690827

`A333224(or(A143841(n), A250484(n)))`
-/

namespace A262553.P8792267853799690827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333224 (Int.lor (A143841 n) (A250484 n)).toNat

end

end A262553.P8792267853799690827

/-!
# A262556: Even numbers that are not the sum of two binary palindromes (written in base 2).

The programs for A262556, there is no canonical definition to state claims against.
-/

/-! ## A262556.P16963251019523128381

`10*A007088(A241491(n+1))`
-/

namespace A262556.P16963251019523128381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A007088 (A241491 (n + 1)).toNat

end

end A262556.P16963251019523128381

/-! ## A262556.P17202072988410733129

`A007088(A261678(n+1))`
-/

namespace A262556.P17202072988410733129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A261678 (n + 1)).toNat

end

end A262556.P17202072988410733129

/-! ## A262556.P1887767092614418249

`A099820(A241491(n+1))`
-/

namespace A262556.P1887767092614418249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099820 (A241491 (n + 1)).toNat

end

end A262556.P1887767092614418249

/-! ## A262556.P6580985880983921539

`A099820(A261678(n+1)/2)`
-/

namespace A262556.P6580985880983921539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099820 (SequenceMachineLib.roundAway ((A261678 (n + 1) : ℚ) / 2)).toNat

end

end A262556.P6580985880983921539

/-! ## A262556.P14504200477121628588

`A007088(A005408(A241491(n+1))-1)`
-/

namespace A262556.P14504200477121628588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A005408 (A241491 (n + 1)).toNat - 1).toNat

end

end A262556.P14504200477121628588

/-! ## A262556.P6380993572237928162

`A185544(2*A261678(n+1))`
-/

namespace A262556.P6380993572237928162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A261678 (n + 1)).toNat

end

end A262556.P6380993572237928162

/-! ## A262556.P6217909115062336112

`A185544(4*A241491(n+1))`
-/

namespace A262556.P6217909115062336112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (4 * A241491 (n + 1)).toNat

end

end A262556.P6217909115062336112

/-!
# A262557: Numbers with digits in strictly decreasing order, sorted lexicographically.

The programs for A262557, there is no canonical definition to state claims against.
-/

/-! ## A262557.P14977639647291287577

`A009995(A263328(n+1))`
-/

namespace A262557.P14977639647291287577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009995 (A263328 (n + 1)).toNat

end

end A262557.P14977639647291287577

/-! ## A262557.P10080176323711910092

`A004186(A086068(n+1))`
-/

namespace A262557.P10080176323711910092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004186 (A086068 (n + 1)).toNat

end

end A262557.P10080176323711910092

/-! ## A262557.P5130040745611529127

`A333659(2*A086068(n+1))/2`
-/

namespace A262557.P5130040745611529127
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A333659 (2 * A086068 (n + 1)).toNat : ℚ) / 2

end

end A262557.P5130040745611529127

/-! ## A262557.P6144359701867206940

`A333659(lcm((-1)^n, A086068(n+1)))`
-/

namespace A262557.P6144359701867206940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333659 (Int.lcm ((-1) ^ n) (A086068 (n + 1)))

end

end A262557.P6144359701867206940

/-! ## A262557.P7907098423886581927

`A227362(A086068(n+1)%A198277(n))`
-/

namespace A262557.P7907098423886581927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227362 (Int.tmod (A086068 (n + 1)) (A198277 n)).toNat

end

end A262557.P7907098423886581927

/-!
# A262558: Number of palindromic primes <= n.

The programs for A262558, there is no canonical definition to state claims against.
-/

/-! ## A262558.P3269242818615178267

`a(n-1)+floor(n/A002385(a(n-1)+1))` with `a(0)=0`
-/

namespace A262558.P3269242818615178267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + ⌊(n : ℚ) / (A002385 (a (n - 1) + 1).toNat : ℚ)⌋

end

end A262558.P3269242818615178267

/-! ## A262558.P7022001675867634798

`∑[(n/A083982(n))^A318788(n+3)]`
-/

namespace A262558.P7022001675867634798
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℚ) / (A083982 n : ℚ)) ^ (A318788 (n + 3) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262558.P7022001675867634798

/-! ## A262558.P5741595407091481882

`∑[char[A082625(n+1)]]`
-/

namespace A262558.P5741595407091481882
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082625 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262558.P5741595407091481882

/-! ## A262558.P16392862383383024952

`A102676(A396686(n+1))`
-/

namespace A262558.P16392862383383024952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102676 (A396686 (n + 1)).toNat

end

end A262558.P16392862383383024952

/-! ## A262558.P12221386009808110430

`A102676(A070939((2*n+1)*(n+2)))`
-/

namespace A262558.P12221386009808110430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102676 (A070939 ((2 * n + 1) * (n + 2))).toNat

end

end A262558.P12221386009808110430

/-!
# A262564: A politician's answer to the question "What comes next after 2,3,5?".

The programs for A262564, the canonical program `A262564.P368300992933559048` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A262564 has offset 1).

The definition of A262564 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A262564.P368300992933559048

`char[2]-char[3]+2+n`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A262564

/-- `char[2]-char[3]+2+n` -/
def P368300992933559048.Spec : Prop :=
  ∀ n, P368300992933559048.a n = A262564 (n + 1)

theorem P368300992933559048.correct : P368300992933559048.Spec := by
  intro n
  simp only [A262564, Nat.add_sub_cancel]

end A262564

/-!
# A262565: A weaver's answer to the question "What comes next after 2,3,5?".

The programs for A262565, the canonical program `A262565.P7879992517945650810` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A262565 has offset 1).

The definition of A262565 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A262565.P7879992517945650810

`ceil(9/a(n-3))` with `a(0)=2, a(1)=3, a(2)=5`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A262565

/-- `ceil(9/a(n-3))` -/
def P7879992517945650810.Spec : Prop :=
  ∀ n, P7879992517945650810.a n = A262565 (n + 1)

theorem P7879992517945650810.correct : P7879992517945650810.Spec := by
  intro n
  simp only [A262565, Nat.add_sub_cancel]

end A262565

/-!
# A262567: a(n) = A002703(n)/2.

The programs for A262567, there is no canonical definition to state claims against.
-/

/-! ## A262567.P15639947660595083889

`A002703(n+3)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A262567.P15639947660595083889
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002703 (n + 3) : ℚ) / 2

end

end A262567.P15639947660595083889

/-! ## A262567.P17695983981706304645

`A262569(n+3)-1`
-/

namespace A262567.P17695983981706304645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262569 (n + 3) - 1

end

end A262567.P17695983981706304645

/-! ## A262567.P4448860299440457984

`A262568(n+3)/2-1`
-/

namespace A262567.P4448860299440457984
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262568 (n + 3) : ℚ) / 2 - 1

end

end A262567.P4448860299440457984

/-! ## A262567.P13737818181961807181

`A262568(n+3)%(A262569(n+3)+1)`
-/

namespace A262567.P13737818181961807181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A262568 (n + 3)) (A262569 (n + 3) + 1)

end

end A262567.P13737818181961807181

/-! ## A262567.P11541689179538861136

`A262593(gcd(n, n+1))+A262569(n+3)`
-/

namespace A262567.P11541689179538861136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262593 (Nat.gcd n (n + 1)) + A262569 (n + 3)

end

end A262567.P11541689179538861136

/-! ## A262567.P8932202399189952936

`A132971(A034444(n+1))+A262569(n+3)%A020729(n)`
-/

namespace A262567.P8932202399189952936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132971 (A034444 (n + 1)).toNat + Int.tmod (A262569 (n + 3)) (A020729 n)

end

end A262567.P8932202399189952936

/-! ## A262567.P12965648452309002011

`(A262569(n+3)+A008683(A020483(n)))%A262569(n+3)`
-/

namespace A262567.P12965648452309002011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A262569 (n + 3) + A008683 (A020483 n).toNat) (A262569 (n + 3))

end

end A262567.P12965648452309002011

/-! ## A262567.P16623388936879005715

`(A262569(n+3)+A008683(A020483(n)))%A150437(n)`
-/

namespace A262567.P16623388936879005715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A262569 (n + 3) + A008683 (A020483 n).toNat) (A150437 n)

end

end A262567.P16623388936879005715

/-!
# A262568: a(n) = A002703(n) + 2.

The programs for A262568, there is no canonical definition to state claims against.
-/

/-! ## A262568.P1546851769828455237

`A002703(n+3)+2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A262568.P1546851769828455237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002703 (n + 3) + 2

end

end A262568.P1546851769828455237

/-! ## A262568.P11222385034043184462

`2*A262569(n+3)`
-/

namespace A262568.P11222385034043184462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A262569 (n + 3)

end

end A262568.P11222385034043184462

/-! ## A262568.P10701225972935413093

`A262569(A262564(n+2))+A262569(n+3)`
-/

namespace A262568.P10701225972935413093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262569 (A262564 (n + 2)).toNat + A262569 (n + 3)

end

end A262568.P10701225972935413093

/-! ## A262568.P9820246610879324275

`2*(A262567(n+3)+1)`
-/

namespace A262568.P9820246610879324275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A262567 (n + 3) + 1)

end

end A262568.P9820246610879324275

/-! ## A262568.P1043204712497464094

`A262567(n+3)+A262569(n+3)+1`
-/

namespace A262568.P1043204712497464094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262567 (n + 3) + (A262569 (n + 3) + 1)

end

end A262568.P1043204712497464094

/-! ## A262568.P7714671505400477420

`A262569(n+3)+A262569(n+3)%A020729(n)`
-/

namespace A262568.P7714671505400477420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262569 (n + 3) + Int.tmod (A262569 (n + 3)) (A020729 n)

end

end A262568.P7714671505400477420

/-!
# A262569: a(n) = (A002703(n)+2)/2.

The programs for A262569, there is no canonical definition to state claims against.
-/

/-! ## A262569.P7840927271223670938

`A262568(n+3)/2`
-/

namespace A262569.P7840927271223670938
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262568 (n + 3) : ℚ) / 2

end

end A262569.P7840927271223670938

/-! ## A262569.P11173273567976686698

`(A002703(n+3)+2)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A262569.P11173273567976686698
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002703 (n + 3) + 2 : ℚ) / 2

end

end A262569.P11173273567976686698

/-! ## A262569.P8305744975240312039

`A262567(n+3)+1`
-/

namespace A262569.P8305744975240312039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262567 (n + 3) + 1

end

end A262569.P8305744975240312039

/-! ## A262569.P16025864385968891909

`C(A262568(n+3), A002703(n+3))%A262568(n+3)`
-/

namespace A262569.P16025864385968891909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Nat.choose (A262568 (n + 3)).toNat (A002703 (n + 3)).toNat : ℤ) (A262568 (n + 3))

end

end A262569.P16025864385968891909

/-! ## A262569.P11572058671854229408

`A014682(A262568(n+3))`
-/

namespace A262569.P11572058671854229408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A262568 (n + 3)).toNat

end

end A262569.P11572058671854229408

/-!
# A262570: a(n) = A002704(n)/2.

The programs for A262570, there is no canonical definition to state claims against.
-/

/-! ## A262570.P4037953165284524341

`A002704(n)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A262570.P4037953165284524341
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002704 n : ℚ) / 2

end

end A262570.P4037953165284524341

/-! ## A262570.P6689964782004933572

`A262583(n)/2+1`
-/

namespace A262570.P6689964782004933572
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262583 n : ℚ) / 2 + 1

end

end A262570.P6689964782004933572

/-! ## A262570.P17526302887944804986

`A262584(n)+1`
-/

namespace A262570.P17526302887944804986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262584 n + 1

end

end A262570.P17526302887944804986

/-! ## A262570.P12433082727546408796

`1-(A262584(n)-A262583(n))`
-/

namespace A262570.P12433082727546408796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A262584 n - A262583 n)

end

end A262570.P12433082727546408796

/-! ## A262570.P13086845046373741946

`A005408(n)-(2*n-A262584(n))`
-/

namespace A262570.P13086845046373741946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n - ((2 * n : ℤ) - A262584 n)

end

end A262570.P13086845046373741946

/-!
# A262571: Concatenation of the numbers from 2 to n.

The programs for A262571, there is no canonical definition to state claims against.
-/

/-! ## A262571.P13847820624422291390

`A081539(C(n+3, 2))`
-/

namespace A262571.P13847820624422291390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081539 (Nat.choose (n + 3) 2)

end

end A262571.P13847820624422291390

/-! ## A262571.P3999029477081397526

`A081539(A253145(n+1))`
-/

namespace A262571.P3999029477081397526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081539 (A253145 (n + 1)).toNat

end

end A262571.P3999029477081397526

/-! ## A262571.P12896874225752488868

`A213059(2^(n+1)+n+1)`
-/

namespace A262571.P12896874225752488868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213059 (2 ^ (n + 1) + (n + 1))

end

end A262571.P12896874225752488868

/-! ## A262571.P15176893506857257888

`A360287(record[2^n-(a(n-1)+1)])` with `a(0)=3, a(1)=0`
-/

namespace A262571.P15176893506857257888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 0] fun n f1 =>
  (2 ^ n : ℤ) - (f1 (n - 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360287 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A262571.P15176893506857257888

/-! ## A262571.P13827066388573781448

`A360287(record[2^n-1-a(n-1)])` with `a(0)=3, a(1)=0`
-/

namespace A262571.P13827066388573781448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 0] fun n f1 =>
  (2 ^ n : ℤ) - 1 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360287 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A262571.P13827066388573781448

/-!
# A262572: Concatenation of the numbers from 1 to n but omitting 2.

The programs for A262572, there is no canonical definition to state claims against.
-/

/-! ## A262572.P14492476162669424

`A081539(∑[n+2])`
-/

namespace A262572.P14492476162669424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081539 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A262572.P14492476162669424

/-! ## A262572.P5005545243544605749

`A213059(A199969(n+2)+A000225(n+1))`
-/

namespace A262572.P5005545243544605749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213059 (A199969 (n + 2) + A000225 (n + 1)).toNat

end

end A262572.P5005545243544605749

/-! ## A262572.P7910500383821948011

`A048794(2^(n+2)-3)`
-/

namespace A262572.P7910500383821948011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048794 (2 ^ (n + 2) - 3)

end

end A262572.P7910500383821948011

/-! ## A262572.P16049249101970799604

`and(-1, A048794(∑[2*a(n-1)]))` with `a(0)=1, a(1)=4`
-/

namespace A262572.P16049249101970799604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A048794 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A262572.P16049249101970799604

/-! ## A262572.P7656114823807687986

`A185264(n)+A048794(∑[2*a(n-1)])` with `a(0)=1, a(1)=4`
-/

namespace A262572.P7656114823807687986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185264 n + A048794 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A262572.P7656114823807687986

/-!
# A262573: Concatenation of the numbers from 1 to n but omitting 3.

The programs for A262573, there is no canonical definition to state claims against.
-/

/-! ## A262573.P3832240391709318360

`A360287(record[2^n-(a(n-1)+1)])` with `a(0)=1, a(1)=1, a(2)=0, a(3)=2`
-/

namespace A262573.P3832240391709318360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 0, 2] fun n f1 =>
  (2 ^ n : ℤ) - (f1 (n - 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360287 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A262573.P3832240391709318360

/-! ## A262573.P10981604119890220935

`A360287(record[2^n-1-a(n-1)])` with `a(0)=1, a(1)=1, a(2)=0, a(3)=2`
-/

namespace A262573.P10981604119890220935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 0, 2] fun n f1 =>
  (2 ^ n : ℤ) - 1 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360287 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A262573.P10981604119890220935

/-! ## A262573.P7543606612268430210

`A048794(∑[2*a(n-1)])` with `a(0)=1, a(1)=2, a(2)=8`
-/

namespace A262573.P7543606612268430210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 8] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048794 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A262573.P7543606612268430210

/-! ## A262573.P12606082776425046219

`A048794(or(1, A131130(n)))`
-/

namespace A262573.P12606082776425046219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048794 (Int.lor 1 (A131130 n)).toNat

end

end A262573.P12606082776425046219

/-! ## A262573.P7041055732051196397

`A048794(A131130(n)+A057427(n))`
-/

namespace A262573.P7041055732051196397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048794 (A131130 n + A057427 n).toNat

end

end A262573.P7041055732051196397

/-!
# A262574: Concatenation of the numbers from 1 to n but omitting 4.

The programs for A262574, there is no canonical definition to state claims against.
-/

/-! ## A262574.P6239750590222082159

`round(n*ratio[n+3])+(10*a(n-1)+1)%A304283(n+1)` with `a(0)=1`
-/

namespace A262574.P6239750590222082159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.roundAway ((n : ℚ) * ((f1 (n + 1) : ℚ) / (f1 n : ℚ))) + Int.tmod (10 * a (n - 1) + 1) (A304283 (n + 1))

end

end A262574.P6239750590222082159

/-!
# A262575: Concatenation of the numbers from 1 to n but omitting 5.

The programs for A262575, there is no canonical definition to state claims against.
-/

/-! ## A262575.P13901676373861793327

`A086068(∑[∏[A028326(n)]])`
-/

namespace A262575.P13901676373861793327
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086068 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A262575.P13901676373861793327

/-!
# A262577: Concatenation of the numbers from 1 to n but omitting 7.

The programs for A262577, there is no canonical definition to state claims against.
-/

/-! ## A262577.P4663154014435581805

`A180649(A001405(n))+A007908(n+1)`
-/

namespace A262577.P4663154014435581805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180649 (A001405 n).toNat + A007908 (n + 1)

end

end A262577.P4663154014435581805

/-! ## A262577.P2629724315529823124

`A174627(A174613(n))+A007908(n+1)`
-/

namespace A262577.P2629724315529823124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174627 (A174613 n).toNat + A007908 (n + 1)

end

end A262577.P2629724315529823124

/-! ## A262577.P1699939980381472441

`A327127(A061886(n))+A007908(n+1)`
-/

namespace A262577.P1699939980381472441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327127 (A061886 n).toNat + A007908 (n + 1)

end

end A262577.P1699939980381472441

/-! ## A262577.P16318238897807943770

`A174627(A174613(n))+A060555(n+1)`
-/

namespace A262577.P16318238897807943770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174627 (A174613 n).toNat + A060555 (n + 1)

end

end A262577.P16318238897807943770

/-!
# A262578: Concatenation of the numbers from 1 to n but omitting 8.

The programs for A262578, there is no canonical definition to state claims against.
-/

/-! ## A262578.P5609984532127284122

`A030299(∑[n!])+char[7]`
-/

namespace A262578.P5609984532127284122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030299 (∑ j ∈ Finset.range (n + 1), f1 j) + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A262578.P5609984532127284122

/-! ## A262578.P16496710989602105898

`A057932(∑[A286831(n)])`
-/

namespace A262578.P16496710989602105898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286831 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057932 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A262578.P16496710989602105898

/-! ## A262578.P3309060880758749430

`A057932(A154701(n+1))`
-/

namespace A262578.P3309060880758749430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057932 (A154701 (n + 1)).toNat

end

end A262578.P3309060880758749430

/-! ## A262578.P13928463084622556350

`A057932(A000005(5^n))`
-/

namespace A262578.P13928463084622556350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057932 (A000005 (5 ^ n)).toNat

end

end A262578.P13928463084622556350

/-!
# A262580: Concatenation of the numbers from 1 to n but omitting 10.

The programs for A262580, there is no canonical definition to state claims against.
-/

/-! ## A262580.P13848447259797834187

`A262581(n+2)-Δ[A007908(n+1)]`
-/

namespace A262580.P13848447259797834187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007908 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262581 (n + 2) - (f1 (n + 1) - f1 n)

end

end A262580.P13848447259797834187

/-! ## A262580.P13518116699275884931

`A007908(n+1)+A262581(n+2)-A007908(n+2)`
-/

namespace A262580.P13518116699275884931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007908 (n + 1) + (A262581 (n + 2) - A007908 (n + 2))

end

end A262580.P13518116699275884931

/-! ## A262580.P3456320827552923103

`A262581(n+1)+A262581(n+2)-A262582(n+2)`
-/

namespace A262580.P3456320827552923103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262581 (n + 1) + (A262581 (n + 2) - A262582 (n + 2))

end

end A262580.P3456320827552923103

/-! ## A262580.P829093334861791765

`A048794(∑[2^A007095(n)])`
-/

namespace A262580.P829093334861791765
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A007095 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048794 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A262580.P829093334861791765

/-! ## A262580.P2330416430172438407

`A262581(n+2)-Δ[A048794(A000079(n+1)-1)]`
-/

namespace A262580.P2330416430172438407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048794 (A000079 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262581 (n + 2) - (f1 (n + 1) - f1 n)

end

end A262580.P2330416430172438407

/-!
# A262581: Concatenation of the numbers from 1 to n but omitting 11.

The programs for A262581, there is no canonical definition to state claims against.
-/

/-! ## A262581.P11489896862796184236

`A262582(n+2)-Δ[A007908(n+1)]`
-/

namespace A262581.P11489896862796184236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007908 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262582 (n + 2) - (f1 (n + 1) - f1 n)

end

end A262581.P11489896862796184236

/-! ## A262581.P7215563849089208995

`A262582(n+2)-Δ[A252043(A117804(n+2)-1)]`
-/

namespace A262581.P7215563849089208995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252043 (A117804 (n + 2) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262582 (n + 2) - (f1 (n + 1) - f1 n)

end

end A262581.P7215563849089208995

/-! ## A262581.P5136608562586293136

`A007908(n+1)+A262582(n+2)-A007908(n+2)`
-/

namespace A262581.P5136608562586293136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007908 (n + 1) + (A262582 (n + 2) - A007908 (n + 2))

end

end A262581.P5136608562586293136

/-! ## A262581.P11922371311768152121

`A262582(n+2)-Δ[A213059(2^n)]`
-/

namespace A262581.P11922371311768152121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213059 (2 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262582 (n + 2) - (f1 (n + 1) - f1 n)

end

end A262581.P11922371311768152121

/-! ## A262581.P15663164682002554564

`A048794(∑[(A059995(n)+1)*2^n])`
-/

namespace A262581.P15663164682002554564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A059995 n + 1) * (2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048794 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A262581.P15663164682002554564

/-!
# A262582: Concatenation of the numbers from 1 to n but omitting 12.

The programs for A262582, there is no canonical definition to state claims against.
-/

/-! ## A262582.P2741724874102250879

`A048794(∑[2^A295235(n+1)])`
-/

namespace A262582.P2741724874102250879
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A295235 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048794 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A262582.P2741724874102250879

/-! ## A262582.P6496716356717357170

`A025468(A022182(n))+A007908(n+1)`
-/

namespace A262582.P6496716356717357170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025468 (A022182 n).toNat + A007908 (n + 1)

end

end A262582.P6496716356717357170

/-! ## A262582.P8972968531813803882

`A174613(A014378(n))+A007908(n+1)`
-/

namespace A262582.P8972968531813803882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174613 (A014378 n).toNat + A007908 (n + 1)

end

end A262582.P8972968531813803882

/-! ## A262582.P5896807745675339033

`A185246(A008631(n))+A007908(n+1)`
-/

namespace A262582.P5896807745675339033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185246 (A008631 n).toNat + A007908 (n + 1)

end

end A262582.P5896807745675339033

/-! ## A262582.P2293070958777856622

`A037911(A157221(n))+A007908(n+1)`
-/

namespace A262582.P2293070958777856622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037911 (A157221 n).toNat + A007908 (n + 1)

end

end A262582.P2293070958777856622

/-!
# A262583: a(n) = A002704(n)-2.

The programs for A262583, there is no canonical definition to state claims against.
-/

/-! ## A262583.P15278859746402385873

`A002704(n)-2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A262583.P15278859746402385873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002704 n - 2

end

end A262583.P15278859746402385873

/-! ## A262583.P4649522068500123809

`2*(A262570(n)-1)`
-/

namespace A262583.P4649522068500123809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A262570 n - 1)

end

end A262583.P4649522068500123809

/-! ## A262583.P7223445404848474920

`2*A262584(n)`
-/

namespace A262583.P7223445404848474920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A262584 n

end

end A262583.P7223445404848474920

/-! ## A262583.P14823261578905839217

`A262570(n)+A262584(n)-1`
-/

namespace A262583.P14823261578905839217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262570 n + (A262584 n - 1)

end

end A262583.P14823261578905839217

/-! ## A262583.P6726241339112172606

`A262584(-A001489(n))+A262584(n)`
-/

namespace A262583.P6726241339112172606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262584 (-A001489 n).toNat + A262584 n

end

end A262583.P6726241339112172606

/-!
# A262584: a(n) = (A002704(n) - 2)/2.

The programs for A262584, there is no canonical definition to state claims against.
-/

/-! ## A262584.P15556239040779542886

`(A002704(n)-2)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A262584.P15556239040779542886
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002704 n - 2 : ℚ) / 2

end

end A262584.P15556239040779542886

/-! ## A262584.P10065446371817151360

`A262570(n)-1`
-/

namespace A262584.P10065446371817151360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262570 n - 1

end

end A262584.P10065446371817151360

/-! ## A262584.P16432113539142257938

`A262583(n)/2`
-/

namespace A262584.P16432113539142257938
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262583 n : ℚ) / 2

end

end A262584.P16432113539142257938

/-! ## A262584.P3020251615594505899

`A291914(A057470(n+1))+A262570(n)`
-/

namespace A262584.P3020251615594505899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291914 (A057470 (n + 1)).toNat + A262570 n

end

end A262584.P3020251615594505899

/-! ## A262584.P12618822016735452458

`A291914(A057470(n+1))+A002704(n)/2`
-/

namespace A262584.P12618822016735452458
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A291914 (A057470 (n + 1)).toNat : ℚ) + (A002704 n : ℚ) / 2

end

end A262584.P12618822016735452458

/-!
# A262585: a(0)=0; thereafter a(n) = A002705(n) - 2.

The programs for A262585, there is no canonical definition to state claims against.
-/

/-! ## A262585.P8326639046197563220

`A000038(n)+A002705(n)-2`
-/

namespace A262585.P8326639046197563220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n + (A002705 n - 2)

end

end A262585.P8326639046197563220

/-! ## A262585.P8091419826261537525

`A002705(n)-2*A178334(n)`
-/

namespace A262585.P8091419826261537525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002705 n - 2 * A178334 n

end

end A262585.P8091419826261537525

/-! ## A262585.P8389869080308695265

`A002705(n)-2%A020483(n)`
-/

namespace A262585.P8389869080308695265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002705 n - Int.tmod 2 (A020483 n)

end

end A262585.P8389869080308695265

/-! ## A262585.P11770741035020107315

`A002705(n)-A061395(A247640(n))`
-/

namespace A262585.P11770741035020107315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002705 n - A061395 (A247640 n).toNat

end

end A262585.P11770741035020107315

/-!
# A262586: Square array T(n,m) (n>=0, m>=0) read by antidiagonals downwards giving number of rooted triangulations of type [n,m] up to orientation-preserving isomorphisms.

The programs for A262586, there is no canonical definition to state claims against.
-/

/-! ## A262586.P3812461099657494536

`2*A169808(n)-A169809(n)`
-/

namespace A262586.P3812461099657494536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A169808 n - A169809 n

end

end A262586.P3812461099657494536

/-! ## A262586.P16525000381200105052

`A004277(A169808(n))-A169809(n)`
-/

namespace A262586.P16525000381200105052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A169808 n).toNat - A169809 n

end

end A262586.P16525000381200105052

/-!
# A262587: "Special" prime powers in Serre's sense.

The programs for A262587, there is no canonical definition to state claims against.
-/

/-! ## A262587.P5728989506966244404

`A332290(n+1)+A188467(A362847(n))`
-/

namespace A262587.P5728989506966244404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332290 (n + 1) + A188467 (A362847 n).toNat

end

end A262587.P5728989506966244404

/-! ## A262587.P18345524322790150022

`lt[A097355(n), A007947(A074909(2*n))]+1`
-/

namespace A262587.P18345524322790150022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097355 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A074909 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A262587.P18345524322790150022

/-! ## A262587.P13854049726961128988

`A332293(n+1)+A047999(A364298(2*(n+1)))`
-/

namespace A262587.P13854049726961128988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332293 (n + 1) + A047999 (A364298 (2 * (n + 1))).toNat

end

end A262587.P13854049726961128988

/-! ## A262587.P7986709851921565803

`A332290(n+1)+A323239(A228859(3*n+2))`
-/

namespace A262587.P7986709851921565803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332290 (n + 1) + A323239 (A228859 (3 * n + 2)).toNat

end

end A262587.P7986709851921565803

/-!
# A262589: Number of other isonemal fabrics of exact period n.

The programs for A262589, there is no canonical definition to state claims against.
-/

/-! ## A262589.P15239924161296343416

`A005441(n+2)-(A193140(n+2)+A056366(n+2))`
-/

namespace A262589.P15239924161296343416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005441 (n + 2) - (A193140 (n + 2) + A056366 (n + 2))

end

end A262589.P15239924161296343416

/-! ## A262589.P5342717972072422161

`A005843(A017910(3*n+1))%(2^n)`
-/

namespace A262589.P5342717972072422161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005843 (A017910 (3 * n + 1)).toNat) (2 ^ n : ℤ)

end

end A262589.P5342717972072422161

/-! ## A262589.P8764069334220685176

`and(∑[2*n], A271269(A284937(2*n+1)))`
-/

namespace A262589.P8764069334220685176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A271269 (A284937 (2 * n + 1)).toNat)

end

end A262589.P8764069334220685176

/-! ## A262589.P15194510534077931356

`A077957(n)*A342748(A002843(n))`
-/

namespace A262589.P15194510534077931356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077957 n * A342748 (A002843 n).toNat

end

end A262589.P15194510534077931356

/-! ## A262589.P16799753132146118771

`A077957(n)*A323014(A137536(n))`
-/

namespace A262589.P16799753132146118771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077957 n * A323014 (A137536 n).toNat

end

end A262589.P16799753132146118771

/-!
# A262590: Sets with a congruence property.

The programs for A262590, there is no canonical definition to state claims against.
-/

/-! ## A262590.P13721061744802451523

`A262591(n+3)+2%(n+2)`
-/

namespace A262590.P13721061744802451523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262591 (n + 3) + ((2 % (n + 2) : ℕ) : ℤ)

end

end A262590.P13721061744802451523

/-! ## A262590.P4195750200763825590

`A262591(n+3)+2-A000038(n)`
-/

namespace A262590.P4195750200763825590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262591 (n + 3) + (2 - A000038 n)

end

end A262590.P4195750200763825590

/-! ## A262590.P7526620403234423894

`A262591(n+3)+A134451(2*n)`
-/

namespace A262590.P7526620403234423894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262591 (n + 3) + A134451 (2 * n)

end

end A262590.P7526620403234423894

/-! ## A262590.P4015833631737879059

`A262591(n+3)+A107393(4*n)`
-/

namespace A262590.P4015833631737879059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262591 (n + 3) + A107393 (4 * n)

end

end A262590.P4015833631737879059

/-! ## A262590.P8571039091279063287

`(A262591(n+3)+2)%A001850(n)`
-/

namespace A262590.P8571039091279063287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A262591 (n + 3) + 2) (A001850 n)

end

end A262590.P8571039091279063287

/-!
# A262591: Sets with a congruence property.

The programs for A262591, there is no canonical definition to state claims against.
-/

/-! ## A262591.P14612841776950414087

`abs(1-A262590(n+3))-1`
-/

namespace A262591.P14612841776950414087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A262590 (n + 3)| - 1

end

end A262591.P14612841776950414087

/-! ## A262591.P1595476149544072965

`A262590(n+3)+A000038(n)-2`
-/

namespace A262591.P1595476149544072965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262590 (n + 3) + (A000038 n - 2)

end

end A262591.P1595476149544072965

/-! ## A262591.P1901766710955639938

`A262590(n+3)-A325273(2*n+1)`
-/

namespace A262591.P1901766710955639938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262590 (n + 3) - A325273 (2 * n + 1)

end

end A262591.P1901766710955639938

/-! ## A262591.P581616677230138394

`lcm(A262590(n+3)-2, A001222(2*n+1))`
-/

namespace A262591.P581616677230138394
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A262590 (n + 3) - 2) (A001222 (2 * n + 1))

end

end A262591.P581616677230138394

/-! ## A262591.P16558451785642783306

`A262590(n+3)-log2(A000032(C(2, n+2))²)`
-/

namespace A262591.P16558451785642783306
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A262590 (n + 3) : ℝ) - Real.logb 2 (A000032 (Nat.choose 2 (n + 2)) ^ 2 : ℝ)

end

end A262591.P16558451785642783306

/-!
# A262592: a(n) = (3^(n+1) - 2n^2 + 4n + 5) / 8.

The programs for A262592, the canonical program `A262592.P8753985879385726584` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A262592 has offset 0).

The definition of A262592 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(3^(n+1)-2*n²+4*n+5)/8` (program `A262592.P15369315031585481556`, by `A262592.P15369315031585481556.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A262592.P8753985879385726584

`6*a(n-1)-12*a(n-2)+10*a(n-3)-3*a(n-4)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=10`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A262592

/-- `6*a(n-1)-12*a(n-2)+10*a(n-3)-3*a(n-4)` -/
def P8753985879385726584.Spec : Prop :=
  ∀ n, P8753985879385726584.a n = A262592 n

theorem P8753985879385726584.correct : P8753985879385726584.Spec := by
  intro n
  simp only [A262592]

end A262592

/-! ## A262592.P15369315031585481556

`(3^(n+1)-2*n²+4*n+5)/8`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A262592.P15369315031585481556
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 ^ (n + 1) : ℤ) - (2 * n ^ 2 : ℤ) + (4 * n : ℤ) + 5 : ℚ) / 8

end

end A262592.P15369315031585481556

namespace A262592

/-- `(3^(n+1)-2*n²+4*n+5)/8` -/
def P15369315031585481556.Spec : Prop :=
  ∀ n, P15369315031585481556.a n = (A262592 n : ℚ)

theorem P15369315031585481556.correct : P15369315031585481556.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A262592, Nat.add_sub_cancel, A262592.P15369315031585481556.a, A262592.P8753985879385726584.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A262592, Nat.add_sub_cancel, A262592.P15369315031585481556.a, A262592.P8753985879385726584.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A262592

/-! ## A262592.P531281574552031898

`∑[∑[ogf((1-4x+4x^2)/(1-4x+3x^2))]]`
-/

namespace A262592.P531281574552031898
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -4, 4] [1, -4, 3] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262592.P531281574552031898

namespace A262592

/-- `∑[∑[ogf((1-4x+4x^2)/(1-4x+3x^2))]]` -/
def P531281574552031898.Spec : Prop :=
  ∀ n, P531281574552031898.a n = A262592 n

end A262592

/-! ## A262592.P13712982164837778511

`∑[∑[3*a(n-1)+1]]` with `a(0)=1, a(1)=0`
-/

namespace A262592.P13712982164837778511
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f2 =>
  3 * f2 (n - 1) + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262592.P13712982164837778511

namespace A262592

/-- `∑[∑[3*a(n-1)+1]]` -/
def P13712982164837778511.Spec : Prop :=
  ∀ n, (P13712982164837778511.a n : ℤ) = A262592 n

end A262592

/-! ## A262592.P4530550421596328111

`∑[n-3*(1-a(n-1))]` with `a(0)=1`
-/

namespace A262592.P4530550421596328111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (n : ℤ) - 3 * (1 - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262592.P4530550421596328111

namespace A262592

/-- `∑[n-3*(1-a(n-1))]` -/
def P4530550421596328111.Spec : Prop :=
  ∀ n, P4530550421596328111.a n = A262592 n

end A262592

/-! ## A262592.P3947880190269787463

`∑[A111277(n)]`
-/

namespace A262592.P3947880190269787463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111277 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262592.P3947880190269787463

namespace A262592

/-- `∑[A111277(n)]` -/
def P3947880190269787463.Spec : Prop :=
  ∀ n, P3947880190269787463.a n = A262592 n

end A262592

/-! ## A262592.P12898838786362990303

`∑[A164039(n)-n]`
-/

namespace A262592.P12898838786362990303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164039 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262592.P12898838786362990303

namespace A262592

/-- `∑[A164039(n)-n]` -/
def P12898838786362990303.Spec : Prop :=
  ∀ n, P12898838786362990303.a n = A262592 n

end A262592

/-! ## A262592.P14284725360212887693

`A183119(n)-A078126(n)`
-/

namespace A262592.P14284725360212887693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183119 n - A078126 n

end

end A262592.P14284725360212887693

namespace A262592

/-- `A183119(n)-A078126(n)` -/
def P14284725360212887693.Spec : Prop :=
  ∀ n, P14284725360212887693.a n = A262592 n

end A262592

/-! ## A262592.P5848907249431949732

`2*A047926(n)-∑[A047926(n)]`
-/

namespace A262592.P5848907249431949732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047926 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A047926 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262592.P5848907249431949732

namespace A262592

/-- `2*A047926(n)-∑[A047926(n)]` -/
def P5848907249431949732.Spec : Prop :=
  ∀ n, P5848907249431949732.a n = A262592 n

end A262592

/-! ## A262592.P324261742891807805

`A052150(n)-A061981(n+1)`
-/

namespace A262592.P324261742891807805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052150 n - A061981 (n + 1)

end

end A262592.P324261742891807805

namespace A262592

/-- `A052150(n)-A061981(n+1)` -/
def P324261742891807805.Spec : Prop :=
  ∀ n, P324261742891807805.a n = A262592 n

end A262592

/-! ## A262592.P17486779079517782487

`A128308(∑[n+1]+2)`
-/

namespace A262592.P17486779079517782487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128308 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A262592.P17486779079517782487

namespace A262592

/-- `A128308(∑[n+1]+2)` -/
def P17486779079517782487.Spec : Prop :=
  ∀ n, P17486779079517782487.a n = A262592 n

end A262592

/-!
# A262593: Expansion of (1-3*x)^3/((1-x)^4*(1-4*x)).

The programs for A262593, the canonical program `A262593.P12479832696248184257` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A262593 has offset 0).

The definition of A262593 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-9x+27x^2-27x^3)/(1-8x+22x^2-28x^3+17x^4-4x^5))` (program `A262593.P12479832696248184257`, by `A262593.P12479832696248184257.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A262593.P12479832696248184257

`ogf((1-9x+27x^2-27x^3)/(1-8x+22x^2-28x^3+17x^4-4x^5))`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A262593

/-- `ogf((1-9x+27x^2-27x^3)/(1-8x+22x^2-28x^3+17x^4-4x^5))` -/
def P12479832696248184257.Spec : Prop :=
  ∀ n, P12479832696248184257.a n = A262593 n

theorem P12479832696248184257.correct : P12479832696248184257.Spec := by
  intro n
  simp only [A262593]

end A262593

/-! ## A262593.P7400130803719769928

`(77+4^(1+n)-84*n-126*n²+36*n^3)/81`
-/

namespace A262593.P7400130803719769928
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((77 + 4 ^ (1 + n) : ℤ) - (84 * n : ℤ) - (126 * n ^ 2 : ℤ) + (36 * n ^ 3 : ℤ) : ℚ) / 81

end

end A262593.P7400130803719769928

namespace A262593

/-- `(77+4^(1+n)-84*n-126*n²+36*n^3)/81` -/
def P7400130803719769928.Spec : Prop :=
  ∀ n, P7400130803719769928.a n = (A262593 n : ℚ)

end A262593

/-!
# A262594: Expansion of (1-2*x)^2/((1-x)^4*(1-4*x)).

The programs for A262594, the canonical program `A262594.P16604298985385933544` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A262594 has offset 0).

The definition of A262594 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-4x+4x^2)/(1-8x+22x^2-28x^3+17x^4-4x^5))` (program `A262594.P16604298985385933544`, by `A262594.P16604298985385933544.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A262594.P16604298985385933544

`ogf((1-4x+4x^2)/(1-8x+22x^2-28x^3+17x^4-4x^5))`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A262594

/-- `ogf((1-4x+4x^2)/(1-8x+22x^2-28x^3+17x^4-4x^5))` -/
def P16604298985385933544.Spec : Prop :=
  ∀ n, P16604298985385933544.a n = A262594 n

theorem P16604298985385933544.correct : P16604298985385933544.Spec := by
  intro n
  simp only [A262594]

end A262594

/-! ## A262594.P5413717135807612653

`(34+2^(7+2*n)+93*n+18*n²-9*n^3)/162`
-/

namespace A262594.P5413717135807612653
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((34 + 2 ^ (7 + 2 * n) + 93 * n + 18 * n ^ 2 : ℤ) - (9 * n ^ 3 : ℤ) : ℚ) / 162

end

end A262594.P5413717135807612653

namespace A262594

/-- `(34+2^(7+2*n)+93*n+18*n²-9*n^3)/162` -/
def P5413717135807612653.Spec : Prop :=
  ∀ n, P5413717135807612653.a n = (A262594 n : ℚ)

end A262594

/-! ## A262594.P7657369505617900666

`∑[∑[∑[4*a(n-1)+1]]]` with `a(0)=1, a(1)=1`
-/

namespace A262594.P7657369505617900666
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f3 =>
  4 * f3 (n - 1) + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262594.P7657369505617900666

namespace A262594

/-- `∑[∑[∑[4*a(n-1)+1]]]` -/
def P7657369505617900666.Spec : Prop :=
  ∀ n, (P7657369505617900666.a n : ℤ) = A262594 n

end A262594

/-! ## A262594.P10428899954528273984

`∑[∑[∑[∑[4*a(n-1)]]]]` with `a(0)=1, a(1)=0, a(2)=4`
-/

namespace A262594.P10428899954528273984
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 4] fun n f4 =>
  4 * f4 (n - 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262594.P10428899954528273984

namespace A262594

/-- `∑[∑[∑[∑[4*a(n-1)]]]]` -/
def P10428899954528273984.Spec : Prop :=
  ∀ n, (P10428899954528273984.a n : ℤ) = A262594 n

end A262594

/-! ## A262594.P15764056661215622543

`∑[∑[∑[A002450(n)]]+n]+n+1`
-/

namespace A262594.P15764056661215622543
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002450 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1 : ℤ)

end

end A262594.P15764056661215622543

namespace A262594

/-- `∑[∑[∑[A002450(n)]]+n]+n+1` -/
def P15764056661215622543.Spec : Prop :=
  ∀ n, P15764056661215622543.a n = A262594 n

end A262594

/-! ## A262594.P7730587450862153581

`2*A028814(n)-∑[A028814(n)]`
-/

namespace A262594.P7730587450862153581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028814 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028814 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262594.P7730587450862153581

namespace A262594

/-- `2*A028814(n)-∑[A028814(n)]` -/
def P7730587450862153581.Spec : Prop :=
  ∀ n, P7730587450862153581.a n = A262594 n

end A262594

/-! ## A262594.P4280613510301860434

`∑[A052161(n)+n+1]-A052161(n)`
-/

namespace A262594.P4280613510301860434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052161 n + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A052161 n

end

end A262594.P4280613510301860434

namespace A262594

/-- `∑[A052161(n)+n+1]-A052161(n)` -/
def P4280613510301860434.Spec : Prop :=
  ∀ n, P4280613510301860434.a n = A262594 n

end A262594

/-! ## A262594.P13560088199141694511

`A000217(n+1)+A097788(n)-A052161(n)`
-/

namespace A262594.P13560088199141694511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) + (A097788 n - A052161 n)

end

end A262594.P13560088199141694511

namespace A262594

/-- `A000217(n+1)+A097788(n)-A052161(n)` -/
def P13560088199141694511.Spec : Prop :=
  ∀ n, P13560088199141694511.a n = A262594 n

end A262594

/-!
# A262595: Binary numbers whose square is a palindrome in binary.

The programs for A262595, there is no canonical definition to state claims against.
-/

/-! ## A262595.P8350746591298188975

`A007088(A003166(n+1))`
-/

namespace A262595.P8350746591298188975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A003166 (n + 1)).toNat

end

end A262595.P8350746591298188975

