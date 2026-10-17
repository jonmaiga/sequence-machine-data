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
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C002
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
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A163900: Squared distance between n's location in A054238 array and A163357 array.

The programs for A163900, there is no canonical definition to state claims against.
-/

/-! ## A163900.P3921053043388829397

`A000290(abs(A059906(n)-A059252(n)))+A000290(abs(A059905(n)-A059253(n)))`
-/

namespace A163900.P3921053043388829397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 |A059906 n - A059252 n|.toNat + A000290 |A059905 n - A059253 n|.toNat

end

end A163900.P3921053043388829397

/-! ## A163900.P17452056866264741659

`A163898(A054239(n))`
-/

namespace A163900.P17452056866264741659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163898 (A054239 n).toNat

end

end A163900.P17452056866264741659

/-! ## A163900.P2583009631390743717

`A163899(A163358(n))`
-/

namespace A163900.P2583009631390743717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163899 (A163358 n).toNat

end

end A163900.P2583009631390743717

/-! ## A163900.P14381861542436270242

`A163899(A163362(n+1)-1)`
-/

namespace A163900.P14381861542436270242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163899 (A163362 (n + 1) - 1).toNat

end

end A163900.P14381861542436270242

/-! ## A163900.P18399030532739905275

`(A059252(n)-A059906(n))²+(A059253(n)-A059905(n))²`
-/

namespace A163900.P18399030532739905275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A059252 n - A059906 n) ^ 2 + (A059253 n - A059905 n) ^ 2

end

end A163900.P18399030532739905275

/-!
# A163901: The positions i where A163355(i) = i, that is, the fixed points of permutation A163355.

The programs for A163901, there is no canonical definition to state claims against.
-/

/-! ## A163901.P13322456749912988898

`record[n*(2-A163890(n))]`
-/

namespace A163901.P13322456749912988898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (2 - A163890 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163901.P13322456749912988898

/-! ## A163901.P4168133654894013969

`A000695(A165404(n))`
-/

namespace A163901.P4168133654894013969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 (A165404 n).toNat

end

end A163901.P4168133654894013969

/-! ## A163901.P7956302124817386213

`A062880(A165404(n))/A000122(n²)`
-/

namespace A163901.P7956302124817386213
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062880 (A165404 n).toNat : ℚ) / (A000122 (n ^ 2) : ℚ)

end

end A163901.P7956302124817386213

/-! ## A163901.P14935084984000678975

`A062880(A165404(n))/A020639(2*(n+1))`
-/

namespace A163901.P14935084984000678975
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062880 (A165404 n).toNat : ℚ) / (A020639 (2 * (n + 1)) : ℚ)

end

end A163901.P14935084984000678975

/-! ## A163901.P18368321257285016277

`A062880(A165404(n))/2%A000040(n+2)`
-/

namespace A163901.P18368321257285016277
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062880 (A165404 n).toNat : ℚ) / (Int.tmod 2 (A000040 (n + 2)) : ℚ)

end

end A163901.P18368321257285016277

/-!
# A163902: The positions i where A163905(i) = i, but not A163355(i) = i, that is, the 2-cycles of permutation A163355.

The programs for A163902, there is no canonical definition to state claims against.
-/

/-! ## A163902.P10005887250226531178

`eq[2, A163890(n)]`
-/

namespace A163902.P10005887250226531178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163890 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A163902.P10005887250226531178

/-! ## A163902.P15881822868312219818

`eq[2, A163904(A054239(n))]`
-/

namespace A163902.P15881822868312219818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163904 (A054239 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A163902.P15881822868312219818

/-! ## A163902.P11387405812362650101

`eq[2, A163904(A163358(n))]`
-/

namespace A163902.P11387405812362650101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163904 (A163358 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A163902.P11387405812362650101

/-! ## A163902.P14524272156193547203

`eq[2, A163904(A163908(n))]`
-/

namespace A163902.P14524272156193547203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163904 (A163908 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A163902.P14524272156193547203

/-! ## A163902.P3578532383030770918

`eq[2, A163904(A163918(n))]`
-/

namespace A163902.P3578532383030770918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163904 (A163918 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A163902.P3578532383030770918

/-!
# A163903: The positions i where A163915(i) = i, but not A163355(i) = i, that is, the 3-cycles of permutation A163355.

The programs for A163903, there is no canonical definition to state claims against.
-/

/-! ## A163903.P17643574829507630495

`eq[3, A163890(n)]`
-/

namespace A163903.P17643574829507630495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163890 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A163903.P17643574829507630495

/-! ## A163903.P14860914971858010443

`eq[3, A163904(A054239(n))]`
-/

namespace A163903.P14860914971858010443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163904 (A054239 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A163903.P14860914971858010443

/-! ## A163903.P14100188719520937366

`eq[3, A163904(A163358(n))]`
-/

namespace A163903.P14100188719520937366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163904 (A163358 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A163903.P14100188719520937366

/-! ## A163903.P17254578595581162278

`eq[3, A163904(A163908(n))]`
-/

namespace A163903.P17254578595581162278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163904 (A163908 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A163903.P17254578595581162278

/-! ## A163903.P2344690799346944446

`eq[3, A163904(A163918(n))]`
-/

namespace A163903.P2344690799346944446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163904 (A163918 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A163903.P2344690799346944446

/-!
# A163904: Array A(i,j): Cycle size of each A054238(i,j) in permutation A163355, listed antidiagonally as A(0,0), A(0,1), A(1,0), A(0,2), A(1,1), A(2,0), ...

The programs for A163904, there is no canonical definition to state claims against.
-/

/-! ## A163904.P12085079955787066666

`A163890(A054238(n))`
-/

namespace A163904.P12085079955787066666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163890 (A054238 n).toNat

end

end A163904.P12085079955787066666

/-! ## A163904.P11419760809353592224

`A163890(A163357(n))`
-/

namespace A163904.P11419760809353592224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163890 (A163357 n).toNat

end

end A163904.P11419760809353592224

/-! ## A163904.P6245204816931400909

`A163890(A163907(n))`
-/

namespace A163904.P6245204816931400909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163890 (A163907 n).toNat

end

end A163904.P6245204816931400909

/-! ## A163904.P16256947773538421500

`A163890(A163917(n))`
-/

namespace A163904.P16256947773538421500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163890 (A163917 n).toNat

end

end A163904.P16256947773538421500

/-! ## A163904.P17353376884745249328

`A163890(A163361(n+1)-1)`
-/

namespace A163904.P17353376884745249328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163890 (A163361 (n + 1) - 1).toNat

end

end A163904.P17353376884745249328

/-!
# A163905: Permutation A163355 applied twice.

The programs for A163905, there is no canonical definition to state claims against.
-/

/-! ## A163905.P7164668434483106580

`A163907(A054239(n))`
-/

namespace A163905.P7164668434483106580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163907 (A054239 n).toNat

end

end A163905.P7164668434483106580

/-! ## A163905.P13190735353472823709

`A163355(A163355(n))`
-/

namespace A163905.P13190735353472823709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163355 (A163355 n).toNat

end

end A163905.P13190735353472823709

/-! ## A163905.P18316928965891905438

`A163915(A163356(n))`
-/

namespace A163905.P18316928965891905438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163915 (A163356 n).toNat

end

end A163905.P18316928965891905438

/-! ## A163905.P5886845155413198992

`A163917(A163358(n))`
-/

namespace A163905.P5886845155413198992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163917 (A163358 n).toNat

end

end A163905.P5886845155413198992

/-! ## A163905.P5504297385220603458

`A163915(A163357(A163908(n)))`
-/

namespace A163905.P5504297385220603458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163915 (A163357 (A163908 n).toNat).toNat

end

end A163905.P5504297385220603458

/-! ## A163905.P11570762144777625844

`A163907(A163918(A163915(n)))`
-/

namespace A163905.P11570762144777625844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163907 (A163918 (A163915 n).toNat).toNat

end

end A163905.P11570762144777625844

/-! ## A163905.P2320490058587791258

`A302843(A003188(A302843(A003188(n))))`
-/

namespace A163905.P2320490058587791258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302843 (A003188 (A302843 (A003188 n).toNat).toNat).toNat

end

end A163905.P2320490058587791258

/-! ## A163905.P15399978547951215467

`A163915(A163915(A163906(A163906(n))))`
-/

namespace A163905.P15399978547951215467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163915 (A163915 (A163906 (A163906 n).toNat).toNat).toNat

end

end A163905.P15399978547951215467

/-! ## A163905.P14632809630259244007

`A163356(A163917(A054239(A163918(A163917(n)))))`
-/

namespace A163905.P14632809630259244007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163356 (A163917 (A054239 (A163918 (A163917 n).toNat).toNat).toNat).toNat

end

end A163905.P14632809630259244007

/-! ## A163905.P1580330089714776936

`A302845(A064706(A302845(A064706(n))))`
-/

namespace A163905.P1580330089714776936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302845 (A064706 (A302845 (A064706 n).toNat).toNat).toNat

end

end A163905.P1580330089714776936

/-!
# A163906: Permutation A163356 applied twice.

The programs for A163906, there is no canonical definition to state claims against.
-/

/-! ## A163906.P9481120193592965786

`A163356(A163356(n))`
-/

namespace A163906.P9481120193592965786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163356 (A163356 n).toNat

end

end A163906.P9481120193592965786

/-! ## A163906.P15453812370339924497

`A163916(A163355(n))`
-/

namespace A163906.P15453812370339924497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163916 (A163355 n).toNat

end

end A163906.P15453812370339924497

/-! ## A163906.P15719888353232755506

`A163357(A163918(n))`
-/

namespace A163906.P15719888353232755506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163357 (A163918 n).toNat

end

end A163906.P15719888353232755506

/-! ## A163906.P624454523803357158

`A163916(A163357(A054239(n)))`
-/

namespace A163906.P624454523803357158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163916 (A163357 (A054239 n).toNat).toNat

end

end A163906.P624454523803357158

/-! ## A163906.P3966392135084468535

`A163916(A163907(A163358(n)))`
-/

namespace A163906.P3966392135084468535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163916 (A163907 (A163358 n).toNat).toNat

end

end A163906.P3966392135084468535

/-! ## A163906.P5875198927380795390

`A163916(A163917(A163908(n)))`
-/

namespace A163906.P5875198927380795390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163916 (A163917 (A163908 n).toNat).toNat

end

end A163906.P5875198927380795390

/-! ## A163906.P10688362889017975950

`A163916(A163916(A163905(A163905(n))))`
-/

namespace A163906.P10688362889017975950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163916 (A163916 (A163905 (A163905 n).toNat).toNat).toNat

end

end A163906.P10688362889017975950

/-! ## A163906.P6534674191048694255

`A302843(A302846(A302843(A163916(n))))`
-/

namespace A163906.P6534674191048694255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302843 (A302846 (A302843 (A163916 n).toNat).toNat).toNat

end

end A163906.P6534674191048694255

/-! ## A163906.P14855472010600835354

`A006068(A302844(A006068(A302844(n))))`
-/

namespace A163906.P14855472010600835354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 (A302844 (A006068 (A302844 n).toNat).toNat).toNat

end

end A163906.P14855472010600835354

/-! ## A163906.P17316954575466623469

`A064707(A302846(A064707(A302846(n))))`
-/

namespace A163906.P17316954575466623469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064707 (A302846 (A064707 (A302846 n).toNat).toNat).toNat

end

end A163906.P17316954575466623469

/-! ## A163906.P1504856168463439890

`A054238(A163908(n))`
-/

namespace A163906.P1504856168463439890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054238 (A163908 n).toNat

end

end A163906.P1504856168463439890

/-! ## A163906.P10466403822091722525

`A054238(A163918(A163355(A163918(A163917(n)))))`
-/

namespace A163906.P10466403822091722525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054238 (A163918 (A163355 (A163918 (A163917 n).toNat).toNat).toNat).toNat

end

end A163906.P10466403822091722525

/-!
# A163907: Permutation A163905 shown in N x N grid.

The programs for A163907, there is no canonical definition to state claims against.
-/

/-! ## A163907.P5757776920623415377

`A163905(A054238(n))`
-/

namespace A163907.P5757776920623415377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163905 (A054238 n).toNat

end

end A163907.P5757776920623415377

/-! ## A163907.P1349936242398837842

`A163355(A163357(n))`
-/

namespace A163907.P1349936242398837842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163355 (A163357 n).toNat

end

end A163907.P1349936242398837842

/-! ## A163907.P5392904064908654781

`A163356(A163917(n))`
-/

namespace A163907.P5392904064908654781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163356 (A163917 n).toNat

end

end A163907.P5392904064908654781

/-! ## A163907.P14870162945164726482

`A163355(A163361(n+1)-1)`
-/

namespace A163907.P14870162945164726482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163355 (A163361 (n + 1) - 1).toNat

end

end A163907.P14870162945164726482

/-! ## A163907.P740999039710585923

`A163355(A163359(A163358(A163359(n))))`
-/

namespace A163907.P740999039710585923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163355 (A163359 (A163358 (A163359 n).toNat).toNat).toNat

end

end A163907.P740999039710585923

/-! ## A163907.P16956624123203529986

`A163355(A163355(A054238(A163486(A163485(n)))))`
-/

namespace A163907.P16956624123203529986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163355 (A163355 (A054238 (A163486 (A163485 n).toNat).toNat).toNat).toNat

end

end A163907.P16956624123203529986

/-! ## A163907.P9274062376742335539

`A163355(A163355(A054238(A163917(A163918(n)))))`
-/

namespace A163907.P9274062376742335539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163355 (A163355 (A054238 (A163917 (A163918 n).toNat).toNat).toNat).toNat

end

end A163907.P9274062376742335539

/-! ## A163907.P7868727791471468986

`A163905(A057300(A163486(A147995(n))))`
-/

namespace A163907.P7868727791471468986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163905 (A057300 (A163486 (A147995 n).toNat).toNat).toNat

end

end A163907.P7868727791471468986

/-! ## A163907.P13077362213226664354

`A163355(A163355(A163486(A147995(A061579(n)))))`
-/

namespace A163907.P13077362213226664354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163355 (A163355 (A163486 (A147995 (A061579 n).toNat).toNat).toNat).toNat

end

end A163907.P13077362213226664354

/-! ## A163907.P17850006903365801249

`A163917(A163908(A163357(A163906(A163905(n)))))`
-/

namespace A163907.P17850006903365801249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163917 (A163908 (A163357 (A163906 (A163905 n).toNat).toNat).toNat).toNat

end

end A163907.P17850006903365801249

/-! ## A163907.P18321150692472820828

`A163906(A163355(A163917(A163905(A163906(n)))))`
-/

namespace A163907.P18321150692472820828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163906 (A163355 (A163917 (A163905 (A163906 n).toNat).toNat).toNat).toNat

end

end A163907.P18321150692472820828

/-! ## A163907.P6086258439724009855

`A163906(A163355(A163917(A163916(A163915(n)))))`
-/

namespace A163907.P6086258439724009855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163906 (A163355 (A163917 (A163916 (A163915 n).toNat).toNat).toNat).toNat

end

end A163907.P6086258439724009855

/-! ## A163907.P14618365744324462494

`A163357(A054239(A163357(A054238(A054239(n)))))`
-/

namespace A163907.P14618365744324462494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163357 (A054239 (A163357 (A054238 (A054239 n).toNat).toNat).toNat).toNat

end

end A163907.P14618365744324462494

/-! ## A163907.P2150124147168071452

`A163905(A163486(A163545(n)))`
-/

namespace A163907.P2150124147168071452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163905 (A163486 (A163545 n).toNat).toNat

end

end A163907.P2150124147168071452

/-! ## A163907.P41281054913971316

`A163355(A163355(A054238(A163545(A163546(n)))))`
-/

namespace A163907.P41281054913971316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163355 (A163355 (A054238 (A163545 (A163546 n).toNat).toNat).toNat).toNat

end

end A163907.P41281054913971316

/-!
# A163908: Inverse permutation to A163907.

The programs for A163908, there is no canonical definition to state claims against.
-/

/-! ## A163908.P18284548729294687500

`A163358(A163356(n))`
-/

namespace A163908.P18284548729294687500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163358 (A163356 n).toNat

end

end A163908.P18284548729294687500

/-! ## A163908.P10092599310565951614

`A163918(A163355(n))`
-/

namespace A163908.P10092599310565951614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163918 (A163355 n).toNat

end

end A163908.P10092599310565951614

/-! ## A163908.P3393106834475165806

`A163918(A163357(A054239(n)))`
-/

namespace A163908.P3393106834475165806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163918 (A163357 (A054239 n).toNat).toNat

end

end A163908.P3393106834475165806

/-! ## A163908.P14778690220610644499

`A163358(A163355(A163906(n)))`
-/

namespace A163908.P14778690220610644499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163358 (A163355 (A163906 n).toNat).toNat

end

end A163908.P14778690220610644499

/-! ## A163908.P1017676300055197405

`A163918(A163907(A163358(n)))`
-/

namespace A163908.P1017676300055197405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163918 (A163907 (A163358 n).toNat).toNat

end

end A163908.P1017676300055197405

/-! ## A163908.P1779016856356730960

`A163918(A163356(A163905(n)))`
-/

namespace A163908.P1779016856356730960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163918 (A163356 (A163905 n).toNat).toNat

end

end A163908.P1779016856356730960

/-! ## A163908.P5115670468020298018

`A163918(A163906(A163915(n)))`
-/

namespace A163908.P5115670468020298018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163918 (A163906 (A163915 n).toNat).toNat

end

end A163908.P5115670468020298018

/-! ## A163908.P9329131826705664995

`A163358(A163355(A163355(A163916(n))))`
-/

namespace A163908.P9329131826705664995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163358 (A163355 (A163355 (A163916 n).toNat).toNat).toNat

end

end A163908.P9329131826705664995

/-! ## A163908.P5935402034083289005

`A163918(A302843(A302846(A302843(n))))`
-/

namespace A163908.P5935402034083289005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163918 (A302843 (A302846 (A302843 n).toNat).toNat).toNat

end

end A163908.P5935402034083289005

/-! ## A163908.P2852288498243845863

`A054239(A163906(n))`
-/

namespace A163908.P2852288498243845863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054239 (A163906 n).toNat

end

end A163908.P2852288498243845863

/-! ## A163908.P10418105783093376396

`A054239(A163355(A163916(n)))`
-/

namespace A163908.P10418105783093376396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054239 (A163355 (A163916 n).toNat).toNat

end

end A163908.P10418105783093376396

/-! ## A163908.P13894676082384812078

`A054239(A163356(A163907(A163918(n))))`
-/

namespace A163908.P13894676082384812078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054239 (A163356 (A163907 (A163918 n).toNat).toNat).toNat

end

end A163908.P13894676082384812078

/-! ## A163908.P2556249208912650352

`A054239(A163356(A163356(A163918(A163917(n)))))`
-/

namespace A163908.P2556249208912650352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054239 (A163356 (A163356 (A163918 (A163917 n).toNat).toNat).toNat).toNat

end

end A163908.P2556249208912650352

/-!
# A163909: a(n) = A163914(2n).

The programs for A163909, there is no canonical definition to state claims against.
-/

/-! ## A163909.P62625591840735440

`A163914(2*n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A163909.P62625591840735440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163914 (2 * n)

end

end A163909.P62625591840735440

/-! ## A163909.P6572347328271919270

`A163913(2*n)/3`
-/

namespace A163909.P6572347328271919270
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163913 (2 * n) : ℚ) / 3

end

end A163909.P6572347328271919270

/-! ## A163909.P488356099098893859

`record[A163914(floor(n²/10))]`
-/

namespace A163909.P488356099098893859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163914 ⌊(n ^ 2 : ℚ) / 10⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163909.P488356099098893859

/-!
# A163910: Number of cycles in range [A000302(n-1)..A024036(n)] of permutation A163355/A163356.

The programs for A163910, there is no canonical definition to state claims against.
-/

/-! ## A163910.P11728397002165696819

`A194271(A135334(n))-A191362(n+1)`
-/

namespace A163910.P11728397002165696819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194271 (A135334 n).toNat - A191362 (n + 1)

end

end A163910.P11728397002165696819

/-!
# A163911: Maximum cycle size in range [A000302(n-1)..A024036(n)] of permutation A163355/A163356.

The programs for A163911, there is no canonical definition to state claims against.
-/

/-! ## A163911.P12848382775692888080

`record[A163890(A144678(n))]`
-/

namespace A163911.P12848382775692888080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163890 (A144678 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163911.P12848382775692888080

/-! ## A163911.P956329200111790380

`record[A163904(A138988(n+1))]`
-/

namespace A163911.P956329200111790380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163904 (A138988 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163911.P956329200111790380

/-! ## A163911.P4080898916471020218

`record[A163890(A297002(n+1))]`
-/

namespace A163911.P4080898916471020218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163890 (A297002 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163911.P4080898916471020218

/-! ## A163911.P729812089793806123

`record[A163904(A302026(n+1))]`
-/

namespace A163911.P729812089793806123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163904 (A302026 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163911.P729812089793806123

/-! ## A163911.P1293012288247193761

`record[A163904(A163355(n)+A054238(n))]`
-/

namespace A163911.P1293012288247193761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163904 (A163355 n + A054238 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163911.P1293012288247193761

/-!
# A163912: Least common multiple of all cycle sizes in range [A000302(n-1)..A024036(n)] of permutation A163355/A163356.

The programs for A163912, there is no canonical definition to state claims against.
-/

/-! ## A163912.P8332053170148538576

`∏[(n-1)%2+2]*A049703(A023022(n+2))`
-/

namespace A163912.P8332053170148538576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) - 1) 2 + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A049703 (A023022 (n + 2)).toNat

end

end A163912.P8332053170148538576

/-! ## A163912.P1075576267404447855

`A026549(n)*A051683(A023022(n+2))`
-/

namespace A163912.P1075576267404447855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026549 n * A051683 (A023022 (n + 2)).toNat

end

end A163912.P1075576267404447855

/-! ## A163912.P4107404707367953937

`A026549(n)*A086342(A087299(n))`
-/

namespace A163912.P4107404707367953937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026549 n * A086342 (A087299 n).toNat

end

end A163912.P4107404707367953937

/-! ## A163912.P11303067418803443793

`A026549(n)*A277446(A140539(n+1))`
-/

namespace A163912.P11303067418803443793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026549 n * A277446 (A140539 (n + 1)).toNat

end

end A163912.P11303067418803443793

/-!
# A163913: Number of integers i in range [A000302(n-1)..A024036(n)] of permutation A163355/A163356 with A163915(i)=i, but not A163355(i)=i.

The programs for A163913, there is no canonical definition to state claims against.
-/

/-! ## A163913.P4441944668195512816

`3*A163914(n)`
-/

namespace A163913.P4441944668195512816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A163914 n

end

end A163913.P4441944668195512816

/-! ## A163913.P11372941395999239022

`A008585(A163914(n))`
-/

namespace A163913.P11372941395999239022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (A163914 n).toNat

end

end A163913.P11372941395999239022

/-! ## A163913.P2491715005608810892

`A008486(A163914(n))%A048291(n)`
-/

namespace A163913.P2491715005608810892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008486 (A163914 n).toNat) (A048291 n)

end

end A163913.P2491715005608810892

/-! ## A163913.P14345839686443058051

`A008486(A163914(n)+n)-A008486(n)`
-/

namespace A163913.P14345839686443058051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A163914 n + (n : ℤ)).toNat - A008486 n

end

end A163913.P14345839686443058051

/-!
# A163914: Number of 3-cycles in range [A000302(n-1)..A024036(n)] of permutation A163355/A163356.

The programs for A163914, there is no canonical definition to state claims against.
-/

/-! ## A163914.P1686206204572297614

`A163913(n)/3`
-/

namespace A163914.P1686206204572297614
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163913 n : ℚ) / 3

end

end A163914.P1686206204572297614

/-! ## A163914.P925365744340776574

`A002264(A163913(n))`
-/

namespace A163914.P925365744340776574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A163913 n).toNat

end

end A163914.P925365744340776574

/-! ## A163914.P14791484340292706637

`A008611(A163913(n)+1)`
-/

namespace A163914.P14791484340292706637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A163913 n + 1).toNat

end

end A163914.P14791484340292706637

/-! ## A163914.P9449538015745009979

`A009947(A163913(n)+1)`
-/

namespace A163914.P9449538015745009979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009947 (A163913 n + 1).toNat

end

end A163914.P9449538015745009979

/-! ## A163914.P4344748847668641312

`A008611(xor(1, A163913(n)))`
-/

namespace A163914.P4344748847668641312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (Int.xor 1 (A163913 n)).toNat

end

end A163914.P4344748847668641312

/-!
# A163915: Permutation A163355 applied thrice.

The programs for A163915, there is no canonical definition to state claims against.
-/

/-! ## A163915.P13668850270738491277

`A163355(A163905(n))`
-/

namespace A163915.P13668850270738491277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163355 (A163905 n).toNat

end

end A163915.P13668850270738491277

/-! ## A163915.P10213756427225144684

`A163355(A163355(A163355(n)))`
-/

namespace A163915.P10213756427225144684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163355 (A163355 (A163355 n).toNat).toNat

end

end A163915.P10213756427225144684

/-! ## A163915.P1831153893078657723

`A163917(A054239(n))`
-/

namespace A163915.P1831153893078657723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163917 (A054239 n).toNat

end

end A163915.P1831153893078657723

/-! ## A163915.P5198583374413276150

`A163905(A163905(A163356(n)))`
-/

namespace A163915.P5198583374413276150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163905 (A163905 (A163356 n).toNat).toNat

end

end A163915.P5198583374413276150

/-! ## A163915.P6388744063398761086

`A163905(A163905(A163905(A163916(n))))`
-/

namespace A163915.P6388744063398761086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163905 (A163905 (A163905 (A163916 n).toNat).toNat).toNat

end

end A163915.P6388744063398761086

/-! ## A163915.P4783407161855299299

`A163905(A163905(A163907(A163918(n))))`
-/

namespace A163915.P4783407161855299299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163905 (A163905 (A163907 (A163918 n).toNat).toNat).toNat

end

end A163915.P4783407161855299299

/-! ## A163915.P14106116857353180213

`A163905(A302843(A302846(A302843(n))))`
-/

namespace A163915.P14106116857353180213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163905 (A302843 (A302846 (A302843 n).toNat).toNat).toNat

end

end A163915.P14106116857353180213

/-! ## A163915.P9034938864670290400

`A163907(A054239(A163907(A163358(n))))`
-/

namespace A163915.P9034938864670290400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163907 (A054239 (A163907 (A163358 n).toNat).toNat).toNat

end

end A163915.P9034938864670290400

/-!
# A163916: Permutation A163356 applied thrice.

The programs for A163916, there is no canonical definition to state claims against.
-/

/-! ## A163916.P17355890764689701965

`A163356(A163906(n))`
-/

namespace A163916.P17355890764689701965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163356 (A163906 n).toNat

end

end A163916.P17355890764689701965

/-! ## A163916.P13638462325819904171

`A163356(A163356(A163356(n)))`
-/

namespace A163916.P13638462325819904171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163356 (A163356 (A163356 n).toNat).toNat

end

end A163916.P13638462325819904171

/-! ## A163916.P5426335091975558547

`A163906(A163906(A163355(n)))`
-/

namespace A163916.P5426335091975558547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163906 (A163906 (A163355 n).toNat).toNat

end

end A163916.P5426335091975558547

/-! ## A163916.P300510598953286468

`A163906(A163906(A163357(A054239(n))))`
-/

namespace A163916.P300510598953286468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163906 (A163906 (A163357 (A054239 n).toNat).toNat).toNat

end

end A163916.P300510598953286468

/-! ## A163916.P10210353299104954334

`A163906(A163906(A163906(A163915(n))))`
-/

namespace A163916.P10210353299104954334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163906 (A163906 (A163906 (A163915 n).toNat).toNat).toNat

end

end A163916.P10210353299104954334

/-! ## A163916.P11073714343395766352

`A163357(A163908(A054238(A163908(n))))`
-/

namespace A163916.P11073714343395766352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163357 (A163908 (A054238 (A163908 n).toNat).toNat).toNat

end

end A163916.P11073714343395766352

/-! ## A163916.P3694003623470100320

`A163906(A054238(A163358(n)))`
-/

namespace A163916.P3694003623470100320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163906 (A054238 (A163358 n).toNat).toNat

end

end A163916.P3694003623470100320

/-! ## A163916.P14844387920206397465

`A054238(A163918(n))`
-/

namespace A163916.P14844387920206397465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054238 (A163918 n).toNat

end

end A163916.P14844387920206397465

/-!
# A163917: Permutation A163915 shown in N x N grid.

The programs for A163917, there is no canonical definition to state claims against.
-/

/-! ## A163917.P7788002531077566183

`A163915(A054238(n))`
-/

namespace A163917.P7788002531077566183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163915 (A054238 n).toNat

end

end A163917.P7788002531077566183

/-! ## A163917.P14582794563860867230

`A163905(A163357(n))`
-/

namespace A163917.P14582794563860867230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163905 (A163357 n).toNat

end

end A163917.P14582794563860867230

/-! ## A163917.P18367046830805142510

`A163355(A163907(n))`
-/

namespace A163917.P18367046830805142510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163355 (A163907 n).toNat

end

end A163917.P18367046830805142510

/-! ## A163917.P10476676594214719042

`A163905(A163361(n+1)-1)`
-/

namespace A163917.P10476676594214719042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163905 (A163361 (n + 1) - 1).toNat

end

end A163917.P10476676594214719042

/-! ## A163917.P363639699536764265

`A163905(A163355(A054238(A163906(A163905(n)))))`
-/

namespace A163917.P363639699536764265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163905 (A163355 (A054238 (A163906 (A163905 n).toNat).toNat).toNat).toNat

end

end A163917.P363639699536764265

/-! ## A163917.P6586293768791474966

`A163355(A163355(A163357(A163356(A163355(n)))))`
-/

namespace A163917.P6586293768791474966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163355 (A163355 (A163357 (A163356 (A163355 n).toNat).toNat).toNat).toNat

end

end A163917.P6586293768791474966

/-! ## A163917.P48222704878788959

`A163355(A163355(A163357(A163357(A163358(n)))))`
-/

namespace A163917.P48222704878788959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163355 (A163355 (A163357 (A163357 (A163358 n).toNat).toNat).toNat).toNat

end

end A163917.P48222704878788959

/-! ## A163917.P13032448473848343346

`A163355(A163355(A163359(A163358(A163359(n)))))`
-/

namespace A163917.P13032448473848343346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163355 (A163355 (A163359 (A163358 (A163359 n).toNat).toNat).toNat).toNat

end

end A163917.P13032448473848343346

/-! ## A163917.P16974964696487859063

`A163907(A163358(A163907(A163907(A163908(n)))))`
-/

namespace A163917.P16974964696487859063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163907 (A163358 (A163907 (A163907 (A163908 n).toNat).toNat).toNat).toNat

end

end A163917.P16974964696487859063

/-! ## A163917.P13019564095413611868

`A163915(A163906(A163907(A163905(A163906(n)))))`
-/

namespace A163917.P13019564095413611868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163915 (A163906 (A163907 (A163905 (A163906 n).toNat).toNat).toNat).toNat

end

end A163917.P13019564095413611868

/-! ## A163917.P2738425705647159204

`A163905(A163355(A163486(A163545(n))))`
-/

namespace A163917.P2738425705647159204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163905 (A163355 (A163486 (A163545 n).toNat).toNat).toNat

end

end A163917.P2738425705647159204

/-!
# A163918: Inverse permutation to A163917.

The programs for A163918, there is no canonical definition to state claims against.
-/

/-! ## A163918.P5698172459122663497

`A163908(A163356(n))`
-/

namespace A163918.P5698172459122663497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163908 (A163356 n).toNat

end

end A163918.P5698172459122663497

/-! ## A163918.P17910851825842304073

`A163358(A163906(n))`
-/

namespace A163918.P17910851825842304073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163358 (A163906 n).toNat

end

end A163918.P17910851825842304073

/-! ## A163918.P5328406653137348683

`A163358(A163916(A163355(n)))`
-/

namespace A163918.P5328406653137348683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163358 (A163916 (A163355 n).toNat).toNat

end

end A163918.P5328406653137348683

/-! ## A163918.P7318688456396212864

`A163908(A163357(A163908(n)))`
-/

namespace A163918.P7318688456396212864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163908 (A163357 (A163908 n).toNat).toNat

end

end A163918.P7318688456396212864

/-! ## A163918.P15443892850942878695

`A163908(A163916(A163905(n)))`
-/

namespace A163918.P15443892850942878695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163908 (A163916 (A163905 n).toNat).toNat

end

end A163918.P15443892850942878695

/-! ## A163918.P12295295940105600954

`A163908(A163355(A163355(A163916(n))))`
-/

namespace A163918.P12295295940105600954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163908 (A163355 (A163355 (A163916 n).toNat).toNat).toNat

end

end A163918.P12295295940105600954

/-! ## A163918.P5352548112110237716

`A163908(A163906(A163906(A163915(n))))`
-/

namespace A163918.P5352548112110237716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163908 (A163906 (A163906 (A163915 n).toNat).toNat).toNat

end

end A163918.P5352548112110237716

/-! ## A163918.P8416660872039568425

`A163908(A163906(A163906(A163917(A054239(n)))))`
-/

namespace A163918.P8416660872039568425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163908 (A163906 (A163906 (A163917 (A054239 n).toNat).toNat).toNat).toNat

end

end A163918.P8416660872039568425

/-! ## A163918.P14524219086870413041

`A163908(A163906(A163355(A163908(A163907(n)))))`
-/

namespace A163918.P14524219086870413041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163908 (A163906 (A163355 (A163908 (A163907 n).toNat).toNat).toNat).toNat

end

end A163918.P14524219086870413041

/-! ## A163918.P8177707446743235520

`A054239(A163916(n))`
-/

namespace A163918.P8177707446743235520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054239 (A163916 n).toNat

end

end A163918.P8177707446743235520

/-! ## A163918.P3172165999125159793

`A163908(A054238(A163358(n)))`
-/

namespace A163918.P3172165999125159793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163908 (A054238 (A163358 n).toNat).toNat

end

end A163918.P3172165999125159793

/-!
# A163919: a(n) = A163914(2n+1).

The programs for A163919, there is no canonical definition to state claims against.
-/

/-! ## A163919.P14366352313870147101

`A163914(2*n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A163919.P14366352313870147101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163914 (2 * n + 1)

end

end A163919.P14366352313870147101

/-! ## A163919.P7549052271212408167

`A163913(Δ[n²])/3`
-/

namespace A163919.P7549052271212408167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163913 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 3

end

end A163919.P7549052271212408167

/-! ## A163919.P9205826784637929964

`record[n%2*A163914(n)]`
-/

namespace A163919.P9205826784637929964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 2 : ℕ) : ℤ) * A163914 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163919.P9205826784637929964

/-!
# A163921: G.f.: A(x) = exp( Sum_{n>=1} A( sigma(n)*x )^n*x^n/n ).

The programs for A163921, there is no canonical definition to state claims against.
-/

/-! ## A163921.P4948100391684673457

`A130965(n*a(n-1))-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A163921.P4948100391684673457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A130965 ((n : ℤ) * a (n - 1)).toNat - a (n - 2)

end

end A163921.P4948100391684673457

/-! ## A163921.P4884140037698062062

`A008620(Δ[∏[A350842(n)]])`
-/

namespace A163921.P4884140037698062062
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350842 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (f1 (n + 1) - f1 n).toNat

end

end A163921.P4884140037698062062

/-!
# A163922: Number of reduced words of length n in Coxeter group on 6 generators S_i with relations (S_i)^2 = (S_i S_j)^6 = I.

The programs for A163922, there is no canonical definition to state claims against.
-/

/-! ## A163922.P15224452978073099257

`A166877(n)-A285007(2^n+1)`
-/

namespace A163922.P15224452978073099257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166877 n - A285007 (2 ^ n + 1)

end

end A163922.P15224452978073099257

/-! ## A163922.P5568870162854664398

`floor(6*5^(n-1))-A285007(A000051(n))`
-/

namespace A163922.P5568870162854664398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊6 * (5 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ - A285007 (A000051 n).toNat

end

end A163922.P5568870162854664398

/-! ## A163922.P1064577451113748452

`floor(6*5^(n-1))-A002262(A111432(n+2))`
-/

namespace A163922.P1064577451113748452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊6 * (5 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ - A002262 (A111432 (n + 2)).toNat

end

end A163922.P1064577451113748452

/-!
# A163923: Number of reduced words of length n in Coxeter group on 7 generators S_i with relations (S_i)^2 = (S_i S_j)^6 = I.

The programs for A163923, there is no canonical definition to state claims against.
-/

/-! ## A163923.P13348573621090228098

`A164742(n)-A241379(A241464(n+2))`
-/

namespace A163923.P13348573621090228098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164742 n - A241379 (A241464 (n + 2)).toNat

end

end A163923.P13348573621090228098

/-! ## A163923.P924385431194065441

`A168780(n)-A241379(A241464(n+2))`
-/

namespace A163923.P924385431194065441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168780 n - A241379 (A241464 (n + 2)).toNat

end

end A163923.P924385431194065441

/-!
# A163924: Number of reduced words of length n in Coxeter group on 8 generators S_i with relations (S_i)^2 = (S_i S_j)^6 = I.

The programs for A163924, there is no canonical definition to state claims against.
-/

/-! ## A163924.P11692775136148244038

`A003950(n)-A092659(A373671(n+1))`
-/

namespace A163924.P11692775136148244038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003950 n - A092659 (A373671 (n + 1)).toNat

end

end A163924.P11692775136148244038

/-!
# A163927: Numerators of the higher order exponential integral constants alpha(k,4).

The programs for A163927, there is no canonical definition to state claims against.
-/

/-! ## A163927.P3062388324082975664

`A346239(A027306(2*n+3))/10`
-/

namespace A163927.P3062388324082975664
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A346239 (A027306 (2 * n + 3)).toNat : ℚ) / 10

end

end A163927.P3062388324082975664

/-!
# A163929: Denominators of the higher order exponential integral constants alpha(2,n).

The programs for A163929, there is no canonical definition to state claims against.
-/

/-! ## A163929.P17366738321398153733

`A334585(n^A136400(n))`
-/

namespace A163929.P17366738321398153733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334585 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A136400 n : ℤ))).toNat

end

end A163929.P17366738321398153733

/-! ## A163929.P8901151922712354056

`A334585(n^A348192(n))`
-/

namespace A163929.P8901151922712354056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334585 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A348192 n : ℤ))).toNat

end

end A163929.P8901151922712354056

/-! ## A163929.P13289383267452137026

`A334585(A106544(n+1)+n)`
-/

namespace A163929.P13289383267452137026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334585 (A106544 (n + 1) + (n : ℤ)).toNat

end

end A163929.P13289383267452137026

/-! ## A163929.P10510238227243664167

`A334585(gcd(A000142(n), A007954(n)))`
-/

namespace A163929.P10510238227243664167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334585 (Int.gcd (A000142 n) (A007954 n))

end

end A163929.P10510238227243664167

/-! ## A163929.P4878151490896064965

`A334585(A253641(3^n))`
-/

namespace A163929.P4878151490896064965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334585 (A253641 (3 ^ n)).toNat

end

end A163929.P4878151490896064965

/-!
# A163932: Triangle related to the asymptotic expansion of E(x,m=3,n).

The programs for A163932, there is no canonical definition to state claims against.
-/

/-! ## A163932.P1305079960730682023

`A002260(n+1)/2*A028421(A014132(n+1))`
-/

namespace A163932.P1305079960730682023
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) : ℚ) / 2 * (A028421 (A014132 (n + 1)).toNat : ℚ)

end

end A163932.P1305079960730682023

/-! ## A163932.P9642197124129801433

`A000217(A002260(n+1))*A130534(A014132(n+1))`
-/

namespace A163932.P9642197124129801433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A002260 (n + 1)).toNat * A130534 (A014132 (n + 1)).toNat

end

end A163932.P9642197124129801433

/-!
# A163933: Third right hand column of triangle A163932.

The programs for A163933, the canonical program `A163933.P1195655893141466299` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163933 has offset 3).

The definition of A163933 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A163933.P1195655893141466299

`∑[(n+1)*(∑[A050509(n+1)]+1)]`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A163933

/-- `∑[(n+1)*(∑[A050509(n+1)]+1)]` -/
def P1195655893141466299.Spec : Prop :=
  ∀ n, P1195655893141466299.a n = A163933 (n + 3)

theorem P1195655893141466299.correct : P1195655893141466299.Spec := by
  intro n
  simp only [A163933, Nat.add_sub_cancel]

end A163933

/-! ## A163933.P1361137634704442258

`(A059845(n+1)+4)*∑[A000292(n+1)]`
-/

namespace A163933.P1361137634704442258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A059845 (n + 1) + 4) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A163933.P1361137634704442258

namespace A163933

/-- `(A059845(n+1)+4)*∑[A000292(n+1)]` -/
def P1361137634704442258.Spec : Prop :=
  ∀ n, P1361137634704442258.a n = A163933 (n + 3)

end A163933

/-! ## A163933.P17804884672913554015

`(A082289(n+4)+A082289(n+5))*A000217(n+1)`
-/

namespace A163933.P17804884672913554015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A082289 (n + 4) + A082289 (n + 5)) * A000217 (n + 1)

end

end A163933.P17804884672913554015

namespace A163933

/-- `(A082289(n+4)+A082289(n+5))*A000217(n+1)` -/
def P17804884672913554015.Spec : Prop :=
  ∀ n, P17804884672913554015.a n = A163933 (n + 3)

end A163933

/-! ## A163933.P15906336529567568509

`∑[A000292(n+1)]*A115067(n+3)`
-/

namespace A163933.P15906336529567568509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A115067 (n + 3)

end

end A163933.P15906336529567568509

namespace A163933

/-- `∑[A000292(n+1)]*A115067(n+3)` -/
def P15906336529567568509.Spec : Prop :=
  ∀ n, P15906336529567568509.a n = A163933 (n + 3)

end A163933

/-! ## A163933.P3577411287078337446

`∑[n+1]*A000914(n+2)`
-/

namespace A163933.P3577411287078337446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A000914 (n + 2)

end

end A163933.P3577411287078337446

namespace A163933

/-- `∑[n+1]*A000914(n+2)` -/
def P3577411287078337446.Spec : Prop :=
  ∀ n, P3577411287078337446.a n = A163933 (n + 3)

end A163933

/-! ## A163933.P7629639821207631337

`A000217(n+1)*A329598(A000217(n+2))`
-/

namespace A163933.P7629639821207631337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) * A329598 (A000217 (n + 2)).toNat

end

end A163933.P7629639821207631337

namespace A163933

/-- `A000217(n+1)*A329598(A000217(n+2))` -/
def P7629639821207631337.Spec : Prop :=
  ∀ n, P7629639821207631337.a n = A163933 (n + 3)

end A163933

/-! ## A163933.P10499517348271413026

`A075183(n+1)/A000142(n)`
-/

namespace A163933.P10499517348271413026
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075183 (n + 1) : ℚ) / (A000142 n : ℚ)

end

end A163933.P10499517348271413026

namespace A163933

/-- `A075183(n+1)/A000142(n)` -/
def P10499517348271413026.Spec : Prop :=
  ∀ n, P10499517348271413026.a n = (A163933 (n + 3) : ℚ)

end A163933

/-!
# A163934: Triangle related to the asymptotic expansion of E(x,m=4,n).

The programs for A163934, there is no canonical definition to state claims against.
-/

/-! ## A163934.P14537956818268559902

`A163939(n+1)-A036169(A157150(n))`
-/

namespace A163934.P14537956818268559902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163939 (n + 1) - A036169 (A157150 n).toNat

end

end A163934.P14537956818268559902

/-! ## A163934.P11340126610701673333

`and(A163939(n+1), A163961(A163976(3*(n+1))))`
-/

namespace A163934.P11340126610701673333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A163939 (n + 1)) (A163961 (A163976 (3 * (n + 1))).toNat)

end

end A163934.P11340126610701673333

/-!
# A163935: Third right hand column of triangle A163934.

The programs for A163935, the canonical program `A163935.P16843162133888820864` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163935 has offset 3).

The definition of A163935 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A163935.P16843162133888820864

`3*A027802(n+2)-A027790(n+2)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A163935

/-- `3*A027802(n+2)-A027790(n+2)` -/
def P16843162133888820864.Spec : Prop :=
  ∀ n, P16843162133888820864.a n = A163935 (n + 3)

theorem P16843162133888820864.correct : P16843162133888820864.Spec := by
  intro n
  simp only [A163935, Nat.add_sub_cancel]

end A163935

/-! ## A163935.P579812609340798265

`(n+1)/3*A163933(n+4)`
-/

namespace A163935.P579812609340798265
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 3 * (A163933 (n + 4) : ℚ)

end

end A163935.P579812609340798265

namespace A163935

/-- `(n+1)/3*A163933(n+4)` -/
def P579812609340798265.Spec : Prop :=
  ∀ n, P579812609340798265.a n = (A163935 (n + 3) : ℚ)

end A163935

/-! ## A163935.P2887734612773353674

`∑[∑[n+1]]*A000914(n+3)`
-/

namespace A163935.P2887734612773353674
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A000914 (n + 3)

end

end A163935.P2887734612773353674

namespace A163935

/-- `∑[∑[n+1]]*A000914(n+3)` -/
def P2887734612773353674.Spec : Prop :=
  ∀ n, P2887734612773353674.a n = A163935 (n + 3)

end A163935

/-! ## A163935.P5521536105185296218

`A000914(n+3)*A086659(A000217(n+2))`
-/

namespace A163935.P5521536105185296218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000914 (n + 3) * A086659 (A000217 (n + 2)).toNat

end

end A163935.P5521536105185296218

namespace A163935

/-- `A000914(n+3)*A086659(A000217(n+2))` -/
def P5521536105185296218.Spec : Prop :=
  ∀ n, P5521536105185296218.a n = A163935 (n + 3)

end A163935

/-! ## A163935.P4290025229399774247

`A163934(∑[n+3]+1)`
-/

namespace A163935.P4290025229399774247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163934 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A163935.P4290025229399774247

namespace A163935

/-- `A163934(∑[n+3]+1)` -/
def P4290025229399774247.Spec : Prop :=
  ∀ n, P4290025229399774247.a n = A163935 (n + 3)

end A163935

/-!
# A163936: Triangle related to the o.g.f.s. of the right-hand columns of A130534 (E(x,m=1,n)).

The programs for A163936, there is no canonical definition to state claims against.
-/

/-! ## A163936.P16975568241320045608

`A288874(ceil(acot(n)+n))`
-/

namespace A163936.P16975568241320045608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288874 ⌈SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌉.toNat

end

end A163936.P16975568241320045608

/-! ## A163936.P2830419955919106039

`floor(A288874(n+1)+acot(n))`
-/

namespace A163936.P2830419955919106039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A288874 (n + 1) : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋

end

end A163936.P2830419955919106039

/-! ## A163936.P273278770778087475

`A288874((n+1)%(2*n+1))`
-/

namespace A163936.P273278770778087475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288874 ((n + 1) % (2 * n + 1))

end

end A163936.P273278770778087475

/-! ## A163936.P18352913752145121519

`A288874(C(2, n+2)+n+1)`
-/

namespace A163936.P18352913752145121519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288874 (Nat.choose 2 (n + 2) + (n + 1))

end

end A163936.P18352913752145121519

/-! ## A163936.P7062338751239968740

`A288874(A028310(n)+1)`
-/

namespace A163936.P7062338751239968740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288874 (A028310 n + 1).toNat

end

end A163936.P7062338751239968740

/-! ## A163936.P255477799987665828

`A288874(A087156(n+1))`
-/

namespace A163936.P255477799987665828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288874 (A087156 (n + 1)).toNat

end

end A163936.P255477799987665828

/-! ## A163936.P516749931360211232

`A288874(A254667(n+1))`
-/

namespace A163936.P516749931360211232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288874 (A254667 (n + 1)).toNat

end

end A163936.P516749931360211232

/-! ## A163936.P12914838116568790188

`A288874(A199969(n+2))`
-/

namespace A163936.P12914838116568790188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288874 (A199969 (n + 2)).toNat

end

end A163936.P12914838116568790188

/-! ## A163936.P15035352154176203371

`A288874(A054977(n)+n)`
-/

namespace A163936.P15035352154176203371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288874 (A054977 n + (n : ℤ)).toNat

end

end A163936.P15035352154176203371

/-! ## A163936.P3328514541184096479

`A288874(A057427(n)+n)`
-/

namespace A163936.P3328514541184096479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288874 (A057427 n + (n : ℤ)).toNat

end

end A163936.P3328514541184096479

/-! ## A163936.P9566770176866832767

`A288874(n-A134824(n))`
-/

namespace A163936.P9566770176866832767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288874 ((n : ℤ) - A134824 n).toNat

end

end A163936.P9566770176866832767

/-! ## A163936.P17024891530315868970

`A288874(A134824(n)²+n)`
-/

namespace A163936.P17024891530315868970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288874 (A134824 n ^ 2 + (n : ℤ)).toNat

end

end A163936.P17024891530315868970

/-! ## A163936.P9552889944899111522

`A288874(A294619(n)²+n)`
-/

namespace A163936.P9552889944899111522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288874 (A294619 n ^ 2 + (n : ℤ)).toNat

end

end A163936.P9552889944899111522

/-! ## A163936.P9303192800980600108

`A288874(n+1)+A000007(n)`
-/

namespace A163936.P9303192800980600108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288874 (n + 1) + A000007 n

end

end A163936.P9303192800980600108

/-! ## A163936.P11465031726874782670

`A288874(A004277(n)+1-n)`
-/

namespace A163936.P11465031726874782670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288874 (A004277 n + (1 - (n : ℤ))).toNat

end

end A163936.P11465031726874782670

/-! ## A163936.P3598101315085899684

`A288874(A294619(n+2)+n)`
-/

namespace A163936.P3598101315085899684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288874 (A294619 (n + 2) + (n : ℤ)).toNat

end

end A163936.P3598101315085899684

/-! ## A163936.P15414195453090152780

`A288874(1-(A000007(n)-n))`
-/

namespace A163936.P15414195453090152780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288874 (1 - (A000007 n - (n : ℤ))).toNat

end

end A163936.P15414195453090152780

/-! ## A163936.P2011693639608543744

`A288874(1-(n-A004277(n)))`
-/

namespace A163936.P2011693639608543744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288874 (1 - ((n : ℤ) - A004277 n)).toNat

end

end A163936.P2011693639608543744

/-! ## A163936.P15881200269992546635

`A288874(2-(A054977(n)-n))`
-/

namespace A163936.P15881200269992546635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288874 (2 - (A054977 n - (n : ℤ))).toNat

end

end A163936.P15881200269992546635

/-! ## A163936.P9289636245031542891

`A288874(2-(A057427(n)-n))`
-/

namespace A163936.P9289636245031542891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288874 (2 - (A057427 n - (n : ℤ))).toNat

end

end A163936.P9289636245031542891

/-!
# A163940: Triangle related to the divergent series 1^m*1! - 2^m*2! + 3^m*3! - 4^m*4! + ... for m >= -1.

The programs for A163940, there is no canonical definition to state claims against.
-/

/-! ## A163940.P2049353636500102150

`∑[A117334(A061579(n))-char[1]]`
-/

namespace A163940.P2049353636500102150
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117334 (A061579 n).toNat - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163940.P2049353636500102150

/-! ## A163940.P12556137620350957584

`A057428(n)+∑[A117334(A061579(n))]`
-/

namespace A163940.P12556137620350957584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117334 (A061579 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163940.P12556137620350957584

/-! ## A163940.P12169978732380475920

`∑[A159075(n)+A117334(A061579(n))]`
-/

namespace A163940.P12169978732380475920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159075 n + A117334 (A061579 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163940.P12169978732380475920

/-! ## A163940.P14423674625840564145

`∑[A117334(A061579(n))]-A057427(n)`
-/

namespace A163940.P14423674625840564145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117334 (A061579 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A057427 n

end

end A163940.P14423674625840564145

/-! ## A163940.P17829646067556644772

`∑[A117334(A061579(n))]-A178334(n)`
-/

namespace A163940.P17829646067556644772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117334 (A061579 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A178334 n

end

end A163940.P17829646067556644772

/-! ## A163940.P9835325191128505616

`∑[A117334(A061579(n))]-A178489(n)`
-/

namespace A163940.P9835325191128505616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117334 (A061579 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A178489 n

end

end A163940.P9835325191128505616

/-! ## A163940.P14591892032032092893

`∑[A117334(A061579(n))%A000032(n)]`
-/

namespace A163940.P14591892032032092893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A117334 (A061579 n).toNat) (A000032 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163940.P14591892032032092893

/-! ## A163940.P60695941374973895

`∑[A117334(A061579(n))]-A011626(n²)`
-/

namespace A163940.P60695941374973895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117334 (A061579 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A011626 (n ^ 2)

end

end A163940.P60695941374973895

/-! ## A163940.P16087314721925816720

`∑[A117334(A038722(n+1)-1)%A000032(n)]`
-/

namespace A163940.P16087314721925816720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A117334 (A038722 (n + 1) - 1).toNat) (A000032 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163940.P16087314721925816720

/-!
# A163941: Fourth right hand column of triangle A163940.

The programs for A163941, the canonical program `A163941.P4737177024880799105` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163941 has offset 0).

The definition of A163941 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A163941.P17104752697967617105

`1/4*(2^(n+5)+(2*n-3)*3^(n+2)-1)`
-/

namespace A163941.P17104752697967617105
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 4 * ((2 ^ (n + 5) : ℤ) + ((2 * n : ℤ) - 3) * (3 ^ (n + 2) : ℤ) - 1 : ℚ)

end

end A163941.P17104752697967617105

namespace A163941

/-- `1/4*(2^(n+5)+(2*n-3)*3^(n+2)-1)` -/
def P17104752697967617105.Spec : Prop :=
  ∀ n, P17104752697967617105.a n = (A163941 n : ℚ)

end A163941

/-! ## A163941.P4737177024880799105

`9*a(n-1)-29*a(n-2)+39*a(n-3)-18*a(n-4)` with `a(0)=1, a(1)=9, a(2)=52, a(3)=246`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A163941

/-- `9*a(n-1)-29*a(n-2)+39*a(n-3)-18*a(n-4)` -/
def P4737177024880799105.Spec : Prop :=
  ∀ n, P4737177024880799105.a n = A163941 n

theorem P4737177024880799105.correct : P4737177024880799105.Spec := by
  intro n
  simp only [A163941]

end A163941

/-! ## A163941.P5346364329964480574

`∑[A001047(n+1)+3*a(n-1)]` with `a(0)=1`
-/

namespace A163941.P5346364329964480574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A001047 (n + 1) + 3 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163941.P5346364329964480574

namespace A163941

/-- `∑[A001047(n+1)+3*a(n-1)]` -/
def P5346364329964480574.Spec : Prop :=
  ∀ n, P5346364329964480574.a n = A163941 n

end A163941

/-! ## A163941.P1933593614115955607

`∑[A027471(n+2)+2*a(n-1)]` with `a(0)=1`
-/

namespace A163941.P1933593614115955607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A027471 (n + 2) + 2 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163941.P1933593614115955607

namespace A163941

/-- `∑[A027471(n+2)+2*a(n-1)]` -/
def P1933593614115955607.Spec : Prop :=
  ∀ n, P1933593614115955607.a n = A163941 n

end A163941

/-! ## A163941.P14665953706105333599

`∑[2*a(n-1)+A124647(n)-A036290(n)]` with `a(0)=1`
-/

namespace A163941.P14665953706105333599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * f1 (n - 1) + (A124647 n - A036290 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163941.P14665953706105333599

namespace A163941

/-- `∑[2*a(n-1)+A124647(n)-A036290(n)]` -/
def P14665953706105333599.Spec : Prop :=
  ∀ n, P14665953706105333599.a n = A163941 n

end A163941

/-! ## A163941.P13134967453254418144

`A259653(∑[n+1])+a(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A163941.P13134967453254418144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A259653 (∑ j ∈ Finset.range (n + 1), f1 j) + (a (n - 1) + a (n - 1))

end

end A163941.P13134967453254418144

namespace A163941

/-- `A259653(∑[n+1])+a(n-1)+a(n-1)` -/
def P13134967453254418144.Spec : Prop :=
  ∀ n, P13134967453254418144.a n = A163941 n

end A163941

/-! ## A163941.P11655422473086155569

`∑[A193856(A034856(n+1))]`
-/

namespace A163941.P11655422473086155569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193856 (A034856 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163941.P11655422473086155569

namespace A163941

/-- `∑[A193856(A034856(n+1))]` -/
def P11655422473086155569.Spec : Prop :=
  ∀ n, P11655422473086155569.a n = A163941 n

end A163941

/-! ## A163941.P2926799521181062722

`A250118(A167614(n+2)+1)`
-/

namespace A163941.P2926799521181062722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250118 (A167614 (n + 2) + 1).toNat

end

end A163941.P2926799521181062722

namespace A163941

/-- `A250118(A167614(n+2)+1)` -/
def P2926799521181062722.Spec : Prop :=
  ∀ n, P2926799521181062722.a n = A163941 n

end A163941

/-!
# A163942: Fifth right hand column of triangle A163940.

The programs for A163942, the canonical program `A163942.P16616574572542863753` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163942 has offset 0).

The definition of A163942 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A163942.P16616574572542863753

`1/18*(3^(n+6)+(3*n-10)*4^(n+3)-9*2^(n+3)+1)`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A163942

/-- `1/18*(3^(n+6)+(3*n-10)*4^(n+3)-9*2^(n+3)+1)` -/
def P16616574572542863753.Spec : Prop :=
  ∀ n, P16616574572542863753.a n = (A163942 n : ℚ)

end A163942

/-! ## A163942.P1373887677138656147

`A250119(A167499(n+3))`
-/

namespace A163942.P1373887677138656147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250119 (A167499 (n + 3)).toNat

end

end A163942.P1373887677138656147

namespace A163942

/-- `A250119(A167499(n+3))` -/
def P1373887677138656147.Spec : Prop :=
  ∀ n, P1373887677138656147.a n = A163942 n

end A163942

/-! ## A163942.P5494861518905088802

`A250119(A155212(n)+13)`
-/

namespace A163942.P5494861518905088802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250119 (A155212 n + 13).toNat

end

end A163942.P5494861518905088802

namespace A163942

/-- `A250119(A155212(n)+13)` -/
def P5494861518905088802.Spec : Prop :=
  ∀ n, P5494861518905088802.a n = A163942 n

end A163942

/-! ## A163942.P14617671435015380770

`A250119(A056000(n)+15)`
-/

namespace A163942.P14617671435015380770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250119 (A056000 n + 15).toNat

end

end A163942.P14617671435015380770

namespace A163942

/-- `A250119(A056000(n)+15)` -/
def P14617671435015380770.Spec : Prop :=
  ∀ n, P14617671435015380770.a n = A163942 n

end A163942

/-! ## A163942.P16648781719376984031

`A250119(A167614(n+3)+2)`
-/

namespace A163942.P16648781719376984031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250119 (A167614 (n + 3) + 2).toNat

end

end A163942.P16648781719376984031

namespace A163942

/-- `A250119(A167614(n+3)+2)` -/
def P16648781719376984031.Spec : Prop :=
  ∀ n, P16648781719376984031.a n = A163942 n

end A163942

/-! ## A163942.P8820920311157591566

`A250119(A000217(n+4)+5)`
-/

namespace A163942.P8820920311157591566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250119 (A000217 (n + 4) + 5).toNat

end

end A163942.P8820920311157591566

namespace A163942

/-- `A250119(A000217(n+4)+5)` -/
def P8820920311157591566.Spec : Prop :=
  ∀ n, P8820920311157591566.a n = A163942 n

end A163942

/-!
# A163943: Third left hand column of triangle A163940.

The programs for A163943, the canonical program `A163943.P5944201467939367758` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163943 has offset 0).

The definition of A163943 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A163943.P9029257522288337167

`(2*n+45*n²+22*n^3+3*n^4)/24`
-/

namespace A163943.P9029257522288337167
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 45 * n ^ 2 + 22 * n ^ 3 + 3 * n ^ 4 : ℚ) / 24

end

end A163943.P9029257522288337167

namespace A163943

/-- `(2*n+45*n²+22*n^3+3*n^4)/24` -/
def P9029257522288337167.Spec : Prop :=
  ∀ n, P9029257522288337167.a n = (A163943 n : ℚ)

end A163943

/-! ## A163943.P5944201467939367758

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=0, a(1)=3, a(2)=17, a(3)=52, a(4)=121`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A163943

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P5944201467939367758.Spec : Prop :=
  ∀ n, P5944201467939367758.a n = A163943 n

theorem P5944201467939367758.correct : P5944201467939367758.Spec := by
  intro n
  simp only [A163943]

end A163943

/-! ## A163943.P17072029008010678907

`A215862(n)-n`
-/

namespace A163943.P17072029008010678907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215862 n - (n : ℤ)

end

end A163943.P17072029008010678907

namespace A163943

/-- `A215862(n)-n` -/
def P17072029008010678907.Spec : Prop :=
  ∀ n, P17072029008010678907.a n = A163943 n

end A163943

/-! ## A163943.P8524876041049328718

`∑[A077414(n+1)]-n`
-/

namespace A163943.P8524876041049328718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077414 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A163943.P8524876041049328718

namespace A163943

/-- `∑[A077414(n+1)]-n` -/
def P8524876041049328718.Spec : Prop :=
  ∀ n, P8524876041049328718.a n = A163943 n

end A163943

/-! ## A163943.P14217788579603008896

`∑[C(n*(n+2), 2)/A028310(n)]`
-/

namespace A163943.P14217788579603008896
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n * (n + 2)) 2 : ℚ) / (A028310 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163943.P14217788579603008896

namespace A163943

/-- `∑[C(n*(n+2), 2)/A028310(n)]` -/
def P14217788579603008896.Spec : Prop :=
  ∀ n, P14217788579603008896.a n = (A163943 n : ℚ)

end A163943

/-! ## A163943.P10572035805625350113

`A090809(n)+A059270(n)`
-/

namespace A163943.P10572035805625350113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090809 n + A059270 n

end

end A163943.P10572035805625350113

namespace A163943

/-- `A090809(n)+A059270(n)` -/
def P10572035805625350113.Spec : Prop :=
  ∀ n, P10572035805625350113.a n = A163943 n

end A163943

/-! ## A163943.P13075848635485908796

`A101166(n)-A027441(n)`
-/

namespace A163943.P13075848635485908796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101166 n - A027441 n

end

end A163943.P13075848635485908796

namespace A163943

/-- `A101166(n)-A027441(n)` -/
def P13075848635485908796.Spec : Prop :=
  ∀ n, P13075848635485908796.a n = A163943 n

end A163943

/-! ## A163943.P17370617255531852560

`A290312(n)-A341209(n)`
-/

namespace A163943.P17370617255531852560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290312 n - A341209 n

end

end A163943.P17370617255531852560

namespace A163943

/-- `A290312(n)-A341209(n)` -/
def P17370617255531852560.Spec : Prop :=
  ∀ n, P17370617255531852560.a n = A163943 n

end A163943

/-! ## A163943.P14303098842850939814

`A059302(n+2)+A047732(n)`
-/

namespace A163943.P14303098842850939814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059302 (n + 2) + A047732 n

end

end A163943.P14303098842850939814

namespace A163943

/-- `A059302(n+2)+A047732(n)` -/
def P14303098842850939814.Spec : Prop :=
  ∀ n, P14303098842850939814.a n = A163943 n

end A163943

/-! ## A163943.P10660390940008767074

`A302560(n+1)-A058310(n)`
-/

namespace A163943.P10660390940008767074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302560 (n + 1) - A058310 n

end

end A163943.P10660390940008767074

namespace A163943

/-- `A302560(n+1)-A058310(n)` -/
def P10660390940008767074.Spec : Prop :=
  ∀ n, P10660390940008767074.a n = A163943 n

end A163943

/-! ## A163943.P9432712806599963910

`A001296(n+1)-A034856(n+1)`
-/

namespace A163943.P9432712806599963910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001296 (n + 1) - A034856 (n + 1)

end

end A163943.P9432712806599963910

namespace A163943

/-- `A001296(n+1)-A034856(n+1)` -/
def P9432712806599963910.Spec : Prop :=
  ∀ n, P9432712806599963910.a n = A163943 n

end A163943

/-! ## A163943.P5849587309953740805

`A086602(n+1)+A001296(n)-A086602(n)`
-/

namespace A163943.P5849587309953740805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086602 (n + 1) + (A001296 n - A086602 n)

end

end A163943.P5849587309953740805

namespace A163943

/-- `A086602(n+1)+A001296(n)-A086602(n)` -/
def P5849587309953740805.Spec : Prop :=
  ∀ n, P5849587309953740805.a n = A163943 n

end A163943

/-! ## A163943.P11189673278215468740

`∑[record[(n-1)*∑[n-1]-1]]`
-/

namespace A163943.P11189673278215468740
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * (∑ j ∈ Finset.range (n + 1), f3 j) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163943.P11189673278215468740

namespace A163943

/-- `∑[record[(n-1)*∑[n-1]-1]]` -/
def P11189673278215468740.Spec : Prop :=
  ∀ n, P11189673278215468740.a n = A163943 n

end A163943

/-! ## A163943.P1007133539048746600

`A090809(n+2)-A014616(2*n+1)`
-/

namespace A163943.P1007133539048746600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090809 (n + 2) - A014616 (2 * n + 1)

end

end A163943.P1007133539048746600

namespace A163943

/-- `A090809(n+2)-A014616(2*n+1)` -/
def P1007133539048746600.Spec : Prop :=
  ∀ n, P1007133539048746600.a n = A163943 n

end A163943

/-! ## A163943.P14576218616655222463

`A084990(n)+A000914(n)`
-/

namespace A163943.P14576218616655222463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084990 n + A000914 n

end

end A163943.P14576218616655222463

namespace A163943

/-- `A084990(n)+A000914(n)` -/
def P14576218616655222463.Spec : Prop :=
  ∀ n, P14576218616655222463.a n = A163943 n

end A163943

/-! ## A163943.P10640942852729787222

`A005581(n)+A000217(A000096(n))`
-/

namespace A163943.P10640942852729787222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005581 n + A000217 (A000096 n).toNat

end

end A163943.P10640942852729787222

namespace A163943

/-- `A005581(n)+A000217(A000096(n))` -/
def P10640942852729787222.Spec : Prop :=
  ∀ n, P10640942852729787222.a n = A163943 n

end A163943

/-! ## A163943.P14015682004665928518

`A161680(A000217(n+1))+A005581(n)`
-/

namespace A163943.P14015682004665928518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A000217 (n + 1)).toNat + A005581 n

end

end A163943.P14015682004665928518

namespace A163943

/-- `A161680(A000217(n+1))+A005581(n)` -/
def P14015682004665928518.Spec : Prop :=
  ∀ n, P14015682004665928518.a n = A163943 n

end A163943

/-!
# A163944: Fourth left hand column of triangle A163940.

The programs for A163944, the canonical program `A163944.P64873295283553937` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163944 has offset 0).

The definition of A163944 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A163944.P64873295283553937

`(10*n²+107*n^3+61*n^4+13*n^5+n^6)/48`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A163944

/-- `(10*n²+107*n^3+61*n^4+13*n^5+n^6)/48` -/
def P64873295283553937.Spec : Prop :=
  ∀ n, P64873295283553937.a n = (A163944 n : ℚ)

end A163944

/-! ## A163944.P6420246234229644642

`A163940(A167614(n+2))`
-/

namespace A163944.P6420246234229644642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163940 (A167614 (n + 2)).toNat

end

end A163944.P6420246234229644642

namespace A163944

/-- `A163940(A167614(n+2))` -/
def P6420246234229644642.Spec : Prop :=
  ∀ n, P6420246234229644642.a n = A163944 n

end A163944

/-! ## A163944.P1163416717570207526

`A163940(A141214(n)+6)`
-/

namespace A163944.P1163416717570207526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163940 (A141214 n + 6).toNat

end

end A163944.P1163416717570207526

namespace A163944

/-- `A163940(A141214(n)+6)` -/
def P1163416717570207526.Spec : Prop :=
  ∀ n, P1163416717570207526.a n = A163944 n

end A163944

/-! ## A163944.P6485132594373887026

`A163940(A052905(n)+8)`
-/

namespace A163944.P6485132594373887026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163940 (A052905 n + 8).toNat

end

end A163944.P6485132594373887026

namespace A163944

/-- `A163940(A052905(n)+8)` -/
def P6485132594373887026.Spec : Prop :=
  ∀ n, P6485132594373887026.a n = A163944 n

end A163944

/-!
# A163945: Triangle interpolating between (-1)^n (A033999) and the swinging factorial function (A056040) restricted to odd indices (2n+1)$ (A002457), read by rows.

The programs for A163945, there is no canonical definition to state claims against.
-/

/-! ## A163945.P12168424336527781728

`A002457(A002262(n))*A130595(n)`
-/

namespace A163945.P12168424336527781728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002457 (A002262 n).toNat * A130595 n

end

end A163945.P12168424336527781728

/-! ## A163945.P3664309752778890733

`A002457(A025659(n+1))*A130595(n)`
-/

namespace A163945.P3664309752778890733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002457 (A025659 (n + 1)).toNat * A130595 n

end

end A163945.P3664309752778890733

/-! ## A163945.P923637174191484377

`A002457(A025668(n+1))*A130595(n)`
-/

namespace A163945.P923637174191484377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002457 (A025668 (n + 1)).toNat * A130595 n

end

end A163945.P923637174191484377

/-! ## A163945.P1792572654789779598

`A056040(A158405(n+1))*A130595(n)`
-/

namespace A163945.P1792572654789779598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056040 (A158405 (n + 1)).toNat * A130595 n

end

end A163945.P1792572654789779598

/-! ## A163945.P13625836453321256769

`A039599(n)/A046521(n)*A331431(n)`
-/

namespace A163945.P13625836453321256769
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A039599 n : ℚ) / (A046521 n : ℚ) * (A331431 n : ℚ)

end

end A163945.P13625836453321256769

/-!
# A163947: Number of functions on a finite set that are not obtainable by any composition power (excluding identity as power).

The programs for A163947, there is no canonical definition to state claims against.
-/

/-! ## A163947.P7996961023108807756

`(n+1)^(n+1)-A163948(n+1)`
-/

namespace A163947.P7996961023108807756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ (n + 1) : ℤ) - A163948 (n + 1)

end

end A163947.P7996961023108807756

/-! ## A163947.P2581685857948362591

`abs(A086756(n+1)-A163948(n+1))`
-/

namespace A163947.P2581685857948362591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A086756 (n + 1) - A163948 (n + 1)|

end

end A163947.P2581685857948362591

/-! ## A163947.P4679222762493849602

`lcm(A086756(n+1)-A163948(n+1), A103283(n))`
-/

namespace A163947.P4679222762493849602
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A086756 (n + 1) - A163948 (n + 1)) (A103283 n)

end

end A163947.P4679222762493849602

/-!
# A163948: The number of functions on a finite set that are obtainable by a composition power (excluding identity as power).

The programs for A163948, there is no canonical definition to state claims against.
-/

/-! ## A163948.P16197677120709761505

`Δ[A001923(n)]-A163947(n+1)`
-/

namespace A163948.P16197677120709761505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001923 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A163947 (n + 1)

end

end A163948.P16197677120709761505

/-! ## A163948.P10337333640361286144

`record[A045503(n)]-A163947(n+1)`
-/

namespace A163948.P10337333640361286144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045503 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A163947 (n + 1)

end

end A163948.P10337333640361286144

/-! ## A163948.P9316160371871237589

`record[A128433(n)]-A163947(n+1)`
-/

namespace A163948.P9316160371871237589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128433 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A163947 (n + 1)

end

end A163948.P9316160371871237589

/-!
# A163949: The number of functions in a finite set that are not obtainable by a composition power of any other function. Similar to A163947, but it excludes self compositions.

The programs for A163949, there is no canonical definition to state claims against.
-/

/-! ## A163949.P12592969904579427244

`(n+1)^(n+1)-A163950(n+1)`
-/

namespace A163949.P12592969904579427244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ (n + 1) : ℤ) - A163950 (n + 1)

end

end A163949.P12592969904579427244

/-! ## A163949.P16130815171705218733

`abs(A086756(n+1)-A163950(n+1))`
-/

namespace A163949.P16130815171705218733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A086756 (n + 1) - A163950 (n + 1)|

end

end A163949.P16130815171705218733

/-! ## A163949.P12724675302526234785

`A163947(n+1)+A163948(n+1)-A163950(n+1)`
-/

namespace A163949.P12724675302526234785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163947 (n + 1) + (A163948 (n + 1) - A163950 (n + 1))

end

end A163949.P12724675302526234785

/-!
# A163950: The number of functions in a finite set that can be expressed by a composition power of another function. (It differs from A163948, as it excludes self compositions).

The programs for A163950, there is no canonical definition to state claims against.
-/

/-! ## A163950.P609051967044660397

`Δ[A001923(n)]-A163949(n+1)`
-/

namespace A163950.P609051967044660397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001923 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A163949 (n + 1)

end

end A163950.P609051967044660397

/-! ## A163950.P12700401348910990674

`record[A045503(n)]-A163949(n+1)`
-/

namespace A163950.P12700401348910990674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045503 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A163949 (n + 1)

end

end A163950.P12700401348910990674

/-! ## A163950.P11099358600501498953

`record[A226272(n)]-A163949(n+1)`
-/

namespace A163950.P11099358600501498953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226272 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A163949 (n + 1)

end

end A163950.P11099358600501498953

/-!
# A163951: The number of functions in a finite set for which the sequence of composition powers ends in a length 2 cycle.

The programs for A163951, there is no canonical definition to state claims against.
-/

/-! ## A163951.P9268875974791605180

`A209319(n)-(n+1)^(n-1)`
-/

namespace A163951.P9268875974791605180
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209319 n : ℚ) - (n + 1 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A163951.P9268875974791605180

/-! ## A163951.P1020314244539610442

`A241981(A133263(n))`
-/

namespace A163951.P1020314244539610442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241981 (A133263 n).toNat

end

end A163951.P1020314244539610442

/-! ## A163951.P2648754165599080464

`A241981(A238531(n+1))`
-/

namespace A163951.P2648754165599080464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241981 (A238531 (n + 1)).toNat

end

end A163951.P2648754165599080464

/-! ## A163951.P6245078662888675862

`A241981(A000124(n)+ceil(sin(n)²))`
-/

namespace A163951.P6245078662888675862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241981 (A000124 n + ⌈Real.sin (n : ℝ) ^ 2⌉).toNat

end

end A163951.P6245078662888675862

/-! ## A163951.P2754104890448642071

`A241981(A000124(round(sqrt(n²+1)))+1)`
-/

namespace A163951.P2754104890448642071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241981 (A000124 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat + 1).toNat

end

end A163951.P2754104890448642071

/-! ## A163951.P15430274611199172209

`A241981(A057427(n)+A000124(n))`
-/

namespace A163951.P15430274611199172209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241981 (A057427 n + A000124 n).toNat

end

end A163951.P15430274611199172209

/-! ## A163951.P4765671517336186751

`A241981(A034856(n+1)-A004273(n))`
-/

namespace A163951.P4765671517336186751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241981 (A034856 (n + 1) - A004273 n).toNat

end

end A163951.P4765671517336186751

/-! ## A163951.P7908924692654065516

`A241981(2-(A057427(n)-A000124(n)))`
-/

namespace A163951.P7908924692654065516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241981 (2 - (A057427 n - A000124 n)).toNat

end

end A163951.P7908924692654065516

/-! ## A163951.P603107677549257215

`A101334(n)-A208240(n)`
-/

namespace A163951.P603107677549257215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101334 n - A208240 n

end

end A163951.P603107677549257215

/-!
# A163952: The number of functions in a finite set for which the sequence of composition powers ends in a length 3 cycle.

The programs for A163952, there is no canonical definition to state claims against.
-/

/-! ## A163952.P10755199923924660866

`A246523(n)-(n+1)^(n-1)`
-/

namespace A163952.P10755199923924660866
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246523 n : ℚ) - (n + 1 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A163952.P10755199923924660866

/-! ## A163952.P1535474796006951758

`A163951(n)+A246523(n)-A209319(n)`
-/

namespace A163952.P1535474796006951758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163951 n + (A246523 n - A209319 n)

end

end A163952.P1535474796006951758

/-! ## A163952.P13730175485937096315

`A246529(n)-(A291115(n)+A105599(A000124(n)))`
-/

namespace A163952.P13730175485937096315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246529 n - (A291115 n + A105599 (A000124 n).toNat)

end

end A163952.P13730175485937096315

/-! ## A163952.P12991557576861835577

`A163951(n)-(A246523(n)-A209319(n))*A057428(n)`
-/

namespace A163952.P12991557576861835577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163951 n - (A246523 n - A209319 n) * A057428 n

end

end A163952.P12991557576861835577

/-! ## A163952.P11267781135311200356

`A246522(∑[n+3]+n+3)-A105599(A000124(n))`
-/

namespace A163952.P11267781135311200356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246522 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3)) - A105599 (A000124 n).toNat

end

end A163952.P11267781135311200356

/-!
# A163953: Number of reduced words of length n in Coxeter group on 9 generators S_i with relations (S_i)^2 = (S_i S_j)^6 = I.

The programs for A163953, there is no canonical definition to state claims against.
-/

/-! ## A163953.P8937423423903020690

`floor(9*8^(n-1))-A344834(A090318(2*n+5))`
-/

namespace A163953.P8937423423903020690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊9 * (8 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ - A344834 (A090318 (2 * n + 5)).toNat

end

end A163953.P8937423423903020690

/-! ## A163953.P2803902409547892033

`A003951(n)-A038146(A218090(n))`
-/

namespace A163953.P2803902409547892033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003951 n - A038146 (A218090 n).toNat

end

end A163953.P2803902409547892033

/-! ## A163953.P1688233932095902779

`A166367(n)-A038146(A218090(n))`
-/

namespace A163953.P1688233932095902779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166367 n - A038146 (A218090 n).toNat

end

end A163953.P1688233932095902779

/-!
# A163954: Number of reduced words of length n in Coxeter group on 10 generators S_i with relations (S_i)^2 = (S_i S_j)^6 = I.

The programs for A163954, there is no canonical definition to state claims against.
-/

/-! ## A163954.P1708265146029200797

`A003952(n)-A318222(A046879(n))`
-/

namespace A163954.P1708265146029200797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003952 n - A318222 (A046879 n).toNat

end

end A163954.P1708265146029200797

/-!
# A163956: Multiplicative order of 2 in Z/mZ with m = A002997(n).

The programs for A163956, there is no canonical definition to state claims against.
-/

/-! ## A163956.P2140054676103912567

`A002326((A002997(n+1)-1)/2)`
-/

namespace A163956.P2140054676103912567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002326 (SequenceMachineLib.roundAway ((A002997 (n + 1) - 1 : ℚ) / 2)).toNat

end

end A163956.P2140054676103912567

/-! ## A163956.P4272604390998446528

`lcm(A007733(A081703(n+1)), A152271(n))`
-/

namespace A163956.P4272604390998446528
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007733 (A081703 (n + 1)).toNat) (A152271 n)

end

end A163956.P4272604390998446528

/-! ## A163956.P6635191463953470451

`lcm(A002260(n+1), A054703(A081703(n+1)))`
-/

namespace A163956.P6635191463953470451
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A002260 (n + 1)) (A054703 (A081703 (n + 1)).toNat)

end

end A163956.P6635191463953470451

/-! ## A163956.P4425867299682951188

`lcm(A024222(A081703(n+1)), A171435(n+1))`
-/

namespace A163956.P4425867299682951188
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A024222 (A081703 (n + 1)).toNat) (A171435 (n + 1))

end

end A163956.P4425867299682951188

/-! ## A163956.P2506009729820974782

`A002326(floor(A002997(n+1)/2))`
-/

namespace A163956.P2506009729820974782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002326 ⌊(A002997 (n + 1) : ℚ) / 2⌋.toNat

end

end A163956.P2506009729820974782

/-!
# A163960: Decimal expansion of 2*(sqrt(2) - 1).

The programs for A163960, there is no canonical definition to state claims against.
-/

/-! ## A163960.P5374549999156540282

`A010466(n+1)`
-/

namespace A163960.P5374549999156540282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010466 (n + 1 + 1)

end

end A163960.P5374549999156540282

/-! ## A163960.P1001384060325100839

`A086178(n+1)`
-/

namespace A163960.P1001384060325100839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086178 (n + 1 + 1)

end

end A163960.P1001384060325100839

/-! ## A163960.P13871746454887996826

`A090488(n+1)`
-/

namespace A163960.P13871746454887996826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090488 (n + 1 + 1)

end

end A163960.P13871746454887996826

/-! ## A163960.P11613945360141667757

`A156035(n+1)`
-/

namespace A163960.P11613945360141667757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156035 (n + 1 + 1)

end

end A163960.P11613945360141667757

/-! ## A163960.P5716561749052778378

`A157258(n+1)`
-/

namespace A163960.P5716561749052778378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157258 (n + 1 + 1)

end

end A163960.P5716561749052778378

/-! ## A163960.P1099837007644177250

`A365823(n+1)`
-/

namespace A163960.P1099837007644177250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365823 (n + 1 + 1)

end

end A163960.P1099837007644177250

/-! ## A163960.P6019882330550272371

`9-A157259(n+1)`
-/

namespace A163960.P6019882330550272371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A157259 (n + 1 + 1)

end

end A163960.P6019882330550272371

/-! ## A163960.P11217066439320856701

`9-A388622(n+1)`
-/

namespace A163960.P11217066439320856701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A388622 (n + 1 + 1)

end

end A163960.P11217066439320856701

/-!
# A163961: First differences of A116533.

The programs for A163961, there is no canonical definition to state claims against.
-/

/-! ## A163961.P12682205922752822003

`A116533(n+2)-A116533(n+1)`
-/

namespace A163961.P12682205922752822003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116533 (n + 2) - A116533 (n + 1)

end

end A163961.P12682205922752822003

/-! ## A163961.P1843555421915843831

`Δ[A116533(n+1)]`
-/

namespace A163961.P1843555421915843831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116533 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A163961.P1843555421915843831

/-! ## A163961.P6499985963209359125

`-Δ[-A116533(n-log2(1/2))]`
-/

namespace A163961.P6499985963209359125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A116533 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f1 (n + 1) - f1 n)

end

end A163961.P6499985963209359125

/-! ## A163961.P5174404263543988488

`Δ[A000027(A116533(n-log2(1/2)))]`
-/

namespace A163961.P5174404263543988488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A116533 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A163961.P5174404263543988488

/-! ## A163961.P233196991729983423

`Δ[A116533(n-log2(1/2))]%A000051(n)`
-/

namespace A163961.P233196991729983423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116533 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A000051 n)

end

end A163961.P233196991729983423

/-! ## A163961.P10456603121842113279

`Δ[A116533(n-log2(1/2))-A057979(2*n)]`
-/

namespace A163961.P10456603121842113279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116533 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat - A057979 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A163961.P10456603121842113279

/-! ## A163961.P1962728103466300170

`Δ[A116533(n-log2(1/2))-(A000041(n)%2)!]`
-/

namespace A163961.P1962728103466300170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116533 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat - (Nat.factorial (Int.tmod (A000041 n) 2).toNat : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A163961.P1962728103466300170

/-!
# A163963: First differences of A080735.

The programs for A163963, there is no canonical definition to state claims against.
-/

/-! ## A163963.P8248919168385419289

`A080735(n+2)-A080735(n+1)`
-/

namespace A163963.P8248919168385419289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080735 (n + 2) - A080735 (n + 1)

end

end A163963.P8248919168385419289

/-! ## A163963.P13220222329288238824

`Δ[A080735(n+1)]`
-/

namespace A163963.P13220222329288238824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080735 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A163963.P13220222329288238824

/-! ## A163963.P381019631186296643

`abs(Δ[A080735(A008620(3*n))])`
-/

namespace A163963.P381019631186296643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080735 (A008620 (3 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A163963.P381019631186296643

/-! ## A163963.P8743357660819933188

`A033999(n)²*Δ[A080735(A008620(3*n))]`
-/

namespace A163963.P8743357660819933188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080735 (A008620 (3 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * (f1 (n + 1) - f1 n)

end

end A163963.P8743357660819933188

/-! ## A163963.P17025400192678623581

`Δ[A080735(A008620(3*n))]^A163805(n)²`
-/

namespace A163963.P17025400192678623581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080735 (A008620 (3 * n)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) ^ (A163805 n ^ 2 : ℤ)

end

end A163963.P17025400192678623581

/-! ## A163963.P10257675496579353799

`Δ[A080735(A008620(3*n))]*A053381(2*n)`
-/

namespace A163963.P10257675496579353799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080735 (A008620 (3 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A053381 (2 * n)

end

end A163963.P10257675496579353799

/-! ## A163963.P12827235119396234671

`Δ[A014963(a(n-1))+a(n-1)]` with `a(0)=1, a(1)=2, a(2)=4, a(3)=5`
-/

namespace A163963.P12827235119396234671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4, 5] fun n f1 =>
  A014963 (f1 (n - 1)).toNat + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A163963.P12827235119396234671

/-! ## A163963.P13574672342186680852

`A014963(xor(1, A080735(n+1))+1)`
-/

namespace A163963.P13574672342186680852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (Int.xor 1 (A080735 (n + 1)) + 1).toNat

end

end A163963.P13574672342186680852

/-! ## A163963.P12680113807510405410

`A014963(A080735(n+1))^A088705(n)`
-/

namespace A163963.P12680113807510405410
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014963 (A080735 (n + 1)).toNat : ℚ) ^ (A088705 n : ℤ)

end

end A163963.P12680113807510405410

/-! ## A163963.P3893224832228089986

`gcd(A014963(A080735(n+1)), A014933(n))`
-/

namespace A163963.P3893224832228089986
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A014963 (A080735 (n + 1)).toNat) (A014933 n)

end

end A163963.P3893224832228089986

/-!
# A163974: Number of ways to write n as the root-mean-square (RMS) of a set of distinct primes.

The programs for A163974, there is no canonical definition to state claims against.
-/

/-! ## A163974.P8147851807944975572

`A000120(C(A018783(n), A008611(n)))`
-/

namespace A163974.P8147851807944975572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Nat.choose (A018783 n).toNat (A008611 n).toNat)

end

end A163974.P8147851807944975572

/-! ## A163974.P4303655288789345692

`A206442(A280370(n)+1)`
-/

namespace A163974.P4303655288789345692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206442 (A280370 n + 1).toNat

end

end A163974.P4303655288789345692

/-! ## A163974.P4764411274882977387

`∑{d}[A104624(n), A341334(#)]`
-/

namespace A163974.P4764411274882977387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104624 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A341334 d

end

end A163974.P4764411274882977387

/-! ## A163974.P17842343282050052190

`A255270(∑{d}[A226158(n), #])`
-/

namespace A163974.P17842343282050052190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226158 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255270 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A163974.P17842343282050052190

/-!
# A163975: n-th nonprime - (-1)^(n-th nonprime).

The programs for A163975, the canonical program `A163975.P2243205309422245739` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163975 has offset 1).

The definition of A163975 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A141468, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A163975.P2243205309422245739

`A141468(n+1)-(-1)^A141468(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A163975

/-- `A141468(n+1)-(-1)^A141468(n+1)` -/
def P2243205309422245739.Spec : Prop :=
  ∀ n, P2243205309422245739.a n = (A163975 (n + 1) : ℚ)

end A163975

/-! ## A163975.P11199791833513392598

`-xor(1, -A141468(n+1))`
-/

namespace A163975.P11199791833513392598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor 1 (-A141468 (n + 1))

end

end A163975.P11199791833513392598

namespace A163975

/-- `-xor(1, -A141468(n+1))` -/
def P11199791833513392598.Spec : Prop :=
  ∀ n, P11199791833513392598.a n = A163975 (n + 1)

end A163975

/-! ## A163975.P16293288665943122728

`xor(1, comp[A151800(n)]-1)+1`
-/

namespace A163975.P16293288665943122728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - 1) + 1

end

end A163975.P16293288665943122728

namespace A163975

/-- `xor(1, comp[A151800(n)]-1)+1` -/
def P16293288665943122728.Spec : Prop :=
  ∀ n, P16293288665943122728.a n = A163975 (n + 1)

end A163975

/-! ## A163975.P1953810603338251829

`-xor(1, -comp[A000040(n+1)])`
-/

namespace A163975.P1953810603338251829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor 1 (-(SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ))

end

end A163975.P1953810603338251829

namespace A163975

/-- `-xor(1, -comp[A000040(n+1)])` -/
def P1953810603338251829.Spec : Prop :=
  ∀ n, P1953810603338251829.a n = A163975 (n + 1)

end A163975

/-! ## A163975.P3283816504256490962

`xor(1, comp[A006530(n+2)]+1)-1`
-/

namespace A163975.P3283816504256490962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1) : ℤ) - 1

end

end A163975.P3283816504256490962

namespace A163975

/-- `xor(1, comp[A006530(n+2)]+1)-1` -/
def P3283816504256490962.Spec : Prop :=
  ∀ n, P3283816504256490962.a n = A163975 (n + 1)

end A163975

/-! ## A163975.P4564703126610984234

`xor(1, comp[A020639(n+2)]+1)-1`
-/

namespace A163975.P4564703126610984234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1) : ℤ) - 1

end

end A163975.P4564703126610984234

namespace A163975

/-- `xor(1, comp[A020639(n+2)]+1)-1` -/
def P4564703126610984234.Spec : Prop :=
  ∀ n, P4564703126610984234.a n = A163975 (n + 1)

end A163975

/-! ## A163975.P6728065579772878858

`A163976(n+1)-A161671(n+1)`
-/

namespace A163975.P6728065579772878858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163976 (n + 1) - A161671 (n + 1)

end

end A163975.P6728065579772878858

namespace A163975

/-- `A163976(n+1)-A161671(n+1)` -/
def P6728065579772878858.Spec : Prop :=
  ∀ n, P6728065579772878858.a n = A163975 (n + 1)

end A163975

/-! ## A163975.P2647474195712139594

`A176100(n+1)-A164029(n+1)`
-/

namespace A163975.P2647474195712139594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176100 (n + 1) - A164029 (n + 1)

end

end A163975.P2647474195712139594

namespace A163975

/-- `A176100(n+1)-A164029(n+1)` -/
def P2647474195712139594.Spec : Prop :=
  ∀ n, P2647474195712139594.a n = A163975 (n + 1)

end A163975

/-! ## A163975.P13309387571301485211

`2*A141468(n+1)-A164029(n+1)`
-/

namespace A163975.P13309387571301485211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A141468 (n + 1) - A164029 (n + 1)

end

end A163975.P13309387571301485211

namespace A163975

/-- `2*A141468(n+1)-A164029(n+1)` -/
def P13309387571301485211.Spec : Prop :=
  ∀ n, P13309387571301485211.a n = A163975 (n + 1)

end A163975

/-! ## A163975.P14833169440997433656

`A141468(n+1)+A163976(n+1)-A000040(n+1)`
-/

namespace A163975.P14833169440997433656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1) + (A163976 (n + 1) - A000040 (n + 1))

end

end A163975.P14833169440997433656

namespace A163975

/-- `A141468(n+1)+A163976(n+1)-A000040(n+1)` -/
def P14833169440997433656.Spec : Prop :=
  ∀ n, P14833169440997433656.a n = A163975 (n + 1)

end A163975

/-! ## A163975.P18290962109925441163

`A176100(n+1)-A004442(A176100(n+1)/2)`
-/

namespace A163975.P18290962109925441163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176100 (n + 1) - A004442 (SequenceMachineLib.roundAway ((A176100 (n + 1) : ℚ) / 2)).toNat

end

end A163975.P18290962109925441163

namespace A163975

/-- `A176100(n+1)-A004442(A176100(n+1)/2)` -/
def P18290962109925441163.Spec : Prop :=
  ∀ n, P18290962109925441163.a n = A163975 (n + 1)

end A163975

/-! ## A163975.P16636131824667269227

`A004442(A141468(n+1)+1)-1`
-/

namespace A163975.P16636131824667269227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A141468 (n + 1) + 1).toNat - 1

end

end A163975.P16636131824667269227

namespace A163975

/-- `A004442(A141468(n+1)+1)-1` -/
def P16636131824667269227.Spec : Prop :=
  ∀ n, P16636131824667269227.a n = A163975 (n + 1)

end A163975

/-! ## A163975.P12087125933322640189

`A004442(comp[A000040(n+1)]+1)-1`
-/

namespace A163975.P12087125933322640189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1) - 1

end

end A163975.P12087125933322640189

namespace A163975

/-- `A004442(comp[A000040(n+1)]+1)-1` -/
def P12087125933322640189.Spec : Prop :=
  ∀ n, P12087125933322640189.a n = A163975 (n + 1)

end A163975

/-! ## A163975.P18412918527211239143

`A141468(n+1)+A033999(A141468(n+1)+1)`
-/

namespace A163975.P18412918527211239143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1) + A033999 (A141468 (n + 1) + 1).toNat

end

end A163975.P18412918527211239143

namespace A163975

/-- `A141468(n+1)+A033999(A141468(n+1)+1)` -/
def P18412918527211239143.Spec : Prop :=
  ∀ n, P18412918527211239143.a n = A163975 (n + 1)

end A163975

/-! ## A163975.P12066728547127297928

`A014681(A141468(n+1)+2)-2`
-/

namespace A163975.P12066728547127297928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A141468 (n + 1) + 2).toNat - 2

end

end A163975.P12066728547127297928

namespace A163975

/-- `A014681(A141468(n+1)+2)-2` -/
def P12066728547127297928.Spec : Prop :=
  ∀ n, P12066728547127297928.a n = A163975 (n + 1)

end A163975

/-! ## A163975.P5549504616192061299

`A134405(A176100(n+1))`
-/

namespace A163975.P5549504616192061299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134405 (A176100 (n + 1)).toNat

end

end A163975.P5549504616192061299

namespace A163975

/-- `A134405(A176100(n+1))` -/
def P5549504616192061299.Spec : Prop :=
  ∀ n, P5549504616192061299.a n = A163975 (n + 1)

end A163975

/-!
# A163976: prime(n) -(-1)^(n-th nonprime).

The programs for A163976, the canonical program `A163976.P5511687890835414188` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163976 has offset 1).

The definition of A163976 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A141468, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A163976.P5511687890835414188

`A000040(n+1)-(-1)^A141468(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A163976

/-- `A000040(n+1)-(-1)^A141468(n+1)` -/
def P5511687890835414188.Spec : Prop :=
  ∀ n, P5511687890835414188.a n = (A163976 (n + 1) : ℚ)

end A163976

/-! ## A163976.P15996223400434108927

`A163975(n+1)+A161671(n+1)`
-/

namespace A163976.P15996223400434108927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163975 (n + 1) + A161671 (n + 1)

end

end A163976.P15996223400434108927

namespace A163976

/-- `A163975(n+1)+A161671(n+1)` -/
def P15996223400434108927.Spec : Prop :=
  ∀ n, P15996223400434108927.a n = A163976 (n + 1)

end A163976

/-! ## A163976.P8172787254758781095

`A006093(n+1)+and(2, A163602(n+1))`
-/

namespace A163976.P8172787254758781095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + Int.land 2 (A163602 (n + 1))

end

end A163976.P8172787254758781095

namespace A163976

/-- `A006093(n+1)+and(2, A163602(n+1))` -/
def P8172787254758781095.Spec : Prop :=
  ∀ n, P8172787254758781095.a n = A163976 (n + 1)

end A163976

/-! ## A163976.P9395150723444807292

`A000040(n+1)+A163975(n+1)-A141468(n+1)`
-/

namespace A163976.P9395150723444807292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (A163975 (n + 1) - A141468 (n + 1))

end

end A163976.P9395150723444807292

namespace A163976

/-- `A000040(n+1)+A163975(n+1)-A141468(n+1)` -/
def P9395150723444807292.Spec : Prop :=
  ∀ n, P9395150723444807292.a n = A163976 (n + 1)

end A163976

/-! ## A163976.P9815738494195844807

`A000040(n+1)+A141468(n+1)-A164029(n+1)`
-/

namespace A163976.P9815738494195844807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (A141468 (n + 1) - A164029 (n + 1))

end

end A163976.P9815738494195844807

namespace A163976

/-- `A000040(n+1)+A141468(n+1)-A164029(n+1)` -/
def P9815738494195844807.Spec : Prop :=
  ∀ n, P9815738494195844807.a n = A163976 (n + 1)

end A163976

/-! ## A163976.P8080862291782385496

`A008578(n+2)+A141468(n+1)-A164029(n+1)`
-/

namespace A163976.P8080862291782385496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2) + (A141468 (n + 1) - A164029 (n + 1))

end

end A163976.P8080862291782385496

namespace A163976

/-- `A008578(n+2)+A141468(n+1)-A164029(n+1)` -/
def P8080862291782385496.Spec : Prop :=
  ∀ n, P8080862291782385496.a n = A163976 (n + 1)

end A163976

/-! ## A163976.P4106868450224547627

`A000040(n+1)-A033999(A141468(n+1))`
-/

namespace A163976.P4106868450224547627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A033999 (A141468 (n + 1)).toNat

end

end A163976.P4106868450224547627

namespace A163976

/-- `A000040(n+1)-A033999(A141468(n+1))` -/
def P4106868450224547627.Spec : Prop :=
  ∀ n, P4106868450224547627.a n = A163976 (n + 1)

end A163976

/-! ## A163976.P2283728860217745750

`A010673(A141468(n+1))+A006093(n+1)`
-/

namespace A163976.P2283728860217745750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010673 (A141468 (n + 1)).toNat + A006093 (n + 1)

end

end A163976.P2283728860217745750

namespace A163976

/-- `A010673(A141468(n+1))+A006093(n+1)` -/
def P2283728860217745750.Spec : Prop :=
  ∀ n, P2283728860217745750.a n = A163976 (n + 1)

end A163976

/-! ## A163976.P16345446671420727985

`A033999(A141468(n+1)+1)+A000040(n+1)`
-/

namespace A163976.P16345446671420727985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A141468 (n + 1) + 1).toNat + A000040 (n + 1)

end

end A163976.P16345446671420727985

namespace A163976

/-- `A033999(A141468(n+1)+1)+A000040(n+1)` -/
def P16345446671420727985.Spec : Prop :=
  ∀ n, P16345446671420727985.a n = A163976 (n + 1)

end A163976

/-!
# A163977: Number of reduced words of length n in Coxeter group on 21 generators S_i with relations (S_i)^2 = (S_i S_j)^6 = I.

The programs for A163977, there is no canonical definition to state claims against.
-/

/-! ## A163977.P9649691467221115554

`20*A000027(a(n-1))` with `a(0)=1, a(1)=21`
-/

namespace A163977.P9649691467221115554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 21] fun n a =>
  20 * A000027 (a (n - 1)).toNat

end

end A163977.P9649691467221115554

/-! ## A163977.P1510144457620584922

`record[20*a(A001222(n+1))]` with `a(0)=1, a(1)=21`
-/

namespace A163977.P1510144457620584922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 21] fun n f1 =>
  20 * f1 (A001222 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163977.P1510144457620584922

/-!
# A163978: a(n) = 2*a(n-2) for n > 2; a(1) = 3, a(2) = 4.

The programs for A163978, the canonical program `A163978.P8137718997564958741` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163978 has offset 1).

The definition of A163978 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-2)` (program `A163978.P8137718997564958741`, by `A163978.P8137718997564958741.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A163978.P8137718997564958741

`2*a(n-2)` with `a(0)=3, a(1)=4`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A163978

/-- `2*a(n-2)` -/
def P8137718997564958741.Spec : Prop :=
  ∀ n, (P8137718997564958741.a n : ℤ) = A163978 (n + 1)

theorem P8137718997564958741.correct : P8137718997564958741.Spec := by
  intro n
  simp only [A163978, Nat.add_sub_cancel]

end A163978

/-! ## A163978.P18327156567686754891

`∑[2^floor(n/2)]+2`
-/

namespace A163978.P18327156567686754891
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A163978.P18327156567686754891

namespace A163978

/-- `∑[2^floor(n/2)]+2` -/
def P18327156567686754891.Spec : Prop :=
  ∀ n, P18327156567686754891.a n = (A163978 (n + 1) : ℚ)

end A163978

/-! ## A163978.P6626685110379707799

`a(n-2)/sqrt(1/4)` with `a(0)=3, a(1)=4`
-/

namespace A163978.P6626685110379707799
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [3, 4] fun n a =>
  a (n - 2) / Real.sqrt ((1 : ℚ) / 4 : ℝ)

end

end A163978.P6626685110379707799

namespace A163978

/-- `a(n-2)/sqrt(1/4)` -/
def P6626685110379707799.Spec : Prop :=
  ∀ n, P6626685110379707799.a n = (A163978 (n + 1) : ℝ)

end A163978

/-! ## A163978.P14210181729645455402

`∑[a(n-2)+a(n-2)]` with `a(0)=3, a(1)=1, a(2)=2`
-/

namespace A163978.P14210181729645455402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 1, 2] fun n f1 =>
  f1 (n - 2) + f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163978.P14210181729645455402

namespace A163978

/-- `∑[a(n-2)+a(n-2)]` -/
def P14210181729645455402.Spec : Prop :=
  ∀ n, (P14210181729645455402.a n : ℤ) = A163978 (n + 1)

end A163978

/-! ## A163978.P3683555158506100891

`abs(a(n-2)+abs(a(n-2)))` with `a(0)=3, a(1)=4`
-/

namespace A163978.P3683555158506100891
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 4] fun n a =>
  a (n - 2) + a (n - 2)

end

end A163978.P3683555158506100891

namespace A163978

/-- `abs(a(n-2)+abs(a(n-2)))` -/
def P3683555158506100891.Spec : Prop :=
  ∀ n, (P3683555158506100891.a n : ℤ) = A163978 (n + 1)

theorem P3683555158506100891.correct : P3683555158506100891.Spec := by
  intro n
  simp only [A163978, Nat.add_sub_cancel, A163978.P3683555158506100891.a, A163978.P8137718997564958741.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A163978

/-! ## A163978.P12464535477456439539

`floor(a(n-2)+floor(a(n-2)))` with `a(0)=3, a(1)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A163978.P12464535477456439539
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 4] fun n a =>
  a (n - 2) + a (n - 2)

end

end A163978.P12464535477456439539

namespace A163978

/-- `floor(a(n-2)+floor(a(n-2)))` -/
def P12464535477456439539.Spec : Prop :=
  ∀ n, (P12464535477456439539.a n : ℤ) = A163978 (n + 1)

theorem P12464535477456439539.correct : P12464535477456439539.Spec := by
  intro n
  simp only [A163978, Nat.add_sub_cancel, A163978.P12464535477456439539.a, A163978.P8137718997564958741.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A163978

/-! ## A163978.P5400364299449281195

`ceil(a(n-2)+ceil(a(n-2)))` with `a(0)=3, a(1)=4`

`ceil` is left out, it is the identity on integers.
-/

namespace A163978.P5400364299449281195
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 4] fun n a =>
  a (n - 2) + a (n - 2)

end

end A163978.P5400364299449281195

namespace A163978

/-- `ceil(a(n-2)+ceil(a(n-2)))` -/
def P5400364299449281195.Spec : Prop :=
  ∀ n, (P5400364299449281195.a n : ℤ) = A163978 (n + 1)

theorem P5400364299449281195.correct : P5400364299449281195.Spec := by
  intro n
  simp only [A163978, Nat.add_sub_cancel, A163978.P5400364299449281195.a, A163978.P8137718997564958741.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A163978

/-! ## A163978.P8466055614170627103

`round(a(n-2)+round(a(n-2)))` with `a(0)=3, a(1)=4`

`round` is left out, it is the identity on integers.
-/

namespace A163978.P8466055614170627103
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 4] fun n a =>
  a (n - 2) + a (n - 2)

end

end A163978.P8466055614170627103

namespace A163978

/-- `round(a(n-2)+round(a(n-2)))` -/
def P8466055614170627103.Spec : Prop :=
  ∀ n, (P8466055614170627103.a n : ℤ) = A163978 (n + 1)

theorem P8466055614170627103.correct : P8466055614170627103.Spec := by
  intro n
  simp only [A163978, Nat.add_sub_cancel, A163978.P8466055614170627103.a, A163978.P8137718997564958741.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A163978

/-! ## A163978.P3701576083633843280

`floor(a(n-2)-(floor(n-a(n-2))-n))` with `a(0)=3, a(1)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A163978.P3701576083633843280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 4] fun n a =>
  a (n - 2) - ((n : ℤ) - a (n - 2) - (n : ℤ))

end

end A163978.P3701576083633843280

namespace A163978

/-- `floor(a(n-2)-(floor(n-a(n-2))-n))` -/
def P3701576083633843280.Spec : Prop :=
  ∀ n, P3701576083633843280.a n = A163978 (n + 1)

end A163978

/-! ## A163978.P15878217169425330082

`gcd(a(n-2)+a(n-2)%a(n-1), a(n-1)%2)` with `a(0)=3, a(1)=4`
-/

namespace A163978.P15878217169425330082
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 4] fun n a =>
  Nat.gcd (a (n - 2) + a (n - 2) % a (n - 1)) (a (n - 1) % 2)

end

end A163978.P15878217169425330082

namespace A163978

/-- `gcd(a(n-2)+a(n-2)%a(n-1), a(n-1)%2)` -/
def P15878217169425330082.Spec : Prop :=
  ∀ n, (P15878217169425330082.a n : ℤ) = A163978 (n + 1)

end A163978

/-! ## A163978.P9959672378462634413

`A063759(n+1)`
-/

namespace A163978.P9959672378462634413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063759 (n + 1)

end

end A163978.P9959672378462634413

namespace A163978

/-- `A063759(n+1)` -/
def P9959672378462634413.Spec : Prop :=
  ∀ n, P9959672378462634413.a n = A163978 (n + 1)

end A163978

/-! ## A163978.P966160036126665612

`A164090(n+2)`
-/

namespace A163978.P966160036126665612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164090 (n + 2)

end

end A163978.P966160036126665612

namespace A163978

/-- `A164090(n+2)` -/
def P966160036126665612.Spec : Prop :=
  ∀ n, P966160036126665612.a n = A163978 (n + 1)

end A163978

/-! ## A163978.P3277983770336299283

`A029744(n+3)`
-/

namespace A163978.P3277983770336299283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029744 (n + 3)

end

end A163978.P3277983770336299283

namespace A163978

/-- `A029744(n+3)` -/
def P3277983770336299283.Spec : Prop :=
  ∀ n, P3277983770336299283.a n = A163978 (n + 1)

end A163978

/-! ## A163978.P13808625951702920264

`abs(Δ[A152166(n)])`
-/

namespace A163978.P13808625951702920264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152166 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A163978.P13808625951702920264

namespace A163978

/-- `abs(Δ[A152166(n)])` -/
def P13808625951702920264.Spec : Prop :=
  ∀ n, P13808625951702920264.a n = A163978 (n + 1)

end A163978

/-! ## A163978.P1278355774057326290

`abs(Δ[Δ[A052552(n)]])`
-/

namespace A163978.P1278355774057326290
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052552 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A163978.P1278355774057326290

namespace A163978

/-- `abs(Δ[Δ[A052552(n)]])` -/
def P1278355774057326290.Spec : Prop :=
  ∀ n, P1278355774057326290.a n = A163978 (n + 1)

end A163978

/-! ## A163978.P4224710769829132721

`∑{d}[n+2, A056493(#)]`
-/

namespace A163978.P4224710769829132721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056493 d

end

end A163978.P4224710769829132721

namespace A163978

/-- `∑{d}[n+2, A056493(#)]` -/
def P4224710769829132721.Spec : Prop :=
  ∀ n, P4224710769829132721.a n = A163978 (n + 1)

end A163978

/-! ## A163978.P17741479510490690157

`abs(Δ[Δ[A131575(n+1)]])`
-/

namespace A163978.P17741479510490690157
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131575 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A163978.P17741479510490690157

namespace A163978

/-- `abs(Δ[Δ[A131575(n+1)]])` -/
def P17741479510490690157.Spec : Prop :=
  ∀ n, P17741479510490690157.a n = A163978 (n + 1)

end A163978

/-! ## A163978.P6989946648774663609

`A029747(A032766(n+2))`
-/

namespace A163978.P6989946648774663609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029747 (A032766 (n + 2)).toNat

end

end A163978.P6989946648774663609

namespace A163978

/-- `A029747(A032766(n+2))` -/
def P6989946648774663609.Spec : Prop :=
  ∀ n, P6989946648774663609.a n = A163978 (n + 1)

end A163978

/-! ## A163978.P9256564420273768880

`A029750(A051755(n+2))`
-/

namespace A163978.P9256564420273768880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029750 (A051755 (n + 2)).toNat

end

end A163978.P9256564420273768880

namespace A163978

/-- `A029750(A051755(n+2))` -/
def P9256564420273768880.Spec : Prop :=
  ∀ n, P9256564420273768880.a n = A163978 (n + 1)

end A163978

/-!
# A163979: a(n) = n*(n-1) + A144437(n+2).

The programs for A163979, the canonical program `A163979.P9843439997033090403` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163979 has offset 0).

The definition of A163979 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A163979.P6747475870603731364

`2*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` with `a(0)=1, a(1)=3, a(2)=5, a(3)=7, a(4)=15`
-/

namespace A163979.P6747475870603731364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 5, 7, 15] fun n a =>
  2 * a (n - 1) - a (n - 2) + a (n - 3) - 2 * a (n - 4) + a (n - 5)

end

end A163979.P6747475870603731364

namespace A163979

/-- `2*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` -/
def P6747475870603731364.Spec : Prop :=
  ∀ n, P6747475870603731364.a n = A163979 n

end A163979

/-! ## A163979.P9843439997033090403

`n*(n-1)+A144437(n+3)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A163979

/-- `n*(n-1)+A144437(n+3)` -/
def P9843439997033090403.Spec : Prop :=
  ∀ n, P9843439997033090403.a n = A163979 n

theorem P9843439997033090403.correct : P9843439997033090403.Spec := by
  intro n
  simp only [A163979]

end A163979

/-! ## A163979.P5281172847420536646

`n²-(gcd(3, n)+n)+4`
-/

namespace A163979.P5281172847420536646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - (Nat.gcd 3 n + n : ℤ) + 4

end

end A163979.P5281172847420536646

namespace A163979

/-- `n²-(gcd(3, n)+n)+4` -/
def P5281172847420536646.Spec : Prop :=
  ∀ n, P5281172847420536646.a n = A163979 n

end A163979

/-! ## A163979.P3223914811864269504

`∑[a(n-3)+6]` with `a(0)=1, a(1)=2, a(2)=2, a(3)=2`
-/

namespace A163979.P3223914811864269504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 2, 2] fun n f1 =>
  f1 (n - 3) + 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163979.P3223914811864269504

namespace A163979

/-- `∑[a(n-3)+6]` -/
def P3223914811864269504.Spec : Prop :=
  ∀ n, (P3223914811864269504.a n : ℤ) = A163979 n

end A163979

/-! ## A163979.P610386616706913133

`3*ceil(n²/3)+1-n`
-/

namespace A163979.P610386616706913133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ⌈(n ^ 2 : ℚ) / 3⌉ + 1 - (n : ℤ)

end

end A163979.P610386616706913133

namespace A163979

/-- `3*ceil(n²/3)+1-n` -/
def P610386616706913133.Spec : Prop :=
  ∀ n, P610386616706913133.a n = A163979 n

end A163979

/-! ## A163979.P14687019280112034097

`∑[∑[floor(a(n-3))]]` with `a(0)=1, a(1)=1, a(2)=0, a(3)=0, a(4)=6`

`floor` is left out, it is the identity on integers.
-/

namespace A163979.P14687019280112034097
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 0, 0, 6] fun n f2 =>
  f2 (n - 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163979.P14687019280112034097

namespace A163979

/-- `∑[∑[floor(a(n-3))]]` -/
def P14687019280112034097.Spec : Prop :=
  ∀ n, (P14687019280112034097.a n : ℤ) = A163979 n

end A163979

/-! ## A163979.P9515482671114463795

`∑[2*n+1-A021078(n)]`
-/

namespace A163979.P9515482671114463795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - A021078 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163979.P9515482671114463795

namespace A163979

/-- `∑[2*n+1-A021078(n)]` -/
def P9515482671114463795.Spec : Prop :=
  ∀ n, P9515482671114463795.a n = A163979 n

end A163979

/-! ## A163979.P13154501275689981957

`abs(A032766(A302402(n²)+1)-n)`
-/

namespace A163979.P13154501275689981957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A032766 (A302402 (n ^ 2) + 1).toNat - (n : ℤ)|

end

end A163979.P13154501275689981957

namespace A163979

/-- `abs(A032766(A302402(n²)+1)-n)` -/
def P13154501275689981957.Spec : Prop :=
  ∀ n, P13154501275689981957.a n = A163979 n

end A163979

/-!
# A163980: a(n) = 2*n + (-1)^n.

The programs for A163980, the canonical program `A163980.P13116059843531026291` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163980 has offset 1).

The definition of A163980 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A163980.P13116059843531026291

`a(n-1)+a(n-2)-a(n-3)` with `a(0)=1, a(1)=5, a(2)=5`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A163980

/-- `a(n-1)+a(n-2)-a(n-3)` -/
def P13116059843531026291.Spec : Prop :=
  ∀ n, P13116059843531026291.a n = A163980 (n + 1)

theorem P13116059843531026291.correct : P13116059843531026291.Spec := by
  intro n
  simp only [A163980, Nat.add_sub_cancel]

end A163980

/-! ## A163980.P18391448691241713749

`2*A000027(n+1)+(-1)^A000027(n+1)`
-/

namespace A163980.P18391448691241713749
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A000027 (n + 1) : ℚ) + (-1 : ℚ) ^ (A000027 (n + 1) : ℤ)

end

end A163980.P18391448691241713749

namespace A163980

/-- `2*A000027(n+1)+(-1)^A000027(n+1)` -/
def P18391448691241713749.Spec : Prop :=
  ∀ n, P18391448691241713749.a n = (A163980 (n + 1) : ℚ)

end A163980

/-! ## A163980.P1999081707341512005

`Δ[or(1, n²)]+1`
-/

namespace A163980.P1999081707341512005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1

end

end A163980.P1999081707341512005

namespace A163980

/-- `Δ[or(1, n²)]+1` -/
def P1999081707341512005.Spec : Prop :=
  ∀ n, P1999081707341512005.a n = A163980 (n + 1)

end A163980

/-! ## A163980.P7664647262447535969

`or(1, Δ[or(1, n²)])`
-/

namespace A163980.P7664647262447535969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A163980.P7664647262447535969

namespace A163980

/-- `or(1, Δ[or(1, n²)])` -/
def P7664647262447535969.Spec : Prop :=
  ∀ n, P7664647262447535969.a n = A163980 (n + 1)

end A163980

/-! ## A163980.P6507167807746808885

`and(2*n+3, -3)`
-/

namespace A163980.P6507167807746808885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (2 * n + 3 : ℤ) (-3)

end

end A163980.P6507167807746808885

namespace A163980

/-- `and(2*n+3, -3)` -/
def P6507167807746808885.Spec : Prop :=
  ∀ n, P6507167807746808885.a n = A163980 (n + 1)

end A163980

/-! ## A163980.P11429623420179383791

`n-xor(n+1, -2)`
-/

namespace A163980.P11429623420179383791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.xor (n + 1 : ℤ) (-2)

end

end A163980.P11429623420179383791

namespace A163980

/-- `n-xor(n+1, -2)` -/
def P11429623420179383791.Spec : Prop :=
  ∀ n, P11429623420179383791.a n = A163980 (n + 1)

end A163980

/-! ## A163980.P112714571131794066

`a(n-2)+4` with `a(0)=1, a(1)=5`
-/

namespace A163980.P112714571131794066
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n a =>
  a (n - 2) + 4

end

end A163980.P112714571131794066

namespace A163980

/-- `a(n-2)+4` -/
def P112714571131794066.Spec : Prop :=
  ∀ n, (P112714571131794066.a n : ℤ) = A163980 (n + 1)

end A163980

/-! ## A163980.P7492545963486626214

`3-2*or(1, -n)`
-/

namespace A163980.P7492545963486626214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - 2 * Int.lor 1 (-(n : ℤ))

end

end A163980.P7492545963486626214

namespace A163980

/-- `3-2*or(1, -n)` -/
def P7492545963486626214.Spec : Prop :=
  ∀ n, P7492545963486626214.a n = A163980 (n + 1)

end A163980

/-! ## A163980.P14613972885482285870

`4*ceil(n/2)+1`
-/

namespace A163980.P14613972885482285870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * ⌈(n : ℚ) / 2⌉ + 1

end

end A163980.P14613972885482285870

namespace A163980

/-- `4*ceil(n/2)+1` -/
def P14613972885482285870.Spec : Prop :=
  ∀ n, P14613972885482285870.a n = A163980 (n + 1)

end A163980

/-! ## A163980.P11121447721598834186

`or(1, 4*ceil(n/2))`
-/

namespace A163980.P11121447721598834186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (4 * ⌈(n : ℚ) / 2⌉)

end

end A163980.P11121447721598834186

namespace A163980

/-- `or(1, 4*ceil(n/2))` -/
def P11121447721598834186.Spec : Prop :=
  ∀ n, P11121447721598834186.a n = A163980 (n + 1)

end A163980

/-! ## A163980.P15718994683378284854

`xor(1, 4*ceil(n/2))`
-/

namespace A163980.P15718994683378284854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (4 * ⌈(n : ℚ) / 2⌉)

end

end A163980.P15718994683378284854

namespace A163980

/-- `xor(1, 4*ceil(n/2))` -/
def P15718994683378284854.Spec : Prop :=
  ∀ n, P15718994683378284854.a n = A163980 (n + 1)

end A163980

/-! ## A163980.P119791553425785557

`Δ[and(n, -2)+n²]`
-/

namespace A163980.P119791553425785557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-2) + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A163980.P119791553425785557

namespace A163980

/-- `Δ[and(n, -2)+n²]` -/
def P119791553425785557.Spec : Prop :=
  ∀ n, P119791553425785557.a n = A163980 (n + 1)

end A163980

/-! ## A163980.P5194930136838053999

`∑[abs(a(n-2))]` with `a(0)=1, a(1)=4, a(2)=0`
-/

namespace A163980.P5194930136838053999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 0] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163980.P5194930136838053999

namespace A163980

/-- `∑[abs(a(n-2))]` -/
def P5194930136838053999.Spec : Prop :=
  ∀ n, (P5194930136838053999.a n : ℤ) = A163980 (n + 1)

end A163980

/-! ## A163980.P10227863269734831137

`∑[4-a(n-1)]` with `a(0)=1, a(1)=4`
-/

namespace A163980.P10227863269734831137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  4 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163980.P10227863269734831137

namespace A163980

/-- `∑[4-a(n-1)]` -/
def P10227863269734831137.Spec : Prop :=
  ∀ n, P10227863269734831137.a n = A163980 (n + 1)

end A163980

/-! ## A163980.P7028233643959920680

`abs(or(2, -(2*n+3)))`
-/

namespace A163980.P7028233643959920680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor 2 (-(2 * n + 3 : ℤ))|

end

end A163980.P7028233643959920680

namespace A163980

/-- `abs(or(2, -(2*n+3)))` -/
def P7028233643959920680.Spec : Prop :=
  ∀ n, P7028233643959920680.a n = A163980 (n + 1)

end A163980

/-! ## A163980.P8640122751011330326

`-or(2, -(2*n+3))`
-/

namespace A163980.P8640122751011330326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor 2 (-(2 * n + 3 : ℤ))

end

end A163980.P8640122751011330326

namespace A163980

/-- `-or(2, -(2*n+3))` -/
def P8640122751011330326.Spec : Prop :=
  ∀ n, P8640122751011330326.a n = A163980 (n + 1)

end A163980

/-! ## A163980.P14848416823823128926

`Δ[gcd(2, n)+n²+n]`
-/

namespace A163980.P14848416823823128926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n + (n ^ 2 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A163980.P14848416823823128926

namespace A163980

/-- `Δ[gcd(2, n)+n²+n]` -/
def P14848416823823128926.Spec : Prop :=
  ∀ n, P14848416823823128926.a n = A163980 (n + 1)

end A163980

/-! ## A163980.P11881037928408685764

`Δ[n²-and(1, n)+n]`
-/

namespace A163980.P11881037928408685764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - (Nat.land 1 n : ℤ) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A163980.P11881037928408685764

namespace A163980

/-- `Δ[n²-and(1, n)+n]` -/
def P11881037928408685764.Spec : Prop :=
  ∀ n, P11881037928408685764.a n = A163980 (n + 1)

end A163980

/-! ## A163980.P202357224580148878

`Δ[n-(and(1, n)-n²)]`
-/

namespace A163980.P202357224580148878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((Nat.land 1 n : ℤ) - (n ^ 2 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A163980.P202357224580148878

namespace A163980

/-- `Δ[n-(and(1, n)-n²)]` -/
def P202357224580148878.Spec : Prop :=
  ∀ n, P202357224580148878.a n = A163980 (n + 1)

end A163980

/-!
# A163981: a(n) is the smallest prime of the form prime(n+1)*k - prime(n), k >= 1, where prime(n) is the n-th prime.

The programs for A163981, there is no canonical definition to state claims against.
-/

/-! ## A163981.P1360731071935880862

`A340753(A008864(n+2)+A007504(n))`
-/

namespace A163981.P1360731071935880862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340753 (A008864 (n + 2) + A007504 n).toNat

end

end A163981.P1360731071935880862

/-! ## A163981.P15366188215192160333

`A340753(A065091(n+1)+A014284(n+1))`
-/

namespace A163981.P15366188215192160333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340753 (A065091 (n + 1) + A014284 (n + 1)).toNat

end

end A163981.P15366188215192160333

/-! ## A163981.P6077020763043728786

`A340753(A036439(n+1)+A006093(n+2))`
-/

namespace A163981.P6077020763043728786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340753 (A036439 (n + 1) + A006093 (n + 2)).toNat

end

end A163981.P6077020763043728786

/-! ## A163981.P4836726357622609308

`A340753(A007504(n+2)-A006093(n+1))`
-/

namespace A163981.P4836726357622609308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340753 (A007504 (n + 2) - A006093 (n + 1)).toNat

end

end A163981.P4836726357622609308

/-! ## A163981.P16319505051913892523

`A340753(A175965(n+2)+A006093(n+2))`
-/

namespace A163981.P16319505051913892523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340753 (A175965 (n + 2) + A006093 (n + 2)).toNat

end

end A163981.P16319505051913892523

/-! ## A163981.P6283184392181043477

`A340753(A036439(n+3)-A008864(n+1))`
-/

namespace A163981.P6283184392181043477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340753 (A036439 (n + 3) - A008864 (n + 1)).toNat

end

end A163981.P6283184392181043477

/-!
# A163982: Real part of the coefficient [x^n] of the expansion of (1+i)/(1-i*exp(x)) - 1 multiplied by 2*n!, where i is the imaginary unit.

The programs for A163982, there is no canonical definition to state claims against.
-/

/-! ## A163982.P12096047070103350649

`A342161(n)-2`
-/

namespace A163982.P12096047070103350649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342161 n - 2

end

end A163982.P12096047070103350649

/-! ## A163982.P14491861746825827011

`-(A217714(n)+1)`
-/

namespace A163982.P14491861746825827011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A217714 n + 1)

end

end A163982.P14491861746825827011

/-! ## A163982.P9962572280265476483

`-(A155585(n)+A122045(n))`
-/

namespace A163982.P9962572280265476483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A155585 n + A122045 n)

end

end A163982.P9962572280265476483

/-! ## A163982.P10510795490884344719

`A009832(n)-(A155585(n)+1)`
-/

namespace A163982.P10510795490884344719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009832 n - (A155585 n + 1)

end

end A163982.P10510795490884344719

/-! ## A163982.P14658192471212441040

`A119880(n)-(A155585(n)+2)`
-/

namespace A163982.P14658192471212441040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119880 n - (A155585 n + 2)

end

end A163982.P14658192471212441040

/-! ## A163982.P13225232267033433763

`-(A122045(n)+(1-and(2, n))*A108040(∑[n]))`
-/

namespace A163982.P13225232267033433763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A122045 n + (1 - (Nat.land 2 n : ℤ)) * A108040 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A163982.P13225232267033433763

/-! ## A163982.P12083856586468159380

`A008683(A002146(n))-A217714(n)`
-/

namespace A163982.P12083856586468159380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A002146 n).toNat - A217714 n

end

end A163982.P12083856586468159380

/-! ## A163982.P11142580382769867696

`A008683(A143427(n+1))-A217714(n)`
-/

namespace A163982.P11142580382769867696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A143427 (n + 1)).toNat - A217714 n

end

end A163982.P11142580382769867696

/-! ## A163982.P6840304323461995257

`A008683(A174915(n+1))-A217714(n)`
-/

namespace A163982.P6840304323461995257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A174915 (n + 1)).toNat - A217714 n

end

end A163982.P6840304323461995257

/-! ## A163982.P8603563990481713694

`A008683(A217717(n+1))-A217714(n)`
-/

namespace A163982.P8603563990481713694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A217717 (n + 1)).toNat - A217714 n

end

end A163982.P8603563990481713694

/-!
# A163983: Antidiagonal sums of A163280.

The programs for A163983, there is no canonical definition to state claims against.
-/

/-! ## A163983.P3943572359931395028

`∑[A229300(A084935(2*(n+1)))]`
-/

namespace A163983.P3943572359931395028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229300 (A084935 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163983.P3943572359931395028

/-! ## A163983.P8458389988346870358

`∑[∑[record[A359902(2*n+1)]+n]+n]`
-/

namespace A163983.P8458389988346870358
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359902 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n) + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163983.P8458389988346870358

/-!
# A163984: First differences of A056737.

The programs for A163984, there is no canonical definition to state claims against.
-/

/-! ## A163984.P4615516984830353345

`1-Δ[A101322(n+1)]`
-/

namespace A163984.P4615516984830353345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101322 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n)

end

end A163984.P4615516984830353345

/-! ## A163984.P2545505504715878200

`Δ[A056737(n+1)]`
-/

namespace A163984.P2545505504715878200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056737 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A163984.P2545505504715878200

/-! ## A163984.P16533468401510392292

`Δ[n%(A033677(n+1)+1)]`
-/

namespace A163984.P16533468401510392292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A033677 (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A163984.P16533468401510392292

/-! ## A163984.P3105348151341539978

`Δ[Δ[A161416(A028310(n))]]`
-/

namespace A163984.P3105348151341539978
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161416 (A028310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A163984.P3105348151341539978

/-! ## A163984.P4841441232528059535

`Δ[n%A020725(A033677(n+1))]`
-/

namespace A163984.P4841441232528059535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A020725 (A033677 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A163984.P4841441232528059535

/-! ## A163984.P2054610718127128003

`A056737(n+2)-A056737(n+1)`
-/

namespace A163984.P2054610718127128003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056737 (n + 2) - A056737 (n + 1)

end

end A163984.P2054610718127128003

/-! ## A163984.P2459286791269070917

`Δ[A033677(n+1)-A033676(n+1)]`
-/

namespace A163984.P2459286791269070917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (n + 1) - A033676 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A163984.P2459286791269070917

/-! ## A163984.P2165404812338987608

`Δ[A139717(n+1)/A033677(n+1)]`
-/

namespace A163984.P2165404812338987608
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139717 (n + 1) : ℚ) / (A033677 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A163984.P2165404812338987608

/-! ## A163984.P2183390271331079795

`Δ[A139717(n+1)/A140271(n+1)]`
-/

namespace A163984.P2183390271331079795
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139717 (n + 1) : ℚ) / (A140271 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A163984.P2183390271331079795

/-! ## A163984.P5087798652786650946

`Δ[A162348(2*(n+1))-A162348(2*n+1)]`
-/

namespace A163984.P5087798652786650946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162348 (2 * (n + 1)) - A162348 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A163984.P5087798652786650946

/-!
# A163985: Sum of all isolated parts of all partitions of n.

The programs for A163985, the canonical program `A163985.P5864715077537691757` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163985 has offset 0).

The definition of A163985 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A163985.P5864715077537691757

`comp[n*n%2+3]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A163985

/-- `comp[n*n%2+3]` -/
def P5864715077537691757.Spec : Prop :=
  ∀ n, (P5864715077537691757.a n : ℤ) = A163985 n

theorem P5864715077537691757.correct : P5864715077537691757.Spec := by
  intro n
  simp only [A163985]

end A163985

/-!
# A163986: Sum of all repeated parts of all partitions of n.

The programs for A163986, there is no canonical definition to state claims against.
-/

/-! ## A163986.P14896218194745732157

`A066186(n)-A163985(n)`
-/

namespace A163986.P14896218194745732157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066186 n - A163985 n

end

end A163986.P14896218194745732157

/-! ## A163986.P1488518395713127167

`n*A000041(n)-A163985(n)`
-/

namespace A163986.P1488518395713127167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000041 n - A163985 n

end

end A163986.P1488518395713127167

/-! ## A163986.P9957707793361219367

`char[2]+A066186(n)-A004273(n)`
-/

namespace A163986.P9957707793361219367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (A066186 n - A004273 n)

end

end A163986.P9957707793361219367

/-! ## A163986.P13904339158771879565

`n*∑[A002865(n)]-A163985(n)`
-/

namespace A163986.P13904339158771879565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j) - A163985 n

end

end A163986.P13904339158771879565

/-! ## A163986.P6388100440413607181

`n*(A000094(n+1)+n)-A163985(n)`
-/

namespace A163986.P6388100440413607181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A000094 (n + 1) + (n : ℤ)) - A163985 n

end

end A163986.P6388100440413607181

/-! ## A163986.P7151165202933468723

`n*A035363(2*n)-A163985(n)`
-/

namespace A163986.P7151165202933468723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A035363 (2 * n) - A163985 n

end

end A163986.P7151165202933468723

/-! ## A163986.P3039900242198552371

`record[A182700(n)]-A163985(n)`
-/

namespace A163986.P3039900242198552371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182700 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A163985 n

end

end A163986.P3039900242198552371

/-! ## A163986.P4277043521834981812

`A182700(A000217(n))-A163985(n)`
-/

namespace A163986.P4277043521834981812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182700 (A000217 n).toNat - A163985 n

end

end A163986.P4277043521834981812

/-!
# A163987: First differences of A160119.

The programs for A163987, there is no canonical definition to state claims against.
-/

/-! ## A163987.P15150363617516654987

`Δ[A160119(n)]`
-/

namespace A163987.P15150363617516654987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160119 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A163987.P15150363617516654987

/-! ## A163987.P6601533968666332794

`A160119(n+1)-A160119(n)`
-/

namespace A163987.P6601533968666332794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160119 (n + 1) - A160119 n

end

end A163987.P6601533968666332794

/-!
# A163989: First differences of A160379.

The programs for A163989, there is no canonical definition to state claims against.
-/

/-! ## A163989.P1292151763056956793

`Δ[A160379(n)]`
-/

namespace A163989.P1292151763056956793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160379 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A163989.P1292151763056956793

/-! ## A163989.P15467856501172781855

`A160379(n+1)-A160379(n)`
-/

namespace A163989.P15467856501172781855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160379 (n + 1) - A160379 n

end

end A163989.P15467856501172781855

/-!
# A163990: Square array read by antidiagonals where the row n lists the numbers k such that their largest divisor <= sqrt(k) equals n.

The programs for A163990, there is no canonical definition to state claims against.
-/

/-! ## A163990.P10080205145280475066

`A163280(∑[char[∑[n]]]²-n)`
-/

namespace A163990.P10080205145280475066
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163280 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A163990.P10080205145280475066

/-! ## A163990.P1295912351002315180

`and(-1, A163280(A038722(n+1)))`
-/

namespace A163990.P1295912351002315180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A163280 (A038722 (n + 1)).toNat)

end

end A163990.P1295912351002315180

/-! ## A163990.P16383366577865039508

`A163280(A038722(n+1))%A054564(n)`
-/

namespace A163990.P16383366577865039508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A163280 (A038722 (n + 1)).toNat) (A054564 n)

end

end A163990.P16383366577865039508

/-! ## A163990.P6292249300310791592

`gcd(A000038(n), A163280(A038722(n+1)))`
-/

namespace A163990.P6292249300310791592
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A163280 (A038722 (n + 1)).toNat)

end

end A163990.P6292249300310791592

/-! ## A163990.P13951311776018956952

`lcm(A033999(n), A163280(A038722(n+1)))`
-/

namespace A163990.P13951311776018956952
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A163280 (A038722 (n + 1)).toNat)

end

end A163990.P13951311776018956952

/-! ## A163990.P18252621130217666392

`A163280(A038722(n+1))^A007318(C(2, n))`
-/

namespace A163990.P18252621130217666392
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163280 (A038722 (n + 1)).toNat : ℚ) ^ (A007318 (Nat.choose 2 n) : ℤ)

end

end A163990.P18252621130217666392

/-! ## A163990.P18338104494884885786

`A006530(gcd(n, n+1))*A163280(A038722(n+1))`
-/

namespace A163990.P18338104494884885786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Nat.gcd n (n + 1)) * A163280 (A038722 (n + 1)).toNat

end

end A163990.P18338104494884885786

/-! ## A163990.P158064909705065812

`A163280(A038722(n+1))+A000045(C(n, n+2))`
-/

namespace A163990.P158064909705065812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163280 (A038722 (n + 1)).toNat + A000045 (Nat.choose n (n + 2))

end

end A163990.P158064909705065812

/-! ## A163990.P14356383279350642

`A008683(A005117(n+2))²*A163280(A038722(n+1))`
-/

namespace A163990.P14356383279350642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A005117 (n + 2)).toNat ^ 2 * A163280 (A038722 (n + 1)).toNat

end

end A163990.P14356383279350642

/-!
# A163993: Number of reduced words of length n in Coxeter group on 25 generators S_i with relations (S_i)^2 = (S_i S_j)^6 = I.

The programs for A163993, there is no canonical definition to state claims against.
-/

/-! ## A163993.P7416815201473040251

`A166419(comp[A215501(n+5)+1])`
-/

namespace A163993.P7416815201473040251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215501 (n + 5) + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166419 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A163993.P7416815201473040251

/-! ## A163993.P4248171862454662773

`A166419(n)+A010051(A166538(n))`
-/

namespace A163993.P4248171862454662773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166419 n + A010051 (A166538 n).toNat

end

end A163993.P4248171862454662773

/-!
# A163994: Triangle read by rows in which row n contains the first column of the n-th triangle of A164002.

The programs for A163994, there is no canonical definition to state claims against.
-/

/-! ## A163994.P11114901674864319015

`ceil(root(A255256(n), A318274(n)))`
-/

namespace A163994.P11114901674864319015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A255256 n : ℝ) ^ (1 / (A318274 n : ℝ))⌉

end

end A163994.P11114901674864319015

/-! ## A163994.P12715392551049587201

`A097944(A094526(n)+A028275(n))`
-/

namespace A163994.P12715392551049587201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097944 (A094526 n + A028275 n).toNat

end

end A163994.P12715392551049587201

/-! ## A163994.P15788047707202119822

`A097944(or(A028313(n), A094526(n)))`
-/

namespace A163994.P15788047707202119822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097944 (Int.lor (A028313 n) (A094526 n)).toNat

end

end A163994.P15788047707202119822

/-! ## A163994.P13550916438200184859

`A097944(or(A094526(n), A173119(n)))`
-/

namespace A163994.P13550916438200184859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097944 (Int.lor (A094526 n) (A173119 n)).toNat

end

end A163994.P13550916438200184859

/-! ## A163994.P14032525488911150363

`A055642(4*A106597(n))`
-/

namespace A163994.P14032525488911150363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (4 * A106597 n).toNat

end

end A163994.P14032525488911150363

/-! ## A163994.P9195021711919858741

`A004218(9*A094526(n))`
-/

namespace A163994.P9195021711919858741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004218 (9 * A094526 n).toNat

end

end A163994.P9195021711919858741

/-! ## A163994.P6443314666989833584

`A055642(A007775(A108359(n)))`
-/

namespace A163994.P6443314666989833584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A007775 (A108359 n).toNat).toNat

end

end A163994.P6443314666989833584

/-! ## A163994.P9794346993271940427

`A055642(A115558(A028275(n)))`
-/

namespace A163994.P9794346993271940427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A115558 (A028275 n).toNat).toNat

end

end A163994.P9794346993271940427

/-! ## A163994.P67162032823223642

`A055642(4*A108359(n))`
-/

namespace A163994.P67162032823223642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (4 * A108359 n).toNat

end

end A163994.P67162032823223642

/-!
# A163996: Primes with a composite number of partitions.

The programs for A163996, there is no canonical definition to state claims against.
-/

/-! ## A163996.P4204332925830059711

`p?[n%(n^A085561(n))]`
-/

namespace A163996.P4204332925830059711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (SequenceMachineLib.roundAway ((n : ℚ) ^ (A085561 n : ℤ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A163996.P4204332925830059711

/-! ## A163996.P12649817569551857961

`p?[(n+1)%(A085561(A085561(n+1))+n+1)]`
-/

namespace A163996.P12649817569551857961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A085561 (A085561 (n + 1)).toNat + (n + 1 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A163996.P12649817569551857961

/-! ## A163996.P13527612890211127971

`p?[A000040(n+1)%A139055(A000040(n+1))]`
-/

namespace A163996.P13527612890211127971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) (A139055 (A000040 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A163996.P13527612890211127971

/-! ## A163996.P1633296675886527014

`p?[A010051(A085543(n))-A038608(n)]`
-/

namespace A163996.P1633296675886527014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A085543 n).toNat - A038608 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A163996.P1633296675886527014

/-! ## A163996.P4683412212678465830

`eq[A278241(n)%3, A003415(A003415(n))]`
-/

namespace A163996.P4683412212678465830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A278241 n) 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A003415 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A163996.P4683412212678465830

/-! ## A163996.P2762762606888302962

`p?[n*A020513(A347130(n+1))]`
-/

namespace A163996.P2762762606888302962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A020513 (A347130 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A163996.P2762762606888302962

/-! ## A163996.P12556721354029315434

`eq[A020513(A347130(n+1)), A078898(n)]`
-/

namespace A163996.P12556721354029315434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020513 (A347130 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A163996.P12556721354029315434

/-! ## A163996.P2715003731423033115

`p?[n+1+A245552(A000217(n))+n]`
-/

namespace A163996.P2715003731423033115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + (A245552 (A000217 n).toNat + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A163996.P2715003731423033115

/-! ## A163996.P6996890548193311093

`A000040(lt[8, A342837(n+1)])`
-/

namespace A163996.P6996890548193311093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342837 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A163996.P6996890548193311093

/-!
# A163997: Primes with an even number of partitions.

The programs for A163997, there is no canonical definition to state claims against.
-/

/-! ## A163997.P17382211146883684478

`p?[A163096(n+1)%A154612(n)]`
-/

namespace A163997.P17382211146883684478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A163096 (n + 1)) (A154612 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A163997.P17382211146883684478

/-! ## A163997.P9046938086171736564

`p?[A001560(n+1)]`
-/

namespace A163997.P9046938086171736564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001560 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A163997.P9046938086171736564

/-! ## A163997.P13248143206506707984

`p?[comp[A052002(n+1)]]`
-/

namespace A163997.P13248143206506707984
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052002 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A163997.P13248143206506707984

/-! ## A163997.P12073376956872784168

`filter[A001560(n+1), A010051(#)]`
-/

namespace A163997.P12073376956872784168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001560 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A163997.P12073376956872784168

/-! ## A163997.P6723090827443711803

`∩[A000040(n+1), A001560(n+1)]`
-/

namespace A163997.P6723090827443711803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001560 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163997.P6723090827443711803

/-! ## A163997.P7535727955617611254

`∩[A001560(n+1), A008578(n+1)]`
-/

namespace A163997.P7535727955617611254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001560 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163997.P7535727955617611254

/-! ## A163997.P1287794923315492000

`∩[A001560(n+1), A045319(n+1)]`
-/

namespace A163997.P1287794923315492000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001560 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163997.P1287794923315492000

/-! ## A163997.P13099322400248749307

`∩[A001560(n+1), A045344(n+1)]`
-/

namespace A163997.P13099322400248749307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001560 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163997.P13099322400248749307

/-! ## A163997.P15305503437522461342

`∩[A001560(n+1), A046022(n+1)]`
-/

namespace A163997.P15305503437522461342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001560 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163997.P15305503437522461342

/-! ## A163997.P10025861032088534463

`∩[A001560(n+1), A116974(n+1)]`
-/

namespace A163997.P10025861032088534463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001560 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163997.P10025861032088534463

/-! ## A163997.P7914399987859901262

`∩[A001560(n+1), A158611(n+1)]`
-/

namespace A163997.P7914399987859901262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001560 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163997.P7914399987859901262

/-! ## A163997.P9739169042609571576

`∩[A001560(n+1), A175787(n+1)]`
-/

namespace A163997.P9739169042609571576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001560 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163997.P9739169042609571576

/-! ## A163997.P4574041619956765101

`∩[A001560(n+1), A182986(n+1)]`
-/

namespace A163997.P4574041619956765101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001560 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163997.P4574041619956765101

/-! ## A163997.P12174773708469403416

`p?[n*(1-A040051(n))]`
-/

namespace A163997.P12174773708469403416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (1 - A040051 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A163997.P12174773708469403416

/-! ## A163997.P2750570958816402801

`eq[A040051(n), A086134(n)]`
-/

namespace A163997.P2750570958816402801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040051 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086134 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A163997.P2750570958816402801

/-! ## A163997.P17083563202443687179

`eq[A040051(n), A277894(n)]`
-/

namespace A163997.P17083563202443687179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040051 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277894 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A163997.P17083563202443687179

/-! ## A163997.P11906679867569459543

`eq[A040051(n), A278648(n)]`
-/

namespace A163997.P11906679867569459543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040051 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278648 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A163997.P11906679867569459543

/-! ## A163997.P3207049819338559369

`filter[A001560(n+1), A080339(#)]`
-/

namespace A163997.P3207049819338559369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001560 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A163997.P3207049819338559369

/-! ## A163997.P9123177918730643195

`p?[(n+1)%(A000124(A278478(n+1))+n)]`
-/

namespace A163997.P9123177918730643195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A000124 (A278478 (n + 1)).toNat + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A163997.P9123177918730643195

/-! ## A163997.P9130873123811309683

`A006530(record[A089026(A001560(n+1))])`
-/

namespace A163997.P9130873123811309683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089026 (A001560 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A163997.P9130873123811309683

/-!
# A163998: Primes p having the same parity as the number of partitions of p.

The programs for A163998, there is no canonical definition to state claims against.
-/

/-! ## A163998.P1863410699967300598

`record[A006530(2*A067567(n+1))]`
-/

namespace A163998.P1863410699967300598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * A067567 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163998.P1863410699967300598

/-! ## A163998.P15806616258575565635

`p?[comp[A163096(n+1)]]`
-/

namespace A163998.P15806616258575565635
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163096 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A163998.P15806616258575565635

/-! ## A163998.P3616915428965084700

`p?[n*A040051(or(1, n))]`
-/

namespace A163998.P3616915428965084700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A040051 (Nat.lor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A163998.P3616915428965084700

/-! ## A163998.P6602726589950200754

`p?[(xor(1, n)+1)*A040051(n)]`
-/

namespace A163998.P6602726589950200754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 n + 1 : ℤ) * A040051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A163998.P6602726589950200754

/-! ## A163998.P16063690507965728475

`p?[lcm(n, gcd(2, A000041(n)))]`
-/

namespace A163998.P16063690507965728475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n (Int.gcd 2 (A000041 n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A163998.P16063690507965728475

/-! ## A163998.P13420720510866323854

`p?[A194798(n+1)]`
-/

namespace A163998.P13420720510866323854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194798 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A163998.P13420720510866323854

/-! ## A163998.P17984582170471357610

`record[A006530(A194798(n+2))]`
-/

namespace A163998.P17984582170471357610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A194798 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163998.P17984582170471357610

/-! ## A163998.P16430964037926661683

`filter[A194798(n+1), A010051(#)]`
-/

namespace A163998.P16430964037926661683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194798 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A163998.P16430964037926661683

/-! ## A163998.P16995164354230819388

`filter[A194798(n+2), A080339(#)]`
-/

namespace A163998.P16995164354230819388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194798 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A163998.P16995164354230819388

/-! ## A163998.P3337158427940696400

`∩[A000040(n+1), A194798(n+1)]`
-/

namespace A163998.P3337158427940696400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194798 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163998.P3337158427940696400

/-! ## A163998.P14839747528583969765

`∩[A106118(n+1), A194798(n+1)]`
-/

namespace A163998.P14839747528583969765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194798 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163998.P14839747528583969765

/-! ## A163998.P7668744826563118209

`∩[A116974(n+1), A194798(n+1)]`
-/

namespace A163998.P7668744826563118209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194798 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163998.P7668744826563118209

/-! ## A163998.P5632209230720437570

`∩[A175787(n+1), A194798(n+1)]`
-/

namespace A163998.P5632209230720437570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194798 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163998.P5632209230720437570

/-! ## A163998.P9001049033696662695

`∩[A182986(n+1), A194798(n+1)]`
-/

namespace A163998.P9001049033696662695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194798 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163998.P9001049033696662695

/-! ## A163998.P12550795901353486043

`∩[A194798(n+1), A240960(n+1)]`
-/

namespace A163998.P12550795901353486043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194798 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240960 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163998.P12550795901353486043

/-! ## A163998.P6189817992194763338

`∩[A194798(n+1), A348283(n+1)]`
-/

namespace A163998.P6189817992194763338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194798 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348283 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163998.P6189817992194763338

/-! ## A163998.P1446396698534568949

`∩[A194798(n+1), A385492(n+1)]`
-/

namespace A163998.P1446396698534568949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194798 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385492 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163998.P1446396698534568949

