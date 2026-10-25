import SequenceMachineLib
import Mathlib.Tactic
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
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
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
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
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
# A373600: a(n) is the sum of prime factors (with multiplicity) in A276086(n), where A276086 is the primorial base exp-function.

The programs for A373600, there is no canonical definition to state claims against.
-/

/-! ## A373600.P8915145664239715331

`A001414(A276086(n))`
-/

namespace A373600.P8915145664239715331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A276086 n).toNat

end

end A373600.P8915145664239715331

/-! ## A373600.P14727087847231513036

`A263042(A049345(n))`
-/

namespace A373600.P14727087847231513036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263042 (A049345 n).toNat

end

end A373600.P14727087847231513036

/-! ## A373600.P4969208045098444233

`A001414(A351225(n)+n)`
-/

namespace A373600.P4969208045098444233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A351225 n + (n : ℤ)).toNat

end

end A373600.P4969208045098444233

/-! ## A373600.P9336741538986289687

`A001414(A373849(n)+A003415(n))`
-/

namespace A373600.P9336741538986289687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A373849 n + A003415 n).toNat

end

end A373600.P9336741538986289687

/-! ## A373600.P3086347547385687865

`A001414(A328844(n)+A328843(n))`
-/

namespace A373600.P3086347547385687865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A328844 n + A328843 n).toNat

end

end A373600.P3086347547385687865

/-! ## A373600.P13285696863580626540

`A001414(A327860(n)-A342016(n))`
-/

namespace A373600.P13285696863580626540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A327860 n - A342016 n).toNat

end

end A373600.P13285696863580626540

/-! ## A373600.P8110115589059072411

`A001414(A348949(n)-A348950(n))`
-/

namespace A373600.P8110115589059072411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A348949 n - A348950 n).toNat

end

end A373600.P8110115589059072411

/-! ## A373600.P9834345382579234864

`A001414(A328571(n)*A328572(n))`
-/

namespace A373600.P9834345382579234864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A328571 n * A328572 n).toNat

end

end A373600.P9834345382579234864

/-! ## A373600.P920853339748531399

`A001414(A373849(n)+A319703(n-(1-n)%(n+1)+1))`
-/

namespace A373600.P920853339748531399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A373849 n + A319703 ((n : ℤ) - Int.tmod (1 - (n : ℤ)) (n + 1 : ℤ) + 1).toNat).toNat

end

end A373600.P920853339748531399

/-! ## A373600.P13718446805135908993

`A001414(A328572(n)*A342002(n)-A342016(n))`
-/

namespace A373600.P13718446805135908993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A328572 n * A342002 n - A342016 n).toNat

end

end A373600.P13718446805135908993

/-!
# A373601: a(n) = 1 if the sum of prime factors (with multiplicity) of A276086(n) is a multiple of 3, otherwise 0, where A276086 is the primorial base exp-function.

The programs for A373601, there is no canonical definition to state claims against.
-/

/-! ## A373601.P4232963300260812751

`A079978(A373600(n))`
-/

namespace A373601.P4232963300260812751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 (A373600 n).toNat

end

end A373601.P4232963300260812751

/-! ## A373601.P10705745973155280191

`A373371(A276086(n))`
-/

namespace A373601.P10705745973155280191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373371 (A276086 n).toNat

end

end A373601.P10705745973155280191

/-! ## A373601.P3074602878258752173

`char[A373602(n+1)]`
-/

namespace A373601.P3074602878258752173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373602 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A373601.P3074602878258752173

/-! ## A373601.P10838356617552752924

`A079978(A052928(A007623(n))+n)`
-/

namespace A373601.P10838356617552752924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 (A052928 (A007623 n).toNat + (n : ℤ)).toNat

end

end A373601.P10838356617552752924

/-! ## A373601.P8250569388328140198

`A079978(A001414(A276086(n))²)`
-/

namespace A373601.P8250569388328140198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 (A001414 (A276086 n).toNat ^ 2).toNat

end

end A373601.P8250569388328140198

/-! ## A373601.P17547788061761882072

`A373604(A373600(n)%A373617(n+1))`
-/

namespace A373601.P17547788061761882072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373604 (Int.tmod (A373600 n) (A373617 (n + 1))).toNat

end

end A373601.P17547788061761882072

/-!
# A373602: Numbers k such that the sum of prime factors (with multiplicity) of A276086(k) is a multiple of 3, where A276086 is the primorial base exp-function.

The programs for A373602, there is no canonical definition to state claims against.
-/

/-! ## A373602.P1354447199892951728

`lt[0, A373601(n)]`
-/

namespace A373602.P1354447199892951728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373601 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A373602.P1354447199892951728

/-! ## A373602.P17651052929830779172

`record[(n+1)*A373601(n+1)]`
-/

namespace A373602.P17651052929830779172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A373601 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A373602.P17651052929830779172

/-! ## A373602.P5381658193071752534

`filter[A376919(n), A373601(#)]`
-/

namespace A373602.P5381658193071752534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376919 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373601 (f1 j).toNat = 1) n)

end

end A373602.P5381658193071752534

/-! ## A373602.P17991413841422530842

`filter[A165754(n), A373601(#)]`
-/

namespace A373602.P17991413841422530842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165754 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373601 (f1 j).toNat = 1) n)

end

end A373602.P17991413841422530842

/-! ## A373602.P1165875061755253556

`filter[A004442(n+1), A373601(#)]`
-/

namespace A373602.P1165875061755253556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373601 (f1 j).toNat = 1) n)

end

end A373602.P1165875061755253556

/-! ## A373602.P9306588887857739279

`filter[A168195(n+1), A373601(#)]`
-/

namespace A373602.P9306588887857739279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168195 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373601 (f1 j).toNat = 1) n)

end

end A373602.P9306588887857739279

/-! ## A373602.P12277296416574672295

`filter[A064429(n), A373601(#)]`
-/

namespace A373602.P12277296416574672295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064429 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373601 (f1 j).toNat = 1) n)

end

end A373602.P12277296416574672295

/-! ## A373602.P1237722373525928541

`filter[A143579(n), A373601(#)]`
-/

namespace A373602.P1237722373525928541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143579 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373601 (f1 j).toNat = 1) n)

end

end A373602.P1237722373525928541

/-! ## A373602.P11166825838388586049

`filter[A160017(n), A373601(#)]`
-/

namespace A373602.P11166825838388586049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160017 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373601 (f1 j).toNat = 1) n)

end

end A373602.P11166825838388586049

/-! ## A373602.P403884510725306522

`eq[A373565(n), A373601(n)]`
-/

namespace A373602.P403884510725306522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373565 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373601 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A373602.P403884510725306522

/-! ## A373602.P2853901049795215899

`eq[A121273(n+1), A373601(n)]`
-/

namespace A373602.P2853901049795215899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121273 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373601 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A373602.P2853901049795215899

/-! ## A373602.P13214043499220556996

`eq[A352177(n+1), A373601(n)]`
-/

namespace A373602.P13214043499220556996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352177 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373601 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A373602.P13214043499220556996

/-! ## A373602.P16598558538198700317

`filter[A236348(n), A373601(#)]`
-/

namespace A373602.P16598558538198700317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236348 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373601 (f1 j).toNat = 1) n)

end

end A373602.P16598558538198700317

/-! ## A373602.P2111802500150910910

`filter[A139179(n+1), A373601(#)]`
-/

namespace A373602.P2111802500150910910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139179 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373601 (f1 j).toNat = 1) n)

end

end A373602.P2111802500150910910

/-! ## A373602.P11326630501124278260

`filter[A092942(n), A373601(#)]`
-/

namespace A373602.P11326630501124278260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092942 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373601 (f1 j).toNat = 1) n)

end

end A373602.P11326630501124278260

/-! ## A373602.P10009631859231672234

`filter[A225553(2*n+3), A373601(#)]`
-/

namespace A373602.P10009631859231672234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225553 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373601 (f1 j).toNat = 1) n)

end

end A373602.P10009631859231672234

/-! ## A373602.P8803008187452341782

`filter[A267182(2*n), A373601(#)]`
-/

namespace A373602.P8803008187452341782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267182 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373601 (f1 j).toNat = 1) n)

end

end A373602.P8803008187452341782

/-! ## A373602.P12846372151419258906

`filter[A018840(3*n), A373601(#)]`
-/

namespace A373602.P12846372151419258906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018840 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373601 (f1 j).toNat = 1) n)

end

end A373602.P12846372151419258906

/-! ## A373602.P4026168405991890164

`filter[A267183(3*n), A373601(#)]`
-/

namespace A373602.P4026168405991890164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267183 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373601 (f1 j).toNat = 1) n)

end

end A373602.P4026168405991890164

/-!
# A373604: a(n) = 1 if the primorial base representation of 6*n has alternating digit sum (A373605) that is a multiple of 3, otherwise 0.

The programs for A373604, there is no canonical definition to state claims against.
-/

/-! ## A373604.P3187310618205716567

`A373830(6*n)`
-/

namespace A373604.P3187310618205716567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373830 (6 * n)

end

end A373604.P3187310618205716567

/-!
# A373605: Sum of the even-indexed digits minus the sum of the odd-indexed digits in the primorial base representation (A049345) of n.

The programs for A373605, there is no canonical definition to state claims against.
-/

/-! ## A373605.P13018044872614740789

`A373606(n)-A373607(n)`
-/

namespace A373605.P13018044872614740789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373606 n - A373607 n

end

end A373605.P13018044872614740789

/-! ## A373605.P8586287855566647772

`A195017(A276086(n))`
-/

namespace A373605.P8586287855566647772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195017 (A276086 n).toNat

end

end A373605.P8586287855566647772

/-! ## A373605.P11462146618377579680

`2*A373606(n)-A276150(n)`
-/

namespace A373605.P11462146618377579680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A373606 n - A276150 n

end

end A373605.P11462146618377579680

/-! ## A373605.P11145617723305425570

`A276150(n)-2*A373607(n)`
-/

namespace A373605.P11145617723305425570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276150 n - 2 * A373607 n

end

end A373605.P11145617723305425570

/-! ## A373605.P3639418652162076566

`A373606(n)-A373606(A276154(n))`
-/

namespace A373605.P3639418652162076566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373606 n - A373606 (A276154 n).toNat

end

end A373605.P3639418652162076566

/-! ## A373605.P12141401922765478635

`A055017(A049345(n))`
-/

namespace A373605.P12141401922765478635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055017 (A049345 n).toNat

end

end A373605.P12141401922765478635

/-! ## A373605.P17499382576971689536

`A004718(A277022(n))`
-/

namespace A373605.P17499382576971689536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004718 (A277022 n).toNat

end

end A373605.P17499382576971689536

/-!
# A373606: Sum of the even-indexed digits in the primorial base representation (A049345) of n.

The programs for A373606, there is no canonical definition to state claims against.
-/

/-! ## A373606.P18294955947703026012

`A373605(n)+A373607(n)`
-/

namespace A373606.P18294955947703026012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373605 n + A373607 n

end

end A373606.P18294955947703026012

/-!
# A373607: Sum of the odd-indexed digits in the primorial base representation (A049345) of n.

The programs for A373607, there is no canonical definition to state claims against.
-/

/-! ## A373607.P9808312703453020639

`A276150(n)-A373606(n)`
-/

namespace A373607.P9808312703453020639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276150 n - A373606 n

end

end A373607.P9808312703453020639

/-! ## A373607.P9439293972431918096

`A373606(n)-A373605(n)`
-/

namespace A373607.P9439293972431918096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373606 n - A373605 n

end

end A373607.P9439293972431918096

/-! ## A373607.P10224439069817383891

`A328630(A328626(n))-A373606(n)`
-/

namespace A373607.P10224439069817383891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328630 (A328626 n).toNat - A373606 n

end

end A373607.P10224439069817383891

/-! ## A373607.P10193096085882218332

`∑{digits}[A049345(n), #]-A373606(n)`
-/

namespace A373607.P10193096085882218332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049345 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum : ℕ) : ℤ) - A373606 n

end

end A373607.P10193096085882218332

/-! ## A373607.P1478581596677326689

`A056239(A328835(n))-A373606(n)`
-/

namespace A373607.P1478581596677326689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A328835 n).toNat - A373606 n

end

end A373607.P1478581596677326689

/-! ## A373607.P15838076944720357875

`A373606(A276154(n))`
-/

namespace A373607.P15838076944720357875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373606 (A276154 n).toNat

end

end A373607.P15838076944720357875

/-! ## A373607.P6580124828991980169

`A343030(A277022(n))`
-/

namespace A373607.P6580124828991980169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343030 (A277022 n).toNat

end

end A373607.P6580124828991980169

/-! ## A373607.P7118728812384865596

`A257992(A276086(n))`
-/

namespace A373607.P7118728812384865596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257992 (A276086 n).toNat

end

end A373607.P7118728812384865596

/-! ## A373607.P13157008141905546001

`A257992(A346101(n))`
-/

namespace A373607.P13157008141905546001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257992 (A346101 n).toNat

end

end A373607.P13157008141905546001

/-!
# A373609: List of repeated terms in A351903.

The programs for A373609, there is no canonical definition to state claims against.
-/

/-! ## A373609.P5781523663531283459

`∩[A245094(n), A279102(n+1)]`
-/

namespace A373609.P5781523663531283459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245094 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279102 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A373609.P5781523663531283459

/-! ## A373609.P14616906692742617694

`∩[A277569(n+1), A279102(n+4)]`
-/

namespace A373609.P14616906692742617694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277569 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279102 (n + 4)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A373609.P14616906692742617694

/-!
# A373614: a(n) = Fibonacci(n)^2 * Catalan(n).

The programs for A373614, the canonical program `A373614.P13726783927910491980` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373614 has offset 0).

The definition of A373614 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A373614.P13726783927910491980

`A007598(n)*A000108(n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A373614

/-- `A007598(n)*A000108(n)` -/
def P13726783927910491980.Spec : Prop :=
  ∀ n, P13726783927910491980.a n = A373614 n

theorem P13726783927910491980.correct : P13726783927910491980.Spec := by
  intro n
  simp only [A373614]

end A373614

/-! ## A373614.P4665718954882026582

`A000045(n)²*A000108(n)`
-/

namespace A373614.P4665718954882026582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n ^ 2 * A000108 n

end

end A373614.P4665718954882026582

namespace A373614

/-- `A000045(n)²*A000108(n)` -/
def P4665718954882026582.Spec : Prop :=
  ∀ n, P4665718954882026582.a n = A373614 n

end A373614

/-! ## A373614.P3349215786326968336

`A236191(n)²*A000108(n)`
-/

namespace A373614.P3349215786326968336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236191 n ^ 2 * A000108 n

end

end A373614.P3349215786326968336

namespace A373614

/-- `A236191(n)²*A000108(n)` -/
def P3349215786326968336.Spec : Prop :=
  ∀ n, P3349215786326968336.a n = A373614 n

end A373614

/-! ## A373614.P15638221200462383626

`abs(A000045(n)²*A168491(n))`
-/

namespace A373614.P15638221200462383626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000045 n ^ 2 * A168491 n|

end

end A373614.P15638221200462383626

namespace A373614

/-- `abs(A000045(n)²*A168491(n))` -/
def P15638221200462383626.Spec : Prop :=
  ∀ n, P15638221200462383626.a n = A373614 n

end A373614

/-! ## A373614.P11896121455653814815

`A000045(n)²*Δ[A155587(n)]`
-/

namespace A373614.P11896121455653814815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155587 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n ^ 2 * (f1 (n + 1) - f1 n)

end

end A373614.P11896121455653814815

namespace A373614

/-- `A000045(n)²*Δ[A155587(n)]` -/
def P11896121455653814815.Spec : Prop :=
  ∀ n, P11896121455653814815.a n = A373614 n

end A373614

/-! ## A373614.P16204151517787754991

`A212804(n+1)²*A126120(2*n)`
-/

namespace A373614.P16204151517787754991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (n + 1) ^ 2 * A126120 (2 * n)

end

end A373614.P16204151517787754991

namespace A373614

/-- `A212804(n+1)²*A126120(2*n)` -/
def P16204151517787754991.Spec : Prop :=
  ∀ n, P16204151517787754991.a n = A373614 n

end A373614

/-! ## A373614.P8400438819227339112

`A103609(2*n)²*A126120(2*n)`
-/

namespace A373614.P8400438819227339112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (2 * n) ^ 2 * A126120 (2 * n)

end

end A373614.P8400438819227339112

namespace A373614

/-- `A103609(2*n)²*A126120(2*n)` -/
def P8400438819227339112.Spec : Prop :=
  ∀ n, P8400438819227339112.a n = A373614 n

end A373614

/-! ## A373614.P8529271487059727593

`A007598(n)*A008313(n²)`
-/

namespace A373614.P8529271487059727593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007598 n * A008313 (n ^ 2)

end

end A373614.P8529271487059727593

namespace A373614

/-- `A007598(n)*A008313(n²)` -/
def P8529271487059727593.Spec : Prop :=
  ∀ n, P8529271487059727593.a n = A373614 n

end A373614

/-!
# A373619: Expansion of e.g.f. exp(x / (1 - x^2)^(3/2)).

The programs for A373619, there is no canonical definition to state claims against.
-/

/-! ## A373619.P16057561838460244148

`A260672(A103295(n)^4)`
-/

namespace A373619.P16057561838460244148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260672 (A103295 n ^ 4).toNat

end

end A373619.P16057561838460244148

/-! ## A373619.P16286767810420133455

`A260672(A103295(n)²²)`
-/

namespace A373619.P16286767810420133455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260672 ((A103295 n ^ 2) ^ 2).toNat

end

end A373619.P16286767810420133455

/-!
# A373620: Expansion of e.g.f. exp(x / (1 - x^2)^2).

The programs for A373620, there is no canonical definition to state claims against.
-/

/-! ## A373620.P16368490055113891885

`A139642(A134168(n))`
-/

namespace A373620.P16368490055113891885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139642 (A134168 n).toNat

end

end A373620.P16368490055113891885

/-! ## A373620.P7397005177049430199

`A333780(A362472(n))`
-/

namespace A373620.P7397005177049430199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333780 (A362472 n).toNat

end

end A373620.P7397005177049430199

/-!
# A373621: Expansion of 1 / ( (1 - 25*x^5) * (1 - x/(1 - 25*x^5)^(1/5)) ).

The programs for A373621, there is no canonical definition to state claims against.
-/

/-! ## A373621.P3935589867836562198

`A016861(n)^A057814(n)`
-/

namespace A373621.P3935589867836562198
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016861 n : ℚ) ^ (A057814 n : ℤ)

end

end A373621.P3935589867836562198

/-! ## A373621.P13322818506908636644

`A016861(n)^A245790(n)`
-/

namespace A373621.P13322818506908636644
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016861 n : ℚ) ^ (A245790 n : ℤ)

end

end A373621.P13322818506908636644

/-! ## A373621.P18299876372493474625

`A016861(n%A054962(n))`
-/

namespace A373621.P18299876372493474625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 (Int.tmod (n : ℤ) (A054962 n)).toNat

end

end A373621.P18299876372493474625

/-! ## A373621.P10972010029075922254

`Δ[A000566(n)]^A245790(n)`
-/

namespace A373621.P10972010029075922254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000566 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) ^ (A245790 n : ℤ)

end

end A373621.P10972010029075922254

/-! ## A373621.P12231082479881030589

`A301678(n)^A366101(n)^n`
-/

namespace A373621.P12231082479881030589
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A301678 n : ℚ) ^ (A366101 n ^ n : ℤ)

end

end A373621.P12231082479881030589

/-!
# A373622: a(n) = A000032(n)*A000045(n)*A000108(n).

The programs for A373622, the canonical program `A373622.P5649308913863551623` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373622 has offset 0).

The definition of A373622 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000032(n)*A000045(n)*A000108(n)` (program `A373622.P5649308913863551623`, by `A373622.P5649308913863551623.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A373622.P5649308913863551623

`A000032(n)*A000045(n)*A000108(n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A373622

/-- `A000032(n)*A000045(n)*A000108(n)` -/
def P5649308913863551623.Spec : Prop :=
  ∀ n, P5649308913863551623.a n = A373622 n

theorem P5649308913863551623.correct : P5649308913863551623.Spec := by
  intro n
  simp only [A373622]

end A373622

/-! ## A373622.P6140155822382639884

`A000108(n)*A001906(n)`
-/

namespace A373622.P6140155822382639884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A001906 n

end

end A373622.P6140155822382639884

namespace A373622

/-- `A000108(n)*A001906(n)` -/
def P6140155822382639884.Spec : Prop :=
  ∀ n, P6140155822382639884.a n = A373622 n

end A373622

/-! ## A373622.P7121949511715964547

`A000045(2*n)*A000108(n)`
-/

namespace A373622.P7121949511715964547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n) * A000108 n

end

end A373622.P7121949511715964547

namespace A373622

/-- `A000045(2*n)*A000108(n)` -/
def P7121949511715964547.Spec : Prop :=
  ∀ n, P7121949511715964547.a n = A373622 n

end A373622

/-! ## A373622.P2079541350416781357

`A000108(n)*A005013(2*n)`
-/

namespace A373622.P2079541350416781357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A005013 (2 * n)

end

end A373622.P2079541350416781357

namespace A373622

/-- `A000108(n)*A005013(2*n)` -/
def P2079541350416781357.Spec : Prop :=
  ∀ n, P2079541350416781357.a n = A373622 n

end A373622

/-! ## A373622.P7708520501414329683

`A000045(2*n)*A120588(n+1)`
-/

namespace A373622.P7708520501414329683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n) * A120588 (n + 1)

end

end A373622.P7708520501414329683

namespace A373622

/-- `A000045(2*n)*A120588(n+1)` -/
def P7708520501414329683.Spec : Prop :=
  ∀ n, P7708520501414329683.a n = A373622 n

end A373622

/-! ## A373622.P5395287195576850832

`A000108(n)*A212804(2*n+1)`
-/

namespace A373622.P5395287195576850832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A212804 (2 * n + 1)

end

end A373622.P5395287195576850832

namespace A373622

/-- `A000108(n)*A212804(2*n+1)` -/
def P5395287195576850832.Spec : Prop :=
  ∀ n, P5395287195576850832.a n = A373622 n

end A373622

/-! ## A373622.P10690369566548366693

`A000045(2*n)*A028303(2*n)`
-/

namespace A373622.P10690369566548366693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n) * A028303 (2 * n)

end

end A373622.P10690369566548366693

namespace A373622

/-- `A000045(2*n)*A028303(2*n)` -/
def P10690369566548366693.Spec : Prop :=
  ∀ n, P10690369566548366693.a n = A373622 n

end A373622

/-! ## A373622.P15276300668230881310

`A000045(2*n)*A028304(2*n)`
-/

namespace A373622.P15276300668230881310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n) * A028304 (2 * n)

end

end A373622.P15276300668230881310

namespace A373622

/-- `A000045(2*n)*A028304(2*n)` -/
def P15276300668230881310.Spec : Prop :=
  ∀ n, P15276300668230881310.a n = A373622 n

end A373622

/-! ## A373622.P8312881382986866920

`A000045(2*n)*A057977(2*n)`
-/

namespace A373622.P8312881382986866920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n) * A057977 (2 * n)

end

end A373622.P8312881382986866920

namespace A373622

/-- `A000045(2*n)*A057977(2*n)` -/
def P8312881382986866920.Spec : Prop :=
  ∀ n, P8312881382986866920.a n = A373622 n

end A373622

/-! ## A373622.P17976552991440881398

`A000045(2*n)*A126120(2*n)`
-/

namespace A373622.P17976552991440881398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n) * A126120 (2 * n)

end

end A373622.P17976552991440881398

namespace A373622

/-- `A000045(2*n)*A126120(2*n)` -/
def P17976552991440881398.Spec : Prop :=
  ∀ n, P17976552991440881398.a n = A373622 n

end A373622

/-! ## A373622.P10895982409627952706

`A000045(2*n)*A126324(2*n)`
-/

namespace A373622.P10895982409627952706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n) * A126324 (2 * n)

end

end A373622.P10895982409627952706

namespace A373622

/-- `A000045(2*n)*A126324(2*n)` -/
def P10895982409627952706.Spec : Prop :=
  ∀ n, P10895982409627952706.a n = A373622 n

end A373622

/-! ## A373622.P7581172303259659992

`A000045(2*n)*A208355(2*n)`
-/

namespace A373622.P7581172303259659992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n) * A208355 (2 * n)

end

end A373622.P7581172303259659992

namespace A373622

/-- `A000045(2*n)*A208355(2*n)` -/
def P7581172303259659992.Spec : Prop :=
  ∀ n, P7581172303259659992.a n = A373622 n

end A373622

/-! ## A373622.P10925196884132510317

`A103609(4*n)*A126120(2*n)`
-/

namespace A373622.P10925196884132510317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (4 * n) * A126120 (2 * n)

end

end A373622.P10925196884132510317

namespace A373622

/-- `A103609(4*n)*A126120(2*n)` -/
def P10925196884132510317.Spec : Prop :=
  ∀ n, P10925196884132510317.a n = A373622 n

end A373622

/-! ## A373622.P16917391057091522379

`Δ[A166588(2*n)]*A000045(2*n)`
-/

namespace A373622.P16917391057091522379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166588 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000045 (2 * n)

end

end A373622.P16917391057091522379

namespace A373622

/-- `Δ[A166588(2*n)]*A000045(2*n)` -/
def P16917391057091522379.Spec : Prop :=
  ∀ n, P16917391057091522379.a n = A373622 n

end A373622

/-! ## A373622.P3818980964925953152

`A000045(2*n)*A089408(2*n+1)`
-/

namespace A373622.P3818980964925953152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n) * A089408 (2 * n + 1)

end

end A373622.P3818980964925953152

namespace A373622

/-- `A000045(2*n)*A089408(2*n+1)` -/
def P3818980964925953152.Spec : Prop :=
  ∀ n, P3818980964925953152.a n = A373622 n

end A373622

/-! ## A373622.P8769290874854664336

`A000045(2*n)*A097331(2*n+1)`
-/

namespace A373622.P8769290874854664336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n) * A097331 (2 * n + 1)

end

end A373622.P8769290874854664336

namespace A373622

/-- `A000045(2*n)*A097331(2*n+1)` -/
def P8769290874854664336.Spec : Prop :=
  ∀ n, P8769290874854664336.a n = A373622 n

end A373622

/-! ## A373622.P18025944996001938058

`A126120(2*n)*A212804(2*n+1)`
-/

namespace A373622.P18025944996001938058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 (2 * n) * A212804 (2 * n + 1)

end

end A373622.P18025944996001938058

namespace A373622

/-- `A126120(2*n)*A212804(2*n+1)` -/
def P18025944996001938058.Spec : Prop :=
  ∀ n, P18025944996001938058.a n = A373622 n

end A373622

/-! ## A373622.P8197665462985053396

`(A001519(n+1)-A001519(n))*A000108(n)`
-/

namespace A373622.P8197665462985053396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001519 (n + 1) - A001519 n) * A000108 n

end

end A373622.P8197665462985053396

namespace A373622

/-- `(A001519(n+1)-A001519(n))*A000108(n)` -/
def P8197665462985053396.Spec : Prop :=
  ∀ n, P8197665462985053396.a n = A373622 n

end A373622

/-!
# A373628: Triangle read by rows: T(n,k) is the number of occurrences of the periodic substring (0011)^k in the periodic string (000111)^n.

The programs for A373628, there is no canonical definition to state claims against.
-/

/-! ## A373628.P1221272548998982752

`A000027(C(A080292(n), A084938(n)))`
-/

namespace A373628.P1221272548998982752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (Nat.choose (A080292 n).toNat (A084938 n).toNat)

end

end A373628.P1221272548998982752

/-! ## A373628.P11467030880474722067

`A065639(C(A080292(n), A084938(n)))`
-/

namespace A373628.P11467030880474722067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065639 (Nat.choose (A080292 n).toNat (A084938 n).toNat)

end

end A373628.P11467030880474722067

/-!
# A373629: a(n) = sum of all numbers whose binary expansion is n bits long, starts and ends with a 1 bit, and contains no 00 bit pairs.

The programs for A373629, the canonical program `A373629.P12414916286381927164` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373629 has offset 1).

The definition of A373629 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A373629.P12414916286381927164

`3*a(n-1)+3*a(n-2)-6*a(n-3)-4*a(n-4)` with `a(0)=1, a(1)=3, a(2)=12, a(3)=39`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A373629

/-- `3*a(n-1)+3*a(n-2)-6*a(n-3)-4*a(n-4)` -/
def P12414916286381927164.Spec : Prop :=
  ∀ n, P12414916286381927164.a n = A373629 (n + 1)

theorem P12414916286381927164.correct : P12414916286381927164.Spec := by
  intro n
  simp only [A373629, Nat.add_sub_cancel]

end A373629

/-! ## A373629.P17098654743071681217

`ogf(1/(1-3x-3x^2+6x^3+4x^4))`
-/

namespace A373629.P17098654743071681217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -3, -3, 6, 4] n

end

end A373629.P17098654743071681217

namespace A373629

/-- `ogf(1/(1-3x-3x^2+6x^3+4x^4))` -/
def P17098654743071681217.Spec : Prop :=
  ∀ n, P17098654743071681217.a n = A373629 (n + 1)

end A373629

/-!
# A373630: a(n) is the n-th semiprime after the n-th prime.

The programs for A373630, the canonical program `A373630.P3373974476114109022` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373630 has offset 1).

The definition of A373630 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001358, A072000, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A373630.P3373974476114109022

`A001358(n+1+A072000(A000040(n+1)))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A373630

/-- `A001358(n+1+A072000(A000040(n+1)))` -/
def P3373974476114109022.Spec : Prop :=
  ∀ n, P3373974476114109022.a n = A373630 (n + 1)

theorem P3373974476114109022.correct : P3373974476114109022.Spec := by
  intro n
  simp only [A373630, Nat.add_sub_cancel]

end A373630

/-! ## A373630.P1263889996017737836

`A001358(A111457(n+1)+n+1)`
-/

namespace A373630.P1263889996017737836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (A111457 (n + 1) + (n + 1 : ℤ)).toNat

end

end A373630.P1263889996017737836

namespace A373630

/-- `A001358(A111457(n+1)+n+1)` -/
def P1263889996017737836.Spec : Prop :=
  ∀ n, P1263889996017737836.a n = A373630 (n + 1)

end A373630

/-!
# A373631: Least prime p that for some integer k there exist at least n positive primes of the form q!-p for n consecutive integers q belonging to {k,k+1,k+2,...,k+n-1}.

The programs for A373631, there is no canonical definition to state claims against.
-/

/-! ## A373631.P5195915427414330712

`p?[A297789(n+3)]`
-/

namespace A373631.P5195915427414330712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297789 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A373631.P5195915427414330712

/-!
# A373632: Number of (binary) heaps where n is the sum of their length and the size of the element set [k].

The programs for A373632, there is no canonical definition to state claims against.
-/

/-! ## A373632.P15699618578702838676

`A051889(A370316(n))`
-/

namespace A373632.P15699618578702838676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051889 (A370316 n).toNat

end

end A373632.P15699618578702838676

/-! ## A373632.P7871315829185599840

`A060016(C(∑[A333497(n)], 2)+2)`
-/

namespace A373632.P7871315829185599840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333497 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060016 (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j).toNat 2 + 2)

end

end A373632.P7871315829185599840

/-! ## A373632.P4598953139216916473

`round(A293993(n)/A258025(n+1))`
-/

namespace A373632.P4598953139216916473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A293993 n : ℚ) / (A258025 (n + 1) : ℚ))

end

end A373632.P4598953139216916473

/-! ## A373632.P16332656616378160998

`A121900(A165773(2^(n-1)-a(n-1)))` with `a(0)=1, a(1)=0`
-/

namespace A373632.P16332656616378160998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A121900 (A165773 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - (a (n - 1) : ℚ))).toNat).toNat

end

end A373632.P16332656616378160998

/-! ## A373632.P12859664075580953187

`A071626(A020085(n)+A016116(n))`
-/

namespace A373632.P12859664075580953187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071626 (A020085 n + A016116 n).toNat

end

end A373632.P12859664075580953187

/-!
# A373636: Number of free n-celled (planar) polyhexes to which two inequivalent cells can be adjoined such that the two resulting free (n+1)-celled polyhexes are identical.

The programs for A373636, there is no canonical definition to state claims against.
-/

/-! ## A373636.P12193353610775885316

`A041792(n)%A035054(n)`
-/

namespace A373636.P12193353610775885316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A041792 n) (A035054 n)

end

end A373636.P12193353610775885316

/-! ## A373636.P7018060629404872471

`and(A026564(n), A131090(n))`
-/

namespace A373636.P7018060629404872471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A026564 n) (A131090 n)

end

end A373636.P7018060629404872471

/-! ## A373636.P12544134683575938737

`and(A041293(n), A376884(n))`
-/

namespace A373636.P12544134683575938737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A041293 n) (A376884 n)

end

end A373636.P12544134683575938737

/-! ## A373636.P5291631326189694220

`A094311(n+1)%A003403(n)`
-/

namespace A373636.P5291631326189694220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A094311 (n + 1)) (A003403 n)

end

end A373636.P5291631326189694220

/-! ## A373636.P16199562400644154094

`A241263(n+1)%A001973(n)`
-/

namespace A373636.P16199562400644154094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A241263 (n + 1)) (A001973 n)

end

end A373636.P16199562400644154094

/-!
# A373638: a(n) = Sum_{k=0..floor(n/2)} binomial(3*n-5*k,k).

The programs for A373638, the canonical program `A373638.P9380321383657144857` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373638 has offset 0).

The definition of A373638 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A373638.P9380321383657144857

`a(n-1)+3*a(n-2)-3*a(n-4)+a(n-6)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=5, a(4)=9, a(5)=21`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A373638

/-- `a(n-1)+3*a(n-2)-3*a(n-4)+a(n-6)` -/
def P9380321383657144857.Spec : Prop :=
  ∀ n, P9380321383657144857.a n = A373638 n

theorem P9380321383657144857.correct : P9380321383657144857.Spec := by
  intro n
  simp only [A373638]

end A373638

/-! ## A373638.P15269918741969194541

`A005708(3*n)`
-/

namespace A373638.P15269918741969194541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005708 (3 * n)

end

end A373638.P15269918741969194541

namespace A373638

/-- `A005708(3*n)` -/
def P15269918741969194541.Spec : Prop :=
  ∀ n, P15269918741969194541.a n = A373638 n

end A373638

/-! ## A373638.P5544405333504828611

`A017900(3*(n+2))`
-/

namespace A373638.P5544405333504828611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017900 (3 * (n + 2))

end

end A373638.P5544405333504828611

namespace A373638

/-- `A017900(3*(n+2))` -/
def P5544405333504828611.Spec : Prop :=
  ∀ n, P5544405333504828611.a n = A373638 n

end A373638

/-! ## A373638.P4562955430871577312

`A005708(A008585(n))%A181545(n+3)`
-/

namespace A373638.P4562955430871577312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005708 (A008585 n).toNat) (A181545 (n + 3))

end

end A373638.P4562955430871577312

namespace A373638

/-- `A005708(A008585(n))%A181545(n+3)` -/
def P4562955430871577312.Spec : Prop :=
  ∀ n, P4562955430871577312.a n = A373638 n

end A373638

/-! ## A373638.P16952541819221128901

`A005708(A008585(n))/A173119(∑[n])`
-/

namespace A373638.P16952541819221128901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005708 (A008585 n).toNat : ℚ) / (A173119 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A373638.P16952541819221128901

namespace A373638

/-- `A005708(A008585(n))/A173119(∑[n])` -/
def P16952541819221128901.Spec : Prop :=
  ∀ n, P16952541819221128901.a n = (A373638 n : ℚ)

end A373638

/-! ## A373638.P9655723315350323574

`A005708(A008585(n))/A340206(∑[n])`
-/

namespace A373638.P9655723315350323574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005708 (A008585 n).toNat : ℚ) / (A340206 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A373638.P9655723315350323574

namespace A373638

/-- `A005708(A008585(n))/A340206(∑[n])` -/
def P9655723315350323574.Spec : Prop :=
  ∀ n, P9655723315350323574.a n = (A373638 n : ℚ)

end A373638

/-!
# A373639: a(n) = Sum_{k=0..floor(n/3)} binomial(2*n-5*k,k).

The programs for A373639, the canonical program `A373639.P5479053953122826303` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373639 has offset 0).

The definition of A373639 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A373639.P5479053953122826303

`a(n-1)+2*a(n-3)-a(n-6)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2, a(4)=4, a(5)=6`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A373639

/-- `a(n-1)+2*a(n-3)-a(n-6)` -/
def P5479053953122826303.Spec : Prop :=
  ∀ n, P5479053953122826303.a n = A373639 n

theorem P5479053953122826303.correct : P5479053953122826303.Spec := by
  intro n
  simp only [A373639]

end A373639

/-! ## A373639.P1172692534942240752

`A005708(2*n)`
-/

namespace A373639.P1172692534942240752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005708 (2 * n)

end

end A373639.P1172692534942240752

namespace A373639

/-- `A005708(2*n)` -/
def P1172692534942240752.Spec : Prop :=
  ∀ n, P1172692534942240752.a n = A373639 n

end A373639

/-! ## A373639.P6787661329409227502

`A017900(2*(n+3))`
-/

namespace A373639.P6787661329409227502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017900 (2 * (n + 3))

end

end A373639.P6787661329409227502

namespace A373639

/-- `A017900(2*(n+3))` -/
def P6787661329409227502.Spec : Prop :=
  ∀ n, P6787661329409227502.a n = A373639 n

end A373639

/-! ## A373639.P12652516242668991213

`and(A005708(A005843(n)), A260196(n))`
-/

namespace A373639.P12652516242668991213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A005708 (A005843 n).toNat) (A260196 n)

end

end A373639.P12652516242668991213

namespace A373639

/-- `and(A005708(A005843(n)), A260196(n))` -/
def P12652516242668991213.Spec : Prop :=
  ∀ n, P12652516242668991213.a n = A373639 n

end A373639

/-! ## A373639.P11894316585371869052

`A005708(A005843(n))+A000007(n+4)`
-/

namespace A373639.P11894316585371869052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005708 (A005843 n).toNat + A000007 (n + 4)

end

end A373639.P11894316585371869052

namespace A373639

/-- `A005708(A005843(n))+A000007(n+4)` -/
def P11894316585371869052.Spec : Prop :=
  ∀ n, P11894316585371869052.a n = A373639 n

end A373639

/-! ## A373639.P9191768095082425734

`sqrt(A224812(4*n))`
-/

namespace A373639.P9191768095082425734
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A224812 (4 * n) : ℝ)

end

end A373639.P9191768095082425734

namespace A373639

/-- `sqrt(A224812(4*n))` -/
def P9191768095082425734.Spec : Prop :=
  ∀ n, P9191768095082425734.a n = (A373639 n : ℝ)

end A373639

/-! ## A373639.P12445032232066622372

`A193518(A299017(n+2))`
-/

namespace A373639.P12445032232066622372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193518 (A299017 (n + 2)).toNat

end

end A373639.P12445032232066622372

namespace A373639

/-- `A193518(A299017(n+2))` -/
def P12445032232066622372.Spec : Prop :=
  ∀ n, P12445032232066622372.a n = A373639 n

end A373639

/-! ## A373639.P14221638949577447563

`A193518(A179865(2*n+1))`
-/

namespace A373639.P14221638949577447563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193518 (A179865 (2 * n + 1)).toNat

end

end A373639.P14221638949577447563

namespace A373639

/-- `A193518(A179865(2*n+1))` -/
def P14221638949577447563.Spec : Prop :=
  ∀ n, P14221638949577447563.a n = A373639 n

end A373639

/-!
# A373640: a(n) = Sum_{k=0..floor(n/3)} binomial(3*n-8*k,k).

The programs for A373640, the canonical program `A373640.P8954848575006297178` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373640 has offset 0).

The definition of A373640 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A373640.P8954848575006297178

`a(n-1)+3*a(n-3)-3*a(n-6)+a(n-9)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2, a(4)=5, a(5)=8, a(6)=12, a(7)=24, a(8)=45`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A373640

/-- `a(n-1)+3*a(n-3)-3*a(n-6)+a(n-9)` -/
def P8954848575006297178.Spec : Prop :=
  ∀ n, P8954848575006297178.a n = A373640 n

theorem P8954848575006297178.correct : P8954848575006297178.Spec := by
  intro n
  simp only [A373640]

end A373640

/-! ## A373640.P9400259671380109895

`A017903(3*(n+3))`
-/

namespace A373640.P9400259671380109895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017903 (3 * (n + 3))

end

end A373640.P9400259671380109895

namespace A373640

/-- `A017903(3*(n+3))` -/
def P9400259671380109895.Spec : Prop :=
  ∀ n, P9400259671380109895.a n = A373640 n

end A373640

/-! ## A373640.P18108487380143645728

`A005711(A004273(n)+n)`
-/

namespace A373640.P18108487380143645728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005711 (A004273 n + (n : ℤ)).toNat

end

end A373640.P18108487380143645728

namespace A373640

/-- `A005711(A004273(n)+n)` -/
def P18108487380143645728.Spec : Prop :=
  ∀ n, P18108487380143645728.a n = A373640 n

end A373640

/-! ## A373640.P14814428342802493896

`A005711(A163985(n)+n)`
-/

namespace A373640.P14814428342802493896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005711 (A163985 n + (n : ℤ)).toNat

end

end A373640.P14814428342802493896

namespace A373640

/-- `A005711(A163985(n)+n)` -/
def P14814428342802493896.Spec : Prop :=
  ∀ n, P14814428342802493896.a n = A373640 n

end A373640

/-! ## A373640.P11518728022369442592

`A005711(A026488(n+1)+1)`
-/

namespace A373640.P11518728022369442592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005711 (A026488 (n + 1) + 1).toNat

end

end A373640.P11518728022369442592

namespace A373640

/-- `A005711(A026488(n+1)+1)` -/
def P11518728022369442592.Spec : Prop :=
  ∀ n, P11518728022369442592.a n = A373640 n

end A373640

/-! ## A373640.P2916253734256476568

`A005711(A033627(n+1)+1)`
-/

namespace A373640.P2916253734256476568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005711 (A033627 (n + 1) + 1).toNat

end

end A373640.P2916253734256476568

namespace A373640

/-- `A005711(A033627(n+1)+1)` -/
def P2916253734256476568.Spec : Prop :=
  ∀ n, P2916253734256476568.a n = A373640 n

end A373640

/-! ## A373640.P8692700519341178138

`A005711(A004274(n+1)+n)`
-/

namespace A373640.P8692700519341178138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005711 (A004274 (n + 1) + (n : ℤ)).toNat

end

end A373640.P8692700519341178138

namespace A373640

/-- `A005711(A004274(n+1)+n)` -/
def P8692700519341178138.Spec : Prop :=
  ∀ n, P8692700519341178138.a n = A373640 n

end A373640

/-! ## A373640.P17194325706834632560

`A005711(A004280(n+1)+n)`
-/

namespace A373640.P17194325706834632560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005711 (A004280 (n + 1) + (n : ℤ)).toNat

end

end A373640.P17194325706834632560

namespace A373640

/-- `A005711(A004280(n+1)+n)` -/
def P17194325706834632560.Spec : Prop :=
  ∀ n, P17194325706834632560.a n = A373640 n

end A373640

/-! ## A373640.P2533685380736385617

`A005711(A004281(n+1)+n)`
-/

namespace A373640.P2533685380736385617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005711 (A004281 (n + 1) + (n : ℤ)).toNat

end

end A373640.P2533685380736385617

namespace A373640

/-- `A005711(A004281(n+1)+n)` -/
def P2533685380736385617.Spec : Prop :=
  ∀ n, P2533685380736385617.a n = A373640 n

end A373640

/-!
# A373643: Number of k between consecutive primes such that k is neither squarefree nor prime powers.

The programs for A373643, the canonical program `A373643.P3675062936320699717` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373643 has offset 1).

The definition of A373643 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001223, A061398, A080101, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A373643.P3675062936320699717

`A001223(n+1)-A061398(n+1)-A080101(n+1)-1`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A373643

/-- `A001223(n+1)-A061398(n+1)-A080101(n+1)-1` -/
def P3675062936320699717.Spec : Prop :=
  ∀ n, P3675062936320699717.a n = A373643 (n + 1)

theorem P3675062936320699717.correct : P3675062936320699717.Spec := by
  intro n
  simp only [A373643, Nat.add_sub_cancel]

end A373643

/-! ## A373643.P10369023109755955487

`A061399(n+1)-A080101(n+1)`
-/

namespace A373643.P10369023109755955487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061399 (n + 1) - A080101 (n + 1)

end

end A373643.P10369023109755955487

namespace A373643

/-- `A061399(n+1)-A080101(n+1)` -/
def P10369023109755955487.Spec : Prop :=
  ∀ n, P10369023109755955487.a n = A373643 (n + 1)

theorem P10369023109755955487.correct : P10369023109755955487.Spec := by
  intro n
  simp only [A373643, Nat.add_sub_cancel, A373643.P10369023109755955487.a, A373643.P3675062936320699717.a, A001223, A001223.P5083310856331133973.a, A061398, A061398.P14693318756630178419.a, A061399, A061399.P875585814381713750.a, A080101, A080101.P17293988866175764959.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A013928, A013928.P12891540521727461604.f2, A013928.P12891540521727461604.f1, A013928.P12891540521727461604.a, A046933, A046933.P9479947770746769512.a, A366833, A366833.P13396481099192282929.f1, A366833.P13396481099192282929.a, A024620, A024620.P8536977387799856667.a, A065515, A065515.P15129427044826637405.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A373643

/-! ## A373643.P9222584195659545257

`A368748(n+1)-A061398(n+1)`
-/

namespace A373643.P9222584195659545257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368748 (n + 1) - A061398 (n + 1)

end

end A373643.P9222584195659545257

namespace A373643

/-- `A368748(n+1)-A061398(n+1)` -/
def P9222584195659545257.Spec : Prop :=
  ∀ n, P9222584195659545257.a n = A373643 (n + 1)

theorem P9222584195659545257.correct : P9222584195659545257.Spec := by
  intro n
  simp only [A373643, Nat.add_sub_cancel, A373643.P9222584195659545257.a, A373643.P3675062936320699717.a, A001223, A001223.P5083310856331133973.a, A061398, A061398.P14693318756630178419.a, A080101, A080101.P17293988866175764959.a, A368748, A368748.P2060391924120103936.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A013928, A013928.P12891540521727461604.f2, A013928.P12891540521727461604.f1, A013928.P12891540521727461604.a, A046933, A046933.P9479947770746769512.a, A366833, A366833.P13396481099192282929.f1, A366833.P13396481099192282929.a, A024620, A024620.P8536977387799856667.a, A065515, A065515.P15129427044826637405.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A373643

/-! ## A373643.P91776092432305361

`A061399(n+1)+1-A366833(n+1)`
-/

namespace A373643.P91776092432305361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061399 (n + 1) + 1 - A366833 (n + 1)

end

end A373643.P91776092432305361

namespace A373643

/-- `A061399(n+1)+1-A366833(n+1)` -/
def P91776092432305361.Spec : Prop :=
  ∀ n, P91776092432305361.a n = A373643 (n + 1)

theorem P91776092432305361.correct : P91776092432305361.Spec := by
  intro n
  simp only [A373643, Nat.add_sub_cancel, A373643.P91776092432305361.a, A373643.P3675062936320699717.a, A001223, A001223.P5083310856331133973.a, A061398, A061398.P14693318756630178419.a, A061399, A061399.P875585814381713750.a, A080101, A080101.P17293988866175764959.a, A366833, A366833.P13396481099192282929.f1, A366833.P13396481099192282929.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A013928, A013928.P12891540521727461604.f2, A013928.P12891540521727461604.f1, A013928.P12891540521727461604.a, A024620, A024620.P8536977387799856667.a, A046933, A046933.P9479947770746769512.a, A065515, A065515.P15129427044826637405.a, A025528, A025528.P16007803137134117632.f1, A025528.P16007803137134117632.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A373643

/-! ## A373643.P236213205810959962

`A001223(n+1)-(A366833(n+1)+A061398(n+1))`
-/

namespace A373643.P236213205810959962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1) - (A366833 (n + 1) + A061398 (n + 1))

end

end A373643.P236213205810959962

namespace A373643

/-- `A001223(n+1)-(A366833(n+1)+A061398(n+1))` -/
def P236213205810959962.Spec : Prop :=
  ∀ n, P236213205810959962.a n = A373643 (n + 1)

theorem P236213205810959962.correct : P236213205810959962.Spec := by
  intro n
  simp only [A373643, Nat.add_sub_cancel, A373643.P236213205810959962.a, A373643.P3675062936320699717.a, A001223, A001223.P5083310856331133973.a, A061398, A061398.P14693318756630178419.a, A080101, A080101.P17293988866175764959.a, A366833, A366833.P13396481099192282929.f1, A366833.P13396481099192282929.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A013928, A013928.P12891540521727461604.f2, A013928.P12891540521727461604.f1, A013928.P12891540521727461604.a, A024620, A024620.P8536977387799856667.a, A046933, A046933.P9479947770746769512.a, A065515, A065515.P15129427044826637405.a, A025528, A025528.P16007803137134117632.f1, A025528.P16007803137134117632.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A373643

/-!
# A373644: a(n) = Sum_{k=0..floor(n/4)} binomial(2*n-7*k,k).

The programs for A373644, the canonical program `A373644.P5335394817926422001` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373644 has offset 0).

The definition of A373644 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A373644.P5335394817926422001

`a(n-1)+2*a(n-4)-a(n-8)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=2, a(5)=4, a(6)=6, a(7)=8`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A373644

/-- `a(n-1)+2*a(n-4)-a(n-8)` -/
def P5335394817926422001.Spec : Prop :=
  ∀ n, P5335394817926422001.a n = A373644 n

theorem P5335394817926422001.correct : P5335394817926422001.Spec := by
  intro n
  simp only [A373644]

end A373644

/-! ## A373644.P5184095973844866051

`A005710(2*n)`
-/

namespace A373644.P5184095973844866051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005710 (2 * n)

end

end A373644.P5184095973844866051

namespace A373644

/-- `A005710(2*n)` -/
def P5184095973844866051.Spec : Prop :=
  ∀ n, P5184095973844866051.a n = A373644 n

end A373644

/-! ## A373644.P16735269489643699247

`A017902(2*(n+4))`
-/

namespace A373644.P16735269489643699247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017902 (2 * (n + 4))

end

end A373644.P16735269489643699247

namespace A373644

/-- `A017902(2*(n+4))` -/
def P16735269489643699247.Spec : Prop :=
  ∀ n, P16735269489643699247.a n = A373644 n

end A373644

/-! ## A373644.P9510775697518643543

`A005710(A005843(n))+C(n, A194767(n))`
-/

namespace A373644.P9510775697518643543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005710 (A005843 n).toNat + (Nat.choose n (A194767 n).toNat : ℤ)

end

end A373644.P9510775697518643543

namespace A373644

/-- `A005710(A005843(n))+C(n, A194767(n))` -/
def P9510775697518643543.Spec : Prop :=
  ∀ n, P9510775697518643543.a n = A373644 n

end A373644

/-! ## A373644.P12554326156111820118

`A005710(A005843(n))+floor(A010052(n)/3)`
-/

namespace A373644.P12554326156111820118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005710 (A005843 n).toNat + ⌊(A010052 n : ℚ) / 3⌋

end

end A373644.P12554326156111820118

namespace A373644

/-- `A005710(A005843(n))+floor(A010052(n)/3)` -/
def P12554326156111820118.Spec : Prop :=
  ∀ n, P12554326156111820118.a n = A373644 n

end A373644

/-! ## A373644.P12799835876069398832

`A005710(A005843(n))+C(n, A057851(n+1))`
-/

namespace A373644.P12799835876069398832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005710 (A005843 n).toNat + (Nat.choose n (A057851 (n + 1)).toNat : ℤ)

end

end A373644.P12799835876069398832

namespace A373644

/-- `A005710(A005843(n))+C(n, A057851(n+1))` -/
def P12799835876069398832.Spec : Prop :=
  ∀ n, P12799835876069398832.a n = A373644 n

end A373644

/-! ## A373644.P662646912720781656

`A005710(A005843(n))+C(n, A075421(n+1))`
-/

namespace A373644.P662646912720781656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005710 (A005843 n).toNat + (Nat.choose n (A075421 (n + 1)).toNat : ℤ)

end

end A373644.P662646912720781656

namespace A373644

/-- `A005710(A005843(n))+C(n, A075421(n+1))` -/
def P662646912720781656.Spec : Prop :=
  ∀ n, P662646912720781656.a n = A373644 n

end A373644

/-! ## A373644.P8118890246154055678

`A005710(A005843(n))+C(n, A122795(n+1))`
-/

namespace A373644.P8118890246154055678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005710 (A005843 n).toNat + (Nat.choose n (A122795 (n + 1)).toNat : ℤ)

end

end A373644.P8118890246154055678

namespace A373644

/-- `A005710(A005843(n))+C(n, A122795(n+1))` -/
def P8118890246154055678.Spec : Prop :=
  ∀ n, P8118890246154055678.a n = A373644 n

end A373644

/-! ## A373644.P13610143241433621571

`A005710(A005843(n))+C(n, A259754(n+1))`
-/

namespace A373644.P13610143241433621571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005710 (A005843 n).toNat + (Nat.choose n (A259754 (n + 1)).toNat : ℤ)

end

end A373644.P13610143241433621571

namespace A373644

/-- `A005710(A005843(n))+C(n, A259754(n+1))` -/
def P13610143241433621571.Spec : Prop :=
  ∀ n, P13610143241433621571.a n = A373644 n

end A373644

/-! ## A373644.P4497495197002864153

`A047752(A343384(n))+A005710(A005843(n))`
-/

namespace A373644.P4497495197002864153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047752 (A343384 n).toNat + A005710 (A005843 n).toNat

end

end A373644.P4497495197002864153

namespace A373644

/-- `A047752(A343384(n))+A005710(A005843(n))` -/
def P4497495197002864153.Spec : Prop :=
  ∀ n, P4497495197002864153.a n = A373644 n

end A373644

/-! ## A373644.P15733250355055384843

`and(A005710(A005843(n)), A290195(n))`
-/

namespace A373644.P15733250355055384843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A005710 (A005843 n).toNat) (A290195 n)

end

end A373644.P15733250355055384843

namespace A373644

/-- `and(A005710(A005843(n)), A290195(n))` -/
def P15733250355055384843.Spec : Prop :=
  ∀ n, P15733250355055384843.a n = A373644 n

end A373644

/-! ## A373644.P10011620278063742727

`A005710(A005843(n))-A010052(∑[n]+2)`
-/

namespace A373644.P10011620278063742727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005710 (A005843 n).toNat - A010052 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A373644.P10011620278063742727

namespace A373644

/-- `A005710(A005843(n))-A010052(∑[n]+2)` -/
def P10011620278063742727.Spec : Prop :=
  ∀ n, P10011620278063742727.a n = A373644 n

end A373644

/-! ## A373644.P4341695393040102426

`A005710(A005843(n))-A002262(A000217(n))`
-/

namespace A373644.P4341695393040102426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005710 (A005843 n).toNat - A002262 (A000217 n).toNat

end

end A373644.P4341695393040102426

namespace A373644

/-- `A005710(A005843(n))-A002262(A000217(n))` -/
def P4341695393040102426.Spec : Prop :=
  ∀ n, P4341695393040102426.a n = A373644 n

end A373644

/-!
# A373648: Integers k such that there are i groups of order k+i up to isomorphism, for i=1,2.

The programs for A373648, the canonical program `A373648.P8244611939884756043` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373648 has offset 1).

The definition of A373648 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 500 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A373648.P8244611939884756043

`A296023(n+1)-1`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A373648

/-- `A296023(n+1)-1` -/
def P8244611939884756043.Spec : Prop :=
  ∀ n, P8244611939884756043.a n = A373648 (n + 1)

theorem P8244611939884756043.correct : P8244611939884756043.Spec := by
  intro n
  simp only [A373648, Nat.add_sub_cancel]

end A373648

/-! ## A373648.P7333080048525785232

`xor(1, A296023(A000027(n+1)))`
-/

namespace A373648.P7333080048525785232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A296023 (A000027 (n + 1)).toNat)

end

end A373648.P7333080048525785232

namespace A373648

/-- `xor(1, A296023(A000027(n+1)))` -/
def P7333080048525785232.Spec : Prop :=
  ∀ n, P7333080048525785232.a n = A373648 (n + 1)

end A373648

/-! ## A373648.P12012728225002587034

`xor(A000034(2*n), A296023(n+1))`
-/

namespace A373648.P12012728225002587034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000034 (2 * n)) (A296023 (n + 1))

end

end A373648.P12012728225002587034

namespace A373648

/-- `xor(A000034(2*n), A296023(n+1))` -/
def P12012728225002587034.Spec : Prop :=
  ∀ n, P12012728225002587034.a n = A373648 (n + 1)

end A373648

/-! ## A373648.P6516946573982848566

`∩[A003277(n+1), A186621(n+1)]-1`
-/

namespace A373648.P6516946573982848566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003277 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186621 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A373648.P6516946573982848566

namespace A373648

/-- `∩[A003277(n+1), A186621(n+1)]-1` -/
def P6516946573982848566.Spec : Prop :=
  ∀ n, P6516946573982848566.a n = A373648 (n + 1)

end A373648

/-! ## A373648.P4997351886614112075

`xor(A001065(A000040(n+1)), A296023(n+1))`
-/

namespace A373648.P4997351886614112075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001065 (A000040 (n + 1)).toNat) (A296023 (n + 1))

end

end A373648.P4997351886614112075

namespace A373648

/-- `xor(A001065(A000040(n+1)), A296023(n+1))` -/
def P4997351886614112075.Spec : Prop :=
  ∀ n, P4997351886614112075.a n = A373648 (n + 1)

end A373648

/-! ## A373648.P6448013578163681261

`xor(A008683(A006881(n+1)), A296023(n+1))`
-/

namespace A373648.P6448013578163681261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A008683 (A006881 (n + 1)).toNat) (A296023 (n + 1))

end

end A373648.P6448013578163681261

namespace A373648

/-- `xor(A008683(A006881(n+1)), A296023(n+1))` -/
def P6448013578163681261.Spec : Prop :=
  ∀ n, P6448013578163681261.a n = A373648 (n + 1)

end A373648

/-! ## A373648.P5965894472943562440

`xor(A033879(A232503(n+1)), A296023(n+1))`
-/

namespace A373648.P5965894472943562440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A033879 (A232503 (n + 1)).toNat) (A296023 (n + 1))

end

end A373648.P5965894472943562440

namespace A373648

/-- `xor(A033879(A232503(n+1)), A296023(n+1))` -/
def P5965894472943562440.Spec : Prop :=
  ∀ n, P5965894472943562440.a n = A373648 (n + 1)

end A373648

/-! ## A373648.P11245903919020493392

`A004442(A296023(n+1))`
-/

namespace A373648.P11245903919020493392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A296023 (n + 1)).toNat

end

end A373648.P11245903919020493392

namespace A373648

/-- `A004442(A296023(n+1))` -/
def P11245903919020493392.Spec : Prop :=
  ∀ n, P11245903919020493392.a n = A373648 (n + 1)

end A373648

/-! ## A373648.P15808871402742761085

`eq[A085710(n+1), A297086(n+1)]`
-/

namespace A373648.P15808871402742761085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297086 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A373648.P15808871402742761085

namespace A373648

/-- `eq[A085710(n+1), A297086(n+1)]` -/
def P15808871402742761085.Spec : Prop :=
  ∀ n, (P15808871402742761085.a n : ℤ) = A373648 (n + 1)

end A373648

/-! ## A373648.P6204541583537706065

`eq[A000001(n+1), A068512(n+2)]`
-/

namespace A373648.P6204541583537706065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068512 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A373648.P6204541583537706065

namespace A373648

/-- `eq[A000001(n+1), A068512(n+2)]` -/
def P6204541583537706065.Spec : Prop :=
  ∀ n, (P6204541583537706065.a n : ℤ) = A373648 (n + 1)

end A373648

/-!
# A373649: Integers k such that there are i groups of order k+i up to isomorphism, for i=1,2,3.

The programs for A373649, there is no canonical definition to state claims against.
-/

/-! ## A373649.P4623509333720897246

`A296024(n+1)-1`
-/

namespace A373649.P4623509333720897246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296024 (n + 1) - 1

end

end A373649.P4623509333720897246

/-! ## A373649.P14108330728882054288

`xor(1, A296024(A000027(n+1)))`
-/

namespace A373649.P14108330728882054288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A296024 (A000027 (n + 1)).toNat)

end

end A373649.P14108330728882054288

/-! ## A373649.P15165317423455644354

`xor(A014908(n), A296024(n+1))`
-/

namespace A373649.P15165317423455644354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A014908 n) (A296024 (n + 1))

end

end A373649.P15165317423455644354

/-! ## A373649.P8914785297666597068

`xor(A015082(n), A296024(n+1))`
-/

namespace A373649.P8914785297666597068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A015082 n) (A296024 (n + 1))

end

end A373649.P8914785297666597068

/-! ## A373649.P11538595642675046601

`xor(A015156(n), A296024(n+1))`
-/

namespace A373649.P11538595642675046601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A015156 n) (A296024 (n + 1))

end

end A373649.P11538595642675046601

/-!
# A373651: Expansion of (1 - 2*x + 3*x^2)/(1 - 2*x - 3*x^2)^(5/2).

The programs for A373651, the canonical program `A373651.P4625024407428226436` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373651 has offset 0).

The definition of A373651 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A373651.P4625024407428226436

`C(n+2, 2)*A002426(n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A373651

/-- `C(n+2, 2)*A002426(n)` -/
def P4625024407428226436.Spec : Prop :=
  ∀ n, P4625024407428226436.a n = A373651 n

theorem P4625024407428226436.correct : P4625024407428226436.Spec := by
  intro n
  simp only [A373651]

end A373651

/-! ## A373651.P4187282548839141780

`(n+2)/n²*((2*n-1)*a(n-1)+3*(n+1)*a(n-2))` with `a(0)=1, a(1)=3`
-/

namespace A373651.P4187282548839141780
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 3] fun n a =>
  (n + 2 : ℚ) / (n ^ 2 : ℚ) * (((2 * n : ℤ) - 1 : ℚ) * a (n - 1) + (3 * (n + 1) : ℚ) * a (n - 2))

end

end A373651.P4187282548839141780

namespace A373651

/-- `(n+2)/n²*((2*n-1)*a(n-1)+3*(n+1)*a(n-2))` -/
def P4187282548839141780.Spec : Prop :=
  ∀ n, P4187282548839141780.a n = (A373651 n : ℚ)

end A373651

/-! ## A373651.P16828353022240247666

`∑[n+1]*A002426(n)`
-/

namespace A373651.P16828353022240247666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A002426 n

end

end A373651.P16828353022240247666

namespace A373651

/-- `∑[n+1]*A002426(n)` -/
def P16828353022240247666.Spec : Prop :=
  ∀ n, P16828353022240247666.a n = A373651 n

end A373651

/-! ## A373651.P337011016398834956

`∑[(n+1)*A391990(n)]`
-/

namespace A373651.P337011016398834956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A391990 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A373651.P337011016398834956

namespace A373651

/-- `∑[(n+1)*A391990(n)]` -/
def P337011016398834956.Spec : Prop :=
  ∀ n, P337011016398834956.a n = A373651 n

end A373651

/-! ## A373651.P5624992833643596037

`abs(∑[A085455(n)])*∑[n+1]`
-/

namespace A373651.P5624992833643596037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085455 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j| * ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A373651.P5624992833643596037

namespace A373651

/-- `abs(∑[A085455(n)])*∑[n+1]` -/
def P5624992833643596037.Spec : Prop :=
  ∀ n, P5624992833643596037.a n = A373651 n

end A373651

/-! ## A373651.P16537080160156636458

`A171128(A167614(n+1)-1)`
-/

namespace A373651.P16537080160156636458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171128 (A167614 (n + 1) - 1).toNat

end

end A373651.P16537080160156636458

namespace A373651

/-- `A171128(A167614(n+1)-1)` -/
def P16537080160156636458.Spec : Prop :=
  ∀ n, P16537080160156636458.a n = A373651 n

end A373651

/-! ## A373651.P10460599706237148251

`A135091(∑[n+3])`
-/

namespace A373651.P10460599706237148251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135091 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A373651.P10460599706237148251

namespace A373651

/-- `A135091(∑[n+3])` -/
def P10460599706237148251.Spec : Prop :=
  ∀ n, P10460599706237148251.a n = A373651 n

end A373651

/-! ## A373651.P8528856142292572183

`A002426(n)*A102839(n+1)/A001006(n)`
-/

namespace A373651.P8528856142292572183
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002426 n * A102839 (n + 1) : ℚ) / (A001006 n : ℚ)

end

end A373651.P8528856142292572183

namespace A373651

/-- `A002426(n)*A102839(n+1)/A001006(n)` -/
def P8528856142292572183.Spec : Prop :=
  ∀ n, P8528856142292572183.a n = (A373651 n : ℚ)

end A373651

/-!
# A373652: Composite numbers k for which g = gcd(f(i*c), k) = 1 or k for all i in the range 1 <= i <= c, where f(x) = Product_{j=1..c} x+j and c = floor(k^(1/4)).

The programs for A373652, there is no canonical definition to state claims against.
-/

/-! ## A373652.P1793061523364036090

`A052126(A110284(n+1)*A126990(n+1))`
-/

namespace A373652.P1793061523364036090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (A110284 (n + 1) * A126990 (n + 1)).toNat

end

end A373652.P1793061523364036090

/-!
# A373653: a(n) = Sum_{k=0..floor(n/2)} binomial(3*n-5*k-1,k).

The programs for A373653, the canonical program `A373653.P18416271850660793193` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373653 has offset 0).

The definition of A373653 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A373653.P18416271850660793193

`a(n-1)+3*a(n-2)-3*a(n-4)+a(n-6)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=4, a(4)=7, a(5)=16, a(6)=34`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A373653

/-- `a(n-1)+3*a(n-2)-3*a(n-4)+a(n-6)` -/
def P18416271850660793193.Spec : Prop :=
  ∀ n, P18416271850660793193.a n = A373653 n

theorem P18416271850660793193.correct : P18416271850660793193.Spec := by
  intro n
  simp only [A373653]

end A373653

/-! ## A373653.P6688534427424645901

`A005708(A004273(n)+n)`
-/

namespace A373653.P6688534427424645901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005708 (A004273 n + (n : ℤ)).toNat

end

end A373653.P6688534427424645901

namespace A373653

/-- `A005708(A004273(n)+n)` -/
def P6688534427424645901.Spec : Prop :=
  ∀ n, P6688534427424645901.a n = A373653 n

end A373653

/-! ## A373653.P3444072687368119214

`A005708(A163985(n)+n)`
-/

namespace A373653.P3444072687368119214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005708 (A163985 n + (n : ℤ)).toNat

end

end A373653.P3444072687368119214

namespace A373653

/-- `A005708(A163985(n)+n)` -/
def P3444072687368119214.Spec : Prop :=
  ∀ n, P3444072687368119214.a n = A373653 n

end A373653

/-! ## A373653.P7935519997480335513

`A005708(A004274(n+1)+n)`
-/

namespace A373653.P7935519997480335513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005708 (A004274 (n + 1) + (n : ℤ)).toNat

end

end A373653.P7935519997480335513

namespace A373653

/-- `A005708(A004274(n+1)+n)` -/
def P7935519997480335513.Spec : Prop :=
  ∀ n, P7935519997480335513.a n = A373653 n

end A373653

/-! ## A373653.P5187032876652201214

`A005708(A004280(n+1)+n)`
-/

namespace A373653.P5187032876652201214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005708 (A004280 (n + 1) + (n : ℤ)).toNat

end

end A373653.P5187032876652201214

namespace A373653

/-- `A005708(A004280(n+1)+n)` -/
def P5187032876652201214.Spec : Prop :=
  ∀ n, P5187032876652201214.a n = A373653 n

end A373653

/-! ## A373653.P17661258295246081572

`A005708(A014681(2*n)+n)`
-/

namespace A373653.P17661258295246081572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005708 (A014681 (2 * n) + (n : ℤ)).toNat

end

end A373653.P17661258295246081572

namespace A373653

/-- `A005708(A014681(2*n)+n)` -/
def P17661258295246081572.Spec : Prop :=
  ∀ n, P17661258295246081572.a n = A373653 n

end A373653

/-! ## A373653.P5352764022391736612

`A005708(A004281(2*n+1)-n)`
-/

namespace A373653.P5352764022391736612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005708 (A004281 (2 * n + 1) - (n : ℤ)).toNat

end

end A373653.P5352764022391736612

namespace A373653

/-- `A005708(A004281(2*n+1)-n)` -/
def P5352764022391736612.Spec : Prop :=
  ∀ n, P5352764022391736612.a n = A373653 n

end A373653

/-!
# A373654: a(n) = Sum_{k=0..floor(n/3)} binomial(2*n-5*k-1,k).

The programs for A373654, the canonical program `A373654.P7698646691862035066` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373654 has offset 0).

The definition of A373654 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A373654.P7698646691862035066

`a(n-1)+2*a(n-3)-a(n-6)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=3, a(5)=5, a(6)=7`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A373654

/-- `a(n-1)+2*a(n-3)-a(n-6)` -/
def P7698646691862035066.Spec : Prop :=
  ∀ n, P7698646691862035066.a n = A373654 n

theorem P7698646691862035066.correct : P7698646691862035066.Spec := by
  intro n
  simp only [A373654]

end A373654

/-! ## A373654.P596593878811915920

`A005708(A004273(n))`
-/

namespace A373654.P596593878811915920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005708 (A004273 n).toNat

end

end A373654.P596593878811915920

namespace A373654

/-- `A005708(A004273(n))` -/
def P596593878811915920.Spec : Prop :=
  ∀ n, P596593878811915920.a n = A373654 n

end A373654

/-! ## A373654.P10360227222295644376

`A005708(A163985(n))`
-/

namespace A373654.P10360227222295644376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005708 (A163985 n).toNat

end

end A373654.P10360227222295644376

namespace A373654

/-- `A005708(A163985(n))` -/
def P10360227222295644376.Spec : Prop :=
  ∀ n, P10360227222295644376.a n = A373654 n

end A373654

/-! ## A373654.P15975956348971551205

`A005708(A004274(n+1))`
-/

namespace A373654.P15975956348971551205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005708 (A004274 (n + 1)).toNat

end

end A373654.P15975956348971551205

namespace A373654

/-- `A005708(A004274(n+1))` -/
def P15975956348971551205.Spec : Prop :=
  ∀ n, P15975956348971551205.a n = A373654 n

end A373654

/-! ## A373654.P15104990639266523029

`A005708(A004280(n+1))`
-/

namespace A373654.P15104990639266523029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005708 (A004280 (n + 1)).toNat

end

end A373654.P15104990639266523029

namespace A373654

/-- `A005708(A004280(n+1))` -/
def P15104990639266523029.Spec : Prop :=
  ∀ n, P15104990639266523029.a n = A373654 n

end A373654

/-! ## A373654.P3262459212217786430

`A005708(A004281(n+1))`
-/

namespace A373654.P3262459212217786430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005708 (A004281 (n + 1)).toNat

end

end A373654.P3262459212217786430

namespace A373654

/-- `A005708(A004281(n+1))` -/
def P3262459212217786430.Spec : Prop :=
  ∀ n, P3262459212217786430.a n = A373654 n

end A373654

/-! ## A373654.P10917257475770956040

`A005708(A014681(2*n))`
-/

namespace A373654.P10917257475770956040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005708 (A014681 (2 * n)).toNat

end

end A373654.P10917257475770956040

namespace A373654

/-- `A005708(A014681(2*n))` -/
def P10917257475770956040.Spec : Prop :=
  ∀ n, P10917257475770956040.a n = A373654 n

end A373654

/-! ## A373654.P14283819646597614553

`A005708(record[A005131(n)-1])`
-/

namespace A373654.P14283819646597614553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005131 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005708 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A373654.P14283819646597614553

namespace A373654

/-- `A005708(record[A005131(n)-1])` -/
def P14283819646597614553.Spec : Prop :=
  ∀ n, P14283819646597614553.a n = A373654 n

end A373654

/-! ## A373654.P14337737083295129347

`A005708(A028310(2*n)-1)`
-/

namespace A373654.P14337737083295129347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005708 (A028310 (2 * n) - 1).toNat

end

end A373654.P14337737083295129347

namespace A373654

/-- `A005708(A028310(2*n)-1)` -/
def P14337737083295129347.Spec : Prop :=
  ∀ n, P14337737083295129347.a n = A373654 n

end A373654

/-! ## A373654.P8157948382813527123

`A005708(record[A348717(n+1)-1])`
-/

namespace A373654.P8157948382813527123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348717 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005708 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A373654.P8157948382813527123

namespace A373654

/-- `A005708(record[A348717(n+1)-1])` -/
def P8157948382813527123.Spec : Prop :=
  ∀ n, P8157948382813527123.a n = A373654 n

end A373654

/-!
# A373655: a(n) = Sum_{k=0..floor(n/3)} binomial(3*n-8*k-1,k).

The programs for A373655, the canonical program `A373655.P6372651817974795595` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373655 has offset 0).

The definition of A373655 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A373655.P6372651817974795595

`a(n-1)+3*a(n-3)-3*a(n-6)+a(n-9)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=4, a(5)=7, a(6)=10, a(7)=19, a(8)=37, a(9)=64`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A373655

/-- `a(n-1)+3*a(n-3)-3*a(n-6)+a(n-9)` -/
def P6372651817974795595.Spec : Prop :=
  ∀ n, P6372651817974795595.a n = A373655 n

theorem P6372651817974795595.correct : P6372651817974795595.Spec := by
  intro n
  simp only [A373655]

end A373655

/-! ## A373655.P13086954316185414734

`A005711(comp[2*n+3]+n)`
-/

namespace A373655.P13086954316185414734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005711 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n)

end

end A373655.P13086954316185414734

namespace A373655

/-- `A005711(comp[2*n+3]+n)` -/
def P13086954316185414734.Spec : Prop :=
  ∀ n, P13086954316185414734.a n = A373655 n

end A373655

/-! ## A373655.P9796935674325642346

`A005711(A026488(n+1))+A000038(3*n+1)`
-/

namespace A373655.P9796935674325642346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005711 (A026488 (n + 1)).toNat + A000038 (3 * n + 1)

end

end A373655.P9796935674325642346

namespace A373655

/-- `A005711(A026488(n+1))+A000038(3*n+1)` -/
def P9796935674325642346.Spec : Prop :=
  ∀ n, P9796935674325642346.a n = A373655 n

end A373655

/-! ## A373655.P13215040755944385943

`A182097(2*n)-A329343(A034919(n+1))`
-/

namespace A373655.P13215040755944385943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182097 (2 * n) - A329343 (A034919 (n + 1)).toNat

end

end A373655.P13215040755944385943

namespace A373655

/-- `A182097(2*n)-A329343(A034919(n+1))` -/
def P13215040755944385943.Spec : Prop :=
  ∀ n, P13215040755944385943.a n = A373655 n

end A373655

/-! ## A373655.P11701876743904927328

`A175740(3*n+1)-A248623(A175740(3*n+1))`
-/

namespace A373655.P11701876743904927328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175740 (3 * n + 1) - A248623 (A175740 (3 * n + 1)).toNat

end

end A373655.P11701876743904927328

namespace A373655

/-- `A175740(3*n+1)-A248623(A175740(3*n+1))` -/
def P11701876743904927328.Spec : Prop :=
  ∀ n, P11701876743904927328.a n = A373655 n

end A373655

/-!
# A373656: a(n) is the n-th prime after the n-th semiprime.

The programs for A373656, the canonical program `A373656.P2215253318500419110` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373656 has offset 1).

The definition of A373656 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001358, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A373656.P2215253318500419110

`A000040(n+1+A000720(A001358(n+1)))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A373656

/-- `A000040(n+1+A000720(A001358(n+1)))` -/
def P2215253318500419110.Spec : Prop :=
  ∀ n, P2215253318500419110.a n = A373656 (n + 1)

theorem P2215253318500419110.correct : P2215253318500419110.Spec := by
  intro n
  simp only [A373656, Nat.add_sub_cancel]

end A373656

/-! ## A373656.P4040009783975802834

`A000040(∑[A176451(n+1)+1])`
-/

namespace A373656.P4040009783975802834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176451 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A373656.P4040009783975802834

namespace A373656

/-- `A000040(∑[A176451(n+1)+1])` -/
def P4040009783975802834.Spec : Prop :=
  ∀ n, P4040009783975802834.a n = A373656 (n + 1)

end A373656

/-! ## A373656.P15032335706126271116

`A000040(A111939(n+1)+n+1)`
-/

namespace A373656.P15032335706126271116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A111939 (n + 1) + (n + 1 : ℤ)).toNat

end

end A373656.P15032335706126271116

namespace A373656

/-- `A000040(A111939(n+1)+n+1)` -/
def P15032335706126271116.Spec : Prop :=
  ∀ n, P15032335706126271116.a n = A373656 (n + 1)

theorem P15032335706126271116.correct : P15032335706126271116.Spec := by
  intro n
  simp only [A373656, Nat.add_sub_cancel, A373656.P15032335706126271116.a, A373656.P2215253318500419110.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A001358, A001358.P632087320844056370.a, A111939, A111939.P7541202206482791046.a, A088707, A088707.P7291141647877559993.a, A100493, A100493.P3342029395979233194.f1, A100493.P3342029395979233194.a, A072000, A072000.P3706059858088101648.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A373656

/-! ## A373656.P2673216136710200279

`A000040(comp[A111457(n+1)+n]+1)`
-/

namespace A373656.P2673216136710200279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111457 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A373656.P2673216136710200279

namespace A373656

/-- `A000040(comp[A111457(n+1)+n]+1)` -/
def P2673216136710200279.Spec : Prop :=
  ∀ n, P2673216136710200279.a n = A373656 (n + 1)

end A373656

/-! ## A373656.P15436766950960961608

`A008578(∑[A176451(n+1)+1]+1)`
-/

namespace A373656.P15436766950960961608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176451 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A373656.P15436766950960961608

namespace A373656

/-- `A008578(∑[A176451(n+1)+1]+1)` -/
def P15436766950960961608.Spec : Prop :=
  ∀ n, P15436766950960961608.a n = A373656 (n + 1)

end A373656

/-! ## A373656.P16275209908496312266

`A000720(A073123(A111939(n+1)+n+1))`
-/

namespace A373656.P16275209908496312266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A073123 (A111939 (n + 1) + (n + 1 : ℤ)).toNat).toNat

end

end A373656.P16275209908496312266

namespace A373656

/-- `A000720(A073123(A111939(n+1)+n+1))` -/
def P16275209908496312266.Spec : Prop :=
  ∀ n, P16275209908496312266.a n = A373656 (n + 1)

end A373656

/-! ## A373656.P2660668398734999210

`A008578(A176539(n+2))`
-/

namespace A373656.P2660668398734999210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A176539 (n + 2)).toNat

end

end A373656.P2660668398734999210

namespace A373656

/-- `A008578(A176539(n+2))` -/
def P2660668398734999210.Spec : Prop :=
  ∀ n, P2660668398734999210.a n = A373656 (n + 1)

end A373656

/-! ## A373656.P18444422331320843000

`A000040(A176539(n+2)-1)`
-/

namespace A373656.P18444422331320843000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A176539 (n + 2) - 1).toNat

end

end A373656.P18444422331320843000

namespace A373656

/-- `A000040(A176539(n+2)-1)` -/
def P18444422331320843000.Spec : Prop :=
  ∀ n, P18444422331320843000.a n = A373656 (n + 1)

end A373656

/-!
# A373658: a(n) = Sum_{k=0..n} binomial(n, k)*A050446(n, n - k). Alternating row sums of A373660.

The programs for A373658, there is no canonical definition to state claims against.
-/

/-! ## A373658.P10687998260322852423

`∑[A347647(A018019(n))]`
-/

namespace A373658.P10687998260322852423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347647 (A018019 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A373658.P10687998260322852423

/-!
# A373659: a(n) = A050446(n, n) = A050447(n, n).

The programs for A373659, there is no canonical definition to state claims against.
-/

/-! ## A373659.P18126506273082529062

`A050446(∑[4*n])`
-/

namespace A373659.P18126506273082529062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050446 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A373659.P18126506273082529062

/-! ## A373659.P1596640858251501417

`A050447(∑[4*n])`
-/

namespace A373659.P1596640858251501417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050447 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A373659.P1596640858251501417

/-! ## A373659.P12585406968649849084

`record[A050446(xor(1, ceil(n²/2)))]`
-/

namespace A373659.P12585406968649849084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050446 (Int.xor 1 ⌈(n ^ 2 : ℚ) / 2⌉).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A373659.P12585406968649849084

/-! ## A373659.P3362179082013425707

`record[A050447(A286145(n))]`
-/

namespace A373659.P3362179082013425707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050447 (A286145 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A373659.P3362179082013425707

/-! ## A373659.P8811028198651097934

`record[A003982(n)*A050447(n)]`
-/

namespace A373659.P8811028198651097934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A050447 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A373659.P8811028198651097934

/-!
# A373662: a(n) = (1 + (n+1)^2 - (n-2)*(-1)^n)/2.

The programs for A373662, the canonical program `A373662.P2274753980416107293` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373662 has offset 1).

The definition of A373662 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(1+(n+2)²-(n-1)*(-1)^(n+1))/2` (program `A373662.P3870066007847016378`, by `A373662.P3870066007847016378.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A373662.P3870066007847016378

`(1+(n+2)²-(n-1)*(-1)^(n+1))/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A373662.P3870066007847016378
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((1 + (n + 2) ^ 2 : ℤ) - ((n : ℤ) - 1) * (-1) ^ (n + 1) : ℚ) / 2

end

end A373662.P3870066007847016378

namespace A373662

/-- `(1+(n+2)²-(n-1)*(-1)^(n+1))/2` -/
def P3870066007847016378.Spec : Prop :=
  ∀ n, P3870066007847016378.a n = (A373662 (n + 1) : ℚ)

theorem P3870066007847016378.correct : P3870066007847016378.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A373662, Nat.add_sub_cancel, A373662.P3870066007847016378.a, A373662.P2274753980416107293.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A373662, Nat.add_sub_cancel, A373662.P3870066007847016378.a, A373662.P2274753980416107293.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A373662

/-! ## A373662.P2274753980416107293

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=2, a(1)=5, a(2)=9, a(3)=12, a(4)=20`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A373662

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P2274753980416107293.Spec : Prop :=
  ∀ n, P2274753980416107293.a n = A373662 (n + 1)

theorem P2274753980416107293.correct : P2274753980416107293.Spec := by
  intro n
  simp only [A373662, Nat.add_sub_cancel]

end A373662

/-! ## A373662.P9153805877915827862

`A131179(n+2)+(-1)^(n+1)`
-/

namespace A373662.P9153805877915827862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131179 (n + 2) + (-1) ^ (n + 1)

end

end A373662.P9153805877915827862

namespace A373662

/-- `A131179(n+2)+(-1)^(n+1)` -/
def P9153805877915827862.Spec : Prop :=
  ∀ n, P9153805877915827862.a n = A373662 (n + 1)

end A373662

/-! ## A373662.P16315126818617326884

`C(n+3, 2)-C(n, and(1, n))`
-/

namespace A373662.P16315126818617326884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 3) 2 : ℤ) - (Nat.choose n (Nat.land 1 n) : ℤ)

end

end A373662.P16315126818617326884

namespace A373662

/-- `C(n+3, 2)-C(n, and(1, n))` -/
def P16315126818617326884.Spec : Prop :=
  ∀ n, P16315126818617326884.a n = A373662 (n + 1)

end A373662

/-! ## A373662.P11797348939202637947

`a(n-2)+or(3, 2*n)` with `a(0)=2, a(1)=5`
-/

namespace A373662.P11797348939202637947
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 5] fun n a =>
  a (n - 2) + Nat.lor 3 (2 * n)

end

end A373662.P11797348939202637947

namespace A373662

/-- `a(n-2)+or(3, 2*n)` -/
def P11797348939202637947.Spec : Prop :=
  ∀ n, (P11797348939202637947.a n : ℤ) = A373662 (n + 1)

end A373662

/-! ## A373662.P14689060029594686207

`∑[n+2]-(n-1)*and(1, n)`
-/

namespace A373662.P14689060029594686207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((n : ℤ) - 1) * (Nat.land 1 n : ℤ)

end

end A373662.P14689060029594686207

namespace A373662

/-- `∑[n+2]-(n-1)*and(1, n)` -/
def P14689060029594686207.Spec : Prop :=
  ∀ n, P14689060029594686207.a n = A373662 (n + 1)

end A373662

/-! ## A373662.P16554810851879624415

`∑[n+1]+gcd(n+1, xor(1, n))`
-/

namespace A373662.P16554810851879624415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.gcd (n + 1) (Nat.xor 1 n)

end

end A373662.P16554810851879624415

namespace A373662

/-- `∑[n+1]+gcd(n+1, xor(1, n))` -/
def P16554810851879624415.Spec : Prop :=
  ∀ n, (P16554810851879624415.a n : ℤ) = A373662 (n + 1)

end A373662

/-! ## A373662.P11666742650835047852

`∑[n+2]-lcm(n-1, and(1, n))`
-/

namespace A373662.P11666742650835047852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (Int.lcm ((n : ℤ) - 1) (Nat.land 1 n : ℤ) : ℤ)

end

end A373662.P11666742650835047852

namespace A373662

/-- `∑[n+2]-lcm(n-1, and(1, n))` -/
def P11666742650835047852.Spec : Prop :=
  ∀ n, P11666742650835047852.a n = A373662 (n + 1)

end A373662

/-! ## A373662.P4699071975602487602

`floor(∑[n+1]²/(a(n-1)-1))` with `a(0)=2, a(1)=5`
-/

namespace A373662.P4699071975602487602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 5] fun n a =>
  ⌊(((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℚ) / (a (n - 1) - 1 : ℚ)⌋

end

end A373662.P4699071975602487602

namespace A373662

/-- `floor(∑[n+1]²/(a(n-1)-1))` -/
def P4699071975602487602.Spec : Prop :=
  ∀ n, P4699071975602487602.a n = A373662 (n + 1)

end A373662

/-! ## A373662.P6172092016428728799

`A265724(n)+2`
-/

namespace A373662.P6172092016428728799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265724 n + 2

end

end A373662.P6172092016428728799

namespace A373662

/-- `A265724(n)+2` -/
def P6172092016428728799.Spec : Prop :=
  ∀ n, P6172092016428728799.a n = A373662 (n + 1)

end A373662

/-! ## A373662.P15860495279861350412

`∑[A265723(n)]+2`
-/

namespace A373662.P15860495279861350412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265723 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A373662.P15860495279861350412

namespace A373662

/-- `∑[A265723(n)]+2` -/
def P15860495279861350412.Spec : Prop :=
  ∀ n, P15860495279861350412.a n = A373662 (n + 1)

end A373662

/-! ## A373662.P14094122589115214041

`∑[A267354(n)+2]`
-/

namespace A373662.P14094122589115214041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267354 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A373662.P14094122589115214041

namespace A373662

/-- `∑[A267354(n)+2]` -/
def P14094122589115214041.Spec : Prop :=
  ∀ n, P14094122589115214041.a n = A373662 (n + 1)

end A373662

/-! ## A373662.P6148194766905603020

`A266259(n)+2+n`
-/

namespace A373662.P6148194766905603020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266259 n + 2 + (n : ℤ)

end

end A373662.P6148194766905603020

namespace A373662

/-- `A266259(n)+2+n` -/
def P6148194766905603020.Spec : Prop :=
  ∀ n, P6148194766905603020.a n = A373662 (n + 1)

end A373662

/-! ## A373662.P12164905480471657821

`A141310(n)+∑[n+1]`
-/

namespace A373662.P12164905480471657821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A373662.P12164905480471657821

namespace A373662

/-- `A141310(n)+∑[n+1]` -/
def P12164905480471657821.Spec : Prop :=
  ∀ n, P12164905480471657821.a n = A373662 (n + 1)

end A373662

/-! ## A373662.P17142839270773249006

`A267353(n)+A057174(n)`
-/

namespace A373662.P17142839270773249006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267353 n + A057174 n

end

end A373662.P17142839270773249006

namespace A373662

/-- `A267353(n)+A057174(n)` -/
def P17142839270773249006.Spec : Prop :=
  ∀ n, P17142839270773249006.a n = A373662 (n + 1)

end A373662

/-! ## A373662.P16217795153989558122

`A113497(n+1)+A061925(n)`
-/

namespace A373662.P16217795153989558122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113497 (n + 1) + A061925 n

end

end A373662.P16217795153989558122

namespace A373662

/-- `A113497(n+1)+A061925(n)` -/
def P16217795153989558122.Spec : Prop :=
  ∀ n, P16217795153989558122.a n = A373662 (n + 1)

end A373662

/-! ## A373662.P9907321333536888211

`A135276(n)+A082742(n+1)`
-/

namespace A373662.P9907321333536888211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135276 n + A082742 (n + 1)

end

end A373662.P9907321333536888211

namespace A373662

/-- `A135276(n)+A082742(n+1)` -/
def P9907321333536888211.Spec : Prop :=
  ∀ n, P9907321333536888211.a n = A373662 (n + 1)

end A373662

/-! ## A373662.P3346309344675295443

`A247375(n)+A047211(n+1)`
-/

namespace A373662.P3346309344675295443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247375 n + A047211 (n + 1)

end

end A373662.P3346309344675295443

namespace A373662

/-- `A247375(n)+A047211(n+1)` -/
def P3346309344675295443.Spec : Prop :=
  ∀ n, P3346309344675295443.a n = A373662 (n + 1)

end A373662

/-! ## A373662.P7447833876464007942

`A236453(n)+A114752(n+1)`
-/

namespace A373662.P7447833876464007942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236453 n + A114752 (n + 1)

end

end A373662.P7447833876464007942

namespace A373662

/-- `A236453(n)+A114752(n+1)` -/
def P7447833876464007942.Spec : Prop :=
  ∀ n, P7447833876464007942.a n = A373662 (n + 1)

end A373662

/-!
# A373663: a(n) = (1 + (n+2)^2 + (n-3)*(-1)^n)/2.

The programs for A373663, the canonical program `A373663.P7785247275653184876` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373663 has offset 1).

The definition of A373663 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(1+(n+3)²+(n-2)*(-1)^(n+1))/2` (program `A373663.P5552529770768628180`, by `A373663.P5552529770768628180.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A373663.P5552529770768628180

`(1+(n+3)²+(n-2)*(-1)^(n+1))/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A373663.P5552529770768628180
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((1 + (n + 3) ^ 2 : ℤ) + ((n : ℤ) - 2) * (-1) ^ (n + 1) : ℚ) / 2

end

end A373663.P5552529770768628180

namespace A373663

/-- `(1+(n+3)²+(n-2)*(-1)^(n+1))/2` -/
def P5552529770768628180.Spec : Prop :=
  ∀ n, P5552529770768628180.a n = (A373663 (n + 1) : ℚ)

theorem P5552529770768628180.correct : P5552529770768628180.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A373663, Nat.add_sub_cancel, A373663.P5552529770768628180.a, A373663.P7785247275653184876.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A373663, Nat.add_sub_cancel, A373663.P5552529770768628180.a, A373663.P7785247275653184876.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A373663

/-! ## A373663.P7785247275653184876

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=6, a(1)=8, a(2)=13, a(3)=19, a(4)=24`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A373663

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P7785247275653184876.Spec : Prop :=
  ∀ n, P7785247275653184876.a n = A373663 (n + 1)

theorem P7785247275653184876.correct : P7785247275653184876.Spec := by
  intro n
  simp only [A373663, Nat.add_sub_cancel]

end A373663

/-! ## A373663.P12786772875952212021

`A373662(n+2)-(-1)^(n+1)`
-/

namespace A373663.P12786772875952212021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373662 (n + 2) - (-1) ^ (n + 1)

end

end A373663.P12786772875952212021

namespace A373663

/-- `A373662(n+2)-(-1)^(n+1)` -/
def P12786772875952212021.Spec : Prop :=
  ∀ n, P12786772875952212021.a n = A373663 (n + 1)

end A373663

/-! ## A373663.P6714659839780065599

`A167499(n)+2*A029578(n)`
-/

namespace A373663.P6714659839780065599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167499 n + 2 * A029578 n

end

end A373663.P6714659839780065599

namespace A373663

/-- `A167499(n)+2*A029578(n)` -/
def P6714659839780065599.Spec : Prop :=
  ∀ n, P6714659839780065599.a n = A373663 (n + 1)

end A373663

/-! ## A373663.P2856171702396166785

`A167614(n+1)+A124625(n)-1`
-/

namespace A373663.P2856171702396166785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167614 (n + 1) + (A124625 n - 1)

end

end A373663.P2856171702396166785

namespace A373663

/-- `A167614(n+1)+A124625(n)-1` -/
def P2856171702396166785.Spec : Prop :=
  ∀ n, P2856171702396166785.a n = A373663 (n + 1)

end A373663

/-! ## A373663.P18224818090379696512

`A266596(n+1)+4`
-/

namespace A373663.P18224818090379696512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266596 (n + 1) + 4

end

end A373663.P18224818090379696512

namespace A373663

/-- `A266596(n+1)+4` -/
def P18224818090379696512.Spec : Prop :=
  ∀ n, P18224818090379696512.a n = A373663 (n + 1)

end A373663

/-! ## A373663.P5750135649576705348

`∑[A266595(n+1)]+4`
-/

namespace A373663.P5750135649576705348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266595 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 4

end

end A373663.P5750135649576705348

namespace A373663

/-- `∑[A266595(n+1)]+4` -/
def P5750135649576705348.Spec : Prop :=
  ∀ n, P5750135649576705348.a n = A373663 (n + 1)

end A373663

/-! ## A373663.P8654511437776079196

`A374084(n+2)+A128918(n)-A131179(n)`
-/

namespace A373663.P8654511437776079196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374084 (n + 2) + (A128918 n - A131179 n)

end

end A373663.P8654511437776079196

namespace A373663

/-- `A374084(n+2)+A128918(n)-A131179(n)` -/
def P8654511437776079196.Spec : Prop :=
  ∀ n, P8654511437776079196.a n = A373663 (n + 1)

end A373663

/-! ## A373663.P3017272523247672913

`A316671(n+1)+A316671(n+2)-A131179(n)`
-/

namespace A373663.P3017272523247672913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316671 (n + 1) + (A316671 (n + 2) - A131179 n)

end

end A373663.P3017272523247672913

namespace A373663

/-- `A316671(n+1)+A316671(n+2)-A131179(n)` -/
def P3017272523247672913.Spec : Prop :=
  ∀ n, P3017272523247672913.a n = A373663 (n + 1)

end A373663

/-! ## A373663.P6643870982505820021

`A374005(n+1)+A373662(n+2)-A374004(n+2)`
-/

namespace A373663.P6643870982505820021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374005 (n + 1) + (A373662 (n + 2) - A374004 (n + 2))

end

end A373663.P6643870982505820021

namespace A373663

/-- `A374005(n+1)+A373662(n+2)-A374004(n+2)` -/
def P6643870982505820021.Spec : Prop :=
  ∀ n, P6643870982505820021.a n = A373663 (n + 1)

end A373663

/-! ## A373663.P17310879635490635304

`A374008(n+1)+A373662(n+2)-A374007(n+2)`
-/

namespace A373663.P17310879635490635304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374008 (n + 1) + (A373662 (n + 2) - A374007 (n + 2))

end

end A373663.P17310879635490635304

namespace A373663

/-- `A374008(n+1)+A373662(n+2)-A374007(n+2)` -/
def P17310879635490635304.Spec : Prop :=
  ∀ n, P17310879635490635304.a n = A373663 (n + 1)

end A373663

/-! ## A373663.P10606380193141635158

`A114113(n+3)-A141310(n)`
-/

namespace A373663.P10606380193141635158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114113 (n + 3) - A141310 n

end

end A373663.P10606380193141635158

namespace A373663

/-- `A114113(n+3)-A141310(n)` -/
def P10606380193141635158.Spec : Prop :=
  ∀ n, P10606380193141635158.a n = A373663 (n + 1)

end A373663

/-! ## A373663.P11127322252909796655

`A056011(A167614(n+1))`
-/

namespace A373663.P11127322252909796655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056011 (A167614 (n + 1)).toNat

end

end A373663.P11127322252909796655

namespace A373663

/-- `A056011(A167614(n+1))` -/
def P11127322252909796655.Spec : Prop :=
  ∀ n, P11127322252909796655.a n = A373663 (n + 1)

end A373663

/-! ## A373663.P10434238847135683060

`A020705(A266596(n+1))`
-/

namespace A373663.P10434238847135683060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020705 (A266596 (n + 1)).toNat

end

end A373663.P10434238847135683060

namespace A373663

/-- `A020705(A266596(n+1))` -/
def P10434238847135683060.Spec : Prop :=
  ∀ n, P10434238847135683060.a n = A373663 (n + 1)

end A373663

/-! ## A373663.P4539506851772056043

`A056011(A000124(n+2)+2)`
-/

namespace A373663.P4539506851772056043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056011 (A000124 (n + 2) + 2).toNat

end

end A373663.P4539506851772056043

namespace A373663

/-- `A056011(A000124(n+2)+2)` -/
def P4539506851772056043.Spec : Prop :=
  ∀ n, P4539506851772056043.a n = A373663 (n + 1)

end A373663

/-! ## A373663.P7502931992432389526

`A056023(A034856(n+2))`
-/

namespace A373663.P7502931992432389526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056023 (A034856 (n + 2)).toNat

end

end A373663.P7502931992432389526

namespace A373663

/-- `A056023(A034856(n+2))` -/
def P7502931992432389526.Spec : Prop :=
  ∀ n, P7502931992432389526.a n = A373663 (n + 1)

end A373663

/-!
# A373665: Positive integers that cannot be written as a sum of a practical number and a 16-gonal number.

The programs for A373665, there is no canonical definition to state claims against.
-/

/-! ## A373665.P3930568354261328971

`eq[A003415(floor(n/2)), A376306(2*n+3)]`
-/

namespace A373665.P3930568354261328971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 ⌊(n : ℚ) / 2⌋.toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376306 (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A373665.P3930568354261328971

/-! ## A373665.P467589236919176360

`A373636(A027746(3*n+4))+A373634(n+1)`
-/

namespace A373665.P467589236919176360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373636 (A027746 (3 * n + 4)).toNat + A373634 (n + 1)

end

end A373665.P467589236919176360

/-! ## A373665.P15351219216487203246

`A373634(n+1)+A373604(A373577(n))`
-/

namespace A373665.P15351219216487203246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373634 (n + 1) + A373604 (A373577 n).toNat

end

end A373665.P15351219216487203246

/-! ## A373665.P6894474676047217291

`or(A359619(A373644(n)), A373634(n+1))`
-/

namespace A373665.P6894474676047217291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A359619 (A373644 n).toNat) (A373634 (n + 1))

end

end A373665.P6894474676047217291

/-! ## A373665.P16079851700364039771

`A373634(n+1)+A373591(A373644(3*(n+1)))`
-/

namespace A373665.P16079851700364039771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373634 (n + 1) + A373591 (A373644 (3 * (n + 1))).toNat

end

end A373665.P16079851700364039771

/-!
# A373668: Expansion of e.g.f. exp(x / (1 - x^2)^3).

The programs for A373668, there is no canonical definition to state claims against.
-/

/-! ## A373668.P4120744149642677561

`C(A245507(n), A176331(A000292(n)))`
-/

namespace A373668.P4120744149642677561
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A245507 n).toNat (A176331 (A000292 n).toNat).toNat

end

end A373668.P4120744149642677561

/-! ## A373668.P14916932854371134041

`C(A245507(n), A133501(A245503(n)))`
-/

namespace A373668.P14916932854371134041
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A245507 n).toNat (A133501 (A245503 n).toNat).toNat

end

end A373668.P14916932854371134041

/-!
# A373669: Least k such that the k-th maximal run of non-prime-powers has length n. Position of first appearance of n in A110969, and the sequence ends if there is none.

The programs for A373669, there is no canonical definition to state claims against.
-/

/-! ## A373669.P18018916514406468960

`A373670(A377271(n+1))`
-/

namespace A373669.P18018916514406468960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373670 (A377271 (n + 1)).toNat

end

end A373669.P18018916514406468960

/-! ## A373669.P16749706665204025775

`A373670(∑[A158576(n+1)])`
-/

namespace A373669.P16749706665204025775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158576 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373670 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A373669.P16749706665204025775

/-!
# A373671: Length of the n-th maximal antirun of prime-powers.

The programs for A373671, there is no canonical definition to state claims against.
-/

/-! ## A373671.P12311170044582418725

`Δ[A095874(A006549(n+1))]`
-/

namespace A373671.P12311170044582418725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095874 (A006549 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A373671.P12311170044582418725

/-!
# A373672: Length of the n-th maximal antirun of non-prime-powers.

The programs for A373672, there is no canonical definition to state claims against.
-/

/-! ## A373672.P4673977423405503446

`Δ[comp[A375928(n+1)]]`
-/

namespace A373672.P4673977423405503446
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375928 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A373672.P4673977423405503446

/-! ## A373672.P2302191479503317931

`Δ[comp[∑[A110969(n+1)]]]`
-/

namespace A373672.P2302191479503317931
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110969 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A373672.P2302191479503317931

/-! ## A373672.P9391389285036157816

`Δ[comp[A000961(n+1)-n]]`
-/

namespace A373672.P9391389285036157816
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1) - (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A373672.P9391389285036157816

/-! ## A373672.P9563846254879161252

`Δ[A085970(A373575(n+1))]`
-/

namespace A373672.P9563846254879161252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085970 (A373575 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A373672.P9563846254879161252

/-! ## A373672.P14083985776029126490

`Δ[comp[A356068(A000961(n+1))]]`
-/

namespace A373672.P14083985776029126490
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356068 (A000961 (n + 1)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A373672.P14083985776029126490

/-! ## A373672.P13053051093587258672

`Δ[comp[A356068(A246655(n+1))]]`
-/

namespace A373672.P13053051093587258672
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356068 (A246655 (n + 1)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A373672.P13053051093587258672

/-!
# A373673: First element of each maximal run of powers of primes (including 1).

The programs for A373673, there is no canonical definition to state claims against.
-/

/-! ## A373673.P7382135791595521780

`record[Δ[A063973(n+3)]]`
-/

namespace A373673.P7382135791595521780
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063973 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A373673.P7382135791595521780

/-! ## A373673.P9636930481790227320

`record[1-Δ[A074591(n+1)]]`
-/

namespace A373673.P9636930481790227320
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074591 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A373673.P9636930481790227320

/-! ## A373673.P11622774231425991397

`record[gcd(n+2, A000015(n+1))]`
-/

namespace A373673.P11622774231425991397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 2 : ℤ) (A000015 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A373673.P11622774231425991397

/-! ## A373673.P15910939221498273368

`A373677(n+1)+ceil(n/98)`
-/

namespace A373673.P15910939221498273368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373677 (n + 1) + ⌈(n : ℚ) / 98⌉

end

end A373673.P15910939221498273368

/-! ## A373673.P10776096105338370110

`comp[floor(A100994(n+1)/(n+1))+n]+1`
-/

namespace A373673.P10776096105338370110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A100994 (n + 1) : ℚ) / (n + 1 : ℚ)⌋ + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A373673.P10776096105338370110

/-! ## A373673.P4510597940864325627

`A000015(A373676(n+1))`
-/

namespace A373673.P4510597940864325627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000015 (A373676 (n + 1)).toNat

end

end A373673.P4510597940864325627

/-! ## A373673.P13443002000521643825

`A000015(A373677(n+1))`
-/

namespace A373673.P13443002000521643825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000015 (A373677 (n + 1)).toNat

end

end A373673.P13443002000521643825

/-! ## A373673.P9871322102911948203

`eq[A276950(n), A395096(n)]`
-/

namespace A373673.P9871322102911948203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276950 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395096 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A373673.P9871322102911948203

/-! ## A373673.P6889480158356293067

`eq[A294619(n), A395096(n)]`
-/

namespace A373673.P6889480158356293067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294619 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395096 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A373673.P6889480158356293067

/-! ## A373673.P3135140116297045039

`eq[A316829(n), A395096(n)]`
-/

namespace A373673.P3135140116297045039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316829 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395096 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A373673.P3135140116297045039

/-!
# A373674: Last element of each maximal run of powers of primes (including 1).

The programs for A373674, there is no canonical definition to state claims against.
-/

/-! ## A373674.P16488150085234467108

`eq[1, A378457(n+1)]`
-/

namespace A373674.P16488150085234467108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378457 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A373674.P16488150085234467108

/-! ## A373674.P4804177617510745498

`eq[2, A276781(n+1)]`
-/

namespace A373674.P4804177617510745498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276781 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A373674.P4804177617510745498

/-! ## A373674.P13413571322722797982

`comp[A143731(n+1)+n]`
-/

namespace A373674.P13413571322722797982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143731 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A373674.P13413571322722797982

/-! ## A373674.P8381061946015560215

`lt[1, A377780(n+1)]+1`
-/

namespace A373674.P8381061946015560215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377780 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A373674.P8381061946015560215

/-! ## A373674.P14937348421670845402

`eq[0, n-A031218(n+1)]`
-/

namespace A373674.P14937348421670845402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A031218 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A373674.P14937348421670845402

/-! ## A373674.P12414121739812468419

`comp[n-A069513(n+1)]+1`
-/

namespace A373674.P12414121739812468419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A069513 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A373674.P12414121739812468419

/-! ## A373674.P14538009032028203954

`A080765(A375928(n+1))`
-/

namespace A373674.P14538009032028203954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080765 (A375928 (n + 1)).toNat

end

end A373674.P14538009032028203954

/-! ## A373674.P15611289433243073066

`eq[A063698(n), A120112(n)]`
-/

namespace A373674.P15611289433243073066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063698 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120112 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A373674.P15611289433243073066

/-! ## A373674.P14424363072263948727

`eq[A120112(n), A327780(n)]`
-/

namespace A373674.P14424363072263948727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120112 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327780 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A373674.P14424363072263948727

/-! ## A373674.P12650301957301767586

`filter[A080765(n+1), A010055(#)]`
-/

namespace A373674.P12650301957301767586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080765 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010055 (f1 j).toNat = 1) n)

end

end A373674.P12650301957301767586

/-!
# A373676: First element of each maximal run of non-prime-powers.

The programs for A373676, there is no canonical definition to state claims against.
-/

/-! ## A373676.P17653329511287457064

`record[2-Δ[A100994(n+1)]]`
-/

namespace A373676.P17653329511287457064
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100994 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A373676.P17653329511287457064

/-! ## A373676.P6587614720485535097

`comp[ceil(sqrt(A001221(n+1))+n)]`
-/

namespace A373676.P6587614720485535097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A001221 (n + 1) : ℝ) + (n : ℝ)⌉

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A373676.P6587614720485535097

/-! ## A373676.P15897587265284500407

`lt[n%A031218(n+1), 1]+1`
-/

namespace A373676.P15897587265284500407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A031218 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A373676.P15897587265284500407

/-! ## A373676.P5175266215431183618

`comp[n+1-A069513(n+1)]+1`
-/

namespace A373676.P5175266215431183618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A069513 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A373676.P5175266215431183618

/-! ## A373676.P17396427744773733937

`A373677(n+1)+1-A110969(n+1)`
-/

namespace A373676.P17396427744773733937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373677 (n + 1) + (1 - A110969 (n + 1))

end

end A373676.P17396427744773733937

/-!
# A373677: Last element of each maximal run of non-prime-powers.

The programs for A373677, there is no canonical definition to state claims against.
-/

/-! ## A373677.P9708421370601977871

`record[Δ[A100994(n+1)]]`
-/

namespace A373677.P9708421370601977871
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100994 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A373677.P9708421370601977871

/-! ## A373677.P1909464048148662326

`comp[A069513(n+1)+n]`
-/

namespace A373677.P1909464048148662326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069513 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A373677.P1909464048148662326

/-! ## A373677.P16004251534093882694

`ceil(abs(ϕ-A373673(n+1)))`
-/

namespace A373677.P16004251534093882694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|Real.goldenRatio - (A373673 (n + 1) : ℝ)|⌉

end

end A373677.P16004251534093882694

/-! ## A373677.P4824109889756783048

`comp[C(C(2, A034460(n+1)), 2)+n]`
-/

namespace A373677.P4824109889756783048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.choose 2 (A034460 (n + 1)).toNat) 2 + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A373677.P4824109889756783048

/-! ## A373677.P7461630062643825343

`A047994(A373673(n+1))`
-/

namespace A373677.P7461630062643825343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047994 (A373673 (n + 1)).toNat

end

end A373677.P7461630062643825343

/-! ## A373677.P4186133569037914397

`A361102(A375928(n+1))`
-/

namespace A373677.P4186133569037914397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361102 (A375928 (n + 1)).toNat

end

end A373677.P4186133569037914397

/-! ## A373677.P13332054915933852120

`A373673(n+1)+A057428(n)`
-/

namespace A373677.P13332054915933852120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373673 (n + 1) + A057428 n

end

end A373677.P13332054915933852120

/-! ## A373677.P17708614554247389724

`A373673(n+1)-A057427(n)`
-/

namespace A373677.P17708614554247389724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373673 (n + 1) - A057427 n

end

end A373677.P17708614554247389724

/-! ## A373677.P14731001264887172781

`A373673(n+1)-A178334(n)`
-/

namespace A373677.P14731001264887172781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373673 (n + 1) - A178334 n

end

end A373677.P14731001264887172781

/-! ## A373677.P6928719323990562636

`A373673(n+1)-A178489(n)`
-/

namespace A373677.P6928719323990562636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373673 (n + 1) - A178489 n

end

end A373677.P6928719323990562636

/-!
# A373680: Expansion of e.g.f. exp(x / (1 - x^3)^2).

The programs for A373680, there is no canonical definition to state claims against.
-/

/-! ## A373680.P10237246875885172801

`A000069(A362571(n))`
-/

namespace A373680.P10237246875885172801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000069 (A362571 n).toNat

end

end A373680.P10237246875885172801

/-! ## A373680.P107290922514948649

`A123168(A362571(n)+1)`
-/

namespace A373680.P107290922514948649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123168 (A362571 n + 1).toNat

end

end A373680.P107290922514948649

/-! ## A373680.P16824240826962110294

`A009001(A373685(n)-A371045(n))`
-/

namespace A373680.P16824240826962110294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (A373685 n - A371045 n).toNat

end

end A373680.P16824240826962110294

/-! ## A373680.P18356640770884898208

`A005843(A362571(n))-A000035(2*n+1)`
-/

namespace A373680.P18356640770884898208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A362571 n).toNat - A000035 (2 * n + 1)

end

end A373680.P18356640770884898208

/-!
# A373681: Expansion of e.g.f. exp(x / (1 - x^2)^2) / (1 - x^2).

The programs for A373681, there is no canonical definition to state claims against.
-/

/-! ## A373681.P16777173827855528348

`or(A001563(A298330(n)), A216681(n))`
-/

namespace A373681.P16777173827855528348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001563 (A298330 n).toNat) (A216681 n)

end

end A373681.P16777173827855528348

/-!
# A373682: Expansion of e.g.f. exp(x / (1 - x^2)^3) / (1 - x^2).

The programs for A373682, there is no canonical definition to state claims against.
-/

/-! ## A373682.P14076898978481554862

`A030708((n+1)^(n+1)+n)`
-/

namespace A373682.P14076898978481554862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030708 ((n + 1) ^ (n + 1) + n)

end

end A373682.P14076898978481554862

/-!
# A373683: Expansion of e.g.f. exp(x / (1 - x^2)) / (1 - x^2).

The programs for A373683, there is no canonical definition to state claims against.
-/

/-! ## A373683.P896064104575222387

`A006984(A162326(n))`
-/

namespace A373683.P896064104575222387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006984 (A162326 n).toNat

end

end A373683.P896064104575222387

/-! ## A373683.P15787581982140073484

`A000174(A052365(n)²)`
-/

namespace A373683.P15787581982140073484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000174 (A052365 n ^ 2).toNat

end

end A373683.P15787581982140073484

/-!
# A373684: Expansion of e.g.f. exp(x / (1 - x^3)) / (1 - x^3).

The programs for A373684, there is no canonical definition to state claims against.
-/

/-! ## A373684.P12336177158950639040

`A194186(A270913(n))+A088009(n)`
-/

namespace A373684.P12336177158950639040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194186 (A270913 n).toNat + A088009 n

end

end A373684.P12336177158950639040

/-! ## A373684.P2150529861552217295

`A031218(A006466(n)*A088009(n))`
-/

namespace A373684.P2150529861552217295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031218 (A006466 n * A088009 n).toNat

end

end A373684.P2150529861552217295

/-! ## A373684.P8512173454472340244

`A085801(A007318(n)*A088009(n))`
-/

namespace A373684.P8512173454472340244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085801 (A007318 n * A088009 n).toNat

end

end A373684.P8512173454472340244

/-!
# A373685: Expansion of e.g.f. exp(x / (1 - x^3)^2) / (1 - x^3).

The programs for A373685, there is no canonical definition to state claims against.
-/

/-! ## A373685.P8897928359386063927

`A277604(A063556(n))`
-/

namespace A373685.P8897928359386063927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277604 (A063556 n).toNat

end

end A373685.P8897928359386063927

/-! ## A373685.P632141108713797679

`or(1, A100884(A076876(n)))`
-/

namespace A373685.P632141108713797679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A100884 (A076876 n).toNat)

end

end A373685.P632141108713797679

/-!
# A373686: a(n) is the number of ways n can be written as a sum of a practical number and two squares.

The programs for A373686, there is no canonical definition to state claims against.
-/

/-! ## A373686.P8297970502125860885

`A355735(A156552(3*(n+1))+A004016(n+3))`
-/

namespace A373686.P8297970502125860885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355735 (A156552 (3 * (n + 1)) + A004016 (n + 3)).toNat

end

end A373686.P8297970502125860885

/-! ## A373686.P5513527371701753059

`A069010(A288067(n))+∑{e}[∏{p}[n+1, #], #]`
-/

namespace A373686.P5513527371701753059
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 (A288067 n).toNat + ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ)

end

end A373686.P5513527371701753059

/-! ## A373686.P4037448316581709167

`A103674(A000079(n))+∑{p}[n+1, gcd(n, #)]+1`
-/

namespace A373686.P4037448316581709167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103674 (A000079 n).toNat + ((∑ p ∈ Nat.primeFactors (f1 n), Nat.gcd n p + 1 : ℕ) : ℤ)

end

end A373686.P4037448316581709167

/-! ## A373686.P3173125343391755852

`A194003(or(A000079(n), A009909(n)))`
-/

namespace A373686.P3173125343391755852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194003 (Int.lor (A000079 n) (A009909 n)).toNat

end

end A373686.P3173125343391755852

/-! ## A373686.P17768125553395323248

`A043529(A005043(n))+A001221(n+1)`
-/

namespace A373686.P17768125553395323248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043529 (A005043 n).toNat + A001221 (n + 1)

end

end A373686.P17768125553395323248

/-!
# A373689: Perfect powers such that the three numbers before it and the three numbers after it are squarefree.

The programs for A373689, there is no canonical definition to state claims against.
-/

/-! ## A373689.P352507011380144085

`∩[A001597(n+1), A068088(n+1)]`
-/

namespace A373689.P352507011380144085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068088 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A373689.P352507011380144085

/-! ## A373689.P12495529967093365337

`∩[A068088(n+1), A075090(n+1)]`
-/

namespace A373689.P12495529967093365337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068088 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075090 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A373689.P12495529967093365337

/-! ## A373689.P14144696153278361947

`∩[A068088(n+1), A373077(n+1)]`
-/

namespace A373689.P14144696153278361947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068088 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373077 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A373689.P14144696153278361947

/-! ## A373689.P67512580975488256

`∩[A068088(n+1), A396856(n+1)]`
-/

namespace A373689.P67512580975488256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068088 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396856 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A373689.P67512580975488256

/-! ## A373689.P9527808147911138865

`∩[A068088(n+1), A373287(n+1)]`
-/

namespace A373689.P9527808147911138865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068088 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373287 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A373689.P9527808147911138865

/-!
# A373690: Number of balanced unate functions of n or fewer variables.

The programs for A373690, there is no canonical definition to state claims against.
-/

/-! ## A373690.P2782893765038621196

`A384904(a(n-1)+2^(n-1))` with `a(0)=0, a(1)=2`
-/

namespace A373690.P2782893765038621196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  A384904 (SequenceMachineLib.roundAway ((a (n - 1) : ℚ) + (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ))).toNat

end

end A373690.P2782893765038621196

/-!
# A373692: Table of the number of ways T(m,n) to partition a 2m X 2n grid into Cartesian products of size 2 X 2, read by ascending antidiagonals.

The programs for A373692, there is no canonical definition to state claims against.
-/

/-! ## A373692.P9212578740158563003

`A038547(A252828(n+1)%A000058(n))`
-/

namespace A373692.P9212578740158563003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038547 (Int.tmod (A252828 (n + 1)) (A000058 n)).toNat

end

end A373692.P9212578740158563003

/-! ## A373692.P13698419358284786682

`A038547(A252828(n+1))%A001335(3*(n+1))`
-/

namespace A373692.P13698419358284786682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038547 (A252828 (n + 1)).toNat) (A001335 (3 * (n + 1)))

end

end A373692.P13698419358284786682

/-! ## A373692.P4974085258007115302

`A359600(A118171(n))`
-/

namespace A373692.P4974085258007115302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359600 (A118171 n).toNat

end

end A373692.P4974085258007115302

/-!
# A373693: a(n) is the least number k such that the number whose base-b representation is the same as the decimal representation of k is prime for the first n possible bases b, but not for the next possible base.

The programs for A373693, there is no canonical definition to state claims against.
-/

/-! ## A373693.P12820707432315150724

`A298363(A298377(n+1))`
-/

namespace A373693.P12820707432315150724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298363 (A298377 (n + 1)).toNat

end

end A373693.P12820707432315150724

/-!
# A373694: Number of incongruent n-sided periodic Reinhardt polygons.

The programs for A373694, there is no canonical definition to state claims against.
-/

/-! ## A373694.P7456863158778441900

`A374832(n+1)-A373695(n+1)`
-/

namespace A373694.P7456863158778441900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374832 (n + 1) - A373695 (n + 1)

end

end A373694.P7456863158778441900

/-! ## A373694.P5035326138162680415

`A374832(n+1)-A101764(n+1)%A062513(n+1)`
-/

namespace A373694.P5035326138162680415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374832 (n + 1) - Int.tmod (A101764 (n + 1)) (A062513 (n + 1))

end

end A373694.P5035326138162680415

/-! ## A373694.P3109354903381861041

`A374832(n+1)-A085858(A027926(n)^A239657(n+1))`
-/

namespace A373694.P3109354903381861041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374832 (n + 1) - A085858 (SequenceMachineLib.roundAway ((A027926 n : ℚ) ^ (A239657 (n + 1) : ℤ))).toNat

end

end A373694.P3109354903381861041

/-! ## A373694.P4959501022593733826

`A374832(n+1)-A069907(A137594(n+1)%A007906(n+1))`
-/

namespace A373694.P4959501022593733826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374832 (n + 1) - A069907 (Int.tmod (A137594 (n + 1)) (A007906 (n + 1))).toNat

end

end A373694.P4959501022593733826

/-! ## A373694.P16260369653604243509

`A374832(n+1)-A329313(2*(n+2))*A330299(A335452(n+1))`
-/

namespace A373694.P16260369653604243509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374832 (n + 1) - A329313 (2 * (n + 2)) * A330299 (A335452 (n + 1)).toNat

end

end A373694.P16260369653604243509

/-!
# A373695: Number of incongruent n-sided "sporadic" Reinhardt polygons.

The programs for A373695, there is no canonical definition to state claims against.
-/

/-! ## A373695.P10022571809408505990

`A374832(n+1)-A373694(n+1)`
-/

namespace A373695.P10022571809408505990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374832 (n + 1) - A373694 (n + 1)

end

end A373695.P10022571809408505990

/-! ## A373695.P7977037660665920150

`A101764(n+1)%A062513(n+1)`
-/

namespace A373695.P7977037660665920150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A101764 (n + 1)) (A062513 (n + 1))

end

end A373695.P7977037660665920150

/-! ## A373695.P6975028067726137677

`A263341(2*n+5)%A002995(∏{p}[n+1, 2%#²]-1)`
-/

namespace A373695.P6975028067726137677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A263341 (2 * n + 5)) (A002995 (∏ p ∈ Nat.primeFactors (f1 n), 2 % p ^ 2 - 1))

end

end A373695.P6975028067726137677

/-! ## A373695.P17370576317038672802

`A085858(A027926(n)^A239657(n+1))`
-/

namespace A373695.P17370576317038672802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085858 (SequenceMachineLib.roundAway ((A027926 n : ℚ) ^ (A239657 (n + 1) : ℤ))).toNat

end

end A373695.P17370576317038672802

/-! ## A373695.P17057940359114050617

`A027750(A062866(n))%A062513(n+1)`
-/

namespace A373695.P17057940359114050617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027750 (A062866 n).toNat) (A062513 (n + 1))

end

end A373695.P17057940359114050617

/-!
# A373696: a(n) is the least m >= 0 with the same number of digits as n such that for some permutation p of 0..9, applying p to the digits of n yields the digits of m.

The programs for A373696, there is no canonical definition to state claims against.
-/

/-! ## A373696.P3329237050996363143

`A103181(A123895(n))`
-/

namespace A373696.P3329237050996363143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103181 (A123895 n).toNat

end

end A373696.P3329237050996363143

/-!
# A373697: Number of nondegenerate balanced unate functions of n or fewer variables.

The programs for A373697, there is no canonical definition to state claims against.
-/

/-! ## A373697.P5793685293026681616

`A000079(n)*A371722(n)`
-/

namespace A373697.P5793685293026681616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A371722 n

end

end A373697.P5793685293026681616

/-! ## A373697.P2944776804060377648

`record[A316693(n+1)]*A371722(n)`
-/

namespace A373697.P2944776804060377648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316693 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A371722 n

end

end A373697.P2944776804060377648

/-!
# A373699: a(n) is the area of the (n+1)-gon having vertices coordinates (2,0), (2,prime(2)), ..., (n,prime(n)), (n,0).

The programs for A373699, the canonical program `A373699.P4733375539581305537` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373699 has offset 3).

The definition of A373699 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A373699.P4733375539581305537

`∑[A024675(n+1)]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A373699

/-- `∑[A024675(n+1)]` -/
def P4733375539581305537.Spec : Prop :=
  ∀ n, P4733375539581305537.a n = A373699 (n + 3)

theorem P4733375539581305537.correct : P4733375539581305537.Spec := by
  intro n
  simp only [A373699, Nat.add_sub_cancel]

end A373699

/-! ## A373699.P14445723518949925285

`∑[A162735(n+2)]`
-/

namespace A373699.P14445723518949925285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162735 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A373699.P14445723518949925285

namespace A373699

/-- `∑[A162735(n+2)]` -/
def P14445723518949925285.Spec : Prop :=
  ∀ n, P14445723518949925285.a n = A373699 (n + 3)

end A373699

/-! ## A373699.P10238518966883591719

`∑[A162800(n+2)]`
-/

namespace A373699.P10238518966883591719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162800 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A373699.P10238518966883591719

namespace A373699

/-- `∑[A162800(n+2)]` -/
def P10238518966883591719.Spec : Prop :=
  ∀ n, P10238518966883591719.a n = A373699 (n + 3)

end A373699

/-! ## A373699.P11052026042247602199

`A073612(n+3)-4`
-/

namespace A373699.P11052026042247602199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073612 (n + 3) - 4

end

end A373699.P11052026042247602199

namespace A373699

/-- `A073612(n+3)-4` -/
def P11052026042247602199.Spec : Prop :=
  ∀ n, P11052026042247602199.a n = A373699 (n + 3)

end A373699

/-! ## A373699.P14956119274056555880

`∑[sqrt(A076621(n+2))]`
-/

namespace A373699.P14956119274056555880
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A076621 (n + 2) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A373699.P14956119274056555880

namespace A373699

/-- `∑[sqrt(A076621(n+2))]` -/
def P14956119274056555880.Spec : Prop :=
  ∀ n, P14956119274056555880.a n = (A373699 (n + 3) : ℝ)

end A373699

/-! ## A373699.P7930578277812089855

`∑[A078444(n+2)+1]`
-/

namespace A373699.P7930578277812089855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078444 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A373699.P7930578277812089855

namespace A373699

/-- `∑[A078444(n+2)+1]` -/
def P7930578277812089855.Spec : Prop :=
  ∀ n, P7930578277812089855.a n = A373699 (n + 3)

end A373699

/-! ## A373699.P2666032608480935387

`∑[A001043(n+2)/2]`
-/

namespace A373699.P2666032608480935387
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001043 (n + 2) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A373699.P2666032608480935387

namespace A373699

/-- `∑[A001043(n+2)/2]` -/
def P2666032608480935387.Spec : Prop :=
  ∀ n, P2666032608480935387.a n = (A373699 (n + 3) : ℚ)

end A373699

/-! ## A373699.P2784945134590577996

`∑[ceil(sqrt(A006094(n+2)))]`
-/

namespace A373699.P2784945134590577996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A006094 (n + 2) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A373699.P2784945134590577996

namespace A373699

/-- `∑[ceil(sqrt(A006094(n+2)))]` -/
def P2784945134590577996.Spec : Prop :=
  ∀ n, P2784945134590577996.a n = A373699 (n + 3)

end A373699

/-! ## A373699.P10747004223325634475

`A383641(A215848(n+1))`
-/

namespace A373699.P10747004223325634475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383641 (A215848 (n + 1)).toNat

end

end A373699.P10747004223325634475

namespace A373699

/-- `A383641(A215848(n+1))` -/
def P10747004223325634475.Spec : Prop :=
  ∀ n, P10747004223325634475.a n = A373699 (n + 3)

end A373699

/-! ## A373699.P17705065094664492485

`A383641(A045344(n+2))`
-/

namespace A373699.P17705065094664492485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383641 (A045344 (n + 2)).toNat

end

end A373699.P17705065094664492485

namespace A373699

/-- `A383641(A045344(n+2))` -/
def P17705065094664492485.Spec : Prop :=
  ∀ n, P17705065094664492485.a n = A373699 (n + 3)

end A373699

/-! ## A373699.P7637835762171929227

`A383641(A065091(n+2))`
-/

namespace A373699.P7637835762171929227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383641 (A065091 (n + 2)).toNat

end

end A373699.P7637835762171929227

namespace A373699

/-- `A383641(A065091(n+2))` -/
def P7637835762171929227.Spec : Prop :=
  ∀ n, P7637835762171929227.a n = A373699 (n + 3)

end A373699

/-! ## A373699.P16539726159291625916

`A383641(A140475(n+2))`
-/

namespace A373699.P16539726159291625916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383641 (A140475 (n + 2)).toNat

end

end A373699.P16539726159291625916

namespace A373699

/-- `A383641(A140475(n+2))` -/
def P16539726159291625916.Spec : Prop :=
  ∀ n, P16539726159291625916.a n = A373699 (n + 3)

end A373699

/-! ## A373699.P11065026673886283159

`A383641(A165972(n+2))`
-/

namespace A373699.P11065026673886283159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383641 (A165972 (n + 2)).toNat

end

end A373699.P11065026673886283159

namespace A373699

/-- `A383641(A165972(n+2))` -/
def P11065026673886283159.Spec : Prop :=
  ∀ n, P11065026673886283159.a n = A373699 (n + 3)

end A373699

