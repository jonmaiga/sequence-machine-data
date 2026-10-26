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
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C007
import Seq.B001.C009
import Seq.B002.C001
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C002
import Seq.B005.C000
import Seq.B007.C000
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
import Seq.Opaque.C005
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A056400: Number of step shifted (decimated) sequence structures using exactly six different symbols.

The programs for A056400, there is no canonical definition to state claims against.
-/

/-! ## A056400.P16596082024790946936

`A056395(n+1)-A056394(n+1)`
-/

namespace A056400.P16596082024790946936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056395 (n + 1) - A056394 (n + 1)

end

end A056400.P16596082024790946936

/-! ## A056400.P8929395848556222262

`∑{d}[n+1, A056410(#)]`
-/

namespace A056400.P8929395848556222262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056410 d

end

end A056400.P8929395848556222262

/-! ## A056400.P854393179939787988

`A056395(n+1)-∑{d}[n+1, A056404(#)]`
-/

namespace A056400.P854393179939787988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056395 (n + 1) - ∑ d ∈ Nat.divisors (f1 n), A056404 d

end

end A056400.P854393179939787988

/-! ## A056400.P15182815705824925617

`∑{d}[n+1, A056405(#)]-∑{d}[n+1, A056404(#)]`
-/

namespace A056400.P15182815705824925617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056405 d - ∑ d ∈ Nat.divisors (f2 n), A056404 d

end

end A056400.P15182815705824925617

/-! ## A056400.P277398296605298883

`A056395(n+1)-(A056399(n+1)+A056393(n+1))`
-/

namespace A056400.P277398296605298883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056395 (n + 1) - (A056399 (n + 1) + A056393 (n + 1))

end

end A056400.P277398296605298883

/-! ## A056400.P7963389148765014258

`A056395(n+1)-(A056392(n+1)+A056399(n+1)+A056398(n+1))`
-/

namespace A056400.P7963389148765014258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056395 (n + 1) - (A056392 (n + 1) + (A056399 (n + 1) + A056398 (n + 1)))

end

end A056400.P7963389148765014258

/-!
# A056401: Number of primitive (aperiodic) step shifted (decimated) sequence structures using a maximum of two different symbols.

The programs for A056401, there is no canonical definition to state claims against.
-/

/-! ## A056401.P16003217600981943484

`or(char[n^6], A056406(n+1))`
-/

namespace A056401.P16003217600981943484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 6

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A056406 (n + 1))

end

end A056401.P16003217600981943484

/-! ## A056401.P13265657785836883819

`A056406(A028310(n)+1)`
-/

namespace A056401.P13265657785836883819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056406 (A028310 n + 1).toNat

end

end A056401.P13265657785836883819

/-! ## A056401.P3913264836551687084

`A056406(A254667(n+1))`
-/

namespace A056401.P3913264836551687084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056406 (A254667 (n + 1)).toNat

end

end A056401.P3913264836551687084

/-! ## A056401.P16338334598837169213

`A056406(A233583(n+2))`
-/

namespace A056401.P16338334598837169213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056406 (A233583 (n + 2)).toNat

end

end A056401.P16338334598837169213

/-! ## A056401.P9252792429417271680

`A056406(n+1)+A000007(n)`
-/

namespace A056401.P9252792429417271680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056406 (n + 1) + A000007 n

end

end A056401.P9252792429417271680

/-! ## A056401.P415508864805252952

`A056406(and(1, record[A000010(n+1)])+n+1)`
-/

namespace A056401.P415508864805252952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056406 (Int.land 1 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) + (n + 1 : ℤ)).toNat

end

end A056401.P415508864805252952

/-! ## A056401.P8173421885820678906

`∑{d}[n+1, A008683(#)*A056391((n+1)/#)]`
-/

namespace A056401.P8173421885820678906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A056391 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056401.P8173421885820678906

/-! ## A056401.P3554737238499818966

`A056381(n+1)/2`
-/

namespace A056401.P3554737238499818966
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056381 (n + 1) : ℚ) / 2

end

end A056401.P3554737238499818966

/-! ## A056401.P7238722925866967830

`A000007(n)+A056386(n+1)/2`
-/

namespace A056401.P7238722925866967830
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000007 n : ℚ) + (A056386 (n + 1) : ℚ) / 2

end

end A056401.P7238722925866967830

/-! ## A056401.P15852475036777126321

`(A056386(n+1)+A000038(n))/2`
-/

namespace A056401.P15852475036777126321
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056386 (n + 1) + A000038 n : ℚ) / 2

end

end A056401.P15852475036777126321

/-! ## A056401.P11757695183505906972

`∑{d}[n+1, A008683(#)*A056371((n+1)/#)]/2`
-/

namespace A056401.P11757695183505906972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), A008683 d * A056371 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat : ℤ) : ℚ) / 2

end

end A056401.P11757695183505906972

/-! ## A056401.P13447149657133766544

`A056406(log2(A011782(n))+2)`
-/

namespace A056401.P13447149657133766544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056406 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ) + 2)).toNat

end

end A056401.P13447149657133766544

/-! ## A056401.P15916097640379380537

`A056402(n+1)-A056407(n+1)`
-/

namespace A056401.P15916097640379380537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056402 (n + 1) - A056407 (n + 1)

end

end A056401.P15916097640379380537

/-!
# A056402: Number of primitive (aperiodic) step shifted (decimated) sequence structures using a maximum of three different symbols.

The programs for A056402, there is no canonical definition to state claims against.
-/

/-! ## A056402.P15846030412371249182

`A056407(n+1)+A056401(n+1)`
-/

namespace A056402.P15846030412371249182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056407 (n + 1) + A056401 (n + 1)

end

end A056402.P15846030412371249182

/-! ## A056402.P4868488232627152401

`A056407(n+1)+A056381(n+1)/2`
-/

namespace A056402.P4868488232627152401
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056407 (n + 1) : ℚ) + (A056381 (n + 1) : ℚ) / 2

end

end A056402.P4868488232627152401

/-! ## A056402.P6234785078917562986

`∑{d}[n+1, A008683(#)*A056392((n+1)/#)]`
-/

namespace A056402.P6234785078917562986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A056392 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056402.P6234785078917562986

/-! ## A056402.P955497442259589222

`A056407(n+1)+A056406(A254667(n+1))`
-/

namespace A056402.P955497442259589222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056407 (n + 1) + A056406 (A254667 (n + 1)).toNat

end

end A056402.P955497442259589222

/-! ## A056402.P2977589122985093194

`A056406(n+1)+A056407(n+1)+A000007(n)`
-/

namespace A056402.P2977589122985093194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056406 (n + 1) + (A056407 (n + 1) + A000007 n)

end

end A056402.P2977589122985093194

/-! ## A056402.P1233403002096679302

`A056403(n+1)-A056408(n+1)`
-/

namespace A056402.P1233403002096679302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056403 (n + 1) - A056408 (n + 1)

end

end A056402.P1233403002096679302

/-!
# A056403: Number of primitive (aperiodic) step shifted (decimated) sequence structures using a maximum of four different symbols.

The programs for A056403, there is no canonical definition to state claims against.
-/

/-! ## A056403.P6075830495077217784

`A056408(n+1)+A056402(n+1)`
-/

namespace A056403.P6075830495077217784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056408 (n + 1) + A056402 (n + 1)

end

end A056403.P6075830495077217784

/-! ## A056403.P16906657666867179060

`∑{d}[n+1, A008683(#)*A056393((n+1)/#)]`
-/

namespace A056403.P16906657666867179060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A056393 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056403.P16906657666867179060

/-! ## A056403.P9374798529767191769

`A056401(n+1)+A056408(n+1)+A056407(n+1)`
-/

namespace A056403.P9374798529767191769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056401 (n + 1) + (A056408 (n + 1) + A056407 (n + 1))

end

end A056403.P9374798529767191769

/-! ## A056403.P1832588595689524766

`A056404(n+1)-A056409(n+1)`
-/

namespace A056403.P1832588595689524766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056404 (n + 1) - A056409 (n + 1)

end

end A056403.P1832588595689524766

/-! ## A056403.P15703558471785536827

`A056405(n+1)-(A056410(n+1)+A056409(n+1))`
-/

namespace A056403.P15703558471785536827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056405 (n + 1) - (A056410 (n + 1) + A056409 (n + 1))

end

end A056403.P15703558471785536827

/-!
# A056404: Number of primitive (aperiodic) step shifted (decimated) sequence structures using a maximum of five different symbols.

The programs for A056404, there is no canonical definition to state claims against.
-/

/-! ## A056404.P16314213248097046492

`A056409(n+1)+A056403(n+1)`
-/

namespace A056404.P16314213248097046492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056409 (n + 1) + A056403 (n + 1)

end

end A056404.P16314213248097046492

/-! ## A056404.P13310758216085112068

`∑{d}[n+1, A008683(#)*A056394((n+1)/#)]`
-/

namespace A056404.P13310758216085112068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A056394 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056404.P13310758216085112068

/-! ## A056404.P6464921615978729507

`A056402(n+1)+A056409(n+1)+A056408(n+1)`
-/

namespace A056404.P6464921615978729507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056402 (n + 1) + (A056409 (n + 1) + A056408 (n + 1))

end

end A056404.P6464921615978729507

/-! ## A056404.P2062323049122959647

`A056405(n+1)-A056410(n+1)`
-/

namespace A056404.P2062323049122959647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056405 (n + 1) - A056410 (n + 1)

end

end A056404.P2062323049122959647

/-! ## A056404.P717707710344179418

`A056405(n+1)+A056410(n+1)*A057428(n)`
-/

namespace A056404.P717707710344179418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056405 (n + 1) + A056410 (n + 1) * A057428 n

end

end A056404.P717707710344179418

/-!
# A056405: Number of primitive (aperiodic) step shifted (decimated) sequence structures using a maximum of six different symbols.

The programs for A056405, there is no canonical definition to state claims against.
-/

/-! ## A056405.P12258362814285056541

`A056410(n+1)+A056404(n+1)`
-/

namespace A056405.P12258362814285056541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056410 (n + 1) + A056404 (n + 1)

end

end A056405.P12258362814285056541

/-! ## A056405.P1885042576922227221

`∑{d}[n+1, A008683(#)*A056395((n+1)/#)]`
-/

namespace A056405.P1885042576922227221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A056395 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056405.P1885042576922227221

/-! ## A056405.P5825071610133098661

`A056403(n+1)+A056410(n+1)+A056409(n+1)`
-/

namespace A056405.P5825071610133098661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056403 (n + 1) + (A056410 (n + 1) + A056409 (n + 1))

end

end A056405.P5825071610133098661

/-! ## A056405.P7447764962970924806

`A056404(n+1)+∑{d}[n+1, A008683(#)*A056400((n+1)/#)]`
-/

namespace A056405.P7447764962970924806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056404 (n + 1) + ∑ d ∈ Nat.divisors (f1 n), A008683 d * A056400 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056405.P7447764962970924806

/-! ## A056405.P5151164823788582591

`A056410(n+1)+∑{d}[n+1, A008683(#)*A056394((n+1)/#)]`
-/

namespace A056405.P5151164823788582591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056410 (n + 1) + ∑ d ∈ Nat.divisors (f1 n), A008683 d * A056394 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056405.P5151164823788582591

/-! ## A056405.P1017729461342646728

`A056410(n+1)+A056402(n+1)+A056409(n+1)+A056408(n+1)`
-/

namespace A056405.P1017729461342646728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056410 (n + 1) + (A056402 (n + 1) + (A056409 (n + 1) + A056408 (n + 1)))

end

end A056405.P1017729461342646728

/-!
# A056406: Number of primitive (aperiodic) step shifted (decimated) sequence structures using exactly two different symbols.

The programs for A056406, there is no canonical definition to state claims against.
-/

/-! ## A056406.P2882748568508275656

`A056401(n+1)-A000007(n)`
-/

namespace A056406.P2882748568508275656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056401 (n + 1) - A000007 n

end

end A056406.P2882748568508275656

/-! ## A056406.P7369302330373164216

`A056401(n+1)*A057427(n)`
-/

namespace A056406.P7369302330373164216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056401 (n + 1) * A057427 n

end

end A056406.P7369302330373164216

/-! ## A056406.P18205956853680553258

`and(A056401(n+1), A057428(n))`
-/

namespace A056406.P18205956853680553258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A056401 (n + 1)) (A057428 n)

end

end A056406.P18205956853680553258

/-! ## A056406.P4376264968269838327

`and(A056401(n+1), A134824(n))`
-/

namespace A056406.P4376264968269838327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A056401 (n + 1)) (A134824 n)

end

end A056406.P4376264968269838327

/-! ## A056406.P14293075782638713336

`∑{d}[n+1, A008683(#)*A056396((n+1)/#)]`
-/

namespace A056406.P14293075782638713336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A056396 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056406.P14293075782638713336

/-! ## A056406.P8195017415056316771

`A056386(n+1)/2`
-/

namespace A056406.P8195017415056316771
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056386 (n + 1) : ℚ) / 2

end

end A056406.P8195017415056316771

/-! ## A056406.P15765705866104620496

`A056381(n+1)/2-A000007(n)`
-/

namespace A056406.P15765705866104620496
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056381 (n + 1) : ℚ) / 2 - (A000007 n : ℚ)

end

end A056406.P15765705866104620496

/-! ## A056406.P12216482429984954308

`(A056381(n+1)-A000038(n))/2`
-/

namespace A056406.P12216482429984954308
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056381 (n + 1) - A000038 n : ℚ) / 2

end

end A056406.P12216482429984954308

/-! ## A056406.P15829673710049183375

`A056381(n+1)/2*A057427(n)`
-/

namespace A056406.P15829673710049183375
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056381 (n + 1) : ℚ) / 2 * (A057427 n : ℚ)

end

end A056406.P15829673710049183375

/-! ## A056406.P6475881369500713880

`A056401(n+1)%A000079(n)`
-/

namespace A056406.P6475881369500713880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056401 (n + 1)) (A000079 n)

end

end A056406.P6475881369500713880

/-! ## A056406.P13705660179884712877

`and(A000225(n), A056401(n+1))`
-/

namespace A056406.P13705660179884712877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000225 n) (A056401 (n + 1))

end

end A056406.P13705660179884712877

/-! ## A056406.P6943470150561648899

`and(A056401(n+1), A303611(n+2))`
-/

namespace A056406.P6943470150561648899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A056401 (n + 1)) (A303611 (n + 2))

end

end A056406.P6943470150561648899

/-! ## A056406.P1575021119157814386

`and(A056381(n+1), A095121(n))/2`
-/

namespace A056406.P1575021119157814386
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (A056381 (n + 1)) (A095121 n) : ℚ) / 2

end

end A056406.P1575021119157814386

/-! ## A056406.P8891575560794477143

`and(A056381(n+1), A126646(n))/2`
-/

namespace A056406.P8891575560794477143
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (A056381 (n + 1)) (A126646 n) : ℚ) / 2

end

end A056406.P8891575560794477143

/-! ## A056406.P6317385783590667916

`and(A056401(n+1), A140683(n))`
-/

namespace A056406.P6317385783590667916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A056401 (n + 1)) (A140683 n)

end

end A056406.P6317385783590667916

/-! ## A056406.P15372868490951037572

`and(A056401(n+1), A153893(n))`
-/

namespace A056406.P15372868490951037572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A056401 (n + 1)) (A153893 n)

end

end A056406.P15372868490951037572

/-! ## A056406.P17770808452159430387

`and(A056381(n+1), A134067(n))/2`
-/

namespace A056406.P17770808452159430387
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (A056381 (n + 1)) (A134067 n) : ℚ) / 2

end

end A056406.P17770808452159430387

/-! ## A056406.P12030196744016314176

`and(A056401(n+1), A086224(n))`
-/

namespace A056406.P12030196744016314176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A056401 (n + 1)) (A086224 n)

end

end A056406.P12030196744016314176

/-! ## A056406.P8102444128160690285

`and(A056401(n+1), A153894(n))`
-/

namespace A056406.P8102444128160690285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A056401 (n + 1)) (A153894 n)

end

end A056406.P8102444128160690285

/-! ## A056406.P14784077374000770009

`and(A056401(n+1), A086225(n))`
-/

namespace A056406.P14784077374000770009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A056401 (n + 1)) (A086225 n)

end

end A056406.P14784077374000770009

/-!
# A056407: Number of primitive (aperiodic) step shifted (decimated) sequence structures using exactly three different symbols.

The programs for A056407, there is no canonical definition to state claims against.
-/

/-! ## A056407.P13395957659780630759

`A056402(n+1)-A056401(n+1)`
-/

namespace A056407.P13395957659780630759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056402 (n + 1) - A056401 (n + 1)

end

end A056407.P13395957659780630759

/-! ## A056407.P16911134895861966175

`A056402(n+1)-A056381(n+1)/2`
-/

namespace A056407.P16911134895861966175
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056402 (n + 1) : ℚ) - (A056381 (n + 1) : ℚ) / 2

end

end A056407.P16911134895861966175

/-! ## A056407.P4361903230357187418

`∑{d}[n+1, A008683(#)*A056397((n+1)/#)]`
-/

namespace A056407.P4361903230357187418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A056397 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056407.P4361903230357187418

/-! ## A056407.P3327994240413177125

`A056402(n+1)-A056406(A254667(n+1))`
-/

namespace A056407.P3327994240413177125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056402 (n + 1) - A056406 (A254667 (n + 1)).toNat

end

end A056407.P3327994240413177125

/-! ## A056407.P15425340326133107491

`A056402(n+1)%A056392(n+1)-A056406(n+1)`
-/

namespace A056407.P15425340326133107491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056402 (n + 1)) (A056392 (n + 1)) - A056406 (n + 1)

end

end A056407.P15425340326133107491

/-! ## A056407.P16005331191648189699

`∑{d}[n+1, A008683(#)*A056392((n+1)/#)]-A056401(n+1)`
-/

namespace A056407.P16005331191648189699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A056392 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat - A056401 (n + 1)

end

end A056407.P16005331191648189699

/-! ## A056407.P17650257610596267922

`A056403(n+1)-(A056408(n+1)+A056401(n+1))`
-/

namespace A056407.P17650257610596267922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056403 (n + 1) - (A056408 (n + 1) + A056401 (n + 1))

end

end A056407.P17650257610596267922

/-!
# A056408: Number of primitive (aperiodic) step shifted (decimated) sequence structures using exactly four different symbols.

The programs for A056408, there is no canonical definition to state claims against.
-/

/-! ## A056408.P4055808720956683232

`A056403(n+1)-A056402(n+1)`
-/

namespace A056408.P4055808720956683232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056403 (n + 1) - A056402 (n + 1)

end

end A056408.P4055808720956683232

/-! ## A056408.P6682975267274281234

`∑{d}[n+1, A008683(#)*A056398((n+1)/#)]`
-/

namespace A056408.P6682975267274281234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A056398 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056408.P6682975267274281234

/-! ## A056408.P6549140812970651153

`A056403(n+1)-(A056407(n+1)+A056401(n+1))`
-/

namespace A056408.P6549140812970651153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056403 (n + 1) - (A056407 (n + 1) + A056401 (n + 1))

end

end A056408.P6549140812970651153

/-! ## A056408.P12016189129909065457

`A056403(n+1)-(A056407(n+1)+A056381(n+1)/2)`
-/

namespace A056408.P12016189129909065457
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056403 (n + 1) : ℚ) - ((A056407 (n + 1) : ℚ) + (A056381 (n + 1) : ℚ) / 2)

end

end A056408.P12016189129909065457

/-! ## A056408.P6651984913374990154

`A056404(n+1)-(A056409(n+1)+A056402(n+1))`
-/

namespace A056408.P6651984913374990154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056404 (n + 1) - (A056409 (n + 1) + A056402 (n + 1))

end

end A056408.P6651984913374990154

/-!
# A056409: Number of primitive (aperiodic) step shifted (decimated) sequence structures using exactly five different symbols.

The programs for A056409, there is no canonical definition to state claims against.
-/

/-! ## A056409.P8972894584299462786

`A056404(n+1)-A056403(n+1)`
-/

namespace A056409.P8972894584299462786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056404 (n + 1) - A056403 (n + 1)

end

end A056409.P8972894584299462786

/-! ## A056409.P9960261404455389890

`∑{d}[n+1, A008683(#)*A056399((n+1)/#)]`
-/

namespace A056409.P9960261404455389890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A056399 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056409.P9960261404455389890

/-! ## A056409.P18088311092420934805

`∑{d}[n+1, A056399(#)*A069158((n+1)/#)]`
-/

namespace A056409.P18088311092420934805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056399 d * A069158 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056409.P18088311092420934805

/-! ## A056409.P17378291580590640744

`∑{d}[n+1, A056399(#)*A253206((n+1)/#)]`
-/

namespace A056409.P17378291580590640744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056399 d * A253206 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056409.P17378291580590640744

/-! ## A056409.P16406534891604177225

`A056404(n+1)-(A056408(n+1)+A056402(n+1))`
-/

namespace A056409.P16406534891604177225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056404 (n + 1) - (A056408 (n + 1) + A056402 (n + 1))

end

end A056409.P16406534891604177225

/-! ## A056409.P2721339982692290190

`A056405(n+1)-(A056410(n+1)+A056403(n+1))`
-/

namespace A056409.P2721339982692290190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056405 (n + 1) - (A056410 (n + 1) + A056403 (n + 1))

end

end A056409.P2721339982692290190

/-!
# A056410: Number of primitive (aperiodic) step shifted (decimated) sequence structures using exactly six different symbols.

The programs for A056410, there is no canonical definition to state claims against.
-/

/-! ## A056410.P2294746324840602088

`A056405(n+1)-A056404(n+1)`
-/

namespace A056410.P2294746324840602088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056405 (n + 1) - A056404 (n + 1)

end

end A056410.P2294746324840602088

/-! ## A056410.P8840883819551388321

`∑{d}[n+1, A008683(#)*A056400((n+1)/#)]`
-/

namespace A056410.P8840883819551388321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A056400 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056410.P8840883819551388321

/-! ## A056410.P8337317009768917805

`∑{d}[n+1, A056400(#)*A069158((n+1)/#)]`
-/

namespace A056410.P8337317009768917805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056400 d * A069158 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056410.P8337317009768917805

/-! ## A056410.P13092615619098846678

`∑{d}[n+1, A056400(#)*A133639((n+1)/#)]`
-/

namespace A056410.P13092615619098846678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056400 d * A133639 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056410.P13092615619098846678

/-! ## A056410.P1566997042479611607

`∑{d}[n+1, A056400(#)*A253206((n+1)/#)]`
-/

namespace A056410.P1566997042479611607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056400 d * A253206 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056410.P1566997042479611607

/-! ## A056410.P6168721971429130756

`A056405(n+1)-(A056409(n+1)+A056403(n+1))`
-/

namespace A056410.P6168721971429130756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056405 (n + 1) - (A056409 (n + 1) + A056403 (n + 1))

end

end A056410.P6168721971429130756

/-!
# A056411: Number of step cyclic shifted sequences using a maximum of three different symbols.

The programs for A056411, there is no canonical definition to state claims against.
-/

/-! ## A056411.P2958790779844028020

`∑{d}[n+1, A056420(#)]`
-/

namespace A056411.P2958790779844028020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056420 d

end

end A056411.P2958790779844028020

/-! ## A056411.P16158714716784666799

`A285548(∑[n+2]+4)`
-/

namespace A056411.P16158714716784666799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285548 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A056411.P16158714716784666799

/-! ## A056411.P15833811494261496717

`A285548(A167614(n+1))%A041760(n)`
-/

namespace A056411.P15833811494261496717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A285548 (A167614 (n + 1)).toNat) (A041760 n)

end

end A056411.P15833811494261496717

/-! ## A056411.P1071866724068063717

`or(A000007(n), A285548(A167614(n+1)))`
-/

namespace A056411.P1071866724068063717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A285548 (A167614 (n + 1)).toNat)

end

end A056411.P1071866724068063717

/-! ## A056411.P4508215511136479286

`or(A000038(n), A285548(A167614(n+1)))`
-/

namespace A056411.P4508215511136479286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A285548 (A167614 (n + 1)).toNat)

end

end A056411.P4508215511136479286

/-!
# A056412: Number of step cyclic shifted sequences using a maximum of four different symbols.

The programs for A056412, there is no canonical definition to state claims against.
-/

/-! ## A056412.P16556143741061917058

`∑{d}[n+1, A056421(#)]`
-/

namespace A056412.P16556143741061917058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056421 d

end

end A056412.P16556143741061917058

/-! ## A056412.P16772484772076270672

`A285548(A052905(n)+9)`
-/

namespace A056412.P16772484772076270672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285548 (A052905 n + 9).toNat

end

end A056412.P16772484772076270672

/-! ## A056412.P3282436673956771978

`A285548(A055999(n)+10)`
-/

namespace A056412.P3282436673956771978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285548 (A055999 n + 10).toNat

end

end A056412.P3282436673956771978

/-! ## A056412.P2924988377437559236

`A285548(A167614(n+2)+1)`
-/

namespace A056412.P2924988377437559236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285548 (A167614 (n + 2) + 1).toNat

end

end A056412.P2924988377437559236

/-! ## A056412.P1596665858415327945

`A285548(A000124(n+3)+3)`
-/

namespace A056412.P1596665858415327945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285548 (A000124 (n + 3) + 3).toNat

end

end A056412.P1596665858415327945

/-!
# A056413: Number of step cyclic shifted sequences using a maximum of five different symbols.

The programs for A056413, there is no canonical definition to state claims against.
-/

/-! ## A056413.P7176038762290929989

`∑{d}[n+1, A056422(#)]`
-/

namespace A056413.P7176038762290929989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056422 d

end

end A056413.P7176038762290929989

/-! ## A056413.P8179499645893691343

`A285548(A167499(n+3))`
-/

namespace A056413.P8179499645893691343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285548 (A167499 (n + 3)).toNat

end

end A056413.P8179499645893691343

/-! ## A056413.P5520139368360401220

`A285548(A167614(n+3)+2)`
-/

namespace A056413.P5520139368360401220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285548 (A167614 (n + 3) + 2).toNat

end

end A056413.P5520139368360401220

/-! ## A056413.P309310013596634892

`A285548(A000217(n+4)+5)`
-/

namespace A056413.P309310013596634892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285548 (A000217 (n + 4) + 5).toNat

end

end A056413.P309310013596634892

/-! ## A056413.P10687293242668161388

`A285548(A038722(Δ[A023545(n+1)]))`
-/

namespace A056413.P10687293242668161388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285548 (A038722 (f1 (n + 1) - f1 n).toNat).toNat

end

end A056413.P10687293242668161388

/-!
# A056414: Number of step cyclic shifted sequences using a maximum of six different symbols.

The programs for A056414, there is no canonical definition to state claims against.
-/

/-! ## A056414.P13546499500992984888

`∑{d}[n+1, A056423(#)]`
-/

namespace A056414.P13546499500992984888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056423 d

end

end A056414.P13546499500992984888

/-! ## A056414.P8650286348050982766

`A285548(A167614(n+4)+3)`
-/

namespace A056414.P8650286348050982766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285548 (A167614 (n + 4) + 3).toNat

end

end A056414.P8650286348050982766

/-! ## A056414.P3601943626731901564

`A285548(A000124(n+5)+5)`
-/

namespace A056414.P3601943626731901564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285548 (A000124 (n + 5) + 5).toNat

end

end A056414.P3601943626731901564

/-! ## A056414.P7277611215533146242

`A285548(A246172(n+1)+20)`
-/

namespace A056414.P7277611215533146242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285548 (A246172 (n + 1) + 20).toNat

end

end A056414.P7277611215533146242

/-! ## A056414.P4295374518166899251

`A285548((n+5)²-A055999(n+1))`
-/

namespace A056414.P4295374518166899251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285548 (((n + 5) ^ 2 : ℤ) - A055999 (n + 1)).toNat

end

end A056414.P4295374518166899251

/-!
# A056415: Number of step cyclic shifted sequences using exactly two different symbols.

The programs for A056415, there is no canonical definition to state claims against.
-/

/-! ## A056415.P2430772157876362968

`A002729(n+1)-2`
-/

namespace A056415.P2430772157876362968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002729 (n + 1) - 2

end

end A056415.P2430772157876362968

/-! ## A056415.P1348940398393252254

`∑{d}[n+1, A056424(#)]`
-/

namespace A056415.P1348940398393252254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056424 d

end

end A056415.P1348940398393252254

/-! ## A056415.P10782342132060333658

`Δ[∑[A002729(n)]-2*n]`
-/

namespace A056415.P10782342132060333658
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002729 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A056415.P10782342132060333658

/-! ## A056415.P11284519314326394600

`∑[Δ[A002729(n)]-A000007(n)]`
-/

namespace A056415.P11284519314326394600
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002729 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A000007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056415.P11284519314326394600

/-! ## A056415.P718907722170651125

`A007427(A205715(n+1))+A002729(n+1)`
-/

namespace A056415.P718907722170651125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007427 (A205715 (n + 1)).toNat + A002729 (n + 1)

end

end A056415.P718907722170651125

/-!
# A056416: Number of step cyclic shifted sequences using exactly three different symbols.

The programs for A056416, there is no canonical definition to state claims against.
-/

/-! ## A056416.P5618614589237934756

`A056411(n+1)-3*A002729(n+1)+3`
-/

namespace A056416.P5618614589237934756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056411 (n + 1) - 3 * A002729 (n + 1) + 3

end

end A056416.P5618614589237934756

/-! ## A056416.P9471833876914320846

`∑{d}[n+1, A056425(#)]`
-/

namespace A056416.P9471833876914320846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056425 d

end

end A056416.P9471833876914320846

/-!
# A056417: Number of step cyclic shifted sequences using exactly four different symbols.

The programs for A056417, there is no canonical definition to state claims against.
-/

/-! ## A056417.P5576777354676145136

`A056412(n+1)-4*A056411(n+1)+6*A002729(n+1)-4`
-/

namespace A056417.P5576777354676145136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056412 (n + 1) - 4 * A056411 (n + 1) + 6 * A002729 (n + 1) - 4

end

end A056417.P5576777354676145136

/-! ## A056417.P550755519088638975

`∑{d}[n+1, A056426(#)]`
-/

namespace A056417.P550755519088638975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056426 d

end

end A056417.P550755519088638975

/-! ## A056417.P11160937989079183021

`A072670(A056427(n+1))+A056426(n+1)`
-/

namespace A056417.P11160937989079183021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072670 (A056427 (n + 1)).toNat + A056426 (n + 1)

end

end A056417.P11160937989079183021

/-!
# A056418: Number of step cyclic shifted sequences using exactly five different symbols.

The programs for A056418, there is no canonical definition to state claims against.
-/

/-! ## A056418.P7347600614787702068

`A056413(n+1)-5*A056412(n+1)+10*A056411(n+1)-10*A002729(n+1)+5`
-/

namespace A056418.P7347600614787702068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056413 (n + 1) - 5 * A056412 (n + 1) + 10 * A056411 (n + 1) - 10 * A002729 (n + 1) + 5

end

end A056418.P7347600614787702068

/-! ## A056418.P8195381693439905700

`∑{d}[n+1, A056427(#)]`
-/

namespace A056418.P8195381693439905700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056427 d

end

end A056418.P8195381693439905700

/-! ## A056418.P13443905984148203693

`A160086(A077446(n+1))+A056427(n+1)`
-/

namespace A056418.P13443905984148203693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160086 (A077446 (n + 1)).toNat + A056427 (n + 1)

end

end A056418.P13443905984148203693

/-! ## A056418.P1892077359853511007

`A056427(A381225(n))`
-/

namespace A056418.P1892077359853511007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056427 (A381225 n).toNat

end

end A056418.P1892077359853511007

/-! ## A056418.P7081066249695974271

`A056427(A001104(n+1))`
-/

namespace A056418.P7081066249695974271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056427 (A001104 (n + 1)).toNat

end

end A056418.P7081066249695974271

/-!
# A056419: Number of step cyclic shifted sequences using exactly six different symbols.

The programs for A056419, there is no canonical definition to state claims against.
-/

/-! ## A056419.P17008138392559216288

`A056414(n+1)-6*A056413(n+1)+15*A056412(n+1)-20*A056411(n+1)+15*A002729(n+1)-6`
-/

namespace A056419.P17008138392559216288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056414 (n + 1) - 6 * A056413 (n + 1) + 15 * A056412 (n + 1) - 20 * A056411 (n + 1) + 15 * A002729 (n + 1) - 6

end

end A056419.P17008138392559216288

/-! ## A056419.P12033024558587814174

`∑{d}[n+1, A056428(#)]`
-/

namespace A056419.P12033024558587814174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056428 d

end

end A056419.P12033024558587814174

/-! ## A056419.P6346346627200071551

`A056428(A043316(n+1))`
-/

namespace A056419.P6346346627200071551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056428 (A043316 (n + 1)).toNat

end

end A056419.P6346346627200071551

/-! ## A056419.P7362210882195745978

`A056428(A061147(n+1))`
-/

namespace A056419.P7362210882195745978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056428 (A061147 (n + 1)).toNat

end

end A056419.P7362210882195745978

/-! ## A056419.P4116656272377644676

`A056428(n+1)%A216598(n)`
-/

namespace A056419.P4116656272377644676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056428 (n + 1)) (A216598 n)

end

end A056419.P4116656272377644676

/-!
# A056420: Number of primitive (period n) step cyclic shifted sequences using a maximum of three different symbols.

The programs for A056420, there is no canonical definition to state claims against.
-/

/-! ## A056420.P15684584262479820886

`∑{d}[n+1, A008683(#)*A056411((n+1)/#)]`
-/

namespace A056420.P15684584262479820886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A056411 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056420.P15684584262479820886

/-!
# A056421: Number of primitive (period n) step cyclic shifted sequences using a maximum of four different symbols.

The programs for A056421, there is no canonical definition to state claims against.
-/

/-! ## A056421.P9502935141035483630

`∑{d}[n+1, A008683(#)*A056412((n+1)/#)]`
-/

namespace A056421.P9502935141035483630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A056412 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056421.P9502935141035483630

/-!
# A056422: Number of primitive (period n) step cyclic shifted sequences using a maximum of five different symbols.

The programs for A056422, there is no canonical definition to state claims against.
-/

/-! ## A056422.P9968717783351692835

`∑{d}[n+1, A008683(#)*A056413((n+1)/#)]`
-/

namespace A056422.P9968717783351692835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A056413 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056422.P9968717783351692835

/-!
# A056423: Number of primitive (period n) step cyclic shifted sequences using a maximum of six different symbols.

The programs for A056423, there is no canonical definition to state claims against.
-/

/-! ## A056423.P10515224650249995799

`∑{d}[n+1, A008683(#)*A056414((n+1)/#)]`
-/

namespace A056423.P10515224650249995799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A056414 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056423.P10515224650249995799

/-!
# A056424: Number of primitive (period n) step cyclic shifted sequences using exactly two different symbols.

The programs for A056424, there is no canonical definition to state claims against.
-/

/-! ## A056424.P12278561170797445311

`A002730(n+1)%(2^n)`
-/

namespace A056424.P12278561170797445311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002730 (n + 1)) (2 ^ n : ℤ)

end

end A056424.P12278561170797445311

/-! ## A056424.P14442339389750001459

`A002730(n+1)-A000038(n)`
-/

namespace A056424.P14442339389750001459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002730 (n + 1) - A000038 n

end

end A056424.P14442339389750001459

/-! ## A056424.P10869494628163800954

`A002730(n+1)*A057427(n)`
-/

namespace A056424.P10869494628163800954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002730 (n + 1) * A057427 n

end

end A056424.P10869494628163800954

/-! ## A056424.P13175837252755074230

`A002730(n+1)*A178334(n)`
-/

namespace A056424.P13175837252755074230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002730 (n + 1) * A178334 n

end

end A056424.P13175837252755074230

/-! ## A056424.P3991970710918613951

`and(A000225(n), A002730(n+1))`
-/

namespace A056424.P3991970710918613951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000225 n) (A002730 (n + 1))

end

end A056424.P3991970710918613951

/-! ## A056424.P11958461919648816473

`and(A002730(n+1), A024036(n))`
-/

namespace A056424.P11958461919648816473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002730 (n + 1)) (A024036 n)

end

end A056424.P11958461919648816473

/-! ## A056424.P1425635175727869701

`and(A002730(n+1), A052940(n))`
-/

namespace A056424.P1425635175727869701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002730 (n + 1)) (A052940 n)

end

end A056424.P1425635175727869701

/-! ## A056424.P1284274602426207383

`and(A002730(n+1), A055580(n))`
-/

namespace A056424.P1284274602426207383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002730 (n + 1)) (A055580 n)

end

end A056424.P1284274602426207383

/-! ## A056424.P3285077783073755563

`and(A002730(n+1), A057428(n))`
-/

namespace A056424.P3285077783073755563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002730 (n + 1)) (A057428 n)

end

end A056424.P3285077783073755563

/-! ## A056424.P13477078399636028429

`and(A002730(n+1), A060416(n))`
-/

namespace A056424.P13477078399636028429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002730 (n + 1)) (A060416 n)

end

end A056424.P13477078399636028429

/-!
# A056425: Number of primitive (period n) step cyclic shifted sequences using exactly three different symbols.

The programs for A056425, there is no canonical definition to state claims against.
-/

/-! ## A056425.P2208642493049213244

`∑{d}[n+1, A008683(#)*A056416((n+1)/#)]`
-/

namespace A056425.P2208642493049213244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A056416 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056425.P2208642493049213244

/-! ## A056425.P14372715679639426581

`∑{d}[n+1, A056416(#)*A069158((n+1)/#)]`
-/

namespace A056425.P14372715679639426581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056416 d * A069158 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056425.P14372715679639426581

/-! ## A056425.P15257653615060322090

`∑{d}[n+1, A056416(#)*A253206((n+1)/#)]`
-/

namespace A056425.P15257653615060322090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056416 d * A253206 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056425.P15257653615060322090

/-!
# A056426: Number of primitive (period n) step cyclic shifted sequences using exactly four different symbols.

The programs for A056426, there is no canonical definition to state claims against.
-/

/-! ## A056426.P13965048060843393383

`∑{d}[n+1, A008683(#)*A056417((n+1)/#)]`
-/

namespace A056426.P13965048060843393383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A056417 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056426.P13965048060843393383

/-! ## A056426.P16890751358656758556

`∑{d}[n+1, A056417(#)*A069158((n+1)/#)]`
-/

namespace A056426.P16890751358656758556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056417 d * A069158 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056426.P16890751358656758556

/-! ## A056426.P6875177800493879448

`∑{d}[n+1, A056417(#)*A133639((n+1)/#)]`
-/

namespace A056426.P6875177800493879448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056417 d * A133639 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056426.P6875177800493879448

/-! ## A056426.P12698267016984892931

`∑{d}[n+1, A056417(#)*A253206((n+1)/#)]`
-/

namespace A056426.P12698267016984892931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056417 d * A253206 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056426.P12698267016984892931

/-! ## A056426.P5587953881956382466

`∑{d}[n+1, A056417(#)*A302050((n+1)/#)]`
-/

namespace A056426.P5587953881956382466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056417 d * A302050 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056426.P5587953881956382466

/-!
# A056427: Number of primitive (period n) step cyclic shifted sequences using exactly five different symbols.

The programs for A056427, there is no canonical definition to state claims against.
-/

/-! ## A056427.P4204047568052558064

`∑{d}[n+1, A008683(#)*A056418((n+1)/#)]`
-/

namespace A056427.P4204047568052558064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A056418 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056427.P4204047568052558064

/-! ## A056427.P4402731069660664651

`∑{d}[n+1, A056418(#)*A069158((n+1)/#)]`
-/

namespace A056427.P4402731069660664651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056418 d * A069158 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056427.P4402731069660664651

/-! ## A056427.P1796189743049647799

`∑{d}[n+1, A056418(#)*A133639((n+1)/#)]`
-/

namespace A056427.P1796189743049647799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056418 d * A133639 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056427.P1796189743049647799

/-! ## A056427.P9612929530843513206

`∑{d}[n+1, A056418(#)*A253206((n+1)/#)]`
-/

namespace A056427.P9612929530843513206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056418 d * A253206 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056427.P9612929530843513206

/-! ## A056427.P17517961080761288448

`∑{d}[n+1, A056418(#)*A302050((n+1)/#)]`
-/

namespace A056427.P17517961080761288448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056418 d * A302050 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056427.P17517961080761288448

/-!
# A056428: Number of primitive (period n) step cyclic shifted sequences using exactly six different symbols.

The programs for A056428, there is no canonical definition to state claims against.
-/

/-! ## A056428.P3459237704346329930

`∑{d}[n+1, A008683(#)*A056419((n+1)/#)]`
-/

namespace A056428.P3459237704346329930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A056419 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056428.P3459237704346329930

/-! ## A056428.P2585392273711524881

`∑{d}[n+1, A056419(#)*A069158((n+1)/#)]`
-/

namespace A056428.P2585392273711524881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056419 d * A069158 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056428.P2585392273711524881

/-! ## A056428.P14669933603970302588

`∑{d}[n+1, A056419(#)*A352953((n+1)/#)]`
-/

namespace A056428.P14669933603970302588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056419 d * A352953 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056428.P14669933603970302588

/-!
# A056429: Number of step cyclic shifted sequence structures using a maximum of two different symbols.

The programs for A056429, there is no canonical definition to state claims against.
-/

/-! ## A056429.P6202899820838896930

`A056434(n+1)+1`
-/

namespace A056429.P6202899820838896930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056434 (n + 1) + 1

end

end A056429.P6202899820838896930

/-! ## A056429.P4802321424460835188

`∑{d}[n+1, A056439(#)]`
-/

namespace A056429.P4802321424460835188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056439 d

end

end A056429.P4802321424460835188

/-! ## A056429.P11088426139782898198

`A056430(n+1)-A056435(n+1)`
-/

namespace A056429.P11088426139782898198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056430 (n + 1) - A056435 (n + 1)

end

end A056429.P11088426139782898198

/-! ## A056429.P13408279238832434330

`A056430(n+1)-∑{d}[n+1, A056445(#)]`
-/

namespace A056429.P13408279238832434330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056430 (n + 1) - ∑ d ∈ Nat.divisors (f1 n), A056445 d

end

end A056429.P13408279238832434330

/-! ## A056429.P4949415675637669459

`A056431(n+1)-(A056436(n+1)+A056435(n+1))`
-/

namespace A056429.P4949415675637669459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056431 (n + 1) - (A056436 (n + 1) + A056435 (n + 1))

end

end A056429.P4949415675637669459

/-!
# A056430: Number of step cyclic shifted sequence structures using a maximum of three different symbols.

The programs for A056430, there is no canonical definition to state claims against.
-/

/-! ## A056430.P4913362378185032499

`∑{d}[n+1, A056440(#)]`
-/

namespace A056430.P4913362378185032499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056440 d

end

end A056430.P4913362378185032499

/-! ## A056430.P18107672385986625687

`A056435(n+1)+A056429(n+1)`
-/

namespace A056430.P18107672385986625687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056435 (n + 1) + A056429 (n + 1)

end

end A056430.P18107672385986625687

/-! ## A056430.P16740242418118374715

`A056434(n+1)+A056435(n+1)+1`
-/

namespace A056430.P16740242418118374715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056434 (n + 1) + (A056435 (n + 1) + 1)

end

end A056430.P16740242418118374715

/-! ## A056430.P9010692749761253640

`A056431(n+1)-A056436(n+1)`
-/

namespace A056430.P9010692749761253640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056431 (n + 1) - A056436 (n + 1)

end

end A056430.P9010692749761253640

/-! ## A056430.P16006739049759230347

`A056432(n+1)-(A056437(n+1)+A056436(n+1))`
-/

namespace A056430.P16006739049759230347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056432 (n + 1) - (A056437 (n + 1) + A056436 (n + 1))

end

end A056430.P16006739049759230347

/-!
# A056431: Number of step cyclic shifted sequence structures using a maximum of four different symbols.

The programs for A056431, there is no canonical definition to state claims against.
-/

/-! ## A056431.P2198126850024461792

`∑{d}[n+1, A056441(#)]`
-/

namespace A056431.P2198126850024461792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056441 d

end

end A056431.P2198126850024461792

/-! ## A056431.P16570774570807827506

`A056436(n+1)+A056430(n+1)`
-/

namespace A056431.P16570774570807827506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056436 (n + 1) + A056430 (n + 1)

end

end A056431.P16570774570807827506

/-! ## A056431.P3692850024568108635

`A056429(n+1)+A056436(n+1)+A056435(n+1)`
-/

namespace A056431.P3692850024568108635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056429 (n + 1) + (A056436 (n + 1) + A056435 (n + 1))

end

end A056431.P3692850024568108635

/-! ## A056431.P6110322422657837096

`A056432(n+1)-A056437(n+1)`
-/

namespace A056431.P6110322422657837096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056432 (n + 1) - A056437 (n + 1)

end

end A056431.P6110322422657837096

/-! ## A056431.P13992149487729048736

`A056432(n+1)-∑{d}[n+1, A056447(#)]`
-/

namespace A056431.P13992149487729048736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056432 (n + 1) - ∑ d ∈ Nat.divisors (f1 n), A056447 d

end

end A056431.P13992149487729048736

/-! ## A056431.P10806554194152612364

`A056433(n+1)-(A056438(n+1)+A056437(n+1))`
-/

namespace A056431.P10806554194152612364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056433 (n + 1) - (A056438 (n + 1) + A056437 (n + 1))

end

end A056431.P10806554194152612364

/-!
# A056432: Step cyclic shifted sequence structures using a maximum of five different symbols.

The programs for A056432, there is no canonical definition to state claims against.
-/

/-! ## A056432.P15143943668096628511

`∑{d}[n+1, A056442(#)]`
-/

namespace A056432.P15143943668096628511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056442 d

end

end A056432.P15143943668096628511

/-! ## A056432.P12329191674229437050

`A056437(n+1)+A056431(n+1)`
-/

namespace A056432.P12329191674229437050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056437 (n + 1) + A056431 (n + 1)

end

end A056432.P12329191674229437050

/-! ## A056432.P451758924497045285

`A056431(n+1)+∑{d}[n+1, A056447(#)]`
-/

namespace A056432.P451758924497045285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056431 (n + 1) + ∑ d ∈ Nat.divisors (f1 n), A056447 d

end

end A056432.P451758924497045285

/-! ## A056432.P1359035103001482501

`A056437(n+1)+∑{d}[n+1, A056441(#)]`
-/

namespace A056432.P1359035103001482501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056437 (n + 1) + ∑ d ∈ Nat.divisors (f1 n), A056441 d

end

end A056432.P1359035103001482501

/-! ## A056432.P13639993571308715863

`A056430(n+1)+A056437(n+1)+A056436(n+1)`
-/

namespace A056432.P13639993571308715863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056430 (n + 1) + (A056437 (n + 1) + A056436 (n + 1))

end

end A056432.P13639993571308715863

/-! ## A056432.P5936375699334631337

`A056437(n+1)+A056429(n+1)+A056436(n+1)+A056435(n+1)`
-/

namespace A056432.P5936375699334631337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056437 (n + 1) + (A056429 (n + 1) + (A056436 (n + 1) + A056435 (n + 1)))

end

end A056432.P5936375699334631337

/-! ## A056432.P13012905790990643542

`A056433(n+1)-A056438(n+1)`
-/

namespace A056432.P13012905790990643542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056433 (n + 1) - A056438 (n + 1)

end

end A056432.P13012905790990643542

/-!
# A056433: Step cyclic shifted sequence structures using a maximum of six different symbols.

The programs for A056433, there is no canonical definition to state claims against.
-/

/-! ## A056433.P12104280883673811180

`∑{d}[n+1, A056443(#)]`
-/

namespace A056433.P12104280883673811180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056443 d

end

end A056433.P12104280883673811180

/-! ## A056433.P5688070883697989249

`A056438(n+1)+A056432(n+1)`
-/

namespace A056433.P5688070883697989249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056438 (n + 1) + A056432 (n + 1)

end

end A056433.P5688070883697989249

/-! ## A056433.P18326320406818905894

`A056438(n+1)+∑{d}[n+1, A056442(#)]`
-/

namespace A056433.P18326320406818905894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056438 (n + 1) + ∑ d ∈ Nat.divisors (f1 n), A056442 d

end

end A056433.P18326320406818905894

/-! ## A056433.P14067130620494771960

`A056431(n+1)+A056438(n+1)+A056437(n+1)`
-/

namespace A056433.P14067130620494771960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056431 (n + 1) + (A056438 (n + 1) + A056437 (n + 1))

end

end A056433.P14067130620494771960

/-! ## A056433.P7785980656744820704

`A056438(n+1)+A056430(n+1)+A056437(n+1)+A056436(n+1)`
-/

namespace A056433.P7785980656744820704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056438 (n + 1) + (A056430 (n + 1) + (A056437 (n + 1) + A056436 (n + 1)))

end

end A056433.P7785980656744820704

/-!
# A056434: Number of step cyclic shifted sequence structures using exactly two different symbols.

The programs for A056434, there is no canonical definition to state claims against.
-/

/-! ## A056434.P8055979408602248118

`A056429(n+1)-1`
-/

namespace A056434.P8055979408602248118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056429 (n + 1) - 1

end

end A056434.P8055979408602248118

/-! ## A056434.P14630826125790697409

`∑{d}[n+1, A056444(#)]`
-/

namespace A056434.P14630826125790697409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056444 d

end

end A056434.P14630826125790697409

/-! ## A056434.P388326292732012481

`A057428(n+1)+A056429(n+1)`
-/

namespace A056434.P388326292732012481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A056429 (n + 1)

end

end A056434.P388326292732012481

/-! ## A056434.P10608385379908020881

`A317531(A001749(n+1))+A056429(n+1)`
-/

namespace A056434.P10608385379908020881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317531 (A001749 (n + 1)).toNat + A056429 (n + 1)

end

end A056434.P10608385379908020881

/-! ## A056434.P2691785798612687282

`A056430(n+1)-(A056435(n+1)+1)`
-/

namespace A056434.P2691785798612687282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056430 (n + 1) - (A056435 (n + 1) + 1)

end

end A056434.P2691785798612687282

/-!
# A056435: Number of step cyclic shifted sequence structures using exactly three different symbols.

The programs for A056435, there is no canonical definition to state claims against.
-/

/-! ## A056435.P1195670471246553930

`A056430(n+1)-A056429(n+1)`
-/

namespace A056435.P1195670471246553930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056430 (n + 1) - A056429 (n + 1)

end

end A056435.P1195670471246553930

/-! ## A056435.P13944942195410687230

`∑{d}[n+1, A056445(#)]`
-/

namespace A056435.P13944942195410687230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056445 d

end

end A056435.P13944942195410687230

/-! ## A056435.P15450559464943737311

`A056430(n+1)-(A056434(n+1)+1)`
-/

namespace A056435.P15450559464943737311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056430 (n + 1) - (A056434 (n + 1) + 1)

end

end A056435.P15450559464943737311

/-! ## A056435.P2446079214897986248

`A056431(n+1)-(A056436(n+1)+A056429(n+1))`
-/

namespace A056435.P2446079214897986248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056431 (n + 1) - (A056436 (n + 1) + A056429 (n + 1))

end

end A056435.P2446079214897986248

/-! ## A056435.P13497239484892326422

`A288627(∑[n]+3)%A056403(n+1)`
-/

namespace A056435.P13497239484892326422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A288627 (∑ j ∈ Finset.range (n + 1), f1 j + 3)) (A056403 (n + 1))

end

end A056435.P13497239484892326422

/-! ## A056435.P9750573706733726833

`A288627(A152950(n+1))%A288593(n)`
-/

namespace A056435.P9750573706733726833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A288627 (A152950 (n + 1)).toNat) (A288593 n)

end

end A056435.P9750573706733726833

/-! ## A056435.P10885609367187116925

`A288627(∑[n]+3)%A011971(A000217(n))`
-/

namespace A056435.P10885609367187116925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A288627 (∑ j ∈ Finset.range (n + 1), f1 j + 3)) (A011971 (A000217 n).toNat)

end

end A056435.P10885609367187116925

/-!
# A056436: Number of step cyclic shifted sequence structures using exactly four different symbols.

The programs for A056436, there is no canonical definition to state claims against.
-/

/-! ## A056436.P10848250936483207438

`A056431(n+1)-A056430(n+1)`
-/

namespace A056436.P10848250936483207438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056431 (n + 1) - A056430 (n + 1)

end

end A056436.P10848250936483207438

/-! ## A056436.P12028025750900952729

`∑{d}[n+1, A056446(#)]`
-/

namespace A056436.P12028025750900952729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056446 d

end

end A056436.P12028025750900952729

/-! ## A056436.P4024475056607166958

`A056431(n+1)-(A056435(n+1)+A056429(n+1))`
-/

namespace A056436.P4024475056607166958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056431 (n + 1) - (A056435 (n + 1) + A056429 (n + 1))

end

end A056436.P4024475056607166958

/-! ## A056436.P18406429328417787255

`A056431(n+1)-(A056434(n+1)+A056435(n+1)+1)`
-/

namespace A056436.P18406429328417787255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056431 (n + 1) - (A056434 (n + 1) + (A056435 (n + 1) + 1))

end

end A056436.P18406429328417787255

/-! ## A056436.P9312287195007462885

`A056432(n+1)-(A056437(n+1)+A056430(n+1))`
-/

namespace A056436.P9312287195007462885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056432 (n + 1) - (A056437 (n + 1) + A056430 (n + 1))

end

end A056436.P9312287195007462885

/-!
# A056437: Number of step cyclic shifted sequence structures using exactly five different symbols.

The programs for A056437, there is no canonical definition to state claims against.
-/

/-! ## A056437.P7542544368271914008

`A056432(n+1)-A056431(n+1)`
-/

namespace A056437.P7542544368271914008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056432 (n + 1) - A056431 (n + 1)

end

end A056437.P7542544368271914008

/-! ## A056437.P10243227657371955287

`∑{d}[n+1, A056447(#)]`
-/

namespace A056437.P10243227657371955287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056447 d

end

end A056437.P10243227657371955287

/-! ## A056437.P9000768556669227590

`∑{d}[n+1, A056442(#)]-A056431(n+1)`
-/

namespace A056437.P9000768556669227590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056442 d - A056431 (n + 1)

end

end A056437.P9000768556669227590

/-! ## A056437.P7074986307773600947

`A056432(n+1)-(A056436(n+1)+A056430(n+1))`
-/

namespace A056437.P7074986307773600947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056432 (n + 1) - (A056436 (n + 1) + A056430 (n + 1))

end

end A056437.P7074986307773600947

/-! ## A056437.P2899575535791686418

`A056433(n+1)-(A056438(n+1)+A056431(n+1))`
-/

namespace A056437.P2899575535791686418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056433 (n + 1) - (A056438 (n + 1) + A056431 (n + 1))

end

end A056437.P2899575535791686418

/-!
# A056438: Number of step cyclic shifted sequence structures using exactly six different symbols.

The programs for A056438, there is no canonical definition to state claims against.
-/

/-! ## A056438.P5375672095162695325

`A056433(n+1)-A056432(n+1)`
-/

namespace A056438.P5375672095162695325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056433 (n + 1) - A056432 (n + 1)

end

end A056438.P5375672095162695325

/-! ## A056438.P659676575219831134

`∑{d}[n+1, A056448(#)]`
-/

namespace A056438.P659676575219831134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056448 d

end

end A056438.P659676575219831134

/-! ## A056438.P9697137463219377988

`A056433(n+1)-∑{d}[n+1, A056442(#)]`
-/

namespace A056438.P9697137463219377988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056433 (n + 1) - ∑ d ∈ Nat.divisors (f1 n), A056442 d

end

end A056438.P9697137463219377988

/-! ## A056438.P4792622156121040323

`A056433(n+1)-(A056437(n+1)+A056431(n+1))`
-/

namespace A056438.P4792622156121040323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056433 (n + 1) - (A056437 (n + 1) + A056431 (n + 1))

end

end A056438.P4792622156121040323

/-! ## A056438.P12497758121732198802

`A056433(n+1)-(A056430(n+1)+A056437(n+1)+A056436(n+1))`
-/

namespace A056438.P12497758121732198802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056433 (n + 1) - (A056430 (n + 1) + (A056437 (n + 1) + A056436 (n + 1)))

end

end A056438.P12497758121732198802

/-!
# A056439: Number of primitive (period n) step cyclic shifted sequence structures using a maximum of two different symbols.

The programs for A056439, there is no canonical definition to state claims against.
-/

/-! ## A056439.P8164534548921419799

`A056444(A028310(n)+1)`
-/

namespace A056439.P8164534548921419799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056444 (A028310 n + 1).toNat

end

end A056439.P8164534548921419799

/-! ## A056439.P4397899179473735217

`A056444(A254667(n+1))`
-/

namespace A056439.P4397899179473735217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056444 (A254667 (n + 1)).toNat

end

end A056439.P4397899179473735217

/-! ## A056439.P6151163847329929386

`A056444(A348776(n+1))`
-/

namespace A056439.P6151163847329929386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056444 (A348776 (n + 1)).toNat

end

end A056439.P6151163847329929386

/-! ## A056439.P14041957442215798170

`A056444(A233583(n+2))`
-/

namespace A056439.P14041957442215798170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056444 (A233583 (n + 2)).toNat

end

end A056439.P14041957442215798170

/-! ## A056439.P9792192225828292997

`A056444(ceil(sqrt(A014206(n))))`
-/

namespace A056439.P9792192225828292997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056444 ⌈Real.sqrt (A014206 n : ℝ)⌉.toNat

end

end A056439.P9792192225828292997

/-! ## A056439.P11028376059195601873

`A056444(n+1)+A000007(n)`
-/

namespace A056439.P11028376059195601873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056444 (n + 1) + A000007 n

end

end A056439.P11028376059195601873

/-! ## A056439.P5053938094505524520

`A056444(A000038(n)+1+n)`
-/

namespace A056439.P5053938094505524520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056444 (A000038 n + 1 + (n : ℤ)).toNat

end

end A056439.P5053938094505524520

/-! ## A056439.P16961100496358848217

`A056444(A004273(n)+2-n)`
-/

namespace A056439.P16961100496358848217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056444 (A004273 n + (2 - (n : ℤ))).toNat

end

end A056439.P16961100496358848217

/-! ## A056439.P9973596890508227593

`A056444(2-(n-A004273(n)))`
-/

namespace A056439.P9973596890508227593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056444 (2 - ((n : ℤ) - A004273 n)).toNat

end

end A056439.P9973596890508227593

/-! ## A056439.P14408844364070798557

`A056444(n+1)^A019430(2*n)`
-/

namespace A056439.P14408844364070798557
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056444 (n + 1) : ℚ) ^ (A019430 (2 * n) : ℤ)

end

end A056439.P14408844364070798557

/-! ## A056439.P6919878480040328774

`A056444(gcd(2, A000040(n+1))+n)`
-/

namespace A056439.P6919878480040328774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056444 (Int.gcd 2 (A000040 (n + 1)) + n)

end

end A056439.P6919878480040328774

/-! ## A056439.P12297721524555106705

`A056444(n+1)+val(A002476(n+1), 7)`
-/

namespace A056439.P12297721524555106705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056444 (n + 1) + (SequenceMachineLib.valuation (A002476 (n + 1)).toNat 7 : ℤ)

end

end A056439.P12297721524555106705

/-! ## A056439.P6023069850387217886

`A056444(n+1)+char[A056448(∑[4*n]+1)]`
-/

namespace A056439.P6023069850387217886
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056448 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056444 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A056439.P6023069850387217886

/-! ## A056439.P4856061064734196680

`∑{d}[n+1, A008683(#)*A056429((n+1)/#)]`
-/

namespace A056439.P4856061064734196680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A056429 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056439.P4856061064734196680

/-! ## A056439.P13702149602963135798

`A056444(n+1)+A008683(A008574(n))`
-/

namespace A056439.P13702149602963135798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056444 (n + 1) + A008683 (A008574 n).toNat

end

end A056439.P13702149602963135798

/-! ## A056439.P9795058273712382326

`A056444(n+1)+and(1, A011782(n+1))`
-/

namespace A056439.P9795058273712382326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056444 (n + 1) + Int.land 1 (A011782 (n + 1))

end

end A056439.P9795058273712382326

/-! ## A056439.P504366569516570980

`A056444(n+1)+A008683(Δ[A000330(n)])`
-/

namespace A056439.P504366569516570980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056444 (n + 1) + A008683 (f1 (n + 1) - f1 n).toNat

end

end A056439.P504366569516570980

/-! ## A056439.P2649684563790726320

`A056444(n+1)+and(1, A056452(n))`
-/

namespace A056439.P2649684563790726320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056444 (n + 1) + Int.land 1 (A056452 n)

end

end A056439.P2649684563790726320

/-! ## A056439.P8459693095275224787

`A056440(n+1)-A056445(n+1)`
-/

namespace A056439.P8459693095275224787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056440 (n + 1) - A056445 (n + 1)

end

end A056439.P8459693095275224787

/-! ## A056439.P15175252522671808867

`A056444(A003056(∑[n+1]+2))`
-/

namespace A056439.P15175252522671808867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056444 (A003056 (∑ j ∈ Finset.range (n + 1), f1 j + 2)).toNat

end

end A056439.P15175252522671808867

/-!
# A056440: Number of primitive (period n) step cyclic shifted sequence structures using a maximum of three different symbols.

The programs for A056440, there is no canonical definition to state claims against.
-/

/-! ## A056440.P12512044787199605291

`A056445(n+1)+A056439(n+1)`
-/

namespace A056440.P12512044787199605291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056445 (n + 1) + A056439 (n + 1)

end

end A056440.P12512044787199605291

/-! ## A056440.P676715473991974540

`∑{d}[n+1, A008683(#)*A056430((n+1)/#)]`
-/

namespace A056440.P676715473991974540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A056430 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056440.P676715473991974540

/-! ## A056440.P14734693907692748162

`A056445(n+1)+A056444(A348776(n+1))`
-/

namespace A056440.P14734693907692748162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056445 (n + 1) + A056444 (A348776 (n + 1)).toNat

end

end A056440.P14734693907692748162

/-! ## A056440.P18436518411023804371

`A056445(n+1)+A056444(A233583(n+2))`
-/

namespace A056440.P18436518411023804371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056445 (n + 1) + A056444 (A233583 (n + 2)).toNat

end

end A056440.P18436518411023804371

/-! ## A056440.P16709371222670818923

`A056441(n+1)-A056446(n+1)`
-/

namespace A056440.P16709371222670818923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056441 (n + 1) - A056446 (n + 1)

end

end A056440.P16709371222670818923

/-! ## A056440.P4263942688728224864

`A056442(n+1)-(A056447(n+1)+A056446(n+1))`
-/

namespace A056440.P4263942688728224864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056442 (n + 1) - (A056447 (n + 1) + A056446 (n + 1))

end

end A056440.P4263942688728224864

/-!
# A056441: Number of primitive (period n) step cyclic shifted sequence structures using a maximum of four different symbols.

The programs for A056441, there is no canonical definition to state claims against.
-/

/-! ## A056441.P11811048401369042928

`A056446(n+1)+A056440(n+1)`
-/

namespace A056441.P11811048401369042928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056446 (n + 1) + A056440 (n + 1)

end

end A056441.P11811048401369042928

/-! ## A056441.P5260868735391179859

`∑{d}[n+1, A008683(#)*A056431((n+1)/#)]`
-/

namespace A056441.P5260868735391179859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A056431 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056441.P5260868735391179859

/-! ## A056441.P12906303949378877053

`A056439(n+1)+A056446(n+1)+A056445(n+1)`
-/

namespace A056441.P12906303949378877053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056439 (n + 1) + (A056446 (n + 1) + A056445 (n + 1))

end

end A056441.P12906303949378877053

/-! ## A056441.P14928647897611530150

`A056442(n+1)-A056447(n+1)`
-/

namespace A056441.P14928647897611530150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056442 (n + 1) - A056447 (n + 1)

end

end A056441.P14928647897611530150

/-! ## A056441.P17670588234366001778

`∑{d}[n+1, A008683(#)*A056432((n+1)/#)]-A056447(n+1)`
-/

namespace A056441.P17670588234366001778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A056432 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat - A056447 (n + 1)

end

end A056441.P17670588234366001778

/-! ## A056441.P201674937832277795

`A056443(n+1)-(A056448(n+1)+A056447(n+1))`
-/

namespace A056441.P201674937832277795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056443 (n + 1) - (A056448 (n + 1) + A056447 (n + 1))

end

end A056441.P201674937832277795

/-!
# A056442: Number of primitive (period n) step cyclic shifted sequence structures using a maximum of five different symbols.

The programs for A056442, there is no canonical definition to state claims against.
-/

/-! ## A056442.P15607949779694797920

`A056447(n+1)+A056441(n+1)`
-/

namespace A056442.P15607949779694797920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056447 (n + 1) + A056441 (n + 1)

end

end A056442.P15607949779694797920

/-! ## A056442.P6652878739804174087

`∑{d}[n+1, A008683(#)*A056432((n+1)/#)]`
-/

namespace A056442.P6652878739804174087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A056432 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056442.P6652878739804174087

/-! ## A056442.P14693975212584353458

`A056440(n+1)+A056447(n+1)+A056446(n+1)`
-/

namespace A056442.P14693975212584353458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056440 (n + 1) + (A056447 (n + 1) + A056446 (n + 1))

end

end A056442.P14693975212584353458

/-! ## A056442.P6778280679785803467

`A056441(n+1)+∑{d}[n+1, A008683(#)*A056437((n+1)/#)]`
-/

namespace A056442.P6778280679785803467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056441 (n + 1) + ∑ d ∈ Nat.divisors (f1 n), A008683 d * A056437 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056442.P6778280679785803467

/-! ## A056442.P17609402444338176188

`A056447(n+1)+∑{d}[n+1, A008683(#)*A056431((n+1)/#)]`
-/

namespace A056442.P17609402444338176188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056447 (n + 1) + ∑ d ∈ Nat.divisors (f1 n), A008683 d * A056431 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056442.P17609402444338176188

/-! ## A056442.P1162037938801737747

`A056441(n+1)+∑{d}[n+1, A056437(#)*A253206((n+1)/#)]`
-/

namespace A056442.P1162037938801737747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056441 (n + 1) + ∑ d ∈ Nat.divisors (f1 n), A056437 d * A253206 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056442.P1162037938801737747

/-! ## A056442.P4998051309521523873

`A056443(n+1)-A056448(n+1)`
-/

namespace A056442.P4998051309521523873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056443 (n + 1) - A056448 (n + 1)

end

end A056442.P4998051309521523873

/-! ## A056442.P12959941650407151799

`∑{d}[n+1, A008683(#)*A056433((n+1)/#)]-A056448(n+1)`
-/

namespace A056442.P12959941650407151799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A056433 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat - A056448 (n + 1)

end

end A056442.P12959941650407151799

/-!
# A056443: Number of primitive (period n) step cyclic shifted sequence structures using a maximum of six different symbols.

The programs for A056443, there is no canonical definition to state claims against.
-/

/-! ## A056443.P3875916075071864424

`A056448(n+1)+A056442(n+1)`
-/

namespace A056443.P3875916075071864424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056448 (n + 1) + A056442 (n + 1)

end

end A056443.P3875916075071864424

/-! ## A056443.P16813510076271855539

`∑{d}[n+1, A008683(#)*A056433((n+1)/#)]`
-/

namespace A056443.P16813510076271855539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A056433 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056443.P16813510076271855539

/-! ## A056443.P10673944884524433335

`A056441(n+1)+A056448(n+1)+A056447(n+1)`
-/

namespace A056443.P10673944884524433335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056441 (n + 1) + (A056448 (n + 1) + A056447 (n + 1))

end

end A056443.P10673944884524433335

/-! ## A056443.P10836012338191950788

`A056442(n+1)+∑{d}[n+1, A008683(#)*A056438((n+1)/#)]`
-/

namespace A056443.P10836012338191950788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056442 (n + 1) + ∑ d ∈ Nat.divisors (f1 n), A008683 d * A056438 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056443.P10836012338191950788

/-! ## A056443.P9381022712775555760

`A056448(n+1)+∑{d}[n+1, A008683(#)*A056432((n+1)/#)]`
-/

namespace A056443.P9381022712775555760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056448 (n + 1) + ∑ d ∈ Nat.divisors (f1 n), A008683 d * A056432 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056443.P9381022712775555760

/-! ## A056443.P5731817535634157979

`A056442(n+1)+∑{d}[n+1, A056438(#)*A069158((n+1)/#)]`
-/

namespace A056443.P5731817535634157979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056442 (n + 1) + ∑ d ∈ Nat.divisors (f1 n), A056438 d * A069158 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056443.P5731817535634157979

/-! ## A056443.P11851799419246318362

`A056442(n+1)+∑{d}[n+1, A056438(#)*A133639((n+1)/#)]`
-/

namespace A056443.P11851799419246318362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056442 (n + 1) + ∑ d ∈ Nat.divisors (f1 n), A056438 d * A133639 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056443.P11851799419246318362

/-!
# A056444: Number of primitive (period n) step cyclic shifted sequence structures using exactly two different symbols.

The programs for A056444, there is no canonical definition to state claims against.
-/

/-! ## A056444.P16121532332893499984

`A056439(n+1)-A000007(n)`
-/

namespace A056444.P16121532332893499984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056439 (n + 1) - A000007 n

end

end A056444.P16121532332893499984

/-! ## A056444.P11934135684083639315

`A056439(n+1)*A057427(n)`
-/

namespace A056444.P11934135684083639315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056439 (n + 1) * A057427 n

end

end A056444.P11934135684083639315

/-! ## A056444.P12466927794840878239

`and(A056439(n+1), A057428(n))`
-/

namespace A056444.P12466927794840878239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A056439 (n + 1)) (A057428 n)

end

end A056444.P12466927794840878239

/-! ## A056444.P9533973676753343288

`and(A056439(n+1), A134824(n))`
-/

namespace A056444.P9533973676753343288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A056439 (n + 1)) (A134824 n)

end

end A056444.P9533973676753343288

/-! ## A056444.P15015850148573068319

`A056439(n+1)-A000038(n)/2`
-/

namespace A056444.P15015850148573068319
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056439 (n + 1) : ℚ) - (A000038 n : ℚ) / 2

end

end A056444.P15015850148573068319

/-! ## A056444.P12526158170039701679

`A019425(2*n)*A056439(n+1)`
-/

namespace A056444.P12526158170039701679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019425 (2 * n) * A056439 (n + 1)

end

end A056444.P12526158170039701679

/-! ## A056444.P5231964272603862232

`char[A003602(n+1)]*A056439(n+1)`
-/

namespace A056444.P5231964272603862232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A056439 (n + 1)

end

end A056444.P5231964272603862232

/-! ## A056444.P9871812205351019975

`xor(A000007(n), A056439(char[1]+1+n))`
-/

namespace A056444.P9871812205351019975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000007 n) (A056439 ((if ∃ j, f1 j = n then 1 else 0) + 1 + n))

end

end A056444.P9871812205351019975

/-! ## A056444.P10773872891855137173

`A056439(n+1)-and(1, A001223(n+1))`
-/

namespace A056444.P10773872891855137173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056439 (n + 1) - Int.land 1 (A001223 (n + 1))

end

end A056444.P10773872891855137173

/-! ## A056444.P12899838492372927830

`A056439(n+1)-and(1, A035096(n+1))`
-/

namespace A056444.P12899838492372927830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056439 (n + 1) - Int.land 1 (A035096 (n + 1))

end

end A056444.P12899838492372927830

/-! ## A056444.P3520818916591687836

`A056439(n+1)-floor(2/A000040(n+1))`
-/

namespace A056444.P3520818916591687836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056439 (n + 1) - ⌊2 / (A000040 (n + 1) : ℚ)⌋

end

end A056444.P3520818916591687836

/-! ## A056444.P13124240264848988535

`∑{d}[n+1, A008683(#)*A056434((n+1)/#)]`
-/

namespace A056444.P13124240264848988535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A056434 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056444.P13124240264848988535

/-! ## A056444.P13103902041332413796

`A000007(A000007(n)*A056439(n+1))*A056439(n+1)`
-/

namespace A056444.P13103902041332413796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A000007 n * A056439 (n + 1)).toNat * A056439 (n + 1)

end

end A056444.P13103902041332413796

/-! ## A056444.P16716980332222539254

`A056439(n+1)%A000391(n+1)`
-/

namespace A056444.P16716980332222539254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056439 (n + 1)) (A000391 (n + 1))

end

end A056444.P16716980332222539254

/-! ## A056444.P3813356858754058443

`A056439(n+1)%A000029(n)`
-/

namespace A056444.P3813356858754058443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056439 (n + 1)) (A000029 n)

end

end A056444.P3813356858754058443

/-! ## A056444.P8894370509013244273

`and(A056439(n+1), A088041(n+1))`
-/

namespace A056444.P8894370509013244273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A056439 (n + 1)) (A088041 (n + 1))

end

end A056444.P8894370509013244273

/-! ## A056444.P10471920773360164934

`and(A000225(n), A056439(n+1))`
-/

namespace A056444.P10471920773360164934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000225 n) (A056439 (n + 1))

end

end A056444.P10471920773360164934

/-! ## A056444.P17453269360355506633

`and(A056439(n+1), A140252(n))`
-/

namespace A056444.P17453269360355506633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A056439 (n + 1)) (A140252 n)

end

end A056444.P17453269360355506633

/-! ## A056444.P17039837502105057493

`and(A056439(n+1), A140683(n))`
-/

namespace A056444.P17039837502105057493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A056439 (n + 1)) (A140683 n)

end

end A056444.P17039837502105057493

/-! ## A056444.P6129425237682364948

`and(A056439(n+1), A153893(n))`
-/

namespace A056444.P6129425237682364948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A056439 (n + 1)) (A153893 n)

end

end A056444.P6129425237682364948

/-!
# A056445: Number of primitive (period n) step cyclic shifted sequence structures using exactly three different symbols.

The programs for A056445, there is no canonical definition to state claims against.
-/

/-! ## A056445.P10648693815461015634

`A056440(n+1)-A056439(n+1)`
-/

namespace A056445.P10648693815461015634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056440 (n + 1) - A056439 (n + 1)

end

end A056445.P10648693815461015634

/-! ## A056445.P17789505432837590542

`∑{d}[n+1, A008683(#)*A056435((n+1)/#)]`
-/

namespace A056445.P17789505432837590542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A056435 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056445.P17789505432837590542

/-! ## A056445.P3300181316051171875

`A056440(n+1)-A056444(A348776(n+1))`
-/

namespace A056445.P3300181316051171875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056440 (n + 1) - A056444 (A348776 (n + 1)).toNat

end

end A056445.P3300181316051171875

/-! ## A056445.P10497818636894524153

`A056440(n+1)%A056430(n+1)-A056444(n+1)`
-/

namespace A056445.P10497818636894524153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056440 (n + 1)) (A056430 (n + 1)) - A056444 (n + 1)

end

end A056445.P10497818636894524153

/-! ## A056445.P114625960330251156

`A056441(n+1)-(A056446(n+1)+A056439(n+1))`
-/

namespace A056445.P114625960330251156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056441 (n + 1) - (A056446 (n + 1) + A056439 (n + 1))

end

end A056445.P114625960330251156

/-!
# A056446: Number of primitive (period n) step cyclic shifted sequence structures using exactly four different symbols.

The programs for A056446, there is no canonical definition to state claims against.
-/

/-! ## A056446.P630943486538234610

`A056441(n+1)-A056440(n+1)`
-/

namespace A056446.P630943486538234610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056441 (n + 1) - A056440 (n + 1)

end

end A056446.P630943486538234610

/-! ## A056446.P2215273441639424586

`∑{d}[n+1, A008683(#)*A056436((n+1)/#)]`
-/

namespace A056446.P2215273441639424586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A056436 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056446.P2215273441639424586

/-! ## A056446.P11301927141395952235

`A056441(n+1)-(A056445(n+1)+A056439(n+1))`
-/

namespace A056446.P11301927141395952235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056441 (n + 1) - (A056445 (n + 1) + A056439 (n + 1))

end

end A056446.P11301927141395952235

/-! ## A056446.P15495833681085204799

`∑{d}[n+1, A008683(#)*A056431((n+1)/#)]-A056440(n+1)`
-/

namespace A056446.P15495833681085204799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A056431 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat - A056440 (n + 1)

end

end A056446.P15495833681085204799

/-! ## A056446.P2220848648781475627

`A056442(n+1)-(A056447(n+1)+A056440(n+1))`
-/

namespace A056446.P2220848648781475627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056442 (n + 1) - (A056447 (n + 1) + A056440 (n + 1))

end

end A056446.P2220848648781475627

/-! ## A056446.P2425272585691942053

`A056443(n+1)-(A056448(n+1)+A056447(n+1))-A056440(n+1)`
-/

namespace A056446.P2425272585691942053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056443 (n + 1) - (A056448 (n + 1) + A056447 (n + 1)) - A056440 (n + 1)

end

end A056446.P2425272585691942053

/-!
# A056447: Number of primitive (period n) step cyclic shifted sequence structures using exactly five different symbols.

The programs for A056447, there is no canonical definition to state claims against.
-/

/-! ## A056447.P874542421962988547

`A056442(n+1)-A056441(n+1)`
-/

namespace A056447.P874542421962988547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056442 (n + 1) - A056441 (n + 1)

end

end A056447.P874542421962988547

/-! ## A056447.P14803768000035907186

`∑{d}[n+1, A008683(#)*A056437((n+1)/#)]`
-/

namespace A056447.P14803768000035907186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A056437 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056447.P14803768000035907186

/-! ## A056447.P764425322044891864

`∑{d}[n+1, A056437(#)*A253206((n+1)/#)]`
-/

namespace A056447.P764425322044891864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056437 d * A253206 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056447.P764425322044891864

/-! ## A056447.P12343039723903164574

`A056442(n+1)-(A056446(n+1)+A056440(n+1))`
-/

namespace A056447.P12343039723903164574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056442 (n + 1) - (A056446 (n + 1) + A056440 (n + 1))

end

end A056447.P12343039723903164574

/-! ## A056447.P9099369608057447911

`∑{d}[n+1, A008683(#)*A056432((n+1)/#)]-A056441(n+1)`
-/

namespace A056447.P9099369608057447911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A056432 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat - A056441 (n + 1)

end

end A056447.P9099369608057447911

/-! ## A056447.P16777248102765768537

`A056442(n+1)-∑{d}[n+1, A008683(#)*A056431((n+1)/#)]`
-/

namespace A056447.P16777248102765768537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056442 (n + 1) - ∑ d ∈ Nat.divisors (f1 n), A008683 d * A056431 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056447.P16777248102765768537

/-! ## A056447.P3166534533595761747

`A056443(n+1)-(A056448(n+1)+A056441(n+1))`
-/

namespace A056447.P3166534533595761747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056443 (n + 1) - (A056448 (n + 1) + A056441 (n + 1))

end

end A056447.P3166534533595761747

/-!
# A056448: Number of primitive (period n) step cyclic shifted sequence structures using exactly six different symbols.

The programs for A056448, there is no canonical definition to state claims against.
-/

/-! ## A056448.P2197969801151497510

`A056443(n+1)-A056442(n+1)`
-/

namespace A056448.P2197969801151497510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056443 (n + 1) - A056442 (n + 1)

end

end A056448.P2197969801151497510

/-! ## A056448.P14190331368945362460

`∑{d}[n+1, A008683(#)*A056438((n+1)/#)]`
-/

namespace A056448.P14190331368945362460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A056438 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056448.P14190331368945362460

/-! ## A056448.P9858828698103341541

`∑{d}[n+1, A056438(#)*A069158((n+1)/#)]`
-/

namespace A056448.P9858828698103341541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056438 d * A069158 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056448.P9858828698103341541

/-! ## A056448.P12135962105880489484

`∑{d}[n+1, A056438(#)*A133639((n+1)/#)]`
-/

namespace A056448.P12135962105880489484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056438 d * A133639 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056448.P12135962105880489484

/-! ## A056448.P16367487572209705250

`∑{d}[n+1, A056438(#)*A253206((n+1)/#)]`
-/

namespace A056448.P16367487572209705250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056438 d * A253206 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056448.P16367487572209705250

/-! ## A056448.P12150064870942057709

`A056443(n+1)-(A056447(n+1)+A056441(n+1))`
-/

namespace A056448.P12150064870942057709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056443 (n + 1) - (A056447 (n + 1) + A056441 (n + 1))

end

end A056448.P12150064870942057709

/-!
# A056449: a(n) = 3^floor((n+1)/2).

The programs for A056449, the canonical program `A056449.P5897977624199721980` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056449 has offset 0).

The definition of A056449 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A056449.P5897977624199721980

`3^ceil(n/2)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A056449

/-- `3^ceil(n/2)` -/
def P5897977624199721980.Spec : Prop :=
  ∀ n, P5897977624199721980.a n = (A056449 n : ℚ)

end A056449

/-! ## A056449.P9006969413668558248

`3^floor((n+1)/2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A056449.P9006969413668558248
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (⌊(n + 1 : ℚ) / 2⌋ : ℤ)

end

end A056449.P9006969413668558248

namespace A056449

/-- `3^floor((n+1)/2)` -/
def P9006969413668558248.Spec : Prop :=
  ∀ n, P9006969413668558248.a n = (A056449 n : ℚ)

end A056449

/-! ## A056449.P12983705337100254326

`∏[3^(n%2)]`
-/

namespace A056449.P12983705337100254326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ (n % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A056449.P12983705337100254326

namespace A056449

/-- `∏[3^(n%2)]` -/
def P12983705337100254326.Spec : Prop :=
  ∀ n, (P12983705337100254326.a n : ℤ) = A056449 n

end A056449

/-! ## A056449.P1324262912856720422

`∏[3^and(1, n)]`
-/

namespace A056449.P1324262912856720422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ Nat.land 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A056449.P1324262912856720422

namespace A056449

/-- `∏[3^and(1, n)]` -/
def P1324262912856720422.Spec : Prop :=
  ∀ n, (P1324262912856720422.a n : ℤ) = A056449 n

end A056449

/-! ## A056449.P17756166268115652424

`∏[C(3, and(1, n))]`
-/

namespace A056449.P17756166268115652424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 3 (Nat.land 1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A056449.P17756166268115652424

namespace A056449

/-- `∏[C(3, and(1, n))]` -/
def P17756166268115652424.Spec : Prop :=
  ∀ n, (P17756166268115652424.a n : ℤ) = A056449 n

end A056449

/-! ## A056449.P11079361249405010730

`∏[ceil(exp(and(1, n)))]`
-/

namespace A056449.P11079361249405010730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.exp (Nat.land 1 n : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A056449.P11079361249405010730

namespace A056449

/-- `∏[ceil(exp(and(1, n)))]` -/
def P11079361249405010730.Spec : Prop :=
  ∀ n, P11079361249405010730.a n = A056449 n

end A056449

/-! ## A056449.P12426819129397921367

`∏[round(exp(and(1, n)))]`
-/

namespace A056449.P12426819129397921367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.exp (Nat.land 1 n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A056449.P12426819129397921367

namespace A056449

/-- `∏[round(exp(and(1, n)))]` -/
def P12426819129397921367.Spec : Prop :=
  ∀ n, P12426819129397921367.a n = A056449 n

end A056449

/-! ## A056449.P3693553487746003340

`∏[Δ[n²]%4]`
-/

namespace A056449.P3693553487746003340
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A056449.P3693553487746003340

namespace A056449

/-- `∏[Δ[n²]%4]` -/
def P3693553487746003340.Spec : Prop :=
  ∀ n, P3693553487746003340.a n = A056449 n

end A056449

/-! ## A056449.P15111051929647517216

`∏[abs(Δ[xor(1, n)])]`
-/

namespace A056449.P15111051929647517216
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f2 (n + 1) : ℤ) - (f2 n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A056449.P15111051929647517216

namespace A056449

/-- `∏[abs(Δ[xor(1, n)])]` -/
def P15111051929647517216.Spec : Prop :=
  ∀ n, P15111051929647517216.a n = A056449 n

end A056449

/-! ## A056449.P17271460379397622915

`∏[and(3, Δ[n²])]`
-/

namespace A056449.P17271460379397622915
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A056449.P17271460379397622915

namespace A056449

/-- `∏[and(3, Δ[n²])]` -/
def P17271460379397622915.Spec : Prop :=
  ∀ n, P17271460379397622915.a n = A056449 n

end A056449

/-! ## A056449.P18131010599516572795

`∏[dr(Δ[xor(1, n)])]`
-/

namespace A056449.P18131010599516572795
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A056449.P18131010599516572795

namespace A056449

/-- `∏[dr(Δ[xor(1, n)])]` -/
def P18131010599516572795.Spec : Prop :=
  ∀ n, (P18131010599516572795.a n : ℤ) = A056449 n

end A056449

/-! ## A056449.P8523214343264823986

`∏[Δ[record[or(2, n)]]]`
-/

namespace A056449.P8523214343264823986
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A056449.P8523214343264823986

namespace A056449

/-- `∏[Δ[record[or(2, n)]]]` -/
def P8523214343264823986.Spec : Prop :=
  ∀ n, P8523214343264823986.a n = A056449 n

end A056449

/-! ## A056449.P11047051305509191777

`∏[Δ[record[xor(2, n)]]]`
-/

namespace A056449.P11047051305509191777
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A056449.P11047051305509191777

namespace A056449

/-- `∏[Δ[record[xor(2, n)]]]` -/
def P11047051305509191777.Spec : Prop :=
  ∀ n, P11047051305509191777.a n = A056449 n

end A056449

/-! ## A056449.P11554496603953419777

`∏[Δ[comp[or(2, n)]]]`
-/

namespace A056449.P11554496603953419777
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A056449.P11554496603953419777

namespace A056449

/-- `∏[Δ[comp[or(2, n)]]]` -/
def P11554496603953419777.Spec : Prop :=
  ∀ n, P11554496603953419777.a n = A056449 n

end A056449

/-! ## A056449.P2440601562076007725

`∏[C(3, n²%2)]`
-/

namespace A056449.P2440601562076007725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 3 (n ^ 2 % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A056449.P2440601562076007725

namespace A056449

/-- `∏[C(3, n²%2)]` -/
def P2440601562076007725.Spec : Prop :=
  ∀ n, (P2440601562076007725.a n : ℤ) = A056449 n

end A056449

/-! ## A056449.P3891024356926513823

`∏[Δ[or(1, n)]+1]`
-/

namespace A056449.P3891024356926513823
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A056449.P3891024356926513823

namespace A056449

/-- `∏[Δ[or(1, n)]+1]` -/
def P3891024356926513823.Spec : Prop :=
  ∀ n, P3891024356926513823.a n = A056449 n

end A056449

/-! ## A056449.P13347285020004065903

`ogf((1+3x)/(1-3x^2))`
-/

namespace A056449.P13347285020004065903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3] [1, 0, -3] n

end

end A056449.P13347285020004065903

namespace A056449

/-- `ogf((1+3x)/(1-3x^2))` -/
def P13347285020004065903.Spec : Prop :=
  ∀ n, P13347285020004065903.a n = A056449 n

end A056449

/-! ## A056449.P11850923974388061955

`3*a(n-2)` with `a(0)=1, a(1)=3`
-/

namespace A056449.P11850923974388061955
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  3 * a (n - 2)

end

end A056449.P11850923974388061955

namespace A056449

/-- `3*a(n-2)` -/
def P11850923974388061955.Spec : Prop :=
  ∀ n, (P11850923974388061955.a n : ℤ) = A056449 n

end A056449

/-! ## A056449.P14185307597870234896

`∏[(2*n)%4+1]`
-/

namespace A056449.P14185307597870234896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n % 4 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A056449.P14185307597870234896

namespace A056449

/-- `∏[(2*n)%4+1]` -/
def P14185307597870234896.Spec : Prop :=
  ∀ n, (P14185307597870234896.a n : ℤ) = A056449 n

end A056449

/-! ## A056449.P13096865166327843780

`∏[2*and(1, n)+1]`
-/

namespace A056449.P13096865166327843780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.land 1 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A056449.P13096865166327843780

namespace A056449

/-- `∏[2*and(1, n)+1]` -/
def P13096865166327843780.Spec : Prop :=
  ∀ n, (P13096865166327843780.a n : ℤ) = A056449 n

end A056449

/-!
# A056450: a(n) = (3*2^n - (-2)^n)/2.

The programs for A056450, the canonical program `A056450.P16702208862633793880` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056450 has offset 0).

The definition of A056450 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(3*2^n-(-2)^n)/2` (program `A056450.P12432487562642960131`, by `A056450.P12432487562642960131.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A056450.P9066610496710391071

`4^ceil(n/2)`
-/

namespace A056450.P9066610496710391071
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (⌈(n : ℚ) / 2⌉ : ℤ)

end

end A056450.P9066610496710391071

namespace A056450

/-- `4^ceil(n/2)` -/
def P9066610496710391071.Spec : Prop :=
  ∀ n, P9066610496710391071.a n = (A056450 n : ℚ)

end A056450

/-! ## A056450.P16702208862633793880

`4*a(n-2)` with `a(0)=1, a(1)=4`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A056450

/-- `4*a(n-2)` -/
def P16702208862633793880.Spec : Prop :=
  ∀ n, (P16702208862633793880.a n : ℤ) = A056450 n

theorem P16702208862633793880.correct : P16702208862633793880.Spec := by
  intro n
  simp only [A056450]

end A056450

/-! ## A056450.P12432487562642960131

`(3*2^n-(-2)^n)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A056450.P12432487562642960131
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 * 2 ^ n : ℤ) - (-2) ^ n : ℚ) / 2

end

end A056450.P12432487562642960131

namespace A056450

/-- `(3*2^n-(-2)^n)/2` -/
def P12432487562642960131.Spec : Prop :=
  ∀ n, P12432487562642960131.a n = (A056450 n : ℚ)

theorem P12432487562642960131.correct : P12432487562642960131.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A056450, Nat.add_sub_cancel, A056450.P12432487562642960131.a, A056450.P16702208862633793880.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h2 := ih m (by omega)
      simp only [A056450, Nat.add_sub_cancel, A056450.P12432487562642960131.a, A056450.P16702208862633793880.a, SequenceMachineLib.memo_apply] at h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 2 = m by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h2 ⊢
      rw [← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A056450

/-! ## A056450.P17545953790008334773

`∏[4^(n%2)]`
-/

namespace A056450.P17545953790008334773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ (n % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A056450.P17545953790008334773

namespace A056450

/-- `∏[4^(n%2)]` -/
def P17545953790008334773.Spec : Prop :=
  ∀ n, (P17545953790008334773.a n : ℤ) = A056450 n

end A056450

/-! ## A056450.P1296799339287908177

`∏[4^and(1, n)]`
-/

namespace A056450.P1296799339287908177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ Nat.land 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A056450.P1296799339287908177

namespace A056450

/-- `∏[4^and(1, n)]` -/
def P1296799339287908177.Spec : Prop :=
  ∀ n, (P1296799339287908177.a n : ℤ) = A056450 n

end A056450

/-! ## A056450.P5688730167755979817

`∏[C(4, and(1, n))]`
-/

namespace A056450.P5688730167755979817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 4 (Nat.land 1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A056450.P5688730167755979817

namespace A056450

/-- `∏[C(4, and(1, n))]` -/
def P5688730167755979817.Spec : Prop :=
  ∀ n, (P5688730167755979817.a n : ℤ) = A056450 n

end A056450

/-! ## A056450.P1226103472121362216

`∏[gcd(2, n+1)²]`
-/

namespace A056450.P1226103472121362216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A056450.P1226103472121362216

namespace A056450

/-- `∏[gcd(2, n+1)²]` -/
def P1226103472121362216.Spec : Prop :=
  ∀ n, (P1226103472121362216.a n : ℤ) = A056450 n

end A056450

/-! ## A056450.P14010337209793427716

`∏[gcd(4, (1-n)²)]`
-/

namespace A056450.P14010337209793427716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 4 ((1 - (n : ℤ)) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A056450.P14010337209793427716

namespace A056450

/-- `∏[gcd(4, (1-n)²)]` -/
def P14010337209793427716.Spec : Prop :=
  ∀ n, (P14010337209793427716.a n : ℤ) = A056450 n

end A056450

/-! ## A056450.P4622360675631267364

`∏[(and(1, n)+1)²]`
-/

namespace A056450.P4622360675631267364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A056450.P4622360675631267364

namespace A056450

/-- `∏[(and(1, n)+1)²]` -/
def P4622360675631267364.Spec : Prop :=
  ∀ n, (P4622360675631267364.a n : ℤ) = A056450 n

end A056450

/-! ## A056450.P8481651954319014590

`(2^∑[and(1, n)])²`
-/

namespace A056450.P8481651954319014590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 ^ (∑ j ∈ Finset.range (n + 1), f1 j)) ^ 2

end

end A056450.P8481651954319014590

namespace A056450

/-- `(2^∑[and(1, n)])²` -/
def P8481651954319014590.Spec : Prop :=
  ∀ n, (P8481651954319014590.a n : ℤ) = A056450 n

end A056450

/-! ## A056450.P17784385742386013351

`∏[C(4, n²%2)]`
-/

namespace A056450.P17784385742386013351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 4 (n ^ 2 % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A056450.P17784385742386013351

namespace A056450

/-- `∏[C(4, n²%2)]` -/
def P17784385742386013351.Spec : Prop :=
  ∀ n, (P17784385742386013351.a n : ℤ) = A056450 n

end A056450

/-! ## A056450.P4755367261293933168

`ogf((1+4x)/(1-4x^2))`
-/

namespace A056450.P4755367261293933168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4] [1, 0, -4] n

end

end A056450.P4755367261293933168

namespace A056450

/-- `ogf((1+4x)/(1-4x^2))` -/
def P4755367261293933168.Spec : Prop :=
  ∀ n, P4755367261293933168.a n = A056450 n

end A056450

/-! ## A056450.P17527947624721824489

`∏[3*and(1, n)+1]`
-/

namespace A056450.P17527947624721824489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Nat.land 1 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A056450.P17527947624721824489

namespace A056450

/-- `∏[3*and(1, n)+1]` -/
def P17527947624721824489.Spec : Prop :=
  ∀ n, (P17527947624721824489.a n : ℤ) = A056450 n

end A056450

/-! ## A056450.P14978296370976806868

`∏[5-a(n-1)]` with `a(0)=1`
-/

namespace A056450.P14978296370976806868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  5 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A056450.P14978296370976806868

namespace A056450

/-- `∏[5-a(n-1)]` -/
def P14978296370976806868.Spec : Prop :=
  ∀ n, P14978296370976806868.a n = A056450 n

end A056450

/-! ## A056450.P14843755632733791273

`∏[or(n+1, -2)²]`
-/

namespace A056450.P14843755632733791273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n + 1 : ℤ) (-2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A056450.P14843755632733791273

namespace A056450

/-- `∏[or(n+1, -2)²]` -/
def P14843755632733791273.Spec : Prop :=
  ∀ n, P14843755632733791273.a n = A056450 n

end A056450

/-! ## A056450.P12784644418595372550

`∏[or(1-n, -2)]²`
-/

namespace A056450.P12784644418595372550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (1 - (n : ℤ)) (-2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A056450.P12784644418595372550

namespace A056450

/-- `∏[or(1-n, -2)]²` -/
def P12784644418595372550.Spec : Prop :=
  ∀ n, P12784644418595372550.a n = A056450 n

end A056450

/-! ## A056450.P7662519032415918851

`∏[(2/or(n, -2))²]`
-/

namespace A056450.P7662519032415918851
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 / (Int.lor (n : ℤ) (-2) : ℚ)) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A056450.P7662519032415918851

namespace A056450

/-- `∏[(2/or(n, -2))²]` -/
def P7662519032415918851.Spec : Prop :=
  ∀ n, P7662519032415918851.a n = (A056450 n : ℚ)

end A056450

/-! ## A056450.P16605396169485106976

`∏[and(3, n²-3)²]`
-/

namespace A056450.P16605396169485106976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 ((n ^ 2 : ℤ) - 3) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A056450.P16605396169485106976

namespace A056450

/-- `∏[and(3, n²-3)²]` -/
def P16605396169485106976.Spec : Prop :=
  ∀ n, P16605396169485106976.a n = A056450 n

end A056450

/-! ## A056450.P7548746124578208262

`∏[((2*n)%4)!²]`
-/

namespace A056450.P7548746124578208262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (2 * n % 4) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A056450.P7548746124578208262

namespace A056450

/-- `∏[((2*n)%4)!²]` -/
def P7548746124578208262.Spec : Prop :=
  ∀ n, (P7548746124578208262.a n : ℤ) = A056450 n

end A056450

/-! ## A056450.P1347008080637984710

`∏[(2*and(1, n))!²]`
-/

namespace A056450.P1347008080637984710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (2 * Nat.land 1 n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A056450.P1347008080637984710

namespace A056450

/-- `∏[(2*and(1, n))!²]` -/
def P1347008080637984710.Spec : Prop :=
  ∀ n, (P1347008080637984710.a n : ℤ) = A056450 n

end A056450

/-!
# A056451: Number of palindromes using a maximum of five different symbols.

The programs for A056451, the canonical program `A056451.P6670273673849657536` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056451 has offset 0).

The definition of A056451 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A056451.P3483668879614758724

`5^ceil(n/2)`
-/

namespace A056451.P3483668879614758724
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) ^ (⌈(n : ℚ) / 2⌉ : ℤ)

end

end A056451.P3483668879614758724

namespace A056451

/-- `5^ceil(n/2)` -/
def P3483668879614758724.Spec : Prop :=
  ∀ n, P3483668879614758724.a n = (A056451 n : ℚ)

end A056451

/-! ## A056451.P6670273673849657536

`5*a(n-2)` with `a(0)=1, a(1)=5`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A056451

/-- `5*a(n-2)` -/
def P6670273673849657536.Spec : Prop :=
  ∀ n, (P6670273673849657536.a n : ℤ) = A056451 n

theorem P6670273673849657536.correct : P6670273673849657536.Spec := by
  intro n
  simp only [A056451]

end A056451

/-! ## A056451.P9316134481228106499

`∏[5^(n%2)]`
-/

namespace A056451.P9316134481228106499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ (n % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A056451.P9316134481228106499

namespace A056451

/-- `∏[5^(n%2)]` -/
def P9316134481228106499.Spec : Prop :=
  ∀ n, (P9316134481228106499.a n : ℤ) = A056451 n

end A056451

/-! ## A056451.P1707368981560205541

`∏[5^and(1, n)]`
-/

namespace A056451.P1707368981560205541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ Nat.land 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A056451.P1707368981560205541

namespace A056451

/-- `∏[5^and(1, n)]` -/
def P1707368981560205541.Spec : Prop :=
  ∀ n, (P1707368981560205541.a n : ℤ) = A056451 n

end A056451

/-! ## A056451.P5235054443573926556

`∏[C(5, and(1, n))]`
-/

namespace A056451.P5235054443573926556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 5 (Nat.land 1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A056451.P5235054443573926556

namespace A056451

/-- `∏[C(5, and(1, n))]` -/
def P5235054443573926556.Spec : Prop :=
  ∀ n, (P5235054443573926556.a n : ℤ) = A056451 n

end A056451

/-! ## A056451.P4402077836812191671

`∏[C(5, n²%2)]`
-/

namespace A056451.P4402077836812191671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 5 (n ^ 2 % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A056451.P4402077836812191671

namespace A056451

/-- `∏[C(5, n²%2)]` -/
def P4402077836812191671.Spec : Prop :=
  ∀ n, (P4402077836812191671.a n : ℤ) = A056451 n

end A056451

/-! ## A056451.P16952301437193973805

`∏[Δ[xor(1, n)]+2]`
-/

namespace A056451.P16952301437193973805
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A056451.P16952301437193973805

namespace A056451

/-- `∏[Δ[xor(1, n)]+2]` -/
def P16952301437193973805.Spec : Prop :=
  ∀ n, P16952301437193973805.a n = A056451 n

end A056451

/-! ## A056451.P7568809249796867539

`∏[Δ[xor(1, 3*n)]]`
-/

namespace A056451.P7568809249796867539
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (3 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A056451.P7568809249796867539

namespace A056451

/-- `∏[Δ[xor(1, 3*n)]]` -/
def P7568809249796867539.Spec : Prop :=
  ∀ n, P7568809249796867539.a n = A056451 n

end A056451

/-! ## A056451.P2667882840913390381

`ogf((1+5x)/(1-5x^2))`
-/

namespace A056451.P2667882840913390381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 5] [1, 0, -5] n

end

end A056451.P2667882840913390381

namespace A056451

/-- `ogf((1+5x)/(1-5x^2))` -/
def P2667882840913390381.Spec : Prop :=
  ∀ n, P2667882840913390381.a n = A056451 n

end A056451

/-! ## A056451.P4900077260331363483

`∏[4*and(1, n)+1]`
-/

namespace A056451.P4900077260331363483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * Nat.land 1 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A056451.P4900077260331363483

namespace A056451

/-- `∏[4*and(1, n)+1]` -/
def P4900077260331363483.Spec : Prop :=
  ∀ n, (P4900077260331363483.a n : ℤ) = A056451 n

end A056451

/-! ## A056451.P854342497921646086

`or(1, 5^round(n/2))`
-/

namespace A056451.P854342497921646086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (SequenceMachineLib.roundAway ((5 : ℚ) ^ (SequenceMachineLib.roundAway ((n : ℚ) / 2) : ℤ)))

end

end A056451.P854342497921646086

namespace A056451

/-- `or(1, 5^round(n/2))` -/
def P854342497921646086.Spec : Prop :=
  ∀ n, P854342497921646086.a n = A056451 n

end A056451

/-! ## A056451.P17501669881521946122

`∏[8/gcd(2, n)-3]`
-/

namespace A056451.P17501669881521946122
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  8 / (Nat.gcd 2 n : ℚ) - 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A056451.P17501669881521946122

namespace A056451

/-- `∏[8/gcd(2, n)-3]` -/
def P17501669881521946122.Spec : Prop :=
  ∀ n, P17501669881521946122.a n = (A056451 n : ℚ)

end A056451

/-! ## A056451.P4317674323221490114

`∏[and(5, 1-4*n)]`
-/

namespace A056451.P4317674323221490114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 5 (1 - (4 * n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A056451.P4317674323221490114

namespace A056451

/-- `∏[and(5, 1-4*n)]` -/
def P4317674323221490114.Spec : Prop :=
  ∀ n, P4317674323221490114.a n = A056451 n

end A056451

/-! ## A056451.P15045502953227664197

`∏[gcd(5, (n+1)%2)]`
-/

namespace A056451.P15045502953227664197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 5 ((n + 1) % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A056451.P15045502953227664197

namespace A056451

/-- `∏[gcd(5, (n+1)%2)]` -/
def P15045502953227664197.Spec : Prop :=
  ∀ n, (P15045502953227664197.a n : ℤ) = A056451 n

end A056451

/-! ## A056451.P8140297790560233637

`∏[6-a(n-1)]` with `a(0)=1`
-/

namespace A056451.P8140297790560233637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  6 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A056451.P8140297790560233637

namespace A056451

/-- `∏[6-a(n-1)]` -/
def P8140297790560233637.Spec : Prop :=
  ∀ n, P8140297790560233637.a n = A056451 n

end A056451

/-! ## A056451.P14286880139404656145

`(sqrt(5)^∑[and(1, n)])²`
-/

namespace A056451.P14286880139404656145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.sqrt (5 : ℝ) ^ (∑ j ∈ Finset.range (n + 1), f1 j)) ^ 2

end

end A056451.P14286880139404656145

namespace A056451

/-- `(sqrt(5)^∑[and(1, n)])²` -/
def P14286880139404656145.Spec : Prop :=
  ∀ n, P14286880139404656145.a n = (A056451 n : ℝ)

end A056451

/-! ## A056451.P8840443085307481470

`∏[ceil(exp(acos(char[2*n])))]`
-/

namespace A056451.P8840443085307481470
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.exp (Real.arccos ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℝ))⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A056451.P8840443085307481470

namespace A056451

/-- `∏[ceil(exp(acos(char[2*n])))]` -/
def P8840443085307481470.Spec : Prop :=
  ∀ n, P8840443085307481470.a n = A056451 n

end A056451

/-! ## A056451.P10259022901387017140

`∏[round(exp(acos(char[2*n])))]`
-/

namespace A056451.P10259022901387017140
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.exp (Real.arccos ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℝ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A056451.P10259022901387017140

namespace A056451

/-- `∏[round(exp(acos(char[2*n])))]` -/
def P10259022901387017140.Spec : Prop :=
  ∀ n, P10259022901387017140.a n = A056451 n

end A056451

/-! ## A056451.P16715810074998074074

`∏[((2*n)%4)²+1]`
-/

namespace A056451.P16715810074998074074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n % 4) ^ 2 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A056451.P16715810074998074074

namespace A056451

/-- `∏[((2*n)%4)²+1]` -/
def P16715810074998074074.Spec : Prop :=
  ∀ n, (P16715810074998074074.a n : ℤ) = A056451 n

end A056451

/-! ## A056451.P804992040282053977

`∏[9-gcd(8, (2*n)²)]`
-/

namespace A056451.P804992040282053977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - (Nat.gcd 8 ((2 * n) ^ 2) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A056451.P804992040282053977

namespace A056451

/-- `∏[9-gcd(8, (2*n)²)]` -/
def P804992040282053977.Spec : Prop :=
  ∀ n, P804992040282053977.a n = A056451 n

end A056451

/-!
# A056452: a(n) = 6^floor((n+1)/2).

The programs for A056452, the canonical program `A056452.P11000333368806549846` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056452 has offset 0).

The definition of A056452 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A056452.P6433303754097633689

`6^ceil(n/2)`
-/

namespace A056452.P6433303754097633689
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 : ℚ) ^ (⌈(n : ℚ) / 2⌉ : ℤ)

end

end A056452.P6433303754097633689

namespace A056452

/-- `6^ceil(n/2)` -/
def P6433303754097633689.Spec : Prop :=
  ∀ n, P6433303754097633689.a n = (A056452 n : ℚ)

end A056452

/-! ## A056452.P11000333368806549846

`6*a(n-2)` with `a(0)=1, a(1)=6`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A056452

/-- `6*a(n-2)` -/
def P11000333368806549846.Spec : Prop :=
  ∀ n, (P11000333368806549846.a n : ℤ) = A056452 n

theorem P11000333368806549846.correct : P11000333368806549846.Spec := by
  intro n
  simp only [A056452]

end A056452

/-! ## A056452.P15343463421138567329

`6^floor((n+1)/2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A056452.P15343463421138567329
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 : ℚ) ^ (⌊(n + 1 : ℚ) / 2⌋ : ℤ)

end

end A056452.P15343463421138567329

namespace A056452

/-- `6^floor((n+1)/2)` -/
def P15343463421138567329.Spec : Prop :=
  ∀ n, P15343463421138567329.a n = (A056452 n : ℚ)

end A056452

/-! ## A056452.P7484080064087532726

`∏[6^(n%2)]`
-/

namespace A056452.P7484080064087532726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 ^ (n % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A056452.P7484080064087532726

namespace A056452

/-- `∏[6^(n%2)]` -/
def P7484080064087532726.Spec : Prop :=
  ∀ n, (P7484080064087532726.a n : ℤ) = A056452 n

end A056452

/-! ## A056452.P15315428092008990563

`∏[6^and(1, n)]`
-/

namespace A056452.P15315428092008990563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 ^ Nat.land 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A056452.P15315428092008990563

namespace A056452

/-- `∏[6^and(1, n)]` -/
def P15315428092008990563.Spec : Prop :=
  ∀ n, (P15315428092008990563.a n : ℤ) = A056452 n

end A056452

/-! ## A056452.P10880734828204202693

`∏[C(6, and(1, n))]`
-/

namespace A056452.P10880734828204202693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 6 (Nat.land 1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A056452.P10880734828204202693

namespace A056452

/-- `∏[C(6, and(1, n))]` -/
def P10880734828204202693.Spec : Prop :=
  ∀ n, (P10880734828204202693.a n : ℤ) = A056452 n

end A056452

/-! ## A056452.P8800468884682068603

`∏[((3*n)%6)!]`
-/

namespace A056452.P8800468884682068603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (3 * n % 6)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A056452.P8800468884682068603

namespace A056452

/-- `∏[((3*n)%6)!]` -/
def P8800468884682068603.Spec : Prop :=
  ∀ n, (P8800468884682068603.a n : ℤ) = A056452 n

end A056452

/-! ## A056452.P3711056043996261531

`∏[(3*and(1, n))!]`
-/

namespace A056452.P3711056043996261531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (3 * Nat.land 1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A056452.P3711056043996261531

namespace A056452

/-- `∏[(3*and(1, n))!]` -/
def P3711056043996261531.Spec : Prop :=
  ∀ n, (P3711056043996261531.a n : ℤ) = A056452 n

end A056452

/-! ## A056452.P11223846973535575930

`∏[C(6, n²%2)]`
-/

namespace A056452.P11223846973535575930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 6 (n ^ 2 % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A056452.P11223846973535575930

namespace A056452

/-- `∏[C(6, n²%2)]` -/
def P11223846973535575930.Spec : Prop :=
  ∀ n, (P11223846973535575930.a n : ℤ) = A056452 n

end A056452

/-! ## A056452.P1658984746437917735

`∏[and(3, -n²)!]`
-/

namespace A056452.P1658984746437917735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Int.land 3 (-(n ^ 2 : ℤ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A056452.P1658984746437917735

namespace A056452

/-- `∏[and(3, -n²)!]` -/
def P1658984746437917735.Spec : Prop :=
  ∀ n, (P1658984746437917735.a n : ℤ) = A056452 n

end A056452

/-! ## A056452.P10939774328021016021

`∏[Δ[comp[or(2, n)]]!]`
-/

namespace A056452.P10939774328021016021
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A056452.P10939774328021016021

namespace A056452

/-- `∏[Δ[comp[or(2, n)]]!]` -/
def P10939774328021016021.Spec : Prop :=
  ∀ n, (P10939774328021016021.a n : ℤ) = A056452 n

end A056452

/-! ## A056452.P14014769525428453441

`ogf((1+6x)/(1-6x^2))`
-/

namespace A056452.P14014769525428453441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 6] [1, 0, -6] n

end

end A056452.P14014769525428453441

namespace A056452

/-- `ogf((1+6x)/(1-6x^2))` -/
def P14014769525428453441.Spec : Prop :=
  ∀ n, P14014769525428453441.a n = A056452 n

end A056452

/-! ## A056452.P9203210644591043403

`∏[5*and(1, n)+1]`
-/

namespace A056452.P9203210644591043403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * Nat.land 1 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A056452.P9203210644591043403

namespace A056452

/-- `∏[5*and(1, n)+1]` -/
def P9203210644591043403.Spec : Prop :=
  ∀ n, (P9203210644591043403.a n : ℤ) = A056452 n

end A056452

/-! ## A056452.P973190641535512584

`∏[10/gcd(2, n)-4]`
-/

namespace A056452.P973190641535512584
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  10 / (Nat.gcd 2 n : ℚ) - 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A056452.P973190641535512584

namespace A056452

/-- `∏[10/gcd(2, n)-4]` -/
def P973190641535512584.Spec : Prop :=
  ∀ n, P973190641535512584.a n = (A056452 n : ℚ)

end A056452

/-! ## A056452.P13294371006770628059

`∏[gcd(6, (n+1)%2)]`
-/

namespace A056452.P13294371006770628059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 6 ((n + 1) % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A056452.P13294371006770628059

namespace A056452

/-- `∏[gcd(6, (n+1)%2)]` -/
def P13294371006770628059.Spec : Prop :=
  ∀ n, (P13294371006770628059.a n : ℤ) = A056452 n

end A056452

/-! ## A056452.P9377892205017375312

`∏[7-a(n-1)]` with `a(0)=1`
-/

namespace A056452.P9377892205017375312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  7 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A056452.P9377892205017375312

namespace A056452

/-- `∏[7-a(n-1)]` -/
def P9377892205017375312.Spec : Prop :=
  ∀ n, P9377892205017375312.a n = A056452 n

end A056452

/-! ## A056452.P4422485489058042185

`∏[C(4, gcd(4, 2*n))]`
-/

namespace A056452.P4422485489058042185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 4 (Nat.gcd 4 (2 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A056452.P4422485489058042185

namespace A056452

/-- `∏[C(4, gcd(4, 2*n))]` -/
def P4422485489058042185.Spec : Prop :=
  ∀ n, (P4422485489058042185.a n : ℤ) = A056452 n

end A056452

/-! ## A056452.P703813700199586851

`∏[(2-(-1)^n)!]`
-/

namespace A056452.P703813700199586851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (2 - (-1) ^ n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A056452.P703813700199586851

namespace A056452

/-- `∏[(2-(-1)^n)!]` -/
def P703813700199586851.Spec : Prop :=
  ∀ n, (P703813700199586851.a n : ℤ) = A056452 n

end A056452

/-! ## A056452.P277698615427069556

`floor(6^∑[1-a(n-1)])` with `a(0)=0`
-/

namespace A056452.P277698615427069556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  1 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(6 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)⌋

end

end A056452.P277698615427069556

namespace A056452

/-- `floor(6^∑[1-a(n-1)])` -/
def P277698615427069556.Spec : Prop :=
  ∀ n, P277698615427069556.a n = A056452 n

end A056452

/-! ## A056452.P8555124251965799128

`∏[A010687(n)]`
-/

namespace A056452.P8555124251965799128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010687 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A056452.P8555124251965799128

namespace A056452

/-- `∏[A010687(n)]` -/
def P8555124251965799128.Spec : Prop :=
  ∀ n, P8555124251965799128.a n = A056452 n

end A056452

/-!
# A056453: Number of palindromes of length n using exactly two different symbols.

The programs for A056453, the canonical program `A056453.P15792720137673546609` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056453 has offset 1).

The definition of A056453 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A056453.P15792720137673546609

`2^(floor(n/2)+1)-2`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A056453

/-- `2^(floor(n/2)+1)-2` -/
def P15792720137673546609.Spec : Prop :=
  ∀ n, P15792720137673546609.a n = (A056453 (n + 1) : ℚ)

end A056453

/-! ## A056453.P3815586883967337137

`∑[ogf(2x^2/(1-2x^2))]`
-/

namespace A056453.P3815586883967337137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 2] [1, 0, -2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056453.P3815586883967337137

namespace A056453

/-- `∑[ogf(2x^2/(1-2x^2))]` -/
def P3815586883967337137.Spec : Prop :=
  ∀ n, P3815586883967337137.a n = A056453 (n + 1)

end A056453

/-! ## A056453.P17089736417826621648

`ogf(2x^2/(1-x-2x^2+2x^3))`
-/

namespace A056453.P17089736417826621648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 2] [1, -1, -2, 2] n

end

end A056453.P17089736417826621648

namespace A056453

/-- `ogf(2x^2/(1-x-2x^2+2x^3))` -/
def P17089736417826621648.Spec : Prop :=
  ∀ n, P17089736417826621648.a n = A056453 (n + 1)

end A056453

/-! ## A056453.P5761719685250446256

`2*(a(n-2)+1)` with `a(0)=0, a(1)=0`
-/

namespace A056453.P5761719685250446256
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n a =>
  2 * (a (n - 2) + 1)

end

end A056453.P5761719685250446256

namespace A056453

/-- `2*(a(n-2)+1)` -/
def P5761719685250446256.Spec : Prop :=
  ∀ n, (P5761719685250446256.a n : ℤ) = A056453 (n + 1)

end A056453

/-! ## A056453.P11040543610494740480

`lcm(2, a(n-2)+1)` with `a(0)=0, a(1)=0`
-/

namespace A056453.P11040543610494740480
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n a =>
  Nat.lcm 2 (a (n - 2) + 1)

end

end A056453.P11040543610494740480

namespace A056453

/-- `lcm(2, a(n-2)+1)` -/
def P11040543610494740480.Spec : Prop :=
  ∀ n, (P11040543610494740480.a n : ℤ) = A056453 (n + 1)

end A056453

/-! ## A056453.P6043292193449992674

`2*or(1, a(n-2))` with `a(0)=0, a(1)=0`
-/

namespace A056453.P6043292193449992674
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n a =>
  2 * Nat.lor 1 (a (n - 2))

end

end A056453.P6043292193449992674

namespace A056453

/-- `2*or(1, a(n-2))` -/
def P6043292193449992674.Spec : Prop :=
  ∀ n, (P6043292193449992674.a n : ℤ) = A056453 (n + 1)

end A056453

/-! ## A056453.P13654387067771697475

`2*xor(1, a(n-2))` with `a(0)=0, a(1)=0`
-/

namespace A056453.P13654387067771697475
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n a =>
  2 * Nat.xor 1 (a (n - 2))

end

end A056453.P13654387067771697475

namespace A056453

/-- `2*xor(1, a(n-2))` -/
def P13654387067771697475.Spec : Prop :=
  ∀ n, (P13654387067771697475.a n : ℤ) = A056453 (n + 1)

end A056453

/-! ## A056453.P12884068640932997902

`∑[2*a(n-2)]` with `a(0)=0, a(1)=0, a(2)=2`
-/

namespace A056453.P12884068640932997902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 2] fun n f1 =>
  2 * f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056453.P12884068640932997902

namespace A056453

/-- `∑[2*a(n-2)]` -/
def P12884068640932997902.Spec : Prop :=
  ∀ n, (P12884068640932997902.a n : ℤ) = A056453 (n + 1)

end A056453

/-! ## A056453.P11285161270377589871

`or(a(n-2)+2, a(n-1))` with `a(0)=0, a(1)=0`
-/

namespace A056453.P11285161270377589871
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n a =>
  Nat.lor (a (n - 2) + 2) (a (n - 1))

end

end A056453.P11285161270377589871

namespace A056453

/-- `or(a(n-2)+2, a(n-1))` -/
def P11285161270377589871.Spec : Prop :=
  ∀ n, (P11285161270377589871.a n : ℤ) = A056453 (n + 1)

end A056453

/-! ## A056453.P1382387977109907230

`xor(a(n-2)+2, a(n-2))` with `a(0)=0, a(1)=0`
-/

namespace A056453.P1382387977109907230
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n a =>
  Nat.xor (a (n - 2) + 2) (a (n - 2))

end

end A056453.P1382387977109907230

namespace A056453

/-- `xor(a(n-2)+2, a(n-2))` -/
def P1382387977109907230.Spec : Prop :=
  ∀ n, (P1382387977109907230.a n : ℤ) = A056453 (n + 1)

end A056453

/-! ## A056453.P12773177609701727952

`(a(n-2)+1)/(1-1/2)` with `a(0)=0, a(1)=0`
-/

namespace A056453.P12773177609701727952
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 0] fun n a =>
  (a (n - 2) + 1) / (1 - (1 : ℚ) / 2)

end

end A056453.P12773177609701727952

namespace A056453

/-- `(a(n-2)+1)/(1-1/2)` -/
def P12773177609701727952.Spec : Prop :=
  ∀ n, P12773177609701727952.a n = (A056453 (n + 1) : ℚ)

end A056453

/-! ## A056453.P3877363236102066668

`4*(1-(1-a(n-2))/2)` with `a(0)=0, a(1)=0`
-/

namespace A056453.P3877363236102066668
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 0] fun n a =>
  4 * (1 - (1 - a (n - 2)) / 2)

end

end A056453.P3877363236102066668

namespace A056453

/-- `4*(1-(1-a(n-2))/2)` -/
def P3877363236102066668.Spec : Prop :=
  ∀ n, P3877363236102066668.a n = (A056453 (n + 1) : ℚ)

end A056453

/-! ## A056453.P2454145914357877652

`abs(a(n-2)+a(n-2)+2)` with `a(0)=0, a(1)=0`
-/

namespace A056453.P2454145914357877652
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n a =>
  a (n - 2) + (a (n - 2) + 2)

end

end A056453.P2454145914357877652

namespace A056453

/-- `abs(a(n-2)+a(n-2)+2)` -/
def P2454145914357877652.Spec : Prop :=
  ∀ n, (P2454145914357877652.a n : ℤ) = A056453 (n + 1)

end A056453

/-! ## A056453.P15558012280973541786

`floor(a(n-2)+a(n-2)+2)` with `a(0)=0, a(1)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A056453.P15558012280973541786
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n a =>
  a (n - 2) + (a (n - 2) + 2)

end

end A056453.P15558012280973541786

namespace A056453

/-- `floor(a(n-2)+a(n-2)+2)` -/
def P15558012280973541786.Spec : Prop :=
  ∀ n, (P15558012280973541786.a n : ℤ) = A056453 (n + 1)

end A056453

/-! ## A056453.P5124192998914554552

`ceil(a(n-2)+a(n-2)+2)` with `a(0)=0, a(1)=0`

`ceil` is left out, it is the identity on integers.
-/

namespace A056453.P5124192998914554552
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n a =>
  a (n - 2) + (a (n - 2) + 2)

end

end A056453.P5124192998914554552

namespace A056453

/-- `ceil(a(n-2)+a(n-2)+2)` -/
def P5124192998914554552.Spec : Prop :=
  ∀ n, (P5124192998914554552.a n : ℤ) = A056453 (n + 1)

end A056453

/-! ## A056453.P8660172163670170944

`round(a(n-2)+a(n-2)+2)` with `a(0)=0, a(1)=0`

`round` is left out, it is the identity on integers.
-/

namespace A056453.P8660172163670170944
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n a =>
  a (n - 2) + (a (n - 2) + 2)

end

end A056453.P8660172163670170944

namespace A056453

/-- `round(a(n-2)+a(n-2)+2)` -/
def P8660172163670170944.Spec : Prop :=
  ∀ n, (P8660172163670170944.a n : ℤ) = A056453 (n + 1)

end A056453

/-! ## A056453.P915631465605574639

`(1-(n%2-a(n-1)))*gcd(2, n)` with `a(0)=0`
-/

namespace A056453.P915631465605574639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (1 - (((n % 2 : ℕ) : ℤ) - a (n - 1))) * (Nat.gcd 2 n : ℤ)

end

end A056453.P915631465605574639

namespace A056453

/-- `(1-(n%2-a(n-1)))*gcd(2, n)` -/
def P915631465605574639.Spec : Prop :=
  ∀ n, P915631465605574639.a n = A056453 (n + 1)

end A056453

/-! ## A056453.P3600754674572206479

`2*(1-(a(n-2)-2*a(n-2)))` with `a(0)=0, a(1)=0`
-/

namespace A056453.P3600754674572206479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  2 * (1 - (a (n - 2) - 2 * a (n - 2)))

end

end A056453.P3600754674572206479

namespace A056453

/-- `2*(1-(a(n-2)-2*a(n-2)))` -/
def P3600754674572206479.Spec : Prop :=
  ∀ n, P3600754674572206479.a n = A056453 (n + 1)

end A056453

/-! ## A056453.P4368934222898732697

`gcd(a(n-2)+a(n-2)+2, a(n-1)%2)` with `a(0)=0, a(1)=0`
-/

namespace A056453.P4368934222898732697
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n a =>
  Nat.gcd (a (n - 2) + (a (n - 2) + 2)) (a (n - 1) % 2)

end

end A056453.P4368934222898732697

namespace A056453

/-- `gcd(a(n-2)+a(n-2)+2, a(n-1)%2)` -/
def P4368934222898732697.Spec : Prop :=
  ∀ n, (P4368934222898732697.a n : ℤ) = A056453 (n + 1)

end A056453

/-! ## A056453.P16041581749633557159

`abs(Δ[A094024(n)])`
-/

namespace A056453.P16041581749633557159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094024 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A056453.P16041581749633557159

namespace A056453

/-- `abs(Δ[A094024(n)])` -/
def P16041581749633557159.Spec : Prop :=
  ∀ n, P16041581749633557159.a n = A056453 (n + 1)

end A056453

/-!
# A056454: Number of palindromes of length n using exactly three different symbols.

The programs for A056454, the canonical program `A056454.P10309732254336888628` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056454 has offset 1).

The definition of A056454 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 418 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A056454.P10309732254336888628

`A056489(or(1, n))`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A056454

/-- `A056489(or(1, n))` -/
def P10309732254336888628.Spec : Prop :=
  ∀ n, P10309732254336888628.a n = A056454 (n + 1)

theorem P10309732254336888628.correct : P10309732254336888628.Spec := by
  intro n
  simp only [A056454, Nat.add_sub_cancel]

end A056454

/-! ## A056454.P14439270843158021

`∑{d}[n+1, A056464(#)]`
-/

namespace A056454.P14439270843158021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056464 d

end

end A056454.P14439270843158021

namespace A056454

/-- `∑{d}[n+1, A056464(#)]` -/
def P14439270843158021.Spec : Prop :=
  ∀ n, P14439270843158021.a n = A056454 (n + 1)

end A056454

/-! ## A056454.P168646800909658920

`A001117(∑[char[2*n]])`
-/

namespace A056454.P168646800909658920
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001117 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A056454.P168646800909658920

namespace A056454

/-- `A001117(∑[char[2*n]])` -/
def P168646800909658920.Spec : Prop :=
  ∀ n, P168646800909658920.a n = A056454 (n + 1)

end A056454

/-! ## A056454.P6336966640001562192

`A056489(n-char[2*n+1]+1)`
-/

namespace A056454.P6336966640001562192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056489 ((n : ℤ) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + 1).toNat

end

end A056454.P6336966640001562192

namespace A056454

/-- `A056489(n-char[2*n+1]+1)` -/
def P6336966640001562192.Spec : Prop :=
  ∀ n, P6336966640001562192.a n = A056454 (n + 1)

end A056454

/-! ## A056454.P17219844147732372190

`2*A094033(A008619(n))`
-/

namespace A056454.P17219844147732372190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A094033 (A008619 n).toNat

end

end A056454.P17219844147732372190

namespace A056454

/-- `2*A094033(A008619(n))` -/
def P17219844147732372190.Spec : Prop :=
  ∀ n, P17219844147732372190.a n = A056454 (n + 1)

end A056454

/-! ## A056454.P17825390784166193966

`2*A094033(A065033(n+1))`
-/

namespace A056454.P17825390784166193966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A094033 (A065033 (n + 1)).toNat

end

end A056454.P17825390784166193966

namespace A056454

/-- `2*A094033(A065033(n+1))` -/
def P17825390784166193966.Spec : Prop :=
  ∀ n, P17825390784166193966.a n = A056454 (n + 1)

end A056454

/-! ## A056454.P3857382315656024792

`2*A094033(A110654(n+1))`
-/

namespace A056454.P3857382315656024792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A094033 (A110654 (n + 1)).toNat

end

end A056454.P3857382315656024792

namespace A056454

/-- `2*A094033(A110654(n+1))` -/
def P3857382315656024792.Spec : Prop :=
  ∀ n, P3857382315656024792.a n = A056454 (n + 1)

end A056454

/-! ## A056454.P17595654923840527756

`2*A094033(A008621(2*n))`
-/

namespace A056454.P17595654923840527756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A094033 (A008621 (2 * n)).toNat

end

end A056454.P17595654923840527756

namespace A056454

/-- `2*A094033(A008621(2*n))` -/
def P17595654923840527756.Spec : Prop :=
  ∀ n, P17595654923840527756.a n = A056454 (n + 1)

end A056454

/-! ## A056454.P13391879287658868614

`A056310(n+1)-A305623(n+1)`
-/

namespace A056454.P13391879287658868614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056310 (n + 1) - A305623 (n + 1)

end

end A056454.P13391879287658868614

namespace A056454

/-- `A056310(n+1)-A305623(n+1)` -/
def P13391879287658868614.Spec : Prop :=
  ∀ n, P13391879287658868614.a n = A056454 (n + 1)

theorem P13391879287658868614.correct : P13391879287658868614.Spec := by
  intro n
  simp only [A056454, Nat.add_sub_cancel, A056454.P13391879287658868614.a, A056454.P10309732254336888628.a, A056310, A056310.P11527389917992884301.a, A056489, A056489.P4551859471100236168.a, A305623, A305623.P15212273996991512636.a, A005418, A005418.P14643345169787210303.a, A032120, A032120.P14967370757640857961.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A056454

/-! ## A056454.P10722436703873817254

`A056310(n+1)+A056310(n+1)-A001117(n+1)`
-/

namespace A056454.P10722436703873817254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056310 (n + 1) + (A056310 (n + 1) - A001117 (n + 1))

end

end A056454.P10722436703873817254

namespace A056454

/-- `A056310(n+1)+A056310(n+1)-A001117(n+1)` -/
def P10722436703873817254.Spec : Prop :=
  ∀ n, P10722436703873817254.a n = A056454 (n + 1)

end A056454

/-! ## A056454.P12413846190463287508

`A001117(n+1)-(A305623(n+1)+A305623(n+1))`
-/

namespace A056454.P12413846190463287508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001117 (n + 1) - (A305623 (n + 1) + A305623 (n + 1))

end

end A056454.P12413846190463287508

namespace A056454

/-- `A001117(n+1)-(A305623(n+1)+A305623(n+1))` -/
def P12413846190463287508.Spec : Prop :=
  ∀ n, P12413846190463287508.a n = A056454 (n + 1)

end A056454

/-!
# A056455: Palindromes using exactly four different symbols.

The programs for A056455, the canonical program `A056455.P4988112504372135428` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056455 has offset 1).

The definition of A056455 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A056455.P9936618747177931435

`A056490(or(1, n))`
-/

namespace A056455.P9936618747177931435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056490 (Nat.lor 1 n)

end

end A056455.P9936618747177931435

namespace A056455

/-- `A056490(or(1, n))` -/
def P9936618747177931435.Spec : Prop :=
  ∀ n, P9936618747177931435.a n = A056455 (n + 1)

end A056455

/-! ## A056455.P14146379199315160932

`∑{d}[n+1, A056465(#)]`
-/

namespace A056455.P14146379199315160932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056465 d

end

end A056455.P14146379199315160932

namespace A056455

/-- `∑{d}[n+1, A056465(#)]` -/
def P14146379199315160932.Spec : Prop :=
  ∀ n, P14146379199315160932.a n = A056455 (n + 1)

end A056455

/-! ## A056455.P18402950108337417111

`A000919(∑[char[2*n]])`
-/

namespace A056455.P18402950108337417111
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000919 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A056455.P18402950108337417111

namespace A056455

/-- `A000919(∑[char[2*n]])` -/
def P18402950108337417111.Spec : Prop :=
  ∀ n, P18402950108337417111.a n = A056455 (n + 1)

end A056455

/-! ## A056455.P14143220246744637748

`A056490(n+1-n%2)`
-/

namespace A056455.P14143220246744637748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056490 (n + 1 - n % 2)

end

end A056455.P14143220246744637748

namespace A056455

/-- `A056490(n+1-n%2)` -/
def P14143220246744637748.Spec : Prop :=
  ∀ n, P14143220246744637748.a n = A056455 (n + 1)

end A056455

/-! ## A056455.P3794816284721007462

`A056490(and(1, n+1)+n)`
-/

namespace A056455.P3794816284721007462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056490 (Nat.land 1 (n + 1) + n)

end

end A056455.P3794816284721007462

namespace A056455

/-- `A056490(and(1, n+1)+n)` -/
def P3794816284721007462.Spec : Prop :=
  ∀ n, P3794816284721007462.a n = A056455 (n + 1)

end A056455

/-! ## A056455.P5288447506527239397

`8*A032263(∑[char[2*n]])`
-/

namespace A056455.P5288447506527239397
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A032263 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A056455.P5288447506527239397

namespace A056455

/-- `8*A032263(∑[char[2*n]])` -/
def P5288447506527239397.Spec : Prop :=
  ∀ n, P5288447506527239397.a n = A056455 (n + 1)

end A056455

/-! ## A056455.P163446687609526850

`A056490(A109613(n))`
-/

namespace A056455.P163446687609526850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056490 (A109613 n).toNat

end

end A056455.P163446687609526850

namespace A056455

/-- `A056490(A109613(n))` -/
def P163446687609526850.Spec : Prop :=
  ∀ n, P163446687609526850.a n = A056455 (n + 1)

end A056455

/-! ## A056455.P14389932345665094016

`A056490(A267458(n+2))`
-/

namespace A056455.P14389932345665094016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056490 (A267458 (n + 2)).toNat

end

end A056455.P14389932345665094016

namespace A056455

/-- `A056490(A267458(n+2))` -/
def P14389932345665094016.Spec : Prop :=
  ∀ n, P14389932345665094016.a n = A056455 (n + 1)

end A056455

/-! ## A056455.P4988112504372135428

`4*A028244(A008619(n))`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A056455

/-- `4*A028244(A008619(n))` -/
def P4988112504372135428.Spec : Prop :=
  ∀ n, P4988112504372135428.a n = A056455 (n + 1)

theorem P4988112504372135428.correct : P4988112504372135428.Spec := by
  intro n
  simp only [A056455, Nat.add_sub_cancel]

end A056455

/-! ## A056455.P2092529167011458199

`A040132(n)*A056473(n+1)`
-/

namespace A056455.P2092529167011458199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040132 n * A056473 (n + 1)

end

end A056455.P2092529167011458199

namespace A056455

/-- `A040132(n)*A056473(n+1)` -/
def P2092529167011458199.Spec : Prop :=
  ∀ n, P2092529167011458199.a n = A056455 (n + 1)

end A056455

/-! ## A056455.P1919893511184984819

`A056473(n+1)*A101104(n+1)`
-/

namespace A056455.P1919893511184984819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056473 (n + 1) * A101104 (n + 1)

end

end A056455.P1919893511184984819

namespace A056455

/-- `A056473(n+1)*A101104(n+1)` -/
def P1919893511184984819.Spec : Prop :=
  ∀ n, P1919893511184984819.a n = A056455 (n + 1)

end A056455

/-! ## A056455.P8271573420018979937

`A056473(n+1)*A186682(n+1)`
-/

namespace A056455.P8271573420018979937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056473 (n + 1) * A186682 (n + 1)

end

end A056455.P8271573420018979937

namespace A056455

/-- `A056473(n+1)*A186682(n+1)` -/
def P8271573420018979937.Spec : Prop :=
  ∀ n, P8271573420018979937.a n = A056455 (n + 1)

end A056455

/-! ## A056455.P16014692369057538058

`A056473(n+1)*A273444(A133265(2*n))`
-/

namespace A056455.P16014692369057538058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056473 (n + 1) * A273444 (A133265 (2 * n)).toNat

end

end A056455.P16014692369057538058

namespace A056455

/-- `A056473(n+1)*A273444(A133265(2*n))` -/
def P16014692369057538058.Spec : Prop :=
  ∀ n, P16014692369057538058.a n = A056455 (n + 1)

end A056455

/-! ## A056455.P14866311823266269084

`A056311(n+1)-A305624(n+1)`
-/

namespace A056455.P14866311823266269084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056311 (n + 1) - A305624 (n + 1)

end

end A056455.P14866311823266269084

namespace A056455

/-- `A056311(n+1)-A305624(n+1)` -/
def P14866311823266269084.Spec : Prop :=
  ∀ n, P14866311823266269084.a n = A056455 (n + 1)

end A056455

/-! ## A056455.P5318626943500730760

`2*A056311(n+1)-A000919(n+1)`
-/

namespace A056455.P5318626943500730760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A056311 (n + 1) - A000919 (n + 1)

end

end A056455.P5318626943500730760

namespace A056455

/-- `2*A056311(n+1)-A000919(n+1)` -/
def P5318626943500730760.Spec : Prop :=
  ∀ n, P5318626943500730760.a n = A056455 (n + 1)

end A056455

/-! ## A056455.P10779908728753189979

`A000919(n+1)-2*A305624(n+1)`
-/

namespace A056455.P10779908728753189979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000919 (n + 1) - 2 * A305624 (n + 1)

end

end A056455.P10779908728753189979

namespace A056455

/-- `A000919(n+1)-2*A305624(n+1)` -/
def P10779908728753189979.Spec : Prop :=
  ∀ n, P10779908728753189979.a n = A056455 (n + 1)

end A056455

/-!
# A056456: Number of palindromes of length n using exactly five different symbols.

The programs for A056456, there is no canonical definition to state claims against.
-/

/-! ## A056456.P8805496544637169812

`A056491(or(1, n))`
-/

namespace A056456.P8805496544637169812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056491 (Nat.lor 1 n)

end

end A056456.P8805496544637169812

/-! ## A056456.P15438323163985887535

`∑{d}[n+1, A056466(#)]`
-/

namespace A056456.P15438323163985887535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056466 d

end

end A056456.P15438323163985887535

/-! ## A056456.P12081787804658958769

`A001118(∑[char[2*n]])`
-/

namespace A056456.P12081787804658958769
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001118 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A056456.P12081787804658958769

/-! ## A056456.P16735475713610791723

`A056491(and(1, n+1)+n)`
-/

namespace A056456.P16735475713610791723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056491 (Nat.land 1 (n + 1) + n)

end

end A056456.P16735475713610791723

/-! ## A056456.P4593627566065841056

`A056491(A109613(n))`
-/

namespace A056456.P4593627566065841056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056491 (A109613 n).toNat

end

end A056456.P4593627566065841056

/-! ## A056456.P10846034608747709919

`A056474(n+1)*A101100(n+1)`
-/

namespace A056456.P10846034608747709919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056474 (n + 1) * A101100 (n + 1)

end

end A056456.P10846034608747709919

/-! ## A056456.P11960680469443484287

`A056312(n+1)-A305625(n+1)`
-/

namespace A056456.P11960680469443484287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056312 (n + 1) - A305625 (n + 1)

end

end A056456.P11960680469443484287

/-! ## A056456.P12039464667022770169

`A056312(n+1)+A056312(n+1)-A001118(n+1)`
-/

namespace A056456.P12039464667022770169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056312 (n + 1) + (A056312 (n + 1) - A001118 (n + 1))

end

end A056456.P12039464667022770169

/-!
# A056457: Palindromes using exactly six different symbols.

The programs for A056457, there is no canonical definition to state claims against.
-/

/-! ## A056457.P9236291737590056001

`A056492(or(1, n))`
-/

namespace A056457.P9236291737590056001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056492 (Nat.lor 1 n)

end

end A056457.P9236291737590056001

/-! ## A056457.P3526732517552464189

`∑{d}[n+1, A056467(#)]`
-/

namespace A056457.P3526732517552464189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056467 d

end

end A056457.P3526732517552464189

/-! ## A056457.P12933028921178815161

`A000920(∑[char[2*n]])`
-/

namespace A056457.P12933028921178815161
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000920 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A056457.P12933028921178815161

/-! ## A056457.P14876050234254546478

`A056492(gcd(2, n)-1+n)`
-/

namespace A056457.P14876050234254546478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056492 ((Nat.gcd 2 n : ℤ) - 1 + (n : ℤ)).toNat

end

end A056457.P14876050234254546478

/-! ## A056457.P946451250723111153

`A056492(n+1-and(1, n))`
-/

namespace A056457.P946451250723111153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056492 (n + 1 - Nat.land 1 n)

end

end A056457.P946451250723111153

/-! ## A056457.P7058360476683378715

`A056492(A109613(n))`
-/

namespace A056457.P7058360476683378715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056492 (A109613 n).toNat

end

end A056457.P7058360476683378715

/-! ## A056457.P1584075421721906693

`lcm(2, A000920(A008619(n)))`
-/

namespace A056457.P1584075421721906693
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A000920 (A008619 n).toNat)

end

end A056457.P1584075421721906693

/-! ## A056457.P13982663962987148646

`A056492(A004525(Δ[n²]))`
-/

namespace A056457.P13982663962987148646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056492 (A004525 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A056457.P13982663962987148646

/-! ## A056457.P16225156882527269442

`A056492(A000035(n+1)+n)`
-/

namespace A056457.P16225156882527269442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056492 (A000035 (n + 1) + (n : ℤ)).toNat

end

end A056457.P16225156882527269442

/-! ## A056457.P15003854767021019337

`A056492(1-(A000035(n)-n))`
-/

namespace A056457.P15003854767021019337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056492 (1 - (A000035 n - (n : ℤ))).toNat

end

end A056457.P15003854767021019337

/-! ## A056457.P5123265395691564056

`A056492(A112299(2*(n+1))²+n)`
-/

namespace A056457.P5123265395691564056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056492 (A112299 (2 * (n + 1)) ^ 2 + (n : ℤ)).toNat

end

end A056457.P5123265395691564056

/-! ## A056457.P15962741548491444713

`A000920(A008619(n))+A000007(n+1)`
-/

namespace A056457.P15962741548491444713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000920 (A008619 n).toNat + A000007 (n + 1)

end

end A056457.P15962741548491444713

/-! ## A056457.P10418221296461859899

`A056313(n+1)-A305626(n+1)`
-/

namespace A056457.P10418221296461859899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056313 (n + 1) - A305626 (n + 1)

end

end A056457.P10418221296461859899

/-! ## A056457.P7096955037694970312

`2*A056313(n+1)-A000920(n+1)`
-/

namespace A056457.P7096955037694970312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A056313 (n + 1) - A000920 (n + 1)

end

end A056457.P7096955037694970312

/-! ## A056457.P1648607782663833861

`A000920(n+1)-2*A305626(n+1)`
-/

namespace A056457.P1648607782663833861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000920 (n + 1) - 2 * A305626 (n + 1)

end

end A056457.P1648607782663833861

/-!
# A056458: Number of primitive (aperiodic) palindromes using a maximum of two different symbols.

The programs for A056458, the canonical program `A056458.P16273720211195638125` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056458 has offset 1).

The definition of A056458 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056476, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A056458.P16273720211195638125

`2*A056476(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A056458

/-- `2*A056476(n+1)` -/
def P16273720211195638125.Spec : Prop :=
  ∀ n, P16273720211195638125.a n = A056458 (n + 1)

theorem P16273720211195638125.correct : P16273720211195638125.Spec := by
  intro n
  simp only [A056458, Nat.add_sub_cancel]

end A056458

/-! ## A056458.P17220351267539922338

`A056463(n+1)+A000038(n)`
-/

namespace A056458.P17220351267539922338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056463 (n + 1) + A000038 n

end

end A056458.P17220351267539922338

namespace A056458

/-- `A056463(n+1)+A000038(n)` -/
def P17220351267539922338.Spec : Prop :=
  ∀ n, P17220351267539922338.a n = A056458 (n + 1)

end A056458

/-! ## A056458.P10567903634107019041

`A056463(n+1)+2*A000007(n)`
-/

namespace A056458.P10567903634107019041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056463 (n + 1) + 2 * A000007 n

end

end A056458.P10567903634107019041

namespace A056458

/-- `A056463(n+1)+2*A000007(n)` -/
def P10567903634107019041.Spec : Prop :=
  ∀ n, P10567903634107019041.a n = A056458 (n + 1)

end A056458

/-! ## A056458.P6431720065073810050

`2*(A056481(n+1)+A000007(n))`
-/

namespace A056458.P6431720065073810050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A056481 (n + 1) + A000007 n)

end

end A056458.P6431720065073810050

namespace A056458

/-- `2*(A056481(n+1)+A000007(n))` -/
def P6431720065073810050.Spec : Prop :=
  ∀ n, P6431720065073810050.a n = A056458 (n + 1)

end A056458

/-! ## A056458.P10950581560170689921

`2*(A056481(n+1)+A019590(n+2))`
-/

namespace A056458.P10950581560170689921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A056481 (n + 1) + A019590 (n + 2))

end

end A056458.P10950581560170689921

namespace A056458

/-- `2*(A056481(n+1)+A019590(n+2))` -/
def P10950581560170689921.Spec : Prop :=
  ∀ n, P10950581560170689921.a n = A056458 (n + 1)

end A056458

/-! ## A056458.P8688361501900033435

`2*(A056481(n+1)-A154955(n+2))`
-/

namespace A056458.P8688361501900033435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A056481 (n + 1) - A154955 (n + 2))

end

end A056458.P8688361501900033435

namespace A056458

/-- `2*(A056481(n+1)-A154955(n+2))` -/
def P8688361501900033435.Spec : Prop :=
  ∀ n, P8688361501900033435.a n = A056458 (n + 1)

end A056458

/-! ## A056458.P2262025428174654750

`2*(A154955(2*n+1)+A056481(n+1))`
-/

namespace A056458.P2262025428174654750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A154955 (2 * n + 1) + A056481 (n + 1))

end

end A056458.P2262025428174654750

namespace A056458

/-- `2*(A154955(2*n+1)+A056481(n+1))` -/
def P2262025428174654750.Spec : Prop :=
  ∀ n, P2262025428174654750.a n = A056458 (n + 1)

end A056458

/-! ## A056458.P4402114215805970545

`A056476(A028310(n+1))+A056476(n+1)`
-/

namespace A056458.P4402114215805970545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056476 (A028310 (n + 1)).toNat + A056476 (n + 1)

end

end A056458.P4402114215805970545

namespace A056458

/-- `A056476(A028310(n+1))+A056476(n+1)` -/
def P4402114215805970545.Spec : Prop :=
  ∀ n, P4402114215805970545.a n = A056458 (n + 1)

end A056458

/-! ## A056458.P16654156769367182827

`A056476(n+1)+A056481(n+1)+A000007(n)`
-/

namespace A056458.P16654156769367182827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056476 (n + 1) + (A056481 (n + 1) + A000007 n)

end

end A056458.P16654156769367182827

namespace A056458

/-- `A056476(n+1)+A056481(n+1)+A000007(n)` -/
def P16654156769367182827.Spec : Prop :=
  ∀ n, P16654156769367182827.a n = A056458 (n + 1)

end A056458

/-! ## A056458.P13108714949344676135

`A056476(n+1)+A056476(n+1)+A000007(n+1)`
-/

namespace A056458.P13108714949344676135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056476 (n + 1) + (A056476 (n + 1) + A000007 (n + 1))

end

end A056458.P13108714949344676135

namespace A056458

/-- `A056476(n+1)+A056476(n+1)+A000007(n+1)` -/
def P13108714949344676135.Spec : Prop :=
  ∀ n, P13108714949344676135.a n = A056458 (n + 1)

theorem P13108714949344676135.correct : P13108714949344676135.Spec := by
  intro n
  simp only [A056458, Nat.add_sub_cancel, A056458.P13108714949344676135.a, A056458.P16273720211195638125.a, A000007, A000007.P6599383543502402472.a, A056476, A056476.P12632563156965169968.a, A056481, A056481.P6036497099892352670.a, A028310, A028310.P18130301328277559831.a, A056463, A056463.P6786534809649954337.f1, A056463.P6786534809649954337.a, A008683, A008683.P18254306604665478110.a, A056453, A056453.P15792720137673546609.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A056458

/-! ## A056458.P3557272937188493113

`2*(A056493(n+1)-A179781(n+1))`
-/

namespace A056458.P3557272937188493113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A056493 (n + 1) - A179781 (n + 1))

end

end A056458.P3557272937188493113

namespace A056458

/-- `2*(A056493(n+1)-A179781(n+1))` -/
def P3557272937188493113.Spec : Prop :=
  ∀ n, P3557272937188493113.a n = A056458 (n + 1)

end A056458

/-! ## A056458.P3515231862423047446

`A056463(n+1)+A056493(n+1)-A056498(n+1)`
-/

namespace A056458.P3515231862423047446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056463 (n + 1) + (A056493 (n + 1) - A056498 (n + 1))

end

end A056458.P3515231862423047446

namespace A056458

/-- `A056463(n+1)+A056493(n+1)-A056498(n+1)` -/
def P3515231862423047446.Spec : Prop :=
  ∀ n, P3515231862423047446.a n = A056458 (n + 1)

end A056458

/-! ## A056458.P9832033730407895945

`Δ[2*∑[A056476(n)]]`
-/

namespace A056458.P9832033730407895945
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056476 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A056458.P9832033730407895945

namespace A056458

/-- `Δ[2*∑[A056476(n)]]` -/
def P9832033730407895945.Spec : Prop :=
  ∀ n, P9832033730407895945.a n = A056458 (n + 1)

end A056458

/-! ## A056458.P3246394056213590658

`A007055(n+1)-A370410(n+1)`
-/

namespace A056458.P3246394056213590658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007055 (n + 1) - A370410 (n + 1)

end

end A056458.P3246394056213590658

namespace A056458

/-- `A007055(n+1)-A370410(n+1)` -/
def P3246394056213590658.Spec : Prop :=
  ∀ n, P3246394056213590658.a n = A056458 (n + 1)

theorem P3246394056213590658.correct : P3246394056213590658.Spec := by
  intro n
  simp only [A056458, Nat.add_sub_cancel, A056458.P3246394056213590658.a, A056458.P16273720211195638125.a, A007055, A007055.P13796273063229323987.a, A056476, A056476.P12632563156965169968.a, A370410, A370410.P7118795628727837074.a, A028310, A028310.P18130301328277559831.a, A056481, A056481.P6036497099892352670.a, A057427, A057427.P3058147525557661423.a, A180249, A180249.P11033069558763702019.a, A000007, A000007.P6599383543502402472.a, A056463, A056463.P6786534809649954337.f1, A056463.P6786534809649954337.a, A328688, A328688.P10993305875677652707.f1, A328688.P10993305875677652707.a, A008683, A008683.P18254306604665478110.a, A056453, A056453.P15792720137673546609.a, A180322, A180322.P10246016222357682006.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A056458

/-! ## A056458.P11934939422819539479

`A056476(n+1)+A056477(n+1)-A056482(n+1)`
-/

namespace A056458.P11934939422819539479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056476 (n + 1) + (A056477 (n + 1) - A056482 (n + 1))

end

end A056458.P11934939422819539479

namespace A056458

/-- `A056476(n+1)+A056477(n+1)-A056482(n+1)` -/
def P11934939422819539479.Spec : Prop :=
  ∀ n, P11934939422819539479.a n = A056458 (n + 1)

end A056458

/-!
# A056459: Number of primitive (aperiodic) palindromes using a maximum of three different symbols.

The programs for A056459, there is no canonical definition to state claims against.
-/

/-! ## A056459.P5047228792819634684

`A040006(n)*A056477(n+1)`
-/

namespace A056459.P5047228792819634684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040006 n * A056477 (n + 1)

end

end A056459.P5047228792819634684

/-! ## A056459.P17473060554753435450

`A284823(∑[n+3]+1)`
-/

namespace A056459.P17473060554753435450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284823 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A056459.P17473060554753435450

/-! ## A056459.P4738453699577450789

`lcm(3, A284823(A034856(n+2)))`
-/

namespace A056459.P4738453699577450789
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A284823 (A034856 (n + 2)).toNat)

end

end A056459.P4738453699577450789

/-! ## A056459.P13701089437314802343

`A284823(A034856(n+2))%A232510(n+1)`
-/

namespace A056459.P13701089437314802343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A284823 (A034856 (n + 2)).toNat) (A232510 (n + 1))

end

end A056459.P13701089437314802343

/-! ## A056459.P2028810183119544071

`A335358(A056460(n+1))`
-/

namespace A056459.P2028810183119544071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335358 (A056460 (n + 1)).toNat

end

end A056459.P2028810183119544071

/-!
# A056460: Number of primitive (aperiodic) palindromes using a maximum of four different symbols.

The programs for A056460, there is no canonical definition to state claims against.
-/

/-! ## A056460.P1584316391738791387

`A284823(∑[n+4]+3)`
-/

namespace A056460.P1584316391738791387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284823 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A056460.P1584316391738791387

/-! ## A056460.P11492958529350681267

`lcm(2, A284823(A027379(n+2)))`
-/

namespace A056460.P11492958529350681267
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A284823 (A027379 (n + 2)).toNat)

end

end A056460.P11492958529350681267

/-! ## A056460.P8080132851750758682

`gcd(3, A000079(n+1))*A284823(A027379(n+2))`
-/

namespace A056460.P8080132851750758682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 3 (A000079 (n + 1)) : ℤ) * A284823 (A027379 (n + 2)).toNat

end

end A056460.P8080132851750758682

/-! ## A056460.P2100433632557687996

`A007318(A000217(n))*A284823(A027379(n+2))`
-/

namespace A056460.P2100433632557687996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 n).toNat * A284823 (A027379 (n + 2)).toNat

end

end A056460.P2100433632557687996

/-! ## A056460.P1006647367112629646

`A008683(A014963(4*n+2))²*A284823(A027379(n+2))`
-/

namespace A056460.P1006647367112629646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A014963 (4 * n + 2)).toNat ^ 2 * A284823 (A027379 (n + 2)).toNat

end

end A056460.P1006647367112629646

/-!
# A056461: Number of primitive (aperiodic) palindromes using a maximum of five different symbols.

The programs for A056461, there is no canonical definition to state claims against.
-/

/-! ## A056461.P14885913042422618110

`A284823(∑[n+5]+6)`
-/

namespace A056461.P14885913042422618110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284823 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A056461.P14885913042422618110

/-! ## A056461.P149977540928824567

`lcm(5, A284823(A046691(n+3)))`
-/

namespace A056461.P149977540928824567
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 5 (A284823 (A046691 (n + 3)).toNat)

end

end A056461.P149977540928824567

/-! ## A056461.P16124392557972439378

`or(A000007(n), A284823(A046691(n+3)))`
-/

namespace A056461.P16124392557972439378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A284823 (A046691 (n + 3)).toNat)

end

end A056461.P16124392557972439378

/-! ## A056461.P5134679206533854678

`A284823(A046691(n+3))+A008683(4*(n+1))`
-/

namespace A056461.P5134679206533854678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284823 (A046691 (n + 3)).toNat + A008683 (4 * (n + 1))

end

end A056461.P5134679206533854678

/-! ## A056461.P15433982185027079976

`A284823(A000217(n+5)-4)+A000007(n+1)`
-/

namespace A056461.P15433982185027079976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284823 (A000217 (n + 5) - 4).toNat + A000007 (n + 1)

end

end A056461.P15433982185027079976

/-!
# A056462: Number of primitive (aperiodic) palindromes using a maximum of six different symbols.

The programs for A056462, there is no canonical definition to state claims against.
-/

/-! ## A056462.P767569925165065585

`A284823(A000096(n+5)-4)`
-/

namespace A056462.P767569925165065585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284823 (A000096 (n + 5) - 4).toNat

end

end A056462.P767569925165065585

/-! ## A056462.P17897782459230998876

`A284823(A000217(n+6)-5)`
-/

namespace A056462.P17897782459230998876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284823 (A000217 (n + 6) - 5).toNat

end

end A056462.P17897782459230998876

/-! ## A056462.P13749605662463990330

`A284823(A000124(n+6)-6)`
-/

namespace A056462.P13749605662463990330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284823 (A000124 (n + 6) - 6).toNat

end

end A056462.P13749605662463990330

/-! ## A056462.P15928828678390846954

`A284823(Δ[Δ[A006504(n+1)]])`
-/

namespace A056462.P15928828678390846954
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284823 (f1 (n + 1) - f1 n).toNat

end

end A056462.P15928828678390846954

/-! ## A056462.P17331515652722011809

`A284823(eq[6, A025581(n)]-(n+5))`
-/

namespace A056462.P17331515652722011809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284823 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n - (n + 5))

end

end A056462.P17331515652722011809

/-!
# A056463: Number of primitive (aperiodic) palindromes using exactly two different symbols.

The programs for A056463, the canonical program `A056463.P6786534809649954337` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056463 has offset 1).

The definition of A056463 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 664 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A056463.P14347509189172609523

`2*A056481(n+1)`
-/

namespace A056463.P14347509189172609523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A056481 (n + 1)

end

end A056463.P14347509189172609523

namespace A056463

/-- `2*A056481(n+1)` -/
def P14347509189172609523.Spec : Prop :=
  ∀ n, P14347509189172609523.a n = A056463 (n + 1)

end A056463

/-! ## A056463.P17313659017797764318

`A056458(floor(acot(n))+n+1)`
-/

namespace A056463.P17313659017797764318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056458 (⌊SequenceMachineLib.acot (n : ℝ)⌋ + (n + 1 : ℤ)).toNat

end

end A056463.P17313659017797764318

namespace A056463

/-- `A056458(floor(acot(n))+n+1)` -/
def P17313659017797764318.Spec : Prop :=
  ∀ n, P17313659017797764318.a n = A056463 (n + 1)

end A056463

/-! ## A056463.P10545235013908400046

`(2-C(2, n+1))*A056476(n+1)`
-/

namespace A056463.P10545235013908400046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - (Nat.choose 2 (n + 1) : ℤ)) * A056476 (n + 1)

end

end A056463.P10545235013908400046

namespace A056463

/-- `(2-C(2, n+1))*A056476(n+1)` -/
def P10545235013908400046.Spec : Prop :=
  ∀ n, P10545235013908400046.a n = A056463 (n + 1)

end A056463

/-! ## A056463.P4877051206571104080

`A056458(A254667(n+1))`
-/

namespace A056463.P4877051206571104080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056458 (A254667 (n + 1)).toNat

end

end A056463.P4877051206571104080

namespace A056463

/-- `A056458(A254667(n+1))` -/
def P4877051206571104080.Spec : Prop :=
  ∀ n, P4877051206571104080.a n = A056463 (n + 1)

end A056463

/-! ## A056463.P4744323295413640329

`A056458(A233583(n+2))`
-/

namespace A056463.P4744323295413640329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056458 (A233583 (n + 2)).toNat

end

end A056463.P4744323295413640329

namespace A056463

/-- `A056458(A233583(n+2))` -/
def P4744323295413640329.Spec : Prop :=
  ∀ n, P4744323295413640329.a n = A056463 (n + 1)

end A056463

/-! ## A056463.P12844347100223193062

`2*A056476(A028310(n)+1)`
-/

namespace A056463.P12844347100223193062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A056476 (A028310 n + 1).toNat

end

end A056463.P12844347100223193062

namespace A056463

/-- `2*A056476(A028310(n)+1)` -/
def P12844347100223193062.Spec : Prop :=
  ∀ n, P12844347100223193062.a n = A056463 (n + 1)

end A056463

/-! ## A056463.P158358601926941481

`A056458(n+1)-A000038(n)`
-/

namespace A056463.P158358601926941481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056458 (n + 1) - A000038 n

end

end A056463.P158358601926941481

namespace A056463

/-- `A056458(n+1)-A000038(n)` -/
def P158358601926941481.Spec : Prop :=
  ∀ n, P158358601926941481.a n = A056463 (n + 1)

end A056463

/-! ## A056463.P13277252384994987831

`A056458(A057428(n)+2+n)`
-/

namespace A056463.P13277252384994987831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056458 (A057428 n + 2 + (n : ℤ)).toNat

end

end A056463.P13277252384994987831

namespace A056463

/-- `A056458(A057428(n)+2+n)` -/
def P13277252384994987831.Spec : Prop :=
  ∀ n, P13277252384994987831.a n = A056463 (n + 1)

end A056463

/-! ## A056463.P12929342680671911711

`A056458(2-A057427(n)+n)`
-/

namespace A056463.P12929342680671911711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056458 (2 - A057427 n + (n : ℤ)).toNat

end

end A056463.P12929342680671911711

namespace A056463

/-- `A056458(2-A057427(n)+n)` -/
def P12929342680671911711.Spec : Prop :=
  ∀ n, P12929342680671911711.a n = A056463 (n + 1)

end A056463

/-! ## A056463.P1100850118820504969

`A056458(n+1)*A057427(n)`
-/

namespace A056463.P1100850118820504969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056458 (n + 1) * A057427 n

end

end A056463.P1100850118820504969

namespace A056463

/-- `A056458(n+1)*A057427(n)` -/
def P1100850118820504969.Spec : Prop :=
  ∀ n, P1100850118820504969.a n = A056463 (n + 1)

end A056463

/-! ## A056463.P13828701860099782497

`A056458(n+1)*A157928(n)`
-/

namespace A056463.P13828701860099782497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056458 (n + 1) * A157928 n

end

end A056463.P13828701860099782497

namespace A056463

/-- `A056458(n+1)*A157928(n)` -/
def P13828701860099782497.Spec : Prop :=
  ∀ n, P13828701860099782497.a n = A056463 (n + 1)

end A056463

/-! ## A056463.P16707699268419028760

`A056458(2-(A057427(n)-n))`
-/

namespace A056463.P16707699268419028760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056458 (2 - (A057427 n - (n : ℤ))).toNat

end

end A056463.P16707699268419028760

namespace A056463

/-- `A056458(2-(A057427(n)-n))` -/
def P16707699268419028760.Spec : Prop :=
  ∀ n, P16707699268419028760.a n = A056463 (n + 1)

end A056463

/-! ## A056463.P8984974515472403357

`and(A052551(n), A056458(n+1))`
-/

namespace A056463.P8984974515472403357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A052551 n) (A056458 (n + 1))

end

end A056463.P8984974515472403357

namespace A056463

/-- `and(A052551(n), A056458(n+1))` -/
def P8984974515472403357.Spec : Prop :=
  ∀ n, P8984974515472403357.a n = A056463 (n + 1)

end A056463

/-! ## A056463.P5089631825132768799

`and(A056458(n+1), A113679(n))`
-/

namespace A056463.P5089631825132768799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A056458 (n + 1)) (A113679 n)

end

end A056463.P5089631825132768799

namespace A056463

/-- `and(A056458(n+1), A113679(n))` -/
def P5089631825132768799.Spec : Prop :=
  ∀ n, P5089631825132768799.a n = A056463 (n + 1)

end A056463

/-! ## A056463.P17773221142926792814

`and(A056458(n+1), A134824(n))`
-/

namespace A056463.P17773221142926792814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A056458 (n + 1)) (A134824 n)

end

end A056463.P17773221142926792814

namespace A056463

/-- `and(A056458(n+1), A134824(n))` -/
def P17773221142926792814.Spec : Prop :=
  ∀ n, P17773221142926792814.a n = A056463 (n + 1)

end A056463

/-! ## A056463.P9694938820474708301

`and(A056458(n+1), A260196(n))`
-/

namespace A056463.P9694938820474708301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A056458 (n + 1)) (A260196 n)

end

end A056463.P9694938820474708301

namespace A056463

/-- `and(A056458(n+1), A260196(n))` -/
def P9694938820474708301.Spec : Prop :=
  ∀ n, P9694938820474708301.a n = A056463 (n + 1)

end A056463

/-! ## A056463.P7557263072070438766

`2*A056476(A000007(n)+1+n)`
-/

namespace A056463.P7557263072070438766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A056476 (A000007 n + 1 + (n : ℤ)).toNat

end

end A056463.P7557263072070438766

namespace A056463

/-- `2*A056476(A000007(n)+1+n)` -/
def P7557263072070438766.Spec : Prop :=
  ∀ n, P7557263072070438766.a n = A056463 (n + 1)

end A056463

/-! ## A056463.P9599389160147042119

`and(A056453(n+1), A056458(n+1))`
-/

namespace A056463.P9599389160147042119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A056453 (n + 1)) (A056458 (n + 1))

end

end A056463.P9599389160147042119

namespace A056463

/-- `and(A056453(n+1), A056458(n+1))` -/
def P9599389160147042119.Spec : Prop :=
  ∀ n, P9599389160147042119.a n = A056463 (n + 1)

end A056463

/-! ## A056463.P17508046121803179033

`and(A056458(n+1), A153881(n+1))`
-/

namespace A056463.P17508046121803179033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A056458 (n + 1)) (A153881 (n + 1))

end

end A056463.P17508046121803179033

namespace A056463

/-- `and(A056458(n+1), A153881(n+1))` -/
def P17508046121803179033.Spec : Prop :=
  ∀ n, P17508046121803179033.a n = A056463 (n + 1)

end A056463

/-! ## A056463.P6786534809649954337

`∑{d}[n+1, A008683(#)*A056453((n+1)/#)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A056463

/-- `∑{d}[n+1, A008683(#)*A056453((n+1)/#)]` -/
def P6786534809649954337.Spec : Prop :=
  ∀ n, P6786534809649954337.a n = A056463 (n + 1)

theorem P6786534809649954337.correct : P6786534809649954337.Spec := by
  intro n
  simp only [A056463, Nat.add_sub_cancel]

end A056463

/-!
# A056464: Number of primitive (aperiodic) palindromes using exactly three different symbols.

The programs for A056464, the canonical program `A056464.P10441682946801096791` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056464 has offset 1).

The definition of A056464 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 418 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A056464.P14863832999749299151

`6*A056482(n+1)`
-/

namespace A056464.P14863832999749299151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A056482 (n + 1)

end

end A056464.P14863832999749299151

namespace A056464

/-- `6*A056482(n+1)` -/
def P14863832999749299151.Spec : Prop :=
  ∀ n, P14863832999749299151.a n = A056464 (n + 1)

end A056464

/-! ## A056464.P4125011753207796090

`6*(A056477(n+1)-A056476(n+1))`
-/

namespace A056464.P4125011753207796090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * (A056477 (n + 1) - A056476 (n + 1))

end

end A056464.P4125011753207796090

namespace A056464

/-- `6*(A056477(n+1)-A056476(n+1))` -/
def P4125011753207796090.Spec : Prop :=
  ∀ n, P4125011753207796090.a n = A056464 (n + 1)

end A056464

/-! ## A056464.P10441682946801096791

`∑{d}[n+1, A008683(#)*A056454((n+1)/#)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A056464

/-- `∑{d}[n+1, A008683(#)*A056454((n+1)/#)]` -/
def P10441682946801096791.Spec : Prop :=
  ∀ n, P10441682946801096791.a n = A056464 (n + 1)

theorem P10441682946801096791.correct : P10441682946801096791.Spec := by
  intro n
  simp only [A056464, Nat.add_sub_cancel]

end A056464

/-! ## A056464.P7700720839934302914

`A327873(A290743(n+1)+A157928(n))`
-/

namespace A056464.P7700720839934302914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327873 (A290743 (n + 1) + A157928 n).toNat

end

end A056464.P7700720839934302914

namespace A056464

/-- `A327873(A290743(n+1)+A157928(n))` -/
def P7700720839934302914.Spec : Prop :=
  ∀ n, P7700720839934302914.a n = A056464 (n + 1)

end A056464

/-! ## A056464.P1242793405386827188

`A008588(A056482(n+1))`
-/

namespace A056464.P1242793405386827188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008588 (A056482 (n + 1)).toNat

end

end A056464.P1242793405386827188

namespace A056464

/-- `A008588(A056482(n+1))` -/
def P1242793405386827188.Spec : Prop :=
  ∀ n, P1242793405386827188.a n = A056464 (n + 1)

end A056464

/-!
# A056465: Number of primitive (aperiodic) palindromes using exactly four different symbols.

The programs for A056465, the canonical program `A056465.P10456151034550717981` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056465 has offset 1).

The definition of A056465 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A056465.P17090469192233281619

`24*A056483(n+1)`
-/

namespace A056465.P17090469192233281619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  24 * A056483 (n + 1)

end

end A056465.P17090469192233281619

namespace A056465

/-- `24*A056483(n+1)` -/
def P17090469192233281619.Spec : Prop :=
  ∀ n, P17090469192233281619.a n = A056465 (n + 1)

end A056465

/-! ## A056465.P16305029982104779870

`24*(A056478(n+1)-A056477(n+1))`
-/

namespace A056465.P16305029982104779870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  24 * (A056478 (n + 1) - A056477 (n + 1))

end

end A056465.P16305029982104779870

namespace A056465

/-- `24*(A056478(n+1)-A056477(n+1))` -/
def P16305029982104779870.Spec : Prop :=
  ∀ n, P16305029982104779870.a n = A056465 (n + 1)

end A056465

/-! ## A056465.P10456151034550717981

`∑{d}[n+1, A008683(#)*A056455((n+1)/#)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A056465

/-- `∑{d}[n+1, A008683(#)*A056455((n+1)/#)]` -/
def P10456151034550717981.Spec : Prop :=
  ∀ n, P10456151034550717981.a n = A056465 (n + 1)

theorem P10456151034550717981.correct : P10456151034550717981.Spec := by
  intro n
  simp only [A056465, Nat.add_sub_cancel]

end A056465

/-! ## A056465.P10820425479932709846

`∑{d}[n+1, A008683(#)*A056473((n+1)/#)]*A040132(n)`
-/

namespace A056465.P10820425479932709846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), A008683 d * A056473 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat) * A040132 n

end

end A056465.P10820425479932709846

namespace A056465

/-- `∑{d}[n+1, A008683(#)*A056473((n+1)/#)]*A040132(n)` -/
def P10820425479932709846.Spec : Prop :=
  ∀ n, P10820425479932709846.a n = A056465 (n + 1)

end A056465

/-! ## A056465.P10691908231113893031

`∑{d}[n+1, A008683(#)*A056473((n+1)/#)]*A186682(n+1)`
-/

namespace A056465.P10691908231113893031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), A008683 d * A056473 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat) * A186682 (n + 1)

end

end A056465.P10691908231113893031

namespace A056465

/-- `∑{d}[n+1, A008683(#)*A056473((n+1)/#)]*A186682(n+1)` -/
def P10691908231113893031.Spec : Prop :=
  ∀ n, P10691908231113893031.a n = A056465 (n + 1)

end A056465

/-!
# A056466: Number of primitive (aperiodic) palindromes using exactly five different symbols.

The programs for A056466, there is no canonical definition to state claims against.
-/

/-! ## A056466.P10128428321331023311

`2*60*A056484(n+1)`
-/

namespace A056466.P10128428321331023311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (60 * A056484 (n + 1))

end

end A056466.P10128428321331023311

/-! ## A056466.P15122684330933352600

`∑{d}[n+1, A008683(#)*A056456((n+1)/#)]`
-/

namespace A056466.P15122684330933352600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A056456 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056466.P15122684330933352600

/-! ## A056466.P17763886315772821547

`∑{d}[n+1, A056456(#)*A253206((n+1)/#)]`
-/

namespace A056466.P17763886315772821547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056456 d * A253206 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056466.P17763886315772821547

/-! ## A056466.P10319018172274025820

`(A056479(n+1)-A056478(n+1))*A101100(n+1)`
-/

namespace A056466.P10319018172274025820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A056479 (n + 1) - A056478 (n + 1)) * A101100 (n + 1)

end

end A056466.P10319018172274025820

/-! ## A056466.P10808034781525275513

`60*A005843(A056484(n+1))`
-/

namespace A056466.P10808034781525275513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  60 * A005843 (A056484 (n + 1)).toNat

end

end A056466.P10808034781525275513

/-!
# A056467: Number of primitive (aperiodic) palindromes using exactly six different symbols.

The programs for A056467, there is no canonical definition to state claims against.
-/

/-! ## A056467.P9460919784642412529

`12*60*A056485(n+1)`
-/

namespace A056467.P9460919784642412529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * (60 * A056485 (n + 1))

end

end A056467.P9460919784642412529

/-! ## A056467.P13871316549960842707

`∑{d}[n+1, A008683(#)*A056457((n+1)/#)]`
-/

namespace A056467.P13871316549960842707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A056457 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056467.P13871316549960842707

/-! ## A056467.P7116839127752490022

`∑{d}[n+1, A056457(#)*A069158((n+1)/#)]`
-/

namespace A056467.P7116839127752490022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056457 d * A069158 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056467.P7116839127752490022

/-! ## A056467.P9983814620319314677

`∑{d}[n+1, A056457(#)*A061220((n+1)/#)]`
-/

namespace A056467.P9983814620319314677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056457 d * A061220 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056467.P9983814620319314677

/-! ## A056467.P10628311349475422268

`A056457(n+1)-A056457(A279402(n+1))`
-/

namespace A056467.P10628311349475422268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056457 (n + 1) - A056457 (A279402 (n + 1)).toNat

end

end A056467.P10628311349475422268

/-!
# A056468: a(n) = Sum_{k=1..n} k^6*binomial(n,k).

The programs for A056468, the canonical program `A056468.P15726501361491121376` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056468 has offset 0).

The definition of A056468 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A056468.P15726501361491121376

`2^(n-6)*n*(n+1)*(n^4+14*n^3+31*n²-46*n+16)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A056468

/-- `2^(n-6)*n*(n+1)*(n^4+14*n^3+31*n²-46*n+16)` -/
def P15726501361491121376.Spec : Prop :=
  ∀ n, P15726501361491121376.a n = (A056468 n : ℚ)

end A056468

/-! ## A056468.P9803792697665218799

`∑[A084641(n)/A028310(n)]`
-/

namespace A056468.P9803792697665218799
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084641 n : ℚ) / (A028310 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056468.P9803792697665218799

namespace A056468

/-- `∑[A084641(n)/A028310(n)]` -/
def P9803792697665218799.Spec : Prop :=
  ∀ n, P9803792697665218799.a n = (A056468 n : ℚ)

end A056468

/-! ## A056468.P15738690878580762228

`∑[A084641(n)/(A000007(n)+n)]`
-/

namespace A056468.P15738690878580762228
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084641 n : ℚ) / (A000007 n + (n : ℤ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056468.P15738690878580762228

namespace A056468

/-- `∑[A084641(n)/(A000007(n)+n)]` -/
def P15738690878580762228.Spec : Prop :=
  ∀ n, P15738690878580762228.a n = (A056468 n : ℚ)

end A056468

/-! ## A056468.P7529273888149495190

`∑[A084641(n)/A075884(A008574(n))]`
-/

namespace A056468.P7529273888149495190
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084641 n : ℚ) / (A075884 (A008574 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056468.P7529273888149495190

namespace A056468

/-- `∑[A084641(n)/A075884(A008574(n))]` -/
def P7529273888149495190.Spec : Prop :=
  ∀ n, P7529273888149495190.a n = (A056468 n : ℚ)

end A056468

/-! ## A056468.P17670185380480685269

`∑[A084641(n)/A000196(A002522(n))]`
-/

namespace A056468.P17670185380480685269
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084641 n : ℚ) / (A000196 (A002522 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056468.P17670185380480685269

namespace A056468

/-- `∑[A084641(n)/A000196(A002522(n))]` -/
def P17670185380480685269.Spec : Prop :=
  ∀ n, P17670185380480685269.a n = (A056468 n : ℚ)

end A056468

/-!
# A056469: Number of elements in the continued fraction for Sum_{k=0..n} 1/2^2^k.

The programs for A056469, the canonical program `A056469.P5180644179436725090` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056469 has offset 0).

The definition of A056469 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A056469.P5180644179436725090

`floor(2^n/2)+2`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A056469

/-- `floor(2^n/2)+2` -/
def P5180644179436725090.Spec : Prop :=
  ∀ n, P5180644179436725090.a n = A056469 n

theorem P5180644179436725090.correct : P5180644179436725090.Spec := by
  intro n
  simp only [A056469]

end A056469

/-! ## A056469.P7966773060233431368

`∑[ogf((-2+3x+x^2)/(-1+2x))]`
-/

namespace A056469.P7966773060233431368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -3, -1] [1, -2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056469.P7966773060233431368

namespace A056469

/-- `∑[ogf((-2+3x+x^2)/(-1+2x))]` -/
def P7966773060233431368.Spec : Prop :=
  ∀ n, P7966773060233431368.a n = A056469 n

end A056469

/-! ## A056469.P16077380581291198623

`ogf((2-3x-x^2)/(1-3x+2x^2))`
-/

namespace A056469.P16077380581291198623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -3, -1] [1, -3, 2] n

end

end A056469.P16077380581291198623

namespace A056469

/-- `ogf((2-3x-x^2)/(1-3x+2x^2))` -/
def P16077380581291198623.Spec : Prop :=
  ∀ n, P16077380581291198623.a n = A056469 n

end A056469

/-! ## A056469.P1261953611642426652

`round(acos(0)+2^(n-1))`
-/

namespace A056469.P1261953611642426652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.arccos (0 : ℝ) + ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ))

end

end A056469.P1261953611642426652

namespace A056469

/-- `round(acos(0)+2^(n-1))` -/
def P1261953611642426652.Spec : Prop :=
  ∀ n, P1261953611642426652.a n = A056469 n

end A056469

/-! ## A056469.P17940008830403806759

`round(tan(1)+2^(n-1))`
-/

namespace A056469.P17940008830403806759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.tan (1 : ℝ) + ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ))

end

end A056469.P17940008830403806759

namespace A056469

/-- `round(tan(1)+2^(n-1))` -/
def P17940008830403806759.Spec : Prop :=
  ∀ n, P17940008830403806759.a n = A056469 n

end A056469

/-! ## A056469.P7004636881373929806

`floor(2^(n-1)-tan(2))`
-/

namespace A056469.P7004636881373929806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ) - Real.tan (2 : ℝ)⌋

end

end A056469.P7004636881373929806

namespace A056469

/-- `floor(2^(n-1)-tan(2))` -/
def P7004636881373929806.Spec : Prop :=
  ∀ n, P7004636881373929806.a n = A056469 n

end A056469

/-! ## A056469.P8306066858081184863

`round(asin(1)+2^(n-1))`
-/

namespace A056469.P8306066858081184863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.arcsin (1 : ℝ) + ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ))

end

end A056469.P8306066858081184863

namespace A056469

/-- `round(asin(1)+2^(n-1))` -/
def P8306066858081184863.Spec : Prop :=
  ∀ n, P8306066858081184863.a n = A056469 n

end A056469

/-! ## A056469.P17282034719963875166

`ceil(tan(4)+2^(n-1))`
-/

namespace A056469.P17282034719963875166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.tan (4 : ℝ) + ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ)⌉

end

end A056469.P17282034719963875166

namespace A056469

/-- `ceil(tan(4)+2^(n-1))` -/
def P17282034719963875166.Spec : Prop :=
  ∀ n, P17282034719963875166.a n = A056469 n

end A056469

/-! ## A056469.P18416886622400587086

`ceil(atan(2)+2^(n-1))`
-/

namespace A056469.P18416886622400587086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan (2 : ℝ) + ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ)⌉

end

end A056469.P18416886622400587086

namespace A056469

/-- `ceil(atan(2)+2^(n-1))` -/
def P18416886622400587086.Spec : Prop :=
  ∀ n, P18416886622400587086.a n = A056469 n

end A056469

/-! ## A056469.P9190889233671937030

`round(cosh(1)+2^(n-1))`
-/

namespace A056469.P9190889233671937030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cosh (1 : ℝ) + ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ))

end

end A056469.P9190889233671937030

namespace A056469

/-- `round(cosh(1)+2^(n-1))` -/
def P9190889233671937030.Spec : Prop :=
  ∀ n, P9190889233671937030.a n = A056469 n

end A056469

/-! ## A056469.P7657282589355901135

`ceil(sinh(1)+2^(n-1))`
-/

namespace A056469.P7657282589355901135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sinh (1 : ℝ) + ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ)⌉

end

end A056469.P7657282589355901135

namespace A056469

/-- `ceil(sinh(1)+2^(n-1))` -/
def P7657282589355901135.Spec : Prop :=
  ∀ n, P7657282589355901135.a n = A056469 n

end A056469

/-! ## A056469.P3961742798490354739

`ceil(cot(7)+2^(n-1))`
-/

namespace A056469.P3961742798490354739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cot (7 : ℝ) + ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ)⌉

end

end A056469.P3961742798490354739

namespace A056469

/-- `ceil(cot(7)+2^(n-1))` -/
def P3961742798490354739.Spec : Prop :=
  ∀ n, P3961742798490354739.a n = A056469 n

end A056469

/-! ## A056469.P16244658223376759071

`floor(2^(n-1)-cot(9))`
-/

namespace A056469.P16244658223376759071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ) - Real.cot (9 : ℝ)⌋

end

end A056469.P16244658223376759071

namespace A056469

/-- `floor(2^(n-1)-cot(9))` -/
def P16244658223376759071.Spec : Prop :=
  ∀ n, P16244658223376759071.a n = A056469 n

end A056469

/-! ## A056469.P5092600657293438535

`round(cot(10)+2^(n-1))`
-/

namespace A056469.P5092600657293438535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cot (10 : ℝ) + ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ))

end

end A056469.P5092600657293438535

namespace A056469

/-- `round(cot(10)+2^(n-1))` -/
def P5092600657293438535.Spec : Prop :=
  ∀ n, P5092600657293438535.a n = A056469 n

end A056469

/-! ## A056469.P4645232580942087058

`2*(a(n-1)-1)` with `a(0)=2, a(1)=3`
-/

namespace A056469.P4645232580942087058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  2 * (a (n - 1) - 1)

end

end A056469.P4645232580942087058

namespace A056469

/-- `2*(a(n-1)-1)` -/
def P4645232580942087058.Spec : Prop :=
  ∀ n, P4645232580942087058.a n = A056469 n

end A056469

/-! ## A056469.P4987346073343233561

`lcm(2, 1-a(n-1))` with `a(0)=2, a(1)=3, a(2)=4`
-/

namespace A056469.P4987346073343233561
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 3, 4] fun n a =>
  Int.lcm 2 (1 - (a (n - 1) : ℤ))

end

end A056469.P4987346073343233561

namespace A056469

/-- `lcm(2, 1-a(n-1))` -/
def P4987346073343233561.Spec : Prop :=
  ∀ n, (P4987346073343233561.a n : ℤ) = A056469 n

end A056469

/-! ## A056469.P2642330268821680965

`ceil(a(n-1)+2^(n-2))` with `a(0)=2`
-/

namespace A056469.P2642330268821680965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  ⌈(a (n - 1) : ℚ) + (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)⌉

end

end A056469.P2642330268821680965

namespace A056469

/-- `ceil(a(n-1)+2^(n-2))` -/
def P2642330268821680965.Spec : Prop :=
  ∀ n, P2642330268821680965.a n = A056469 n

end A056469

/-! ## A056469.P12972224413359272085

`round(a(n-1)+2^(n-2))` with `a(0)=2`
-/

namespace A056469.P12972224413359272085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 1) : ℚ) + (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ))

end

end A056469.P12972224413359272085

namespace A056469

/-- `round(a(n-1)+2^(n-2))` -/
def P12972224413359272085.Spec : Prop :=
  ∀ n, P12972224413359272085.a n = A056469 n

end A056469

/-! ## A056469.P114808848731786835

`∑[2^(C(3, n+2)+n-2)]`
-/

namespace A056469.P114808848731786835
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((Nat.choose 3 (n + 2) : ℤ) + ((n : ℤ) - 2) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056469.P114808848731786835

namespace A056469

/-- `∑[2^(C(3, n+2)+n-2)]` -/
def P114808848731786835.Spec : Prop :=
  ∀ n, P114808848731786835.a n = (A056469 n : ℚ)

end A056469

/-! ## A056469.P14867291848119066278

`round(gcd(2, 2*n)^(n-1)+ϕ)`
-/

namespace A056469.P14867291848119066278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((Nat.gcd 2 (2 * n) : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ) + Real.goldenRatio)

end

end A056469.P14867291848119066278

namespace A056469

/-- `round(gcd(2, 2*n)^(n-1)+ϕ)` -/
def P14867291848119066278.Spec : Prop :=
  ∀ n, P14867291848119066278.a n = A056469 n

end A056469

/-!
# A056470: Number of palindromic structures using a maximum of five different symbols.

The programs for A056470, the canonical program `A056470.P17206839489425412925` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056470 has offset 1).

The definition of A056470 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 292 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A056470.P7858082561259461151

`A056506(or(1, n))`
-/

namespace A056470.P7858082561259461151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056506 (Nat.lor 1 n)

end

end A056470.P7858082561259461151

namespace A056470

/-- `A056506(or(1, n))` -/
def P7858082561259461151.Spec : Prop :=
  ∀ n, P7858082561259461151.a n = A056470 (n + 1)

end A056470

/-! ## A056470.P2832040736858995209

`∑{d}[n+1, A056479(#)]`
-/

namespace A056470.P2832040736858995209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056479 d

end

end A056470.P2832040736858995209

namespace A056470

/-- `∑{d}[n+1, A056479(#)]` -/
def P2832040736858995209.Spec : Prop :=
  ∀ n, P2832040736858995209.a n = A056470 (n + 1)

end A056470

/-! ## A056470.P17206839489425412925

`A056272(∑[char[2*n]])`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A056470

/-- `A056272(∑[char[2*n]])` -/
def P17206839489425412925.Spec : Prop :=
  ∀ n, P17206839489425412925.a n = A056470 (n + 1)

theorem P17206839489425412925.correct : P17206839489425412925.Spec := by
  intro n
  simp only [A056470, Nat.add_sub_cancel]

end A056470

/-! ## A056470.P5050560340686938353

`A056506(gcd(2, n)+n-1)`
-/

namespace A056470.P5050560340686938353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056506 ((Nat.gcd 2 n : ℤ) + ((n : ℤ) - 1)).toNat

end

end A056470.P5050560340686938353

namespace A056470

/-- `A056506(gcd(2, n)+n-1)` -/
def P5050560340686938353.Spec : Prop :=
  ∀ n, P5050560340686938353.a n = A056470 (n + 1)

end A056470

/-! ## A056470.P15896334779564314332

`A056506(and(1, n+1)+n)`
-/

namespace A056470.P15896334779564314332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056506 (Nat.land 1 (n + 1) + n)

end

end A056470.P15896334779564314332

namespace A056470

/-- `A056506(and(1, n+1)+n)` -/
def P15896334779564314332.Spec : Prop :=
  ∀ n, P15896334779564314332.a n = A056470 (n + 1)

end A056470

/-! ## A056470.P2325037445879281378

`A056506(2*floor(n/2)+1)`
-/

namespace A056470.P2325037445879281378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056506 (2 * ⌊(n : ℚ) / 2⌋ + 1).toNat

end

end A056470.P2325037445879281378

namespace A056470

/-- `A056506(2*floor(n/2)+1)` -/
def P2325037445879281378.Spec : Prop :=
  ∀ n, P2325037445879281378.a n = A056470 (n + 1)

end A056470

/-! ## A056470.P7418791866954635857

`∑{d}[A008619(n), A056276(#)]`
-/

namespace A056470.P7418791866954635857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A056276 d

end

end A056470.P7418791866954635857

namespace A056470

/-- `∑{d}[A008619(n), A056276(#)]` -/
def P7418791866954635857.Spec : Prop :=
  ∀ n, P7418791866954635857.a n = A056470 (n + 1)

end A056470

/-! ## A056470.P14675056882702122776

`A056471(n+1)-A056475(n+1)`
-/

namespace A056470.P14675056882702122776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056471 (n + 1) - A056475 (n + 1)

end

end A056470.P14675056882702122776

namespace A056470

/-- `A056471(n+1)-A056475(n+1)` -/
def P14675056882702122776.Spec : Prop :=
  ∀ n, P14675056882702122776.a n = A056470 (n + 1)

end A056470

/-!
# A056471: Number of palindromic structures using a maximum of six different symbols.

The programs for A056471, there is no canonical definition to state claims against.
-/

/-! ## A056471.P14119728468242490173

`A056507(or(1, n))`
-/

namespace A056471.P14119728468242490173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056507 (Nat.lor 1 n)

end

end A056471.P14119728468242490173

/-! ## A056471.P1563897008447460942

`∑{d}[n+1, A056480(#)]`
-/

namespace A056471.P1563897008447460942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056480 d

end

end A056471.P1563897008447460942

/-! ## A056471.P18112710974416821193

`A056273(∑[char[2*n]])`
-/

namespace A056471.P18112710974416821193
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056273 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A056471.P18112710974416821193

/-! ## A056471.P6402906160177989439

`A056507(and(1, n+1)+n)`
-/

namespace A056471.P6402906160177989439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056507 (Nat.land 1 (n + 1) + n)

end

end A056471.P6402906160177989439

/-! ## A056471.P11834713803358328355

`A056507(A109613(n))`
-/

namespace A056471.P11834713803358328355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056507 (A109613 n).toNat

end

end A056471.P11834713803358328355

/-! ## A056471.P14664135698575280749

`A056507(A063196(n+1))`
-/

namespace A056471.P14664135698575280749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056507 (A063196 (n + 1)).toNat

end

end A056471.P14664135698575280749

/-! ## A056471.P3555310851135241938

`∑{d}[A008619(n), A056277(#)]`
-/

namespace A056471.P3555310851135241938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A056277 d

end

end A056471.P3555310851135241938

/-! ## A056471.P4330803742328784020

`A056475(n+1)+A056470(n+1)`
-/

namespace A056471.P4330803742328784020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056475 (n + 1) + A056470 (n + 1)

end

end A056471.P4330803742328784020

/-!
# A056472: Triangle read by rows in which row n lists all factorizations of n.

The programs for A056472, there is no canonical definition to state claims against.
-/

/-! ## A056472.P17772766900607059438

`A162247(lt[A048723(3*n), A161409(n)])`
-/

namespace A056472.P17772766900607059438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048723 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161409 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162247 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A056472.P17772766900607059438

/-! ## A056472.P11927781617649463111

`A162247(A090106(n+1))`
-/

namespace A056472.P11927781617649463111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162247 (A090106 (n + 1)).toNat

end

end A056472.P11927781617649463111

/-! ## A056472.P7307624608399029500

`A162247(n+1)-A185274(A035630(n+1))`
-/

namespace A056472.P7307624608399029500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162247 (n + 1) - A185274 (A035630 (n + 1)).toNat

end

end A056472.P7307624608399029500

/-!
# A056473: Number of palindromic structures using exactly four different symbols.

The programs for A056473, the canonical program `A056473.P6112660942085821025` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056473 has offset 1).

The definition of A056473 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A056473.P3866841240549991550

`A056510(or(1, n))`
-/

namespace A056473.P3866841240549991550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056510 (Nat.lor 1 n)

end

end A056473.P3866841240549991550

namespace A056473

/-- `A056510(or(1, n))` -/
def P3866841240549991550.Spec : Prop :=
  ∀ n, P3866841240549991550.a n = A056473 (n + 1)

end A056473

/-! ## A056473.P7370036446304997865

`∑{d}[n+1, A056483(#)]`
-/

namespace A056473.P7370036446304997865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056483 d

end

end A056473.P7370036446304997865

namespace A056473

/-- `∑{d}[n+1, A056483(#)]` -/
def P7370036446304997865.Spec : Prop :=
  ∀ n, P7370036446304997865.a n = A056473 (n + 1)

end A056473

/-! ## A056473.P10654771184661094954

`A056510(gcd(2, n)+n-1)`
-/

namespace A056473.P10654771184661094954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056510 ((Nat.gcd 2 n : ℤ) + ((n : ℤ) - 1)).toNat

end

end A056473.P10654771184661094954

namespace A056473

/-- `A056510(gcd(2, n)+n-1)` -/
def P10654771184661094954.Spec : Prop :=
  ∀ n, P10654771184661094954.a n = A056473 (n + 1)

end A056473

/-! ## A056473.P8656460973758221818

`A056510(and(1, n+1)+n)`
-/

namespace A056473.P8656460973758221818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056510 (Nat.land 1 (n + 1) + n)

end

end A056473.P8656460973758221818

namespace A056473

/-- `A056510(and(1, n+1)+n)` -/
def P8656460973758221818.Spec : Prop :=
  ∀ n, P8656460973758221818.a n = A056473 (n + 1)

end A056473

/-! ## A056473.P13166275602108936076

`A056510(A109613(n))`
-/

namespace A056473.P13166275602108936076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056510 (A109613 n).toNat

end

end A056473.P13166275602108936076

namespace A056473

/-- `A056510(A109613(n))` -/
def P13166275602108936076.Spec : Prop :=
  ∀ n, P13166275602108936076.a n = A056473 (n + 1)

end A056473

/-! ## A056473.P8960878604499887188

`∑{d}[A008619(n), A056280(#)]`
-/

namespace A056473.P8960878604499887188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A056280 d

end

end A056473.P8960878604499887188

namespace A056473

/-- `∑{d}[A008619(n), A056280(#)]` -/
def P8960878604499887188.Spec : Prop :=
  ∀ n, P8960878604499887188.a n = A056473 (n + 1)

end A056473

/-! ## A056473.P15932356959470990984

`A056510(2*A123108(n)+1)`
-/

namespace A056473.P15932356959470990984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056510 (2 * A123108 n + 1).toNat

end

end A056473.P15932356959470990984

namespace A056473

/-- `A056510(2*A123108(n)+1)` -/
def P15932356959470990984.Spec : Prop :=
  ∀ n, P15932356959470990984.a n = A056473 (n + 1)

end A056473

/-! ## A056473.P6242846832166381431

`A056510(A123108(n)+A123108(n)+1)`
-/

namespace A056473.P6242846832166381431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056510 (A123108 n + (A123108 n + 1)).toNat

end

end A056473.P6242846832166381431

namespace A056473

/-- `A056510(A123108(n)+A123108(n)+1)` -/
def P6242846832166381431.Spec : Prop :=
  ∀ n, P6242846832166381431.a n = A056473 (n + 1)

end A056473

/-! ## A056473.P6112660942085821025

`A032263(∑[char[2*n]])/3`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A056473

/-- `A032263(∑[char[2*n]])/3` -/
def P6112660942085821025.Spec : Prop :=
  ∀ n, P6112660942085821025.a n = (A056473 (n + 1) : ℚ)

end A056473

/-! ## A056473.P432207597523789128

`A056455(n+1)/24`
-/

namespace A056473.P432207597523789128
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056455 (n + 1) : ℚ) / 24

end

end A056473.P432207597523789128

namespace A056473

/-- `A056455(n+1)/24` -/
def P432207597523789128.Spec : Prop :=
  ∀ n, P432207597523789128.a n = (A056473 (n + 1) : ℚ)

end A056473

/-! ## A056473.P17718552286641620455

`A056328(n+1)-A327611(n+1)`
-/

namespace A056473.P17718552286641620455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056328 (n + 1) - A327611 (n + 1)

end

end A056473.P17718552286641620455

namespace A056473

/-- `A056328(n+1)-A327611(n+1)` -/
def P17718552286641620455.Spec : Prop :=
  ∀ n, P17718552286641620455.a n = A056473 (n + 1)

end A056473

/-!
# A056474: Number of palindromic structures using exactly five different symbols.

The programs for A056474, there is no canonical definition to state claims against.
-/

/-! ## A056474.P4115157340064293490

`A056511(or(1, n))`
-/

namespace A056474.P4115157340064293490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056511 (Nat.lor 1 n)

end

end A056474.P4115157340064293490

/-! ## A056474.P3151426984100804115

`∑{d}[n+1, A056484(#)]`
-/

namespace A056474.P3151426984100804115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056484 d

end

end A056474.P3151426984100804115

/-! ## A056474.P1719269160109692139

`A056511((n+1)%2+n)`
-/

namespace A056474.P1719269160109692139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056511 ((n + 1) % 2 + n)

end

end A056474.P1719269160109692139

/-! ## A056474.P13951774707795611940

`A056511(gcd(2, n)+n-1)`
-/

namespace A056474.P13951774707795611940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056511 ((Nat.gcd 2 n : ℤ) + ((n : ℤ) - 1)).toNat

end

end A056474.P13951774707795611940

/-! ## A056474.P6754912172008174477

`A056511(n-(n%2-1))`
-/

namespace A056474.P6754912172008174477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056511 ((n : ℤ) - (((n % 2 : ℕ) : ℤ) - 1)).toNat

end

end A056474.P6754912172008174477

/-! ## A056474.P15308519939728016602

`A056511(and(1, n+1)+n)`
-/

namespace A056474.P15308519939728016602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056511 (Nat.land 1 (n + 1) + n)

end

end A056474.P15308519939728016602

/-! ## A056474.P5353799261758829781

`A056511(A109613(n))`
-/

namespace A056474.P5353799261758829781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056511 (A109613 n).toNat

end

end A056474.P5353799261758829781

/-! ## A056474.P14807210769963198162

`A056511(Δ[A000982(n)])`
-/

namespace A056474.P14807210769963198162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056511 (f1 (n + 1) - f1 n).toNat

end

end A056474.P14807210769963198162

/-! ## A056474.P10987034700088380387

`∑{d}[A008619(n), A056281(#)]`
-/

namespace A056474.P10987034700088380387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A056281 d

end

end A056474.P10987034700088380387

/-! ## A056474.P14712025355311554622

`A056511(A000035(n+1)+n)`
-/

namespace A056474.P14712025355311554622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056511 (A000035 (n + 1) + (n : ℤ)).toNat

end

end A056474.P14712025355311554622

/-! ## A056474.P16167585821412950221

`A056511(1-(A000035(n)-n))`
-/

namespace A056474.P16167585821412950221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056511 (1 - (A000035 n - (n : ℤ))).toNat

end

end A056474.P16167585821412950221

/-! ## A056474.P7020181297011645341

`A056511(A000982(n+1)-A000982(n))`
-/

namespace A056474.P7020181297011645341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056511 (A000982 (n + 1) - A000982 n).toNat

end

end A056474.P7020181297011645341

/-! ## A056474.P7202211236701042393

`A056456(n+1)/A101100(n+1)`
-/

namespace A056474.P7202211236701042393
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056456 (n + 1) : ℚ) / (A101100 (n + 1) : ℚ)

end

end A056474.P7202211236701042393

/-!
# A056475: Number of palindromic structures using exactly six different symbols.

The programs for A056475, there is no canonical definition to state claims against.
-/

/-! ## A056475.P5240449040405249594

`A056512(or(1, n))`
-/

namespace A056475.P5240449040405249594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056512 (Nat.lor 1 n)

end

end A056475.P5240449040405249594

/-! ## A056475.P8230654453466567619

`∑{d}[n+1, A056485(#)]`
-/

namespace A056475.P8230654453466567619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056485 d

end

end A056475.P8230654453466567619

/-! ## A056475.P13937291787100452325

`A056512(gcd(2, n)+n-1)`
-/

namespace A056475.P13937291787100452325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056512 ((Nat.gcd 2 n : ℤ) + ((n : ℤ) - 1)).toNat

end

end A056475.P13937291787100452325

/-! ## A056475.P17522807549698447137

`A056512(and(1, n+1)+n)`
-/

namespace A056475.P17522807549698447137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056512 (Nat.land 1 (n + 1) + n)

end

end A056475.P17522807549698447137

/-! ## A056475.P16495346209963116639

`A056512(A109613(n))`
-/

namespace A056475.P16495346209963116639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056512 (A109613 n).toNat

end

end A056475.P16495346209963116639

/-! ## A056475.P16156629187603187547

`A056512(Δ[A000982(n)])`
-/

namespace A056475.P16156629187603187547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056512 (f1 (n + 1) - f1 n).toNat

end

end A056475.P16156629187603187547

/-! ## A056475.P15579341327123356032

`∑{d}[A008619(n), A056282(#)]`
-/

namespace A056475.P15579341327123356032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A056282 d

end

end A056475.P15579341327123356032

/-! ## A056475.P7452291811209809910

`A056512(A004525(2*n+1))`
-/

namespace A056475.P7452291811209809910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056512 (A004525 (2 * n + 1)).toNat

end

end A056475.P7452291811209809910

/-! ## A056475.P9440942265580903815

`A056512(A000035(n+1)+n)`
-/

namespace A056475.P9440942265580903815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056512 (A000035 (n + 1) + (n : ℤ)).toNat

end

end A056475.P9440942265580903815

/-! ## A056475.P7878925836143914648

`A056512(A042948(n)+1-n)`
-/

namespace A056475.P7878925836143914648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056512 (A042948 n + (1 - (n : ℤ))).toNat

end

end A056475.P7878925836143914648

/-! ## A056475.P9185789647256961491

`A056512(1-(A000035(n)-n))`
-/

namespace A056475.P9185789647256961491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056512 (1 - (A000035 n - (n : ℤ))).toNat

end

end A056475.P9185789647256961491

/-! ## A056475.P9961403806121690469

`A056512(2-A000034(n)+n)`
-/

namespace A056475.P9961403806121690469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056512 (2 - A000034 n + (n : ℤ)).toNat

end

end A056475.P9961403806121690469

/-! ## A056475.P10193260870734783163

`A056512(1-(n-A042948(n)))`
-/

namespace A056475.P10193260870734783163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056512 (1 - ((n : ℤ) - A042948 n)).toNat

end

end A056475.P10193260870734783163

/-! ## A056475.P12556616676042250563

`A056512(2-(A000034(n)-n))`
-/

namespace A056475.P12556616676042250563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056512 (2 - (A000034 n - (n : ℤ))).toNat

end

end A056475.P12556616676042250563

/-! ## A056475.P9930943055354170006

`A056471(n+1)-A056470(n+1)`
-/

namespace A056475.P9930943055354170006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056471 (n + 1) - A056470 (n + 1)

end

end A056475.P9930943055354170006

/-! ## A056475.P3394658293254454752

`A056512(A112299(2*(n+1))²+n)`
-/

namespace A056475.P3394658293254454752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056512 (A112299 (2 * (n + 1)) ^ 2 + (n : ℤ)).toNat

end

end A056475.P3394658293254454752

/-! ## A056475.P2183346135625298694

`A056512(A000982(n+1)-A000982(n))`
-/

namespace A056475.P2183346135625298694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056512 (A000982 (n + 1) - A000982 n).toNat

end

end A056475.P2183346135625298694

/-!
# A056476: Number of primitive (aperiodic) palindromic structures of length n using a maximum of two different symbols.

The programs for A056476, the canonical program `A056476.P12632563156965169968` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056476 has offset 0).

The definition of A056476 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 667 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A056476.P12632563156965169968

`A056481(n)+C(n, n²)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A056476

/-- `A056481(n)+C(n, n²)` -/
def P12632563156965169968.Spec : Prop :=
  ∀ n, P12632563156965169968.a n = A056476 n

theorem P12632563156965169968.correct : P12632563156965169968.Spec := by
  intro n
  simp only [A056476]

end A056476

/-! ## A056476.P11475766381892907866

`A056481(n)+A019590(n+1)`
-/

namespace A056476.P11475766381892907866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056481 n + A019590 (n + 1)

end

end A056476.P11475766381892907866

namespace A056476

/-- `A056481(n)+A019590(n+1)` -/
def P11475766381892907866.Spec : Prop :=
  ∀ n, P11475766381892907866.a n = A056476 n

end A056476

/-! ## A056476.P9951342308846917621

`gcd(A056481(n), A154955(n+1))`
-/

namespace A056476.P9951342308846917621
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A056481 n) (A154955 (n + 1))

end

end A056476.P9951342308846917621

namespace A056476

/-- `gcd(A056481(n), A154955(n+1))` -/
def P9951342308846917621.Spec : Prop :=
  ∀ n, (P9951342308846917621.a n : ℤ) = A056476 n

end A056476

/-! ## A056476.P6385737494950950529

`A056481(n)+A000007(n-(n^6)%7)`
-/

namespace A056476.P6385737494950950529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056481 n + A000007 (n - n ^ 6 % 7)

end

end A056476.P6385737494950950529

namespace A056476

/-- `A056481(n)+A000007(n-(n^6)%7)` -/
def P6385737494950950529.Spec : Prop :=
  ∀ n, P6385737494950950529.a n = A056476 n

end A056476

/-! ## A056476.P272921906014134910

`A056481(n)+A000007(A004526(n))`
-/

namespace A056476.P272921906014134910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056481 n + A000007 (A004526 n).toNat

end

end A056476.P272921906014134910

namespace A056476

/-- `A056481(n)+A000007(A004526(n))` -/
def P272921906014134910.Spec : Prop :=
  ∀ n, P272921906014134910.a n = A056476 n

end A056476

/-! ## A056476.P5442488489466916997

`A056481(n)+A000035(A000010(n+1))`
-/

namespace A056476.P5442488489466916997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056481 n + A000035 (A000010 (n + 1)).toNat

end

end A056476.P5442488489466916997

namespace A056476

/-- `A056481(n)+A000035(A000010(n+1))` -/
def P5442488489466916997.Spec : Prop :=
  ∀ n, P5442488489466916997.a n = A056476 n

end A056476

/-! ## A056476.P3167041492357990889

`A056481(n)+A016116(n)%2`
-/

namespace A056476.P3167041492357990889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056481 n + Int.tmod (A016116 n) 2

end

end A056476.P3167041492357990889

namespace A056476

/-- `A056481(n)+A016116(n)%2` -/
def P3167041492357990889.Spec : Prop :=
  ∀ n, P3167041492357990889.a n = A056476 n

end A056476

/-! ## A056476.P16990444522063534986

`A001371(A028310(n))-A066313(A028310(n))`
-/

namespace A056476.P16990444522063534986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001371 (A028310 n).toNat - A066313 (A028310 n).toNat

end

end A056476.P16990444522063534986

namespace A056476

/-- `A001371(A028310(n))-A066313(A028310(n))` -/
def P16990444522063534986.Spec : Prop :=
  ∀ n, P16990444522063534986.a n = A056476 n

end A056476

/-! ## A056476.P9069078115352106776

`A056481(n)+A000007(A109607(n+1))`
-/

namespace A056476.P9069078115352106776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056481 n + A000007 (A109607 (n + 1)).toNat

end

end A056476.P9069078115352106776

namespace A056476

/-- `A056481(n)+A000007(A109607(n+1))` -/
def P9069078115352106776.Spec : Prop :=
  ∀ n, P9069078115352106776.a n = A056476 n

end A056476

/-! ## A056476.P2525282192037041373

`A056481(n)+A000007(n²-n)`
-/

namespace A056476.P2525282192037041373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056481 n + A000007 (n ^ 2 - n)

end

end A056476.P2525282192037041373

namespace A056476

/-- `A056481(n)+A000007(n²-n)` -/
def P2525282192037041373.Spec : Prop :=
  ∀ n, P2525282192037041373.a n = A056476 n

end A056476

/-! ## A056476.P13445608205119130237

`xor(A000007(A109607(2*n)), A056481(n))`
-/

namespace A056476.P13445608205119130237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000007 (A109607 (2 * n)).toNat) (A056481 n)

end

end A056476.P13445608205119130237

namespace A056476

/-- `xor(A000007(A109607(2*n)), A056481(n))` -/
def P13445608205119130237.Spec : Prop :=
  ∀ n, P13445608205119130237.a n = A056476 n

end A056476

/-!
# A056477: Number of primitive (aperiodic) palindromic structures using a maximum of three different symbols.

The programs for A056477, the canonical program `A056477.P15029080168793993472` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056477 has offset 0).

The definition of A056477 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 423 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A056477.P15029080168793993472

`A056482(A028310(n))+A056476(n)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A056477

/-- `A056482(A028310(n))+A056476(n)` -/
def P15029080168793993472.Spec : Prop :=
  ∀ n, P15029080168793993472.a n = A056477 n

theorem P15029080168793993472.correct : P15029080168793993472.Spec := by
  intro n
  simp only [A056477]

end A056477

/-! ## A056477.P15208901642621577584

`A056482(A233583(n+1))+A056476(n)`
-/

namespace A056477.P15208901642621577584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056482 (A233583 (n + 1)).toNat + A056476 n

end

end A056477.P15208901642621577584

namespace A056477

/-- `A056482(A233583(n+1))+A056476(n)` -/
def P15208901642621577584.Spec : Prop :=
  ∀ n, P15208901642621577584.a n = A056477 n

end A056477

/-! ## A056477.P1806194173971576341

`A056482(A065033(2*n))+A056476(n)`
-/

namespace A056477.P1806194173971576341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056482 (A065033 (2 * n)).toNat + A056476 n

end

end A056477.P1806194173971576341

namespace A056477

/-- `A056482(A065033(2*n))+A056476(n)` -/
def P1806194173971576341.Spec : Prop :=
  ∀ n, P1806194173971576341.a n = A056477 n

end A056477

/-! ## A056477.P7879559891998563344

`A056478(n)-A056483(A028310(n))`
-/

namespace A056477.P7879559891998563344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056478 n - A056483 (A028310 n).toNat

end

end A056477.P7879559891998563344

namespace A056477

/-- `A056478(n)-A056483(A028310(n))` -/
def P7879559891998563344.Spec : Prop :=
  ∀ n, P7879559891998563344.a n = A056477 n

theorem P7879559891998563344.correct : P7879559891998563344.Spec := by
  intro n
  simp only [A056477, Nat.add_sub_cancel, A056477.P7879559891998563344.a, A056477.P15029080168793993472.a, A028310, A028310.P18130301328277559831.a, A056476, A056476.P12632563156965169968.a, A056478, A056478.P4496359852495478390.a, A056482, A056482.P13043741181585035783.a, A056483, A056483.P9343784737776717252.f1, A056483.P9343784737776717252.a, A008683, A008683.P18254306604665478110.a, A056464, A056464.P10441682946801096791.f1, A056464.P10441682946801096791.a, A056473, A056473.P6112660942085821025.f2, A056473.P6112660942085821025.f1, A056473.P6112660942085821025.a, A056481, A056481.P6036497099892352670.a, A032263, A032263.P9062424155737793790.a, A056454, A056454.P10309732254336888628.a, A056463, A056463.P6786534809649954337.f1, A056463.P6786534809649954337.a, A132971, A132971.P9197609016375066540.a, A156552, A156552.P4268073137713085227.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A056453, A056453.P15792720137673546609.a, A056489, A056489.P4551859471100236168.a, A085357, A085357.P3258697467278337073.a, A106400, A106400.P11201390576172776043.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A056477

/-! ## A056477.P14347893305138575858

`A056478(n)-A056483(A233583(n+1))`
-/

namespace A056477.P14347893305138575858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056478 n - A056483 (A233583 (n + 1)).toNat

end

end A056477.P14347893305138575858

namespace A056477

/-- `A056478(n)-A056483(A233583(n+1))` -/
def P14347893305138575858.Spec : Prop :=
  ∀ n, P14347893305138575858.a n = A056477 n

end A056477

/-!
# A056478: Number of primitive (aperiodic) palindromic structures using a maximum of four different symbols.

The programs for A056478, the canonical program `A056478.P4496359852495478390` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056478 has offset 0).

The definition of A056478 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 337 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A056478.P4496359852495478390

`A056483(A028310(n))+A056477(n)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A056478

/-- `A056483(A028310(n))+A056477(n)` -/
def P4496359852495478390.Spec : Prop :=
  ∀ n, P4496359852495478390.a n = A056478 n

theorem P4496359852495478390.correct : P4496359852495478390.Spec := by
  intro n
  simp only [A056478]

end A056478

/-! ## A056478.P9175783064569071652

`A056483(A233583(n+1))+A056477(n)`
-/

namespace A056478.P9175783064569071652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056483 (A233583 (n + 1)).toNat + A056477 n

end

end A056478.P9175783064569071652

namespace A056478

/-- `A056483(A233583(n+1))+A056477(n)` -/
def P9175783064569071652.Spec : Prop :=
  ∀ n, P9175783064569071652.a n = A056478 n

end A056478

/-! ## A056478.P10072842960654066126

`A056483(A065033(2*n))+A056477(n)`
-/

namespace A056478.P10072842960654066126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056483 (A065033 (2 * n)).toNat + A056477 n

end

end A056478.P10072842960654066126

namespace A056478

/-- `A056483(A065033(2*n))+A056477(n)` -/
def P10072842960654066126.Spec : Prop :=
  ∀ n, P10072842960654066126.a n = A056478 n

end A056478

/-! ## A056478.P13326350225156187725

`A056479(n)-A056484(A028310(n))`
-/

namespace A056478.P13326350225156187725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056479 n - A056484 (A028310 n).toNat

end

end A056478.P13326350225156187725

namespace A056478

/-- `A056479(n)-A056484(A028310(n))` -/
def P13326350225156187725.Spec : Prop :=
  ∀ n, P13326350225156187725.a n = A056478 n

end A056478

/-! ## A056478.P91007786010566930

`A056479(n)-A056484(A233583(n+1))`
-/

namespace A056478.P91007786010566930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056479 n - A056484 (A233583 (n + 1)).toNat

end

end A056478.P91007786010566930

namespace A056478

/-- `A056479(n)-A056484(A233583(n+1))` -/
def P91007786010566930.Spec : Prop :=
  ∀ n, P91007786010566930.a n = A056478 n

end A056478

/-!
# A056479: Number of primitive (aperiodic) palindromic structures using a maximum of five different symbols.

The programs for A056479, there is no canonical definition to state claims against.
-/

/-! ## A056479.P11521385948730476778

`A056484(A028310(n))+A056478(n)`
-/

namespace A056479.P11521385948730476778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056484 (A028310 n).toNat + A056478 n

end

end A056479.P11521385948730476778

/-! ## A056479.P18046686029878053362

`A056484(A233583(n+1))+A056478(n)`
-/

namespace A056479.P18046686029878053362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056484 (A233583 (n + 1)).toNat + A056478 n

end

end A056479.P18046686029878053362

/-! ## A056479.P6767874184406851149

`A056484(A065033(2*n))+A056478(n)`
-/

namespace A056479.P6767874184406851149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056484 (A065033 (2 * n)).toNat + A056478 n

end

end A056479.P6767874184406851149

/-! ## A056479.P4200362474186542002

`A056480(n)-A056485(A028310(n))`
-/

namespace A056479.P4200362474186542002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056480 n - A056485 (A028310 n).toNat

end

end A056479.P4200362474186542002

/-! ## A056479.P16224422844125708994

`A056480(n)-A056485(A233583(n+1))`
-/

namespace A056479.P16224422844125708994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056480 n - A056485 (A233583 (n + 1)).toNat

end

end A056479.P16224422844125708994

/-!
# A056480: Number of primitive (aperiodic) palindromic structures using a maximum of six different symbols.

The programs for A056480, there is no canonical definition to state claims against.
-/

/-! ## A056480.P13437186258608192392

`A056485(round(acot(n)+n))+A056479(n)`
-/

namespace A056480.P13437186258608192392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056485 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat + A056479 n

end

end A056480.P13437186258608192392

/-! ## A056480.P9399549655174244401

`A056485(A028310(n))+A056479(n)`
-/

namespace A056480.P9399549655174244401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056485 (A028310 n).toNat + A056479 n

end

end A056480.P9399549655174244401

/-! ## A056480.P7604956896233849329

`A056485(A233583(n+1))+A056479(n)`
-/

namespace A056480.P7604956896233849329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056485 (A233583 (n + 1)).toNat + A056479 n

end

end A056480.P7604956896233849329

/-! ## A056480.P6426476910780676920

`A056485(A065033(2*n))+A056479(n)`
-/

namespace A056480.P6426476910780676920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056485 (A065033 (2 * n)).toNat + A056479 n

end

end A056480.P6426476910780676920

/-! ## A056480.P8394974672756375281

`A056485(A000007(n)+n)+A056479(n)`
-/

namespace A056480.P8394974672756375281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056485 (A000007 n + (n : ℤ)).toNat + A056479 n

end

end A056480.P8394974672756375281

/-!
# A056481: Number of primitive (aperiodic) palindromic structures using exactly two different symbols.

The programs for A056481, the canonical program `A056481.P6036497099892352670` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056481 has offset 0).

The definition of A056481 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 665 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A056481.P4019664433587663614

`A056476(n)-C(n, n²)`
-/

namespace A056481.P4019664433587663614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056476 n - (Nat.choose n (n ^ 2) : ℤ)

end

end A056481.P4019664433587663614

namespace A056481

/-- `A056476(n)-C(n, n²)` -/
def P4019664433587663614.Spec : Prop :=
  ∀ n, P4019664433587663614.a n = A056481 n

end A056481

/-! ## A056481.P3524018590966174311

`A056476(A233583(n+1))`
-/

namespace A056481.P3524018590966174311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056476 (A233583 (n + 1)).toNat

end

end A056481.P3524018590966174311

namespace A056481

/-- `A056476(A233583(n+1))` -/
def P3524018590966174311.Spec : Prop :=
  ∀ n, P3524018590966174311.a n = A056481 n

end A056481

/-! ## A056481.P17947580531984926408

`A056476(n)*A157928(n)`
-/

namespace A056481.P17947580531984926408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056476 n * A157928 n

end

end A056481.P17947580531984926408

namespace A056481

/-- `A056476(n)*A157928(n)` -/
def P17947580531984926408.Spec : Prop :=
  ∀ n, P17947580531984926408.a n = A056481 n

end A056481

/-! ## A056481.P5121097385089031146

`A056476(n)-A019590(n+1)`
-/

namespace A056481.P5121097385089031146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056476 n - A019590 (n + 1)

end

end A056481.P5121097385089031146

namespace A056481

/-- `A056476(n)-A019590(n+1)` -/
def P5121097385089031146.Spec : Prop :=
  ∀ n, P5121097385089031146.a n = A056481 n

end A056481

/-! ## A056481.P8009234142867622211

`A000122(C(3, n+1))*A056476(n)`
-/

namespace A056481.P8009234142867622211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (Nat.choose 3 (n + 1)) * A056476 n

end

end A056481.P8009234142867622211

namespace A056481

/-- `A000122(C(3, n+1))*A056476(n)` -/
def P8009234142867622211.Spec : Prop :=
  ∀ n, P8009234142867622211.a n = A056481 n

end A056481

/-! ## A056481.P6036497099892352670

`A056463(A028310(n))/2`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A056481

/-- `A056463(A028310(n))/2` -/
def P6036497099892352670.Spec : Prop :=
  ∀ n, P6036497099892352670.a n = (A056481 n : ℚ)

end A056481

/-! ## A056481.P4007558331740156619

`A056463(A000007(n)+n)/2`
-/

namespace A056481.P4007558331740156619
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056463 (A000007 n + (n : ℤ)).toNat : ℚ) / 2

end

end A056481.P4007558331740156619

namespace A056481

/-- `A056463(A000007(n)+n)/2` -/
def P4007558331740156619.Spec : Prop :=
  ∀ n, P4007558331740156619.a n = (A056481 n : ℚ)

end A056481

/-! ## A056481.P1995285552894287840

`A056463(A000038(n)+n)/2`
-/

namespace A056481.P1995285552894287840
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056463 (A000038 n + (n : ℤ)).toNat : ℚ) / 2

end

end A056481.P1995285552894287840

namespace A056481

/-- `A056463(A000038(n)+n)/2` -/
def P1995285552894287840.Spec : Prop :=
  ∀ n, P1995285552894287840.a n = (A056481 n : ℚ)

end A056481

/-! ## A056481.P14961235971001447738

`and(A010737(n), A056476(n))`
-/

namespace A056481.P14961235971001447738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010737 n) (A056476 n)

end

end A056481.P14961235971001447738

namespace A056481

/-- `and(A010737(n), A056476(n))` -/
def P14961235971001447738.Spec : Prop :=
  ∀ n, P14961235971001447738.a n = A056481 n

end A056481

/-! ## A056481.P7538755431618228231

`and(A056476(n), A178885(n))`
-/

namespace A056481.P7538755431618228231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A056476 n) (A178885 n)

end

end A056481.P7538755431618228231

namespace A056481

/-- `and(A056476(n), A178885(n))` -/
def P7538755431618228231.Spec : Prop :=
  ∀ n, P7538755431618228231.a n = A056481 n

end A056481

/-! ## A056481.P3011054943813274940

`A056476(n)%A000011(n)`
-/

namespace A056481.P3011054943813274940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056476 n) (A000011 n)

end

end A056481.P3011054943813274940

namespace A056481

/-- `A056476(n)%A000011(n)` -/
def P3011054943813274940.Spec : Prop :=
  ∀ n, P3011054943813274940.a n = A056481 n

end A056481

/-! ## A056481.P3431045284157496797

`and(A056476(n), A275016(n+1))`
-/

namespace A056481.P3431045284157496797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A056476 n) (A275016 (n + 1))

end

end A056481.P3431045284157496797

namespace A056481

/-- `and(A056476(n), A275016(n+1))` -/
def P3431045284157496797.Spec : Prop :=
  ∀ n, P3431045284157496797.a n = A056481 n

end A056481

/-! ## A056481.P12614101406698484845

`and(A056476(n), A274638(n))`
-/

namespace A056481.P12614101406698484845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A056476 n) (A274638 n)

end

end A056481.P12614101406698484845

namespace A056481

/-- `and(A056476(n), A274638(n))` -/
def P12614101406698484845.Spec : Prop :=
  ∀ n, P12614101406698484845.a n = A056481 n

end A056481

/-! ## A056481.P6159658421001932013

`and(A056476(n), A386875(n))`
-/

namespace A056481.P6159658421001932013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A056476 n) (A386875 n)

end

end A056481.P6159658421001932013

namespace A056481

/-- `and(A056476(n), A386875(n))` -/
def P6159658421001932013.Spec : Prop :=
  ∀ n, P6159658421001932013.a n = A056481 n

end A056481

/-! ## A056481.P5372438563131088137

`and(A055010(n), A056476(n))`
-/

namespace A056481.P5372438563131088137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A055010 n) (A056476 n)

end

end A056481.P5372438563131088137

namespace A056481

/-- `and(A055010(n), A056476(n))` -/
def P5372438563131088137.Spec : Prop :=
  ∀ n, P5372438563131088137.a n = A056481 n

end A056481

/-! ## A056481.P2466944229667395906

`and(A056476(n), A089226(n+1))`
-/

namespace A056481.P2466944229667395906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A056476 n) (A089226 (n + 1))

end

end A056481.P2466944229667395906

namespace A056481

/-- `and(A056476(n), A089226(n+1))` -/
def P2466944229667395906.Spec : Prop :=
  ∀ n, P2466944229667395906.a n = A056481 n

end A056481

/-! ## A056481.P8956023102010225631

`and(A054135(n+1), A056476(n))`
-/

namespace A056481.P8956023102010225631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A054135 (n + 1)) (A056476 n)

end

end A056481.P8956023102010225631

namespace A056481

/-- `and(A054135(n+1), A056476(n))` -/
def P8956023102010225631.Spec : Prop :=
  ∀ n, P8956023102010225631.a n = A056481 n

end A056481

/-! ## A056481.P16287214007278869549

`and(A056476(n), A087522(n))`
-/

namespace A056481.P16287214007278869549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A056476 n) (A087522 n)

end

end A056481.P16287214007278869549

namespace A056481

/-- `and(A056476(n), A087522(n))` -/
def P16287214007278869549.Spec : Prop :=
  ∀ n, P16287214007278869549.a n = A056481 n

end A056481

/-! ## A056481.P8529887380301994943

`and(A056476(n), A070050(n+1))`
-/

namespace A056481.P8529887380301994943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A056476 n) (A070050 (n + 1))

end

end A056481.P8529887380301994943

namespace A056481

/-- `and(A056476(n), A070050(n+1))` -/
def P8529887380301994943.Spec : Prop :=
  ∀ n, P8529887380301994943.a n = A056481 n

end A056481

/-!
# A056482: Number of primitive (aperiodic) palindromic structures using exactly three different symbols.

The programs for A056482, the canonical program `A056482.P13043741181585035783` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056482 has offset 1).

The definition of A056482 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 418 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A056482.P6659886893259632701

`A056477(n+1)-A056476(n+1)`
-/

namespace A056482.P6659886893259632701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056477 (n + 1) - A056476 (n + 1)

end

end A056482.P6659886893259632701

namespace A056482

/-- `A056477(n+1)-A056476(n+1)` -/
def P6659886893259632701.Spec : Prop :=
  ∀ n, P6659886893259632701.a n = A056482 (n + 1)

end A056482

/-! ## A056482.P13043741181585035783

`A056464(n+1)/6`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A056482

/-- `A056464(n+1)/6` -/
def P13043741181585035783.Spec : Prop :=
  ∀ n, P13043741181585035783.a n = (A056482 (n + 1) : ℚ)

end A056482

/-! ## A056482.P14040485360446270137

`∑{d}[n+1, A008683(#)*A056454((n+1)/#)]/6`
-/

namespace A056482.P14040485360446270137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), A008683 d * A056454 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat : ℤ) : ℚ) / 6

end

end A056482.P14040485360446270137

namespace A056482

/-- `∑{d}[n+1, A008683(#)*A056454((n+1)/#)]/6` -/
def P14040485360446270137.Spec : Prop :=
  ∀ n, P14040485360446270137.a n = (A056482 (n + 1) : ℚ)

end A056482

/-! ## A056482.P13587619547911895262

`6^A163805(A016813(n))*A056464(n+1)`
-/

namespace A056482.P13587619547911895262
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 : ℚ) ^ (A163805 (A016813 n).toNat : ℤ) * (A056464 (n + 1) : ℚ)

end

end A056482.P13587619547911895262

namespace A056482

/-- `6^A163805(A016813(n))*A056464(n+1)` -/
def P13587619547911895262.Spec : Prop :=
  ∀ n, P13587619547911895262.a n = (A056482 (n + 1) : ℚ)

end A056482

/-! ## A056482.P8018733221633834040

`6^A162512(A152427(n+1))*A056464(n+1)`
-/

namespace A056482.P8018733221633834040
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 : ℚ) ^ (A162512 (A152427 (n + 1)).toNat : ℤ) * (A056464 (n + 1) : ℚ)

end

end A056482.P8018733221633834040

namespace A056482

/-- `6^A162512(A152427(n+1))*A056464(n+1)` -/
def P8018733221633834040.Spec : Prop :=
  ∀ n, P8018733221633834040.a n = (A056482 (n + 1) : ℚ)

end A056482

/-! ## A056482.P2044331605394015869

`A284826(A290743(n+1)+A157928(n))`
-/

namespace A056482.P2044331605394015869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284826 (A290743 (n + 1) + A157928 n).toNat

end

end A056482.P2044331605394015869

namespace A056482

/-- `A284826(A290743(n+1)+A157928(n))` -/
def P2044331605394015869.Spec : Prop :=
  ∀ n, P2044331605394015869.a n = A056482 (n + 1)

end A056482

/-!
# A056483: Number of primitive (aperiodic) palindromic structures using exactly four different symbols.

The programs for A056483, the canonical program `A056483.P9343784737776717252` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056483 has offset 1).

The definition of A056483 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A056483.P14811251841203223074

`A056478(n+1)-A056477(n+1)`
-/

namespace A056483.P14811251841203223074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056478 (n + 1) - A056477 (n + 1)

end

end A056483.P14811251841203223074

namespace A056483

/-- `A056478(n+1)-A056477(n+1)` -/
def P14811251841203223074.Spec : Prop :=
  ∀ n, P14811251841203223074.a n = A056483 (n + 1)

end A056483

/-! ## A056483.P9343784737776717252

`∑{d}[n+1, A008683(#)*A056473((n+1)/#)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A056483

/-- `∑{d}[n+1, A008683(#)*A056473((n+1)/#)]` -/
def P9343784737776717252.Spec : Prop :=
  ∀ n, P9343784737776717252.a n = A056483 (n + 1)

theorem P9343784737776717252.correct : P9343784737776717252.Spec := by
  intro n
  simp only [A056483, Nat.add_sub_cancel]

end A056483

/-! ## A056483.P12501349800118027824

`A056465(n+1)/24`
-/

namespace A056483.P12501349800118027824
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056465 (n + 1) : ℚ) / 24

end

end A056483.P12501349800118027824

namespace A056483

/-- `A056465(n+1)/24` -/
def P12501349800118027824.Spec : Prop :=
  ∀ n, P12501349800118027824.a n = (A056483 (n + 1) : ℚ)

end A056483

/-! ## A056483.P15015854786877422155

`∑{d}[n+1, A008683(#)*A056455((n+1)/#)]/24`
-/

namespace A056483.P15015854786877422155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), A008683 d * A056455 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat : ℤ) : ℚ) / 24

end

end A056483.P15015854786877422155

namespace A056483

/-- `∑{d}[n+1, A008683(#)*A056455((n+1)/#)]/24` -/
def P15015854786877422155.Spec : Prop :=
  ∀ n, P15015854786877422155.a n = (A056483 (n + 1) : ℚ)

end A056483

/-! ## A056483.P13062858510227973161

`∑{d}[n+1, A056473(#)*A305255((n+1)/#-1)]`
-/

namespace A056483.P13062858510227973161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056473 d * A305255 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A056483.P13062858510227973161

namespace A056483

/-- `∑{d}[n+1, A056473(#)*A305255((n+1)/#-1)]` -/
def P13062858510227973161.Spec : Prop :=
  ∀ n, P13062858510227973161.a n = A056483 (n + 1)

end A056483

/-!
# A056484: Number of primitive (aperiodic) palindromic structures using exactly five different symbols.

The programs for A056484, there is no canonical definition to state claims against.
-/

/-! ## A056484.P10366760414327307380

`A056479(n+1)-A056478(n+1)`
-/

namespace A056484.P10366760414327307380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056479 (n + 1) - A056478 (n + 1)

end

end A056484.P10366760414327307380

/-! ## A056484.P389690693662882159

`∑{d}[n+1, A008683(#)*A056474((n+1)/#)]`
-/

namespace A056484.P389690693662882159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A056474 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056484.P389690693662882159

/-! ## A056484.P6381848087415193687

`floor(A056466(n+1)/60)/2`
-/

namespace A056484.P6381848087415193687
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(A056466 (n + 1) : ℚ) / 60⌋ : ℚ) / 2

end

end A056484.P6381848087415193687

/-! ## A056484.P17938471117965735453

`A056466(n+1)/A101100(n+1)`
-/

namespace A056484.P17938471117965735453
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056466 (n + 1) : ℚ) / (A101100 (n + 1) : ℚ)

end

end A056484.P17938471117965735453

/-! ## A056484.P10544304096318098297

`ceil(A056466(n+1)/60)/A040080(A004273(n))`
-/

namespace A056484.P10544304096318098297
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌈(A056466 (n + 1) : ℚ) / 60⌉ : ℚ) / (A040080 (A004273 n).toNat : ℚ)

end

end A056484.P10544304096318098297

/-!
# A056485: Number of primitive (aperiodic) palindromic structures using exactly six different symbols.

The programs for A056485, there is no canonical definition to state claims against.
-/

/-! ## A056485.P17093301719389601414

`A056480(n+1)-A056479(n+1)`
-/

namespace A056485.P17093301719389601414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056480 (n + 1) - A056479 (n + 1)

end

end A056485.P17093301719389601414

/-! ## A056485.P14748747561188210463

`∑{d}[n+1, A008683(#)*A056475((n+1)/#)]`
-/

namespace A056485.P14748747561188210463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A056475 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056485.P14748747561188210463

/-! ## A056485.P3198297317952952280

`∑{d}[n+1, A056475(#)*A069158((n+1)/#)]`
-/

namespace A056485.P3198297317952952280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056475 d * A069158 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056485.P3198297317952952280

/-! ## A056485.P4331229396814895316

`∑{d}[n+1, A056475(#)*A133639((n+1)/#)]`
-/

namespace A056485.P4331229396814895316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056475 d * A133639 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056485.P4331229396814895316

/-! ## A056485.P11965281033744779058

`∑{d}[n+1, A056475(#)*A253206((n+1)/#)]`
-/

namespace A056485.P11965281033744779058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056475 d * A253206 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056485.P11965281033744779058

/-! ## A056485.P15261822927268500756

`A056480(n+1)-(A056484(n+1)+A056478(n+1))`
-/

namespace A056485.P15261822927268500756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056480 (n + 1) - (A056484 (n + 1) + A056478 (n + 1))

end

end A056485.P15261822927268500756

/-! ## A056485.P13728170107630552962

`A056467(n+1)/A202095(A007318(∑[n]))`
-/

namespace A056485.P13728170107630552962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056467 (n + 1) : ℚ) / (A202095 (A007318 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat : ℚ)

end

end A056485.P13728170107630552962

/-!
# A056486: a(n) = (9*2^n + (-2)^n)/4 for n>0.

The programs for A056486, the canonical program `A056486.P7465204202720161006` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056486 has offset 1).

The definition of A056486 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(9*2^(n+1)+(-2)^(n+1))/4` (program `A056486.P6382838758672600196`, by `A056486.P6382838758672600196.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A056486.P7465204202720161006

`4*a(n-2)` with `a(0)=4, a(1)=10`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A056486

/-- `4*a(n-2)` -/
def P7465204202720161006.Spec : Prop :=
  ∀ n, (P7465204202720161006.a n : ℤ) = A056486 (n + 1)

theorem P7465204202720161006.correct : P7465204202720161006.Spec := by
  intro n
  simp only [A056486, Nat.add_sub_cancel]

end A056486

/-! ## A056486.P12269322755642513917

`2^(n-1)*(9+(-1)^(n+1))`
-/

namespace A056486.P12269322755642513917
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (9 + (-1) ^ (n + 1) : ℚ)

end

end A056486.P12269322755642513917

namespace A056486

/-- `2^(n-1)*(9+(-1)^(n+1))` -/
def P12269322755642513917.Spec : Prop :=
  ∀ n, P12269322755642513917.a n = (A056486 (n + 1) : ℚ)

theorem P12269322755642513917.correct : P12269322755642513917.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A056486, Nat.add_sub_cancel, A056486.P12269322755642513917.a, A056486.P7465204202720161006.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h2 := ih m (by omega)
      simp only [A056486, Nat.add_sub_cancel, A056486.P12269322755642513917.a, A056486.P7465204202720161006.a, SequenceMachineLib.memo_apply] at h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 2 = m by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h2 ⊢
      rw [← h2]
      first | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1)

end A056486

/-! ## A056486.P6382838758672600196

`(9*2^(n+1)+(-2)^(n+1))/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A056486.P6382838758672600196
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((9 * 2 ^ (n + 1) : ℤ) + (-2) ^ (n + 1) : ℚ) / 4

end

end A056486.P6382838758672600196

namespace A056486

/-- `(9*2^(n+1)+(-2)^(n+1))/4` -/
def P6382838758672600196.Spec : Prop :=
  ∀ n, P6382838758672600196.a n = (A056486 (n + 1) : ℚ)

theorem P6382838758672600196.correct : P6382838758672600196.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A056486, Nat.add_sub_cancel, A056486.P6382838758672600196.a, A056486.P7465204202720161006.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h2 := ih m (by omega)
      simp only [A056486, Nat.add_sub_cancel, A056486.P6382838758672600196.a, A056486.P7465204202720161006.a, SequenceMachineLib.memo_apply] at h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 2 = m by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h2 ⊢
      rw [← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A056486

/-! ## A056486.P17218950812610954053

`ogf((4+10x)/(1-4x^2))`
-/

namespace A056486.P17218950812610954053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 10] [1, 0, -4] n

end

end A056486.P17218950812610954053

namespace A056486

/-- `ogf((4+10x)/(1-4x^2))` -/
def P17218950812610954053.Spec : Prop :=
  ∀ n, P17218950812610954053.a n = A056486 (n + 1)

end A056486

/-! ## A056486.P4685152626794061689

`a(n-1)+a(n-1)-(-2)^n` with `a(0)=4`
-/

namespace A056486.P4685152626794061689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  a (n - 1) + (a (n - 1) - (-2) ^ n)

end

end A056486.P4685152626794061689

namespace A056486

/-- `a(n-1)+a(n-1)-(-2)^n` -/
def P4685152626794061689.Spec : Prop :=
  ∀ n, P4685152626794061689.a n = A056486 (n + 1)

end A056486

/-! ## A056486.P14699262099092188659

`a(n-1)-((-2)^n-a(n-1))` with `a(0)=4`
-/

namespace A056486.P14699262099092188659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  a (n - 1) - ((-2) ^ n - a (n - 1))

end

end A056486.P14699262099092188659

namespace A056486

/-- `a(n-1)-((-2)^n-a(n-1))` -/
def P14699262099092188659.Spec : Prop :=
  ∀ n, P14699262099092188659.a n = A056486 (n + 1)

end A056486

/-! ## A056486.P5897915549299287241

`A082605(n+2)-1`
-/

namespace A056486.P5897915549299287241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082605 (n + 2) - 1

end

end A056486.P5897915549299287241

namespace A056486

/-- `A082605(n+2)-1` -/
def P5897915549299287241.Spec : Prop :=
  ∀ n, P5897915549299287241.a n = A056486 (n + 1)

end A056486

/-! ## A056486.P17084870467019744548

`∑{d}[n+1, A056495(#)]`
-/

namespace A056486.P17084870467019744548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056495 d

end

end A056486.P17084870467019744548

namespace A056486

/-- `∑{d}[n+1, A056495(#)]` -/
def P17084870467019744548.Spec : Prop :=
  ∀ n, P17084870467019744548.a n = A056486 (n + 1)

end A056486

/-! ## A056486.P2501483326514613739

`3*A086893(n+1)+1`
-/

namespace A056486.P2501483326514613739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A086893 (n + 1) + 1

end

end A056486.P2501483326514613739

namespace A056486

/-- `3*A086893(n+1)+1` -/
def P2501483326514613739.Spec : Prop :=
  ∀ n, P2501483326514613739.a n = A056486 (n + 1)

end A056486

/-! ## A056486.P14722481546752052270

`A134683(n+2)+2^n`
-/

namespace A056486.P14722481546752052270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134683 (n + 2) + (2 ^ n : ℤ)

end

end A056486.P14722481546752052270

namespace A056486

/-- `A134683(n+2)+2^n` -/
def P14722481546752052270.Spec : Prop :=
  ∀ n, P14722481546752052270.a n = A056486 (n + 1)

end A056486

/-! ## A056486.P8931392598848606463

`A122756(n+1)+2^(n+1)`
-/

namespace A056486.P8931392598848606463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122756 (n + 1) + (2 ^ (n + 1) : ℤ)

end

end A056486.P8931392598848606463

namespace A056486

/-- `A122756(n+1)+2^(n+1)` -/
def P8931392598848606463.Spec : Prop :=
  ∀ n, P8931392598848606463.a n = A056486 (n + 1)

end A056486

/-! ## A056486.P13473323554354287245

`A199573(n+1)+2^(n+2)`
-/

namespace A056486.P13473323554354287245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199573 (n + 1) + (2 ^ (n + 2) : ℤ)

end

end A056486.P13473323554354287245

namespace A056486

/-- `A199573(n+1)+2^(n+2)` -/
def P13473323554354287245.Spec : Prop :=
  ∀ n, P13473323554354287245.a n = A056486 (n + 1)

end A056486

/-! ## A056486.P7560519174635503239

`A072944(A114119(n+1))`
-/

namespace A056486.P7560519174635503239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072944 (A114119 (n + 1)).toNat

end

end A056486.P7560519174635503239

namespace A056486

/-- `A072944(A114119(n+1))` -/
def P7560519174635503239.Spec : Prop :=
  ∀ n, P7560519174635503239.a n = A056486 (n + 1)

end A056486

/-! ## A056486.P17941821824620947982

`A029747(A047235(n+2))`
-/

namespace A056486.P17941821824620947982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029747 (A047235 (n + 2)).toNat

end

end A056486.P17941821824620947982

namespace A056486

/-- `A029747(A047235(n+2))` -/
def P17941821824620947982.Spec : Prop :=
  ∀ n, P17941821824620947982.a n = A056486 (n + 1)

end A056486

/-! ## A056486.P7198238531982495996

`A029749(A047238(n+2))`
-/

namespace A056486.P7198238531982495996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029749 (A047238 (n + 2)).toNat

end

end A056486.P7198238531982495996

namespace A056486

/-- `A029749(A047238(n+2))` -/
def P7198238531982495996.Spec : Prop :=
  ∀ n, P7198238531982495996.a n = A056486 (n + 1)

end A056486

/-! ## A056486.P5387824573741805968

`A029750(A047461(n+2))`
-/

namespace A056486.P5387824573741805968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029750 (A047461 (n + 2)).toNat

end

end A056486.P5387824573741805968

namespace A056486

/-- `A029750(A047461(n+2))` -/
def P5387824573741805968.Spec : Prop :=
  ∀ n, P5387824573741805968.a n = A056486 (n + 1)

end A056486

/-! ## A056486.P17297202481313321986

`A094958(A042964(n+2))`
-/

namespace A056486.P17297202481313321986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094958 (A042964 (n + 2)).toNat

end

end A056486.P17297202481313321986

namespace A056486

/-- `A094958(A042964(n+2))` -/
def P17297202481313321986.Spec : Prop :=
  ∀ n, P17297202481313321986.a n = A056486 (n + 1)

end A056486

/-! ## A056486.P17002405584235663725

`A228305(A042963(n+2))`
-/

namespace A056486.P17002405584235663725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228305 (A042963 (n + 2)).toNat

end

end A056486.P17002405584235663725

namespace A056486

/-- `A228305(A042963(n+2))` -/
def P17002405584235663725.Spec : Prop :=
  ∀ n, P17002405584235663725.a n = A056486 (n + 1)

end A056486

/-! ## A056486.P16696365971809272671

`A121451(A154708(n+2))`
-/

namespace A056486.P16696365971809272671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121451 (A154708 (n + 2)).toNat

end

end A056486.P16696365971809272671

namespace A056486

/-- `A121451(A154708(n+2))` -/
def P16696365971809272671.Spec : Prop :=
  ∀ n, P16696365971809272671.a n = A056486 (n + 1)

end A056486

/-!
# A056487: a(n) = 5^(n/2) for n even, a(n) = 3*5^((n-1)/2) for n odd.

The programs for A056487, the canonical program `A056487.P2243968776007499826` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056487 has offset 0).

The definition of A056487 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A056487.P2243968776007499826

`3^((1-(-1)^n)/2)*5^((2*n+(-1)^n-1)/4)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A056487

/-- `3^((1-(-1)^n)/2)*5^((2*n+(-1)^n-1)/4)` -/
def P2243968776007499826.Spec : Prop :=
  ∀ n, P2243968776007499826.a n = (A056487 n : ℝ)

end A056487

/-! ## A056487.P3668200595994355276

`ogf((1+3x)/(1-5x^2))`
-/

namespace A056487.P3668200595994355276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3] [1, 0, -5] n

end

end A056487.P3668200595994355276

namespace A056487

/-- `ogf((1+3x)/(1-5x^2))` -/
def P3668200595994355276.Spec : Prop :=
  ∀ n, P3668200595994355276.a n = A056487 n

end A056487

/-! ## A056487.P7980761632814136629

`∏[5/a(n-1)]` with `a(0)=1, a(1)=3`
-/

namespace A056487.P7980761632814136629
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  5 / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A056487.P7980761632814136629

namespace A056487

/-- `∏[5/a(n-1)]` -/
def P7980761632814136629.Spec : Prop :=
  ∀ n, P7980761632814136629.a n = (A056487 n : ℚ)

end A056487

/-! ## A056487.P36812210801150187

`root(5*a(n-2), 2)²` with `a(0)=1, a(1)=3`
-/

namespace A056487.P36812210801150187
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1, 3] fun n a =>
  ((5 * a (n - 2)) ^ (1 / (2 : ℝ))) ^ 2

end

end A056487.P36812210801150187

namespace A056487

/-- `root(5*a(n-2), 2)²` -/
def P36812210801150187.Spec : Prop :=
  ∀ n, P36812210801150187.a n = (A056487 n : ℝ)

end A056487

/-! ## A056487.P9611829758523684630

`a(n-2)/(1-4/5)` with `a(0)=1, a(1)=3`
-/

namespace A056487.P9611829758523684630
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 2) / (1 - (4 : ℚ) / 5)

end

end A056487.P9611829758523684630

namespace A056487

/-- `a(n-2)/(1-4/5)` -/
def P9611829758523684630.Spec : Prop :=
  ∀ n, P9611829758523684630.a n = (A056487 n : ℚ)

end A056487

/-! ## A056487.P9376897599569367051

`∏[2/a((n+1)%2)+1]` with `a(0)=1`
-/

namespace A056487.P9376897599569367051
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  2 / f1 ((n + 1) % 2) + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A056487.P9376897599569367051

namespace A056487

/-- `∏[2/a((n+1)%2)+1]` -/
def P9376897599569367051.Spec : Prop :=
  ∀ n, P9376897599569367051.a n = (A056487 n : ℚ)

end A056487

/-! ## A056487.P9920428372696985772

`a(n-2)+lcm(4, a(n-2))` with `a(0)=1, a(1)=3`
-/

namespace A056487.P9920428372696985772
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 2) + Nat.lcm 4 (a (n - 2))

end

end A056487.P9920428372696985772

namespace A056487

/-- `a(n-2)+lcm(4, a(n-2))` -/
def P9920428372696985772.Spec : Prop :=
  ∀ n, (P9920428372696985772.a n : ℤ) = A056487 n

end A056487

/-! ## A056487.P447845603026099668

`A140730(2*n)`
-/

namespace A056487.P447845603026099668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140730 (2 * n)

end

end A056487.P447845603026099668

namespace A056487

/-- `A140730(2*n)` -/
def P447845603026099668.Spec : Prop :=
  ∀ n, P447845603026099668.a n = A056487 n

end A056487

/-! ## A056487.P1737622930310815192

`A181287(Δ[n²])+1`
-/

namespace A056487.P1737622930310815192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181287 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A056487.P1737622930310815192

namespace A056487

/-- `A181287(Δ[n²])+1` -/
def P1737622930310815192.Spec : Prop :=
  ∀ n, P1737622930310815192.a n = A056487 n

end A056487

/-! ## A056487.P806585080148558322

`2*A294566(n+1)-1`
-/

namespace A056487.P806585080148558322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A294566 (n + 1) - 1

end

end A056487.P806585080148558322

namespace A056487

/-- `2*A294566(n+1)-1` -/
def P806585080148558322.Spec : Prop :=
  ∀ n, P806585080148558322.a n = A056487 n

end A056487

/-! ## A056487.P15726848982695800315

`A133335(A007494(n))`
-/

namespace A056487.P15726848982695800315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133335 (A007494 n).toNat

end

end A056487.P15726848982695800315

namespace A056487

/-- `A133335(A007494(n))` -/
def P15726848982695800315.Spec : Prop :=
  ∀ n, P15726848982695800315.a n = A056487 n

end A056487

/-! ## A056487.P8787783889693854684

`A005517(A032766(n+1))`
-/

namespace A056487.P8787783889693854684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005517 (A032766 (n + 1)).toNat

end

end A056487.P8787783889693854684

namespace A056487

/-- `A005517(A032766(n+1))` -/
def P8787783889693854684.Spec : Prop :=
  ∀ n, P8787783889693854684.a n = A056487 n

end A056487

/-! ## A056487.P14970172342634484879

`A133335(A032766(n+1)-1)`
-/

namespace A056487.P14970172342634484879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133335 (A032766 (n + 1) - 1).toNat

end

end A056487.P14970172342634484879

namespace A056487

/-- `A133335(A032766(n+1)-1)` -/
def P14970172342634484879.Spec : Prop :=
  ∀ n, P14970172342634484879.a n = A056487 n

end A056487

/-! ## A056487.P12168786120808891983

`lcm(A010684(n), A074872(n+1))`
-/

namespace A056487.P12168786120808891983
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A010684 n) (A074872 (n + 1))

end

end A056487.P12168786120808891983

namespace A056487

/-- `lcm(A010684(n), A074872(n+1))` -/
def P12168786120808891983.Spec : Prop :=
  ∀ n, (P12168786120808891983.a n : ℤ) = A056487 n

end A056487

/-! ## A056487.P5150012381865585564

`A005517(2*n+1-A002265(2*n))`
-/

namespace A056487.P5150012381865585564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005517 ((2 * n + 1 : ℤ) - A002265 (2 * n)).toNat

end

end A056487.P5150012381865585564

namespace A056487

/-- `A005517(2*n+1-A002265(2*n))` -/
def P5150012381865585564.Spec : Prop :=
  ∀ n, P5150012381865585564.a n = A056487 n

end A056487

/-! ## A056487.P7689785957389617781

`A133335(A294732(2*n+3)-A294732(n+3))`
-/

namespace A056487.P7689785957389617781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133335 (A294732 (2 * n + 3) - A294732 (n + 3)).toNat

end

end A056487.P7689785957389617781

namespace A056487

/-- `A133335(A294732(2*n+3)-A294732(n+3))` -/
def P7689785957389617781.Spec : Prop :=
  ∀ n, P7689785957389617781.a n = A056487 n

end A056487

/-! ## A056487.P16422874921344764392

`Δ[5*a(n-2)]` with `a(0)=1, a(1)=2`
-/

namespace A056487.P16422874921344764392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  5 * f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A056487.P16422874921344764392

namespace A056487

/-- `Δ[5*a(n-2)]` -/
def P16422874921344764392.Spec : Prop :=
  ∀ n, P16422874921344764392.a n = A056487 n

end A056487

/-! ## A056487.P4113910490331546579

`∪[5*a(n-1), 5^n]` with `a(0)=3`
-/

namespace A056487.P4113910490331546579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f1 =>
  5 * f1 (n - 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n

end

end A056487.P4113910490331546579

namespace A056487

/-- `∪[5*a(n-1), 5^n]` -/
def P4113910490331546579.Spec : Prop :=
  ∀ n, (P4113910490331546579.a n : ℤ) = A056487 n

end A056487

/-! ## A056487.P16426909161720587547

`7*a(n-2)-2*a(n-2)` with `a(0)=1, a(1)=3`
-/

namespace A056487.P16426909161720587547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  7 * a (n - 2) - 2 * a (n - 2)

end

end A056487.P16426909161720587547

namespace A056487

/-- `7*a(n-2)-2*a(n-2)` -/
def P16426909161720587547.Spec : Prop :=
  ∀ n, P16426909161720587547.a n = A056487 n

end A056487

/-! ## A056487.P6243934965234374974

`Δ[A026383(n)]`
-/

namespace A056487.P6243934965234374974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026383 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A056487.P6243934965234374974

namespace A056487

/-- `Δ[A026383(n)]` -/
def P6243934965234374974.Spec : Prop :=
  ∀ n, P6243934965234374974.a n = A056487 n

end A056487

/-!
# A056488: Number of periodic palindromes using a maximum of six different symbols.

The programs for A056488, the canonical program `A056488.P15460708360106429628` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056488 has offset 1).

The definition of A056488 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A056488.P15460708360106429628

`6*a(n-2)` with `a(0)=6, a(1)=21`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A056488

/-- `6*a(n-2)` -/
def P15460708360106429628.Spec : Prop :=
  ∀ n, (P15460708360106429628.a n : ℤ) = A056488 (n + 1)

theorem P15460708360106429628.correct : P15460708360106429628.Spec := by
  intro n
  simp only [A056488, Nat.add_sub_cancel]

end A056488

/-! ## A056488.P5126465411082520829

`ogf((6+21x)/(1-6x^2))`
-/

namespace A056488.P5126465411082520829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, 21] [1, 0, -6] n

end

end A056488.P5126465411082520829

namespace A056488

/-- `ogf((6+21x)/(1-6x^2))` -/
def P5126465411082520829.Spec : Prop :=
  ∀ n, P5126465411082520829.a n = A056488 (n + 1)

end A056488

/-! ## A056488.P9530360325091074274

`∑{d}[n+1, A056497(#)]`
-/

namespace A056488.P9530360325091074274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056497 d

end

end A056488.P9530360325091074274

namespace A056488

/-- `∑{d}[n+1, A056497(#)]` -/
def P9530360325091074274.Spec : Prop :=
  ∀ n, P9530360325091074274.a n = A056488 (n + 1)

end A056488

/-! ## A056488.P8591728417732095281

`A117865(n+2)/2+1`
-/

namespace A056488.P8591728417732095281
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117865 (n + 2) : ℚ) / 2 + 1

end

end A056488.P8591728417732095281

namespace A056488

/-- `A117865(n+2)/2+1` -/
def P8591728417732095281.Spec : Prop :=
  ∀ n, P8591728417732095281.a n = (A056488 (n + 1) : ℚ)

end A056488

/-! ## A056488.P9872485468776135142

`A010723(n)*A026532(n+1)`
-/

namespace A056488.P9872485468776135142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010723 n * A026532 (n + 1)

end

end A056488.P9872485468776135142

namespace A056488

/-- `A010723(n)*A026532(n+1)` -/
def P9872485468776135142.Spec : Prop :=
  ∀ n, P9872485468776135142.a n = A056488 (n + 1)

end A056488

/-! ## A056488.P13956087351930783352

`(A010693(n)+4)*A026532(n+1)`
-/

namespace A056488.P13956087351930783352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A010693 n + 4) * A026532 (n + 1)

end

end A056488.P13956087351930783352

namespace A056488

/-- `(A010693(n)+4)*A026532(n+1)` -/
def P13956087351930783352.Spec : Prop :=
  ∀ n, P13956087351930783352.a n = A056488 (n + 1)

end A056488

/-! ## A056488.P13245367591470901338

`3*(A164532(n+1)+A026532(n+1))`
-/

namespace A056488.P13245367591470901338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A164532 (n + 1) + A026532 (n + 1))

end

end A056488.P13245367591470901338

namespace A056488

/-- `3*(A164532(n+1)+A026532(n+1))` -/
def P13245367591470901338.Spec : Prop :=
  ∀ n, P13245367591470901338.a n = A056488 (n + 1)

end A056488

/-! ## A056488.P6016596518205118966

`A056452(n+1)+Δ[A056452(n+1)/2]`
-/

namespace A056488.P6016596518205118966
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056452 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056452 (n + 1) : ℚ) + (f1 (n + 1) - f1 n)

end

end A056488.P6016596518205118966

namespace A056488

/-- `A056452(n+1)+Δ[A056452(n+1)/2]` -/
def P6016596518205118966.Spec : Prop :=
  ∀ n, P6016596518205118966.a n = (A056488 (n + 1) : ℚ)

end A056488

/-! ## A056488.P16361270944222807882

`A056341(n+1)-A278642(n+1)`
-/

namespace A056488.P16361270944222807882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056341 (n + 1) - A278642 (n + 1)

end

end A056488.P16361270944222807882

namespace A056488

/-- `A056341(n+1)-A278642(n+1)` -/
def P16361270944222807882.Spec : Prop :=
  ∀ n, P16361270944222807882.a n = A056488 (n + 1)

end A056488

/-! ## A056488.P13896912480290176493

`A056341(n+1)+A056341(n+1)-A054625(n+1)`
-/

namespace A056488.P13896912480290176493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056341 (n + 1) + (A056341 (n + 1) - A054625 (n + 1))

end

end A056488.P13896912480290176493

namespace A056488

/-- `A056341(n+1)+A056341(n+1)-A054625(n+1)` -/
def P13896912480290176493.Spec : Prop :=
  ∀ n, P13896912480290176493.a n = A056488 (n + 1)

end A056488

/-!
# A056489: Number of periodic palindromes using exactly three different symbols.

The programs for A056489, the canonical program `A056489.P4551859471100236168` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056489 has offset 1).

The definition of A056489 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A056489.P4551859471100236168

`a(n-1)+5*a(n-2)-5*a(n-3)-6*a(n-4)+6*a(n-5)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=3, a(4)=6`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A056489

/-- `a(n-1)+5*a(n-2)-5*a(n-3)-6*a(n-4)+6*a(n-5)` -/
def P4551859471100236168.Spec : Prop :=
  ∀ n, P4551859471100236168.a n = A056489 (n + 1)

theorem P4551859471100236168.correct : P4551859471100236168.Spec := by
  intro n
  simp only [A056489, Nat.add_sub_cancel]

end A056489

/-! ## A056489.P14717189954203606480

`2*A056343(n+1)-A056283(n+1)`
-/

namespace A056489.P14717189954203606480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A056343 (n + 1) - A056283 (n + 1)

end

end A056489.P14717189954203606480

namespace A056489

/-- `2*A056343(n+1)-A056283(n+1)` -/
def P14717189954203606480.Spec : Prop :=
  ∀ n, P14717189954203606480.a n = A056489 (n + 1)

end A056489

/-! ## A056489.P18153942562278683459

`∑{d}[n+1, A056499(#)]`
-/

namespace A056489.P18153942562278683459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056499 d

end

end A056489.P18153942562278683459

namespace A056489

/-- `∑{d}[n+1, A056499(#)]` -/
def P18153942562278683459.Spec : Prop :=
  ∀ n, P18153942562278683459.a n = A056489 (n + 1)

end A056489

/-! ## A056489.P3812609831484447220

`A056454(n+1)+Δ[A056454(n+1)/2]`
-/

namespace A056489.P3812609831484447220
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056454 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056454 (n + 1) : ℚ) + (f1 (n + 1) - f1 n)

end

end A056489.P3812609831484447220

namespace A056489

/-- `A056454(n+1)+Δ[A056454(n+1)/2]` -/
def P3812609831484447220.Spec : Prop :=
  ∀ n, P3812609831484447220.a n = (A056489 (n + 1) : ℚ)

end A056489

/-! ## A056489.P2550815445761258896

`∑[3*A001047(A267528(n+1)-(n+1))]`
-/

namespace A056489.P2550815445761258896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A001047 (A267528 (n + 1) - (n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056489.P2550815445761258896

namespace A056489

/-- `∑[3*A001047(A267528(n+1)-(n+1))]` -/
def P2550815445761258896.Spec : Prop :=
  ∀ n, P2550815445761258896.a n = A056489 (n + 1)

end A056489

/-! ## A056489.P11491019648764854167

`(A056454(n+2)+A056454(n+1))/2`
-/

namespace A056489.P11491019648764854167
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056454 (n + 2) + A056454 (n + 1) : ℚ) / 2

end

end A056489.P11491019648764854167

namespace A056489

/-- `(A056454(n+2)+A056454(n+1))/2` -/
def P11491019648764854167.Spec : Prop :=
  ∀ n, P11491019648764854167.a n = (A056489 (n + 1) : ℚ)

end A056489

/-! ## A056489.P14332565272774336258

`A056343(n+1)-A305542(n+1)`
-/

namespace A056489.P14332565272774336258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056343 (n + 1) - A305542 (n + 1)

end

end A056489.P14332565272774336258

namespace A056489

/-- `A056343(n+1)-A305542(n+1)` -/
def P14332565272774336258.Spec : Prop :=
  ∀ n, P14332565272774336258.a n = A056489 (n + 1)

theorem P14332565272774336258.correct : P14332565272774336258.Spec := by
  intro n
  simp only [A056489, Nat.add_sub_cancel, A056489.P14332565272774336258.a, A056489.P4551859471100236168.a, A056343, A056343.P18158920682156565457.a, A305542, A305542.P4052484984925121273.a, A056283, A056283.P12975955271875151804.f1, A056283.P12975955271875151804.a, A056288, A056288.P10959423349450089845.a, A056279, A056279.P11750011524147072327.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A056489

/-! ## A056489.P11043130367569771006

`A056283(n+1)-2*A305542(n+1)`
-/

namespace A056489.P11043130367569771006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056283 (n + 1) - 2 * A305542 (n + 1)

end

end A056489.P11043130367569771006

namespace A056489

/-- `A056283(n+1)-2*A305542(n+1)` -/
def P11043130367569771006.Spec : Prop :=
  ∀ n, P11043130367569771006.a n = A056489 (n + 1)

end A056489

/-! ## A056489.P3349907145440317566

`A056283(n+1)-2*A305541(A152950(n+1))`
-/

namespace A056489.P3349907145440317566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056283 (n + 1) - 2 * A305541 (A152950 (n + 1)).toNat

end

end A056489.P3349907145440317566

namespace A056489

/-- `A056283(n+1)-2*A305541(A152950(n+1))` -/
def P3349907145440317566.Spec : Prop :=
  ∀ n, P3349907145440317566.a n = A056489 (n + 1)

end A056489

/-!
# A056490: Number of periodic palindromes using exactly four different symbols.

The programs for A056490, the canonical program `A056490.P4426162943331204535` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056490 has offset 1).

The definition of A056490 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A056490.P15001626895564392815

`2*A056344(n+1)-A056284(n+1)`
-/

namespace A056490.P15001626895564392815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A056344 (n + 1) - A056284 (n + 1)

end

end A056490.P15001626895564392815

namespace A056490

/-- `2*A056344(n+1)-A056284(n+1)` -/
def P15001626895564392815.Spec : Prop :=
  ∀ n, P15001626895564392815.a n = A056490 (n + 1)

end A056490

/-! ## A056490.P6403461451004652693

`∑{d}[n+1, A056500(#)]`
-/

namespace A056490.P6403461451004652693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056500 d

end

end A056490.P6403461451004652693

namespace A056490

/-- `∑{d}[n+1, A056500(#)]` -/
def P6403461451004652693.Spec : Prop :=
  ∀ n, P6403461451004652693.a n = A056490 (n + 1)

end A056490

/-! ## A056490.P4426162943331204535

`A056455(n+1)+Δ[A056455(n+1)/2]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A056490

/-- `A056455(n+1)+Δ[A056455(n+1)/2]` -/
def P4426162943331204535.Spec : Prop :=
  ∀ n, P4426162943331204535.a n = (A056490 (n + 1) : ℚ)

end A056490

/-! ## A056490.P7751481481625704342

`∑{d}[A008619(2*n), A056500(#)]%A027271(n)`
-/

namespace A056490.P7751481481625704342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ d ∈ Nat.divisors (f1 n).natAbs, A056500 d) (A027271 n)

end

end A056490.P7751481481625704342

namespace A056490

/-- `∑{d}[A008619(2*n), A056500(#)]%A027271(n)` -/
def P7751481481625704342.Spec : Prop :=
  ∀ n, P7751481481625704342.a n = A056490 (n + 1)

end A056490

/-! ## A056490.P4716155892969349868

`A056344(n+1)-A305543(n+1)`
-/

namespace A056490.P4716155892969349868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056344 (n + 1) - A305543 (n + 1)

end

end A056490.P4716155892969349868

namespace A056490

/-- `A056344(n+1)-A305543(n+1)` -/
def P4716155892969349868.Spec : Prop :=
  ∀ n, P4716155892969349868.a n = A056490 (n + 1)

end A056490

/-! ## A056490.P16358481354461982118

`∑{d}[n+1, A056350(#)]-∑{d}[n+1, A326789(#)]`
-/

namespace A056490.P16358481354461982118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056350 d - ∑ d ∈ Nat.divisors (f2 n), A326789 d

end

end A056490.P16358481354461982118

namespace A056490

/-- `∑{d}[n+1, A056350(#)]-∑{d}[n+1, A326789(#)]` -/
def P16358481354461982118.Spec : Prop :=
  ∀ n, P16358481354461982118.a n = A056490 (n + 1)

end A056490

/-! ## A056490.P3999967696993257565

`A056284(n+1)-2*A305543(n+1)`
-/

namespace A056490.P3999967696993257565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056284 (n + 1) - 2 * A305543 (n + 1)

end

end A056490.P3999967696993257565

namespace A056490

/-- `A056284(n+1)-2*A305543(n+1)` -/
def P3999967696993257565.Spec : Prop :=
  ∀ n, P3999967696993257565.a n = A056490 (n + 1)

end A056490

/-!
# A056491: Number of periodic palindromes using exactly five different symbols.

The programs for A056491, there is no canonical definition to state claims against.
-/

/-! ## A056491.P14748866800670933183

`2*A056345(n+1)-A056285(n+1)`
-/

namespace A056491.P14748866800670933183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A056345 (n + 1) - A056285 (n + 1)

end

end A056491.P14748866800670933183

/-! ## A056491.P9052948223299430407

`∑{d}[n+1, A056501(#)]`
-/

namespace A056491.P9052948223299430407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056501 d

end

end A056491.P9052948223299430407

/-! ## A056491.P17370004641162359766

`(A056456(n+2)+A056456(n+1))/2`
-/

namespace A056491.P17370004641162359766
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056456 (n + 2) + A056456 (n + 1) : ℚ) / 2

end

end A056491.P17370004641162359766

/-! ## A056491.P4925927503662937630

`A056345(n+1)-A305544(n+1)`
-/

namespace A056491.P4925927503662937630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056345 (n + 1) - A305544 (n + 1)

end

end A056491.P4925927503662937630

/-! ## A056491.P14062254336651463945

`A056285(n+1)-2*A305544(n+1)`
-/

namespace A056491.P14062254336651463945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056285 (n + 1) - 2 * A305544 (n + 1)

end

end A056491.P14062254336651463945

/-!
# A056492: Number of periodic palindromes using exactly six different symbols.

The programs for A056492, there is no canonical definition to state claims against.
-/

/-! ## A056492.P3773872217917163757

`2*A056346(n+1)-A056286(n+1)`
-/

namespace A056492.P3773872217917163757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A056346 (n + 1) - A056286 (n + 1)

end

end A056492.P3773872217917163757

/-! ## A056492.P5599105209538023075

`∑{d}[n+1, A056502(#)]`
-/

namespace A056492.P5599105209538023075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056502 d

end

end A056492.P5599105209538023075

/-! ## A056492.P10265027870798911962

`(A056457(n+1)+A056457(n+2))/2`
-/

namespace A056492.P10265027870798911962
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056457 (n + 1) + A056457 (n + 2) : ℚ) / 2

end

end A056492.P10265027870798911962

/-! ## A056492.P1664609760668975095

`A056346(n+1)-A305545(n+1)`
-/

namespace A056492.P1664609760668975095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056346 (n + 1) - A305545 (n + 1)

end

end A056492.P1664609760668975095

/-! ## A056492.P211270735408020101

`A056286(n+1)-2*A305545(n+1)`
-/

namespace A056492.P211270735408020101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056286 (n + 1) - 2 * A305545 (n + 1)

end

end A056492.P211270735408020101

/-!
# A056493: Number of primitive (period n) periodic palindromes using a maximum of two different symbols.

The programs for A056493, the canonical program `A056493.P14823141332440776708` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056493 has offset 1).

The definition of A056493 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 663 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A056493.P9048104400839155374

`abs(1-A056498(n+1))+1`
-/

namespace A056493.P9048104400839155374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A056498 (n + 1)| + 1

end

end A056493.P9048104400839155374

namespace A056493

/-- `abs(1-A056498(n+1))+1` -/
def P9048104400839155374.Spec : Prop :=
  ∀ n, P9048104400839155374.a n = A056493 (n + 1)

end A056493

/-! ## A056493.P7756521489008691186

`A056498(abs(A024000(n))+2)`
-/

namespace A056493.P7756521489008691186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056498 (|A024000 n| + 2).toNat

end

end A056493.P7756521489008691186

namespace A056493

/-- `A056498(abs(A024000(n))+2)` -/
def P7756521489008691186.Spec : Prop :=
  ∀ n, P7756521489008691186.a n = A056493 (n + 1)

end A056493

/-! ## A056493.P13180375199308640026

`A056498(n+1)+A000038(n)`
-/

namespace A056493.P13180375199308640026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056498 (n + 1) + A000038 n

end

end A056493.P13180375199308640026

namespace A056493

/-- `A056498(n+1)+A000038(n)` -/
def P13180375199308640026.Spec : Prop :=
  ∀ n, P13180375199308640026.a n = A056493 (n + 1)

theorem P13180375199308640026.correct : P13180375199308640026.Spec := by
  intro n
  simp only [A056493, Nat.add_sub_cancel, A056493.P13180375199308640026.a, A056493.P14823141332440776708.f1, A056493.P14823141332440776708.a, A000038, A000038.P13734959004655594922.a, A008683, A008683.P18254306604665478110.a, A056498, A056498.P10808203384033100118.a, A164090, A164090.P6257059095248151761.a, A000007, A000007.P6599383543502402472.a, A132971, A132971.P9197609016375066540.a, A156552, A156552.P4268073137713085227.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A085357, A085357.P3258697467278337073.a, A106400, A106400.P11201390576172776043.a, A005940, A005940.P5942875842694471387.a, A008966, A008966.P884693903657889754.a, A010060, A010060.P3080921269106500717.a, A364557, A364557.P16113127302810243144.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A056493

/-! ## A056493.P387356795243153701

`A181314(n+1)+A054977(n)`
-/

namespace A056493.P387356795243153701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181314 (n + 1) + A054977 n

end

end A056493.P387356795243153701

namespace A056493

/-- `A181314(n+1)+A054977(n)` -/
def P387356795243153701.Spec : Prop :=
  ∀ n, P387356795243153701.a n = A056493 (n + 1)

end A056493

/-! ## A056493.P4583238132552159162

`A181314(n+1)+A000038(n)!`
-/

namespace A056493.P4583238132552159162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181314 (n + 1) + (Nat.factorial (A000038 n).toNat : ℤ)

end

end A056493.P4583238132552159162

namespace A056493

/-- `A181314(n+1)+A000038(n)!` -/
def P4583238132552159162.Spec : Prop :=
  ∀ n, P4583238132552159162.a n = A056493 (n + 1)

end A056493

/-! ## A056493.P7670759155501193182

`A181314(n+1)+A000007(n)+1`
-/

namespace A056493.P7670759155501193182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181314 (n + 1) + (A000007 n + 1)

end

end A056493.P7670759155501193182

namespace A056493

/-- `A181314(n+1)+A000007(n)+1` -/
def P7670759155501193182.Spec : Prop :=
  ∀ n, P7670759155501193182.a n = A056493 (n + 1)

theorem P7670759155501193182.correct : P7670759155501193182.Spec := by
  intro n
  simp only [A056493, Nat.add_sub_cancel, A056493.P7670759155501193182.a, A056493.P14823141332440776708.f1, A056493.P14823141332440776708.a, A000007, A000007.P6599383543502402472.a, A008683, A008683.P18254306604665478110.a, A164090, A164090.P6257059095248151761.a, A181314, A181314.P4228565367849305824.a, A056498, A056498.P10808203384033100118.a, A057428, A057428.P2999489532230392221.a, A132971, A132971.P9197609016375066540.a, A156552, A156552.P4268073137713085227.a, A000038, A000038.P13734959004655594922.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A057427, A057427.P3058147525557661423.a, A085357, A085357.P3258697467278337073.a, A106400, A106400.P11201390576172776043.a, A005940, A005940.P5942875842694471387.a, A008966, A008966.P884693903657889754.a, A010060, A010060.P3080921269106500717.a, A364557, A364557.P16113127302810243144.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A056493

/-! ## A056493.P7212491385045247090

`A179781(n+1)+A056476(n+1)`
-/

namespace A056493.P7212491385045247090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179781 (n + 1) + A056476 (n + 1)

end

end A056493.P7212491385045247090

namespace A056493

/-- `A179781(n+1)+A056476(n+1)` -/
def P7212491385045247090.Spec : Prop :=
  ∀ n, P7212491385045247090.a n = A056493 (n + 1)

end A056493

/-! ## A056493.P4589033674278302081

`A181314(n+1)+A057428(n)+2`
-/

namespace A056493.P4589033674278302081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181314 (n + 1) + (A057428 n + 2)

end

end A056493.P4589033674278302081

namespace A056493

/-- `A181314(n+1)+A057428(n)+2` -/
def P4589033674278302081.Spec : Prop :=
  ∀ n, P4589033674278302081.a n = A056493 (n + 1)

theorem P4589033674278302081.correct : P4589033674278302081.Spec := by
  intro n
  simp only [A056493, Nat.add_sub_cancel, A056493.P4589033674278302081.a, A056493.P14823141332440776708.f1, A056493.P14823141332440776708.a, A008683, A008683.P18254306604665478110.a, A057428, A057428.P2999489532230392221.a, A164090, A164090.P6257059095248151761.a, A181314, A181314.P4228565367849305824.a, A056498, A056498.P10808203384033100118.a, A057427, A057427.P3058147525557661423.a, A132971, A132971.P9197609016375066540.a, A156552, A156552.P4268073137713085227.a, A000007, A000007.P6599383543502402472.a, A000038, A000038.P13734959004655594922.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A085357, A085357.P3258697467278337073.a, A106400, A106400.P11201390576172776043.a, A005940, A005940.P5942875842694471387.a, A008966, A008966.P884693903657889754.a, A010060, A010060.P3080921269106500717.a, A364557, A364557.P16113127302810243144.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A056493

/-! ## A056493.P8390397481728199860

`A181314(n+1)+2-A057427(n)`
-/

namespace A056493.P8390397481728199860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181314 (n + 1) + (2 - A057427 n)

end

end A056493.P8390397481728199860

namespace A056493

/-- `A181314(n+1)+2-A057427(n)` -/
def P8390397481728199860.Spec : Prop :=
  ∀ n, P8390397481728199860.a n = A056493 (n + 1)

theorem P8390397481728199860.correct : P8390397481728199860.Spec := by
  intro n
  simp only [A056493, Nat.add_sub_cancel, A056493.P8390397481728199860.a, A056493.P14823141332440776708.f1, A056493.P14823141332440776708.a, A008683, A008683.P18254306604665478110.a, A057427, A057427.P3058147525557661423.a, A164090, A164090.P6257059095248151761.a, A181314, A181314.P4228565367849305824.a, A000007, A000007.P6599383543502402472.a, A056498, A056498.P10808203384033100118.a, A057428, A057428.P2999489532230392221.a, A132971, A132971.P9197609016375066540.a, A156552, A156552.P4268073137713085227.a, A000038, A000038.P13734959004655594922.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A085357, A085357.P3258697467278337073.a, A106400, A106400.P11201390576172776043.a, A005940, A005940.P5942875842694471387.a, A008966, A008966.P884693903657889754.a, A010060, A010060.P3080921269106500717.a, A364557, A364557.P16113127302810243144.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A056493

/-! ## A056493.P14823141332440776708

`∑{d}[n+1, A008683(#)*A164090((n+1)/#)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A056493

/-- `∑{d}[n+1, A008683(#)*A164090((n+1)/#)]` -/
def P14823141332440776708.Spec : Prop :=
  ∀ n, P14823141332440776708.a n = A056493 (n + 1)

theorem P14823141332440776708.correct : P14823141332440776708.Spec := by
  intro n
  simp only [A056493, Nat.add_sub_cancel]

end A056493

/-! ## A056493.P12042727591237398035

`A181314(n+1)+A001511(A000040(n+1))`
-/

namespace A056493.P12042727591237398035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181314 (n + 1) + A001511 (A000040 (n + 1)).toNat

end

end A056493.P12042727591237398035

namespace A056493

/-- `A181314(n+1)+A001511(A000040(n+1))` -/
def P12042727591237398035.Spec : Prop :=
  ∀ n, P12042727591237398035.a n = A056493 (n + 1)

end A056493

/-! ## A056493.P10435335831179365027

`A056498(n+1)+2*A092092(A008458(n))`
-/

namespace A056493.P10435335831179365027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056498 (n + 1) + 2 * A092092 (A008458 n).toNat

end

end A056493.P10435335831179365027

namespace A056493

/-- `A056498(n+1)+2*A092092(A008458(n))` -/
def P10435335831179365027.Spec : Prop :=
  ∀ n, P10435335831179365027.a n = A056493 (n + 1)

end A056493

/-! ## A056493.P5679313510518422982

`A056498(n+1)+A000122(A000122(n)+n)`
-/

namespace A056493.P5679313510518422982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056498 (n + 1) + A000122 (A000122 n + (n : ℤ)).toNat

end

end A056493.P5679313510518422982

namespace A056493

/-- `A056498(n+1)+A000122(A000122(n)+n)` -/
def P5679313510518422982.Spec : Prop :=
  ∀ n, P5679313510518422982.a n = A056493 (n + 1)

end A056493

/-! ## A056493.P5837751840473458271

`A181314(n+1)+A001511(record[A006530(n+2)])`
-/

namespace A056493.P5837751840473458271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181314 (n + 1) + A001511 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A056493.P5837751840473458271

namespace A056493

/-- `A181314(n+1)+A001511(record[A006530(n+2)])` -/
def P5837751840473458271.Spec : Prop :=
  ∀ n, P5837751840473458271.a n = A056493 (n + 1)

end A056493

/-! ## A056493.P15637866285027880431

`A181314(n+1)+A001511(record[A020639(n+2)])`
-/

namespace A056493.P15637866285027880431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181314 (n + 1) + A001511 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A056493.P15637866285027880431

namespace A056493

/-- `A181314(n+1)+A001511(record[A020639(n+2)])` -/
def P15637866285027880431.Spec : Prop :=
  ∀ n, P15637866285027880431.a n = A056493 (n + 1)

end A056493

/-! ## A056493.P14452611234774177267

`A181314(n+1)+A014963(2*A000040(n+1))`
-/

namespace A056493.P14452611234774177267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181314 (n + 1) + A014963 (2 * A000040 (n + 1)).toNat

end

end A056493.P14452611234774177267

namespace A056493

/-- `A181314(n+1)+A014963(2*A000040(n+1))` -/
def P14452611234774177267.Spec : Prop :=
  ∀ n, P14452611234774177267.a n = A056493 (n + 1)

end A056493

/-! ## A056493.P10834638625900680651

`A056458(n+1)+A056498(n+1)-A056463(n+1)`
-/

namespace A056493.P10834638625900680651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056458 (n + 1) + (A056498 (n + 1) - A056463 (n + 1))

end

end A056493.P10834638625900680651

namespace A056493

/-- `A056458(n+1)+A056498(n+1)-A056463(n+1)` -/
def P10834638625900680651.Spec : Prop :=
  ∀ n, P10834638625900680651.a n = A056493 (n + 1)

end A056493

/-! ## A056493.P1059385487362948042

`2/(n+1)*A180322(n+1)`
-/

namespace A056493.P1059385487362948042
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (n + 1 : ℚ) * (A180322 (n + 1) : ℚ)

end

end A056493.P1059385487362948042

namespace A056493

/-- `2/(n+1)*A180322(n+1)` -/
def P1059385487362948042.Spec : Prop :=
  ∀ n, P1059385487362948042.a n = (A056493 (n + 1) : ℚ)

end A056493

/-! ## A056493.P17720223526261670828

`2*A001371(n+1)-A001037(n+1)`
-/

namespace A056493.P17720223526261670828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001371 (n + 1) - A001037 (n + 1)

end

end A056493.P17720223526261670828

namespace A056493

/-- `2*A001371(n+1)-A001037(n+1)` -/
def P17720223526261670828.Spec : Prop :=
  ∀ n, P17720223526261670828.a n = A056493 (n + 1)

end A056493

/-! ## A056493.P368984116188556087

`A181314(n+1)+A001511(A006530(n²+2))`
-/

namespace A056493.P368984116188556087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181314 (n + 1) + A001511 (A006530 (n ^ 2 + 2)).toNat

end

end A056493.P368984116188556087

namespace A056493

/-- `A181314(n+1)+A001511(A006530(n²+2))` -/
def P368984116188556087.Spec : Prop :=
  ∀ n, P368984116188556087.a n = A056493 (n + 1)

end A056493

/-!
# A056494: Number of primitive (period n) periodic palindromes using a maximum of three different symbols.

The programs for A056494, there is no canonical definition to state claims against.
-/

/-! ## A056494.P3861337856136361452

`A284856(∑[n+3]+1)`
-/

namespace A056494.P3861337856136361452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284856 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A056494.P3861337856136361452

/-! ## A056494.P17988933526893991098

`lcm(3, A284856(A034856(n+2)))`
-/

namespace A056494.P17988933526893991098
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A284856 (A034856 (n + 2)).toNat)

end

end A056494.P17988933526893991098

/-! ## A056494.P8870106748363137833

`A284856(A034856(n+2))%A000051(n)²`
-/

namespace A056494.P8870106748363137833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A284856 (A034856 (n + 2)).toNat) (A000051 n ^ 2)

end

end A056494.P8870106748363137833

/-! ## A056494.P2324059817106963960

`A284856(A034856(n+2))+n*A000007(n)`
-/

namespace A056494.P2324059817106963960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284856 (A034856 (n + 2)).toNat + (n : ℤ) * A000007 n

end

end A056494.P2324059817106963960

/-! ## A056494.P325797985914451966

`(A000027(n+1)-n)*A284856(A034856(n+2))`
-/

namespace A056494.P325797985914451966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) - (n : ℤ)) * A284856 (A034856 (n + 2)).toNat

end

end A056494.P325797985914451966

/-!
# A056495: Number of primitive (period n) periodic palindromes using a maximum of four different symbols.

The programs for A056495, the canonical program `A056495.P1072551038789828098` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056495 has offset 1).

The definition of A056495 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A056495.P1072551038789828098

`∑{d}[n+1, A008683(#)*A056486((n+1)/#)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A056495

/-- `∑{d}[n+1, A008683(#)*A056486((n+1)/#)]` -/
def P1072551038789828098.Spec : Prop :=
  ∀ n, P1072551038789828098.a n = A056495 (n + 1)

theorem P1072551038789828098.correct : P1072551038789828098.Spec := by
  intro n
  simp only [A056495, Nat.add_sub_cancel]

end A056495

/-! ## A056495.P18426503165535744910

`A284856(∑[n+4]+3)`
-/

namespace A056495.P18426503165535744910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284856 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A056495.P18426503165535744910

namespace A056495

/-- `A284856(∑[n+4]+3)` -/
def P18426503165535744910.Spec : Prop :=
  ∀ n, P18426503165535744910.a n = A056495 (n + 1)

end A056495

/-! ## A056495.P10753140929213739566

`A284856(A055998(n+2))*A304042(n)`
-/

namespace A056495.P10753140929213739566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284856 (A055998 (n + 2)).toNat * A304042 n

end

end A056495.P10753140929213739566

namespace A056495

/-- `A284856(A055998(n+2))*A304042(n)` -/
def P10753140929213739566.Spec : Prop :=
  ∀ n, P10753140929213739566.a n = A056495 (n + 1)

end A056495

/-! ## A056495.P3958565146794568264

`lcm(2, A284856(A167499(n)+A016777(n)))`
-/

namespace A056495.P3958565146794568264
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A284856 (A167499 n + A016777 n).toNat)

end

end A056495.P3958565146794568264

namespace A056495

/-- `lcm(2, A284856(A167499(n)+A016777(n)))` -/
def P3958565146794568264.Spec : Prop :=
  ∀ n, (P3958565146794568264.a n : ℤ) = A056495 (n + 1)

end A056495

/-! ## A056495.P3332515914498529478

`A284856(A167499(n)+A016777(n))+A000038(n+1)`
-/

namespace A056495.P3332515914498529478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284856 (A167499 n + A016777 n).toNat + A000038 (n + 1)

end

end A056495.P3332515914498529478

namespace A056495

/-- `A284856(A167499(n)+A016777(n))+A000038(n+1)` -/
def P3332515914498529478.Spec : Prop :=
  ∀ n, P3332515914498529478.a n = A056495 (n + 1)

end A056495

/-!
# A056496: Number of primitive (period n) periodic palindromes using a maximum of five different symbols.

The programs for A056496, there is no canonical definition to state claims against.
-/

/-! ## A056496.P15633876739212633114

`A284856(A046691(n+3))`
-/

namespace A056496.P15633876739212633114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284856 (A046691 (n + 3)).toNat

end

end A056496.P15633876739212633114

/-! ## A056496.P3432884845962602281

`A284856(A060577(n+4))`
-/

namespace A056496.P3432884845962602281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284856 (A060577 (n + 4)).toNat

end

end A056496.P3432884845962602281

/-! ## A056496.P8677533976774998551

`A284856(A056115(n)+11)`
-/

namespace A056496.P8677533976774998551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284856 (A056115 n + 11).toNat

end

end A056496.P8677533976774998551

/-! ## A056496.P17581823334402611357

`A284856(Δ[A023545(n+1)])`
-/

namespace A056496.P17581823334402611357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284856 (f1 (n + 1) - f1 n).toNat

end

end A056496.P17581823334402611357

/-! ## A056496.P2763131646266527296

`A284856(A034856(n+4)-2)`
-/

namespace A056496.P2763131646266527296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284856 (A034856 (n + 4) - 2).toNat

end

end A056496.P2763131646266527296

/-!
# A056497: Number of primitive (period n) periodic palindromes using a maximum of six different symbols.

The programs for A056497, the canonical program `A056497.P5587882807598015351` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056497 has offset 1).

The definition of A056497 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 255 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A056497.P5587882807598015351

`∑{d}[n+1, A008683(#)*A056488((n+1)/#)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A056497

/-- `∑{d}[n+1, A008683(#)*A056488((n+1)/#)]` -/
def P5587882807598015351.Spec : Prop :=
  ∀ n, P5587882807598015351.a n = A056497 (n + 1)

theorem P5587882807598015351.correct : P5587882807598015351.Spec := by
  intro n
  simp only [A056497, Nat.add_sub_cancel]

end A056497

/-! ## A056497.P13202337532980182156

`A284856(A027379(n+4)-2)`
-/

namespace A056497.P13202337532980182156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284856 (A027379 (n + 4) - 2).toNat

end

end A056497.P13202337532980182156

namespace A056497

/-- `A284856(A027379(n+4)-2)` -/
def P13202337532980182156.Spec : Prop :=
  ∀ n, P13202337532980182156.a n = A056497 (n + 1)

end A056497

/-! ## A056497.P7055476891332254631

`A284856(A055998(n+4)-2)`
-/

namespace A056497.P7055476891332254631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284856 (A055998 (n + 4) - 2).toNat

end

end A056497.P7055476891332254631

namespace A056497

/-- `A284856(A055998(n+4)-2)` -/
def P7055476891332254631.Spec : Prop :=
  ∀ n, P7055476891332254631.a n = A056497 (n + 1)

end A056497

/-! ## A056497.P5421120164762092061

`A284856(A000096(n+5)-4)`
-/

namespace A056497.P5421120164762092061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284856 (A000096 (n + 5) - 4).toNat

end

end A056497.P5421120164762092061

namespace A056497

/-- `A284856(A000096(n+5)-4)` -/
def P5421120164762092061.Spec : Prop :=
  ∀ n, P5421120164762092061.a n = A056497 (n + 1)

end A056497

/-! ## A056497.P11731799314446014410

`A284856(A000217(n+6)-5)`
-/

namespace A056497.P11731799314446014410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284856 (A000217 (n + 6) - 5).toNat

end

end A056497.P11731799314446014410

namespace A056497

/-- `A284856(A000217(n+6)-5)` -/
def P11731799314446014410.Spec : Prop :=
  ∀ n, P11731799314446014410.a n = A056497 (n + 1)

end A056497

/-!
# A056498: Number of primitive (period n) periodic palindromes using exactly two different symbols.

The programs for A056498, the canonical program `A056498.P10808203384033100118` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056498 has offset 1).

The definition of A056498 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 663 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A056498.P14543512951163203651

`A181314(n+1)+A057427(n)`
-/

namespace A056498.P14543512951163203651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181314 (n + 1) + A057427 n

end

end A056498.P14543512951163203651

namespace A056498

/-- `A181314(n+1)+A057427(n)` -/
def P14543512951163203651.Spec : Prop :=
  ∀ n, P14543512951163203651.a n = A056498 (n + 1)

theorem P14543512951163203651.correct : P14543512951163203651.Spec := by
  intro n
  simp only [A056498, Nat.add_sub_cancel, A056498.P14543512951163203651.a, A056498.P10808203384033100118.a, A000038, A000038.P13734959004655594922.a, A056493, A056493.P14823141332440776708.f1, A056493.P14823141332440776708.a, A057427, A057427.P3058147525557661423.a, A181314, A181314.P4228565367849305824.a, A000007, A000007.P6599383543502402472.a, A008683, A008683.P18254306604665478110.a, A057428, A057428.P2999489532230392221.a, A164090, A164090.P6257059095248151761.a, A132971, A132971.P9197609016375066540.a, A156552, A156552.P4268073137713085227.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A085357, A085357.P3258697467278337073.a, A106400, A106400.P11201390576172776043.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A056498

/-! ## A056498.P10808203384033100118

`A056493(n+1)-A000038(n)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A056498

/-- `A056493(n+1)-A000038(n)` -/
def P10808203384033100118.Spec : Prop :=
  ∀ n, P10808203384033100118.a n = A056498 (n + 1)

theorem P10808203384033100118.correct : P10808203384033100118.Spec := by
  intro n
  simp only [A056498, Nat.add_sub_cancel]

end A056498

/-! ## A056498.P5353283959993276877

`A181314(n+1)-A057428(n)`
-/

namespace A056498.P5353283959993276877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181314 (n + 1) - A057428 n

end

end A056498.P5353283959993276877

namespace A056498

/-- `A181314(n+1)-A057428(n)` -/
def P5353283959993276877.Spec : Prop :=
  ∀ n, P5353283959993276877.a n = A056498 (n + 1)

theorem P5353283959993276877.correct : P5353283959993276877.Spec := by
  intro n
  simp only [A056498, Nat.add_sub_cancel, A056498.P5353283959993276877.a, A056498.P10808203384033100118.a, A000038, A000038.P13734959004655594922.a, A056493, A056493.P14823141332440776708.f1, A056493.P14823141332440776708.a, A057428, A057428.P2999489532230392221.a, A181314, A181314.P4228565367849305824.a, A000007, A000007.P6599383543502402472.a, A008683, A008683.P18254306604665478110.a, A057427, A057427.P3058147525557661423.a, A164090, A164090.P6257059095248151761.a, A132971, A132971.P9197609016375066540.a, A156552, A156552.P4268073137713085227.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A085357, A085357.P3258697467278337073.a, A106400, A106400.P11201390576172776043.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A056498

/-! ## A056498.P16620599164543737242

`A056493(n+1)*A057427(n)`
-/

namespace A056498.P16620599164543737242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056493 (n + 1) * A057427 n

end

end A056498.P16620599164543737242

namespace A056498

/-- `A056493(n+1)*A057427(n)` -/
def P16620599164543737242.Spec : Prop :=
  ∀ n, P16620599164543737242.a n = A056498 (n + 1)

end A056498

/-! ## A056498.P15998921432839692714

`and(A056493(n+1), A057428(n))`
-/

namespace A056498.P15998921432839692714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A056493 (n + 1)) (A057428 n)

end

end A056498.P15998921432839692714

namespace A056498

/-- `and(A056493(n+1), A057428(n))` -/
def P15998921432839692714.Spec : Prop :=
  ∀ n, P15998921432839692714.a n = A056498 (n + 1)

end A056498

/-! ## A056498.P16457525067583757442

`and(A056493(n+1), A134824(n))`
-/

namespace A056498.P16457525067583757442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A056493 (n + 1)) (A134824 n)

end

end A056498.P16457525067583757442

namespace A056498

/-- `and(A056493(n+1), A134824(n))` -/
def P16457525067583757442.Spec : Prop :=
  ∀ n, P16457525067583757442.a n = A056498 (n + 1)

end A056498

/-! ## A056498.P4951822211369221856

`and(A056493(n+1), A260196(n))`
-/

namespace A056498.P4951822211369221856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A056493 (n + 1)) (A260196 n)

end

end A056498.P4951822211369221856

namespace A056498

/-- `and(A056493(n+1), A260196(n))` -/
def P4951822211369221856.Spec : Prop :=
  ∀ n, P4951822211369221856.a n = A056498 (n + 1)

end A056498

/-! ## A056498.P7579471920601578451

`A181314(n+1)+1-A000007(n)`
-/

namespace A056498.P7579471920601578451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181314 (n + 1) + (1 - A000007 n)

end

end A056498.P7579471920601578451

namespace A056498

/-- `A181314(n+1)+1-A000007(n)` -/
def P7579471920601578451.Spec : Prop :=
  ∀ n, P7579471920601578451.a n = A056498 (n + 1)

theorem P7579471920601578451.correct : P7579471920601578451.Spec := by
  intro n
  simp only [A056498, Nat.add_sub_cancel, A056498.P7579471920601578451.a, A056498.P10808203384033100118.a, A000007, A000007.P6599383543502402472.a, A000038, A000038.P13734959004655594922.a, A056493, A056493.P14823141332440776708.f1, A056493.P14823141332440776708.a, A181314, A181314.P4228565367849305824.a, A008683, A008683.P18254306604665478110.a, A057428, A057428.P2999489532230392221.a, A164090, A164090.P6257059095248151761.a, A057427, A057427.P3058147525557661423.a, A132971, A132971.P9197609016375066540.a, A156552, A156552.P4268073137713085227.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A085357, A085357.P3258697467278337073.a, A106400, A106400.P11201390576172776043.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A056498

/-! ## A056498.P5781294416409310081

`A181314(n+1)+2-A054977(n)`
-/

namespace A056498.P5781294416409310081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181314 (n + 1) + (2 - A054977 n)

end

end A056498.P5781294416409310081

namespace A056498

/-- `A181314(n+1)+2-A054977(n)` -/
def P5781294416409310081.Spec : Prop :=
  ∀ n, P5781294416409310081.a n = A056498 (n + 1)

end A056498

/-! ## A056498.P10353159446376532431

`(2-A054977(n))*A056493(n+1)`
-/

namespace A056498.P10353159446376532431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A054977 n) * A056493 (n + 1)

end

end A056498.P10353159446376532431

namespace A056498

/-- `(2-A054977(n))*A056493(n+1)` -/
def P10353159446376532431.Spec : Prop :=
  ∀ n, P10353159446376532431.a n = A056498 (n + 1)

end A056498

/-! ## A056498.P1740595720713804831

`and(A056493(n+1), A153881(n+1))`
-/

namespace A056498.P1740595720713804831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A056493 (n + 1)) (A153881 (n + 1))

end

end A056498.P1740595720713804831

namespace A056498

/-- `and(A056493(n+1), A153881(n+1))` -/
def P1740595720713804831.Spec : Prop :=
  ∀ n, P1740595720713804831.a n = A056498 (n + 1)

end A056498

/-! ## A056498.P13950881335809098293

`and(1, A006257(n))*A056493(n+1)`
-/

namespace A056498.P13950881335809098293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A006257 n) * A056493 (n + 1)

end

end A056498.P13950881335809098293

namespace A056498

/-- `and(1, A006257(n))*A056493(n+1)` -/
def P13950881335809098293.Spec : Prop :=
  ∀ n, P13950881335809098293.a n = A056498 (n + 1)

end A056498

/-! ## A056498.P8541575795512755587

`A181314(n+1)+Δ[A049623(n+1)]%2`
-/

namespace A056498.P8541575795512755587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049623 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181314 (n + 1) + Int.tmod (f1 (n + 1) - f1 n) 2

end

end A056498.P8541575795512755587

namespace A056498

/-- `A181314(n+1)+Δ[A049623(n+1)]%2` -/
def P8541575795512755587.Spec : Prop :=
  ∀ n, P8541575795512755587.a n = A056498 (n + 1)

end A056498

/-! ## A056498.P13605802841661257264

`A181314(n+1)+and(1, A052955(A020639(n+1)))`
-/

namespace A056498.P13605802841661257264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181314 (n + 1) + Int.land 1 (A052955 (A020639 (n + 1)).toNat)

end

end A056498.P13605802841661257264

namespace A056498

/-- `A181314(n+1)+and(1, A052955(A020639(n+1)))` -/
def P13605802841661257264.Spec : Prop :=
  ∀ n, P13605802841661257264.a n = A056498 (n + 1)

end A056498

/-! ## A056498.P4815150913235302064

`A056463(n+1)+A056493(n+1)-A056458(n+1)`
-/

namespace A056498.P4815150913235302064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056463 (n + 1) + (A056493 (n + 1) - A056458 (n + 1))

end

end A056498.P4815150913235302064

namespace A056498

/-- `A056463(n+1)+A056493(n+1)-A056458(n+1)` -/
def P4815150913235302064.Spec : Prop :=
  ∀ n, P4815150913235302064.a n = A056498 (n + 1)

end A056498

/-! ## A056498.P1224036116507265334

`A181314(n+1)+and(1, A052955(n+1))`
-/

namespace A056498.P1224036116507265334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181314 (n + 1) + Int.land 1 (A052955 (n + 1))

end

end A056498.P1224036116507265334

namespace A056498

/-- `A181314(n+1)+and(1, A052955(n+1))` -/
def P1224036116507265334.Spec : Prop :=
  ∀ n, P1224036116507265334.a n = A056498 (n + 1)

end A056498

/-! ## A056498.P8575730845576573650

`(A181314(n+1)+1)%∑[A295678(n)]`
-/

namespace A056498.P8575730845576573650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295678 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A181314 (n + 1) + 1) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A056498.P8575730845576573650

namespace A056498

/-- `(A181314(n+1)+1)%∑[A295678(n)]` -/
def P8575730845576573650.Spec : Prop :=
  ∀ n, P8575730845576573650.a n = A056498 (n + 1)

end A056498

/-! ## A056498.P11644653470911045996

`A056493(n+1)%A000335(n+1)`
-/

namespace A056498.P11644653470911045996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056493 (n + 1)) (A000335 (n + 1))

end

end A056498.P11644653470911045996

namespace A056498

/-- `A056493(n+1)%A000335(n+1)` -/
def P11644653470911045996.Spec : Prop :=
  ∀ n, P11644653470911045996.a n = A056498 (n + 1)

end A056498

/-! ## A056498.P482471171728012640

`A056493(n+1)%A001875(n)`
-/

namespace A056498.P482471171728012640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056493 (n + 1)) (A001875 n)

end

end A056498.P482471171728012640

namespace A056498

/-- `A056493(n+1)%A001875(n)` -/
def P482471171728012640.Spec : Prop :=
  ∀ n, P482471171728012640.a n = A056498 (n + 1)

end A056498

/-! ## A056498.P16385826681959126636

`A001371(n+1)+A056348(n+1)-A001037(n+1)`
-/

namespace A056498.P16385826681959126636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001371 (n + 1) + (A056348 (n + 1) - A001037 (n + 1))

end

end A056498.P16385826681959126636

namespace A056498

/-- `A001371(n+1)+A056348(n+1)-A001037(n+1)` -/
def P16385826681959126636.Spec : Prop :=
  ∀ n, P16385826681959126636.a n = A056498 (n + 1)

end A056498

/-!
# A056499: Number of primitive (period n) periodic palindromes using exactly three different symbols.

The programs for A056499, the canonical program `A056499.P6397658787847568372` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056499 has offset 1).

The definition of A056499 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 417 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A056499.P6397658787847568372

`∑{d}[n+1, A008683(#)*A056489((n+1)/#)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A056499

/-- `∑{d}[n+1, A008683(#)*A056489((n+1)/#)]` -/
def P6397658787847568372.Spec : Prop :=
  ∀ n, P6397658787847568372.a n = A056499 (n + 1)

theorem P6397658787847568372.correct : P6397658787847568372.Spec := by
  intro n
  simp only [A056499, Nat.add_sub_cancel]

end A056499

/-! ## A056499.P14096296577769786988

`2*A056349(n+1)-A056288(n+1)`
-/

namespace A056499.P14096296577769786988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A056349 (n + 1) - A056288 (n + 1)

end

end A056499.P14096296577769786988

namespace A056499

/-- `2*A056349(n+1)-A056288(n+1)` -/
def P14096296577769786988.Spec : Prop :=
  ∀ n, P14096296577769786988.a n = A056499 (n + 1)

end A056499

/-! ## A056499.P14136152811767771317

`A056349(n+1)-A326660(n+1)`
-/

namespace A056499.P14136152811767771317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056349 (n + 1) - A326660 (n + 1)

end

end A056499.P14136152811767771317

namespace A056499

/-- `A056349(n+1)-A326660(n+1)` -/
def P14136152811767771317.Spec : Prop :=
  ∀ n, P14136152811767771317.a n = A056499 (n + 1)

end A056499

/-! ## A056499.P15511426687005577629

`A056288(n+1)-2*A326660(n+1)`
-/

namespace A056499.P15511426687005577629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056288 (n + 1) - 2 * A326660 (n + 1)

end

end A056499.P15511426687005577629

namespace A056499

/-- `A056288(n+1)-2*A326660(n+1)` -/
def P15511426687005577629.Spec : Prop :=
  ∀ n, P15511426687005577629.a n = A056499 (n + 1)

end A056499

/-! ## A056499.P6221265797859012439

`A327878(record[2-(A327878(n+1)-n)]+1)`
-/

namespace A056499.P6221265797859012439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A327878 (n + 1) - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327878 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A056499.P6221265797859012439

namespace A056499

/-- `A327878(record[2-(A327878(n+1)-n)]+1)` -/
def P6221265797859012439.Spec : Prop :=
  ∀ n, P6221265797859012439.a n = A056499 (n + 1)

end A056499

/-! ## A056499.P13262010547948604325

`A327878(∑[A008619(A233583(n+1))])`
-/

namespace A056499.P13262010547948604325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A233583 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327878 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A056499.P13262010547948604325

namespace A056499

/-- `A327878(∑[A008619(A233583(n+1))])` -/
def P13262010547948604325.Spec : Prop :=
  ∀ n, P13262010547948604325.a n = A056499 (n + 1)

end A056499

/-! ## A056499.P6576114918767895035

`A157928(n)*A327878(A290743(n+2))`
-/

namespace A056499.P6576114918767895035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 n * A327878 (A290743 (n + 2)).toNat

end

end A056499.P6576114918767895035

namespace A056499

/-- `A157928(n)*A327878(A290743(n+2))` -/
def P6576114918767895035.Spec : Prop :=
  ∀ n, P6576114918767895035.a n = A056499 (n + 1)

end A056499

/-! ## A056499.P2464505570173221593

`A056288(n+1)-2*A309651(A152950(n+1))`
-/

namespace A056499.P2464505570173221593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056288 (n + 1) - 2 * A309651 (A152950 (n + 1)).toNat

end

end A056499.P2464505570173221593

namespace A056499

/-- `A056288(n+1)-2*A309651(A152950(n+1))` -/
def P2464505570173221593.Spec : Prop :=
  ∀ n, P2464505570173221593.a n = A056499 (n + 1)

end A056499

