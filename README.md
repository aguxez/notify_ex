# Notify <img src="priv/project_icon.png" alt="Notify" width="50" height="50" />

### Elixir wrapper for notify-send.

## Installation

Install `notify_ex` by adding it to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [{:notify_ex, "~> 0.2.0"}]
end
```

## Read first
`name` and `message` are first and second value, then you can pass a list of
options as: `:urgency, :time, :icon`.

## Usage
```elixir
iex> Notify.send("Notify", "Testing Notify", urgency: "low")
iex> Notify.send("Notify", "Another notify test", time: 4000, icon: "PATH-TO-ICON")
```
